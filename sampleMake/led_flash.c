#include<avr/io.h>
#include<avr/interrupts.h>

void main {
  pinMode(13, OUTPUT);
  
  //Clear timer config.
  TCCR3A = 0;
  TCCR3B = 0;  
  //Set to CTC (mode 4)
  TCCR3B |= (1<<WGM32);
  
  //Set prescaller to 256
  TCCR3B |= (1<<CS32);
  
  //Set TOP value (0.5 seconds)
  OCR3A = 31250;
  
  //Enable interupt A for timer 3.
  TIMSK3 |= (1<<OCIE3A);
  
  //Set timer to 0 (optional here).
  TCNT3 = 0;
  while(1);
  sei();
}

ISR(TIMER3_COMPA_vect)
{
  digitalWrite(13, !digitalRead(13));
}

