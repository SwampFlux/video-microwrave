#include <stdio.h>
#include <stdexcept>
#include <time.h>
#include <unistd.h>
#include <iostream>

#include "adc.h"

using namespace std;
//using namespace MicroWrave;
using namespace ABElectronics_CPP_Libraries;

void clearscreen () {
  printf("\033[2J\033[1;1H");
}

int main(int argc, char **argv) {

  ADCPi adc(0x68, 0x69, 14);

  adc.set_conversion_mode(0);

  //std::cout << "init...\n";
  while(1) {
//    clearscreen();
//    printf("Pin 1: %G \n", adc.read_voltage(1));
//    printf("Pin 2: %G \n", adc.read_voltage(2));
//    printf("Pin 3: %G \n", adc.read_voltage(3));
//    printf("Pin 4: %G \n", adc.read_voltage(4));
//    printf("Pin 5: %G \n", adc.read_voltage(5));
//    printf("Pin 6: %G \n", adc.read_voltage(6));
    printf("Pin 7: %G \n", adc.read_voltage(7));
//    printf("Pin 8: %G \n", adc.read_voltage(8));
//    usleep(100000);
  }
  
  return(0);
}
