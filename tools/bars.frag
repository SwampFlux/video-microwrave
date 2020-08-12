#ifdef GL_ES
  precision mediump float;
#endif

uniform vec2 u_resolution;

uniform float u_adc0;
uniform float u_adc1;
uniform float u_adc2;
uniform float u_adc3;
uniform float u_adc4;
uniform float u_adc5;
uniform float u_adc6;
uniform float u_adc7;
uniform float u_time;

float stroke(float x, float s, float w){
  float d = step(s,x+w*0.5) - step(s,x-w*0.5);
  return clamp(d, 0.0, 1.0);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;

  int column = int(st.x * 9.0);

  float value = mod(u_time,1.0);
  if(column == 0) value = u_adc0;
  if(column == 1) value = u_adc1;
  if(column == 2) value = u_adc2;
  if(column == 3) value = u_adc3;
  if(column == 4) value = u_adc4;
  if(column == 5) value = u_adc5;
  if(column == 6) value = u_adc6;
  if(column == 7) value = u_adc7;


  

  vec3 color = vec3(step(0.5 - value, 0.5 - st.y));
//  color += stroke(st.x, u_adc2, 0.1);
  
  
  
  // * step(1./4., st.x);
//  color += step(u_adc4, st.y) * step(2./4., st.x);
//  color += step(u_adc6, st.y) - step(3./4., st.x);

  gl_FragColor = vec4(color, 1.0);
}

