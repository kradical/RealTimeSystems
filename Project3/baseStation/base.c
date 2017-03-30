/*
 * Project 3: Base Station
 * Authors: Konrad Schultz, Edgardo Cuello
 */

#include "utility.h"

uint16_t rx, ry; // range from 0-1024
void readJsRoombaTask() {
  rx = readAdc(8);
  ry = readAdc(9);
}

uint16_t sx, sy; // range from 0-1024
void readJsServoTask() {
  sx = readAdc(10);
  sy = readAdc(11);
}

uint8_t b; // 0 when pressed
void readButtonTask() {
  b = readButton();
}

void a_main() {
  initLed();
  enableLed();
}