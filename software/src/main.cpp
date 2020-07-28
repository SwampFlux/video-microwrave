/**
 * Video MicroWrave
 * ADC to OSC conversion
 */


#include <stdio.h>
#include <stdexcept>
#include <time.h>
#include <unistd.h>
#include <iostream>
//#include <ctime>
#include <chrono>


#include "../include/ABElectronics_CPP/ADCPi/ABE_ADCPi.h"
//#include "adc.h"

#include "../include/oscpack/osc/OscOutboundPacketStream.h"
#include "../include/oscpack/ip/UdpSocket.h"

#define ADDRESS "127.0.0.1"
#define PORT 8000
#define OUTPUT_BUFFER_SIZE 1024 // example used 1024?

using namespace std;
using namespace std::chrono;
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

  typedef std::chrono::duration<float> floatseconds;
  float timer[8] = {0,0,0,0,0,0,0,0};

//  typedef std::chrono::milliseconds millis;

  milliseconds prev_time = duration_cast<milliseconds>(steady_clock::now().time_since_epoch());

  while(1) {
//    clearscreen();
    p << osc::BeginBundleImmediate;
    for(int channel=1; channel<=1; channel++){
      double cv = adc.read_voltage(channel);
      float uni = (5.0 - cv) / 5.0;
      float bi = uni * 2 - 1;

      milliseconds now = duration_cast<milliseconds>(steady_clock::now().time_since_epoch());
      floatseconds delta = (now - prev_time); 
      timer[channel-1] += delta.count() * bi;
      prev_time = now;

      std::string path = "/cv" + std::to_string(channel);
      char const *path_char = path.c_str();

      p << osc::BeginMessage(path_char)
        << (float)uni
        << (float)bi
        << (float)timer[channel-1]
        << osc::EndMessage;

      printf("Pin %i:\t%f\t%f\t%f\n", channel, uni, bi, timer[channel-1]);
    }
    p << osc::EndBundle;
    //osc::CheckForAvailableMessageSpace("cv1");
    transmitSocket.Send( p.Data(), p.Size() );
    p.Clear();
 //   usleep(100000);
  }

  (void)argc;
  (void)argv;  
  return(0);
}
