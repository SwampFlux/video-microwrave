/**
 * Video MicroWrave
 * ADC to OSC conversion
 */


#include <stdio.h>
#include <stdexcept>
#include <time.h>
#include <unistd.h>
#include <iostream>
#include <ctime>

#include "../include/ABElectronics_CPP/ADCPi/ABE_ADCPi.h"
//#include "adc.h"

#include "../include/oscpack/osc/OscOutboundPacketStream.h"
#include "../include/oscpack/ip/UdpSocket.h"

#define ADDRESS "127.0.0.1"
#define PORT 8000
#define OUTPUT_BUFFER_SIZE 1024 // example used 1024?

using namespace std;
using namespace ABElectronics_CPP_Libraries;

void clearscreen () {
  printf("\033[2J\033[1;1H");
}

int main(int argc, char **argv) {
  std::cout << "MicroWrave init...\n";

  // adc
  ADCPi adc(0x68, 0x69, 14);
  adc.set_conversion_mode(0); // 1 is "continuous"?

  // osc
  UdpTransmitSocket transmitSocket( IpEndpointName( ADDRESS, PORT ) );
  char buffer[OUTPUT_BUFFER_SIZE];
  osc::OutboundPacketStream p(buffer, OUTPUT_BUFFER_SIZE);

  int prev_time = time(nullptr);

  int timer[8] = {0,0,0,0,0,0,0,0};

  while(1) {
    clearscreen();
    for(int channel=1; channel<=8; channel++){
      double cv = adc.read_voltage(channel);
      double uni = (5.0 - cv) / 5.0;
      double bi = uni * 2 - 1;

      int now = time(nullptr);
      timer[channel-1] += (now - prev_time) * bi;
      prev_time = now;

      std::string path = "/cv" + std::to_string(channel);
      char const *path_char = path.c_str();

      p << osc::BeginBundleImmediate
        << osc::BeginMessage(path_char) 
        << uni << bi << timer[channel-1] << osc::EndMessage
        << osc::EndBundle;
      printf("Pin %i: %G \n", channel, adc.read_voltage(1));
    }
    
    transmitSocket.Send( p.Data(), p.Size() );
//    usleep(100000);
  }

  (void)argc;
  (void)argv;  
  return(0);
}
