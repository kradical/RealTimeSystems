; This code is based on "thread_swtch.S" by Brian S. Dean, and the
; "os_cpu_a.asm" of uC/OS-II AVR Specific code by Ole Saether. 
; They are adapted to match our need of a "full-served" kernel model.
; 
; Compile using:
;   avr-gcc -c -O2 -mmcu=${CPU} -Wa,--gstabs -o cswitch.o switch.S

SREG = 0x3F
SPH = 0x3E
SPL = 0x3D
EIND = 0x3C
PORTC = 0x08; pins 30-37 (high-low)


; MACROS

; Push all registers and status registers
; When a new process is created, it is important to 
; initialize its "initial" context in the same order as SAVECTX.   
.macro  SAVECTX
  push    r0
  push    r1
  push    r2
  push    r3
  push    r4
  push    r5
  push    r6
  push    r7
  push    r8
  push    r9
  push    r10
  push    r11
  push    r12
  push    r13
  push    r14
  push    r15
  push    r16
  push    r17
  push    r18
  push    r19
  push    r20
  push    r21
  push    r22
  push    r23
  push    r24
  push    r25
  push    r26
  push    r27
  push    r28
  push    r29
  push    r30
  push    r31
  in  r16, SREG
  push    r16
  in r16,  EIND
  push   r16
.endm

; Pop all registers and the status registers
.macro  RESTORECTX
  pop r16
  out EIND, r16
  pop r16
  out SREG, r16
  pop r31
  pop r30
  pop r29
  pop r28
  pop r27
  pop r26
  pop r25
  pop r24
  pop r23
  pop r22
  pop r21
  pop r20
  pop r19
  pop r18
  pop r17
  pop r16
  pop r15
  pop r14
  pop r13
  pop r12
  pop r11
  pop r10
  pop r9
  pop r8
  pop r7
  pop r6
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
.endm

.macro interrupt_disable_OFF
    push r16
    in r16, PORTC
    andi r16, 0xBF; ~(1<<6) pin 31
    out PORTC, r16
    pop r16
.endm

.macro context_switch_ON
    push r16
    in r16, PORTC
    ori r16, 0x80; (1<<7) pin 30
    out PORTC, r16
    pop r16
.endm

.macro context_switch_OFF
    push r16
    in r16, PORTC
    andi r16, 0x7F; ~(1<<7) pin 30
    out PORTC, r16
    pop r16
.endm
    

.section .text
.global Exit_Kernel
.global Enter_Kernel
.extern CurrentP; CurrentP->sp is the first entry in CurrentP's descriptor

; This function is called by a user task. Upon entry, we are using
; the CurrentP's stack, on top of which contains the return address 
; of the call to CSwitch(). There are three phases in this function:
;   1) save current CurrentP's context, and then its H/W stack pointer;
;   2) choose a new CurrentP;
;   3) restore the new CurrentP's context, i.e., restore its H/W stack pointer.
; 
; Assumption: This function is executed with interrupts already disabled.
;
; Note: AVR devices use LITTLE endian format, i.e., a 16-bit value starts
; with the lower-order byte first, then the higher-order byte.
;
; void Exit_Kernel(void)
Exit_Kernel:
  context_switch_ON
  SAVECTX

  ;Now, we have saved the kernel's context.
  ;Save the current H/W stack pointer into KernelSp.
  in   r30, SPL
  in   r31, SPH
  sts  KernelSp, r30
  sts  KernelSp+1, r31

  ;We are now ready to restore Cp's context, i.e.,
  ;switching the H/W stack pointer to CurrentSp.
  lds  r30, CurrentSp
  lds  r31, CurrentSp+1
  out  SPL, r30
  out  SPH, r31

  ;We are now executing in Cp's stack.
  ;Note: at the bottom of the Cp's context is its return address.
  RESTORECTX
  context_switch_OFF
  interrupt_disable_OFF

  reti

; All system call eventually enters here!
; There are two possibilities how we get here: 
;  1) Cp explicitly invokes one of the kernel API call stub, which indirectly
;       invoke Enter_Kernel().
;  2) a timer interrupt, which somehow "jumps" into here.
; Let us consider case (1) first. You have to figure out how to deal with
; timer interrupts yourself.
;
; Assumption: All interrupts are disabled upon entering here, and
;     we are still executing on Cp's stack. The return address of
;     the caller of Enter_Kernel() is on the top of the stack.
;
; void Enter_Kernel();
Enter_Kernel:   
  ; This is the "bottom" half of CSwitch(). We are still executing in
  ; Cp's context.
  context_switch_ON
  SAVECTX

  ; Now, we have saved the Cp's context.
  ; Save the current H/W stack pointer into CurrentSp.
  in   r30, SPL
  in   r31, SPH
  sts  CurrentSp, r30
  sts  CurrentSp+1, r31

  ; We are now ready to restore kernel's context, i.e.,
  ; switching the H/W stack pointer back to KernelSp.
  lds  r30, KernelSp
  lds  r31, KernelSp+1
  out  SPL, r30
  out  SPH, r31
  
  ; We are now executing in kernel's stack.
  RESTORECTX
  context_switch_OFF
  
  ; We are ready to return to the caller of CSwitch() (or Exit_Kernel()).
  ; Note: We should NOT re-enable interrupts while kernel is running.
  ;         Therefore, we use "ret", and not "reti".
  ret