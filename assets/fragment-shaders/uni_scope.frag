#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;
uniform float cv1_uni; // zero to 1
uniform float cv1_bi; // negative to positive 1
uniform float cv1_time; // time that increments at variable speed

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;

  int column = int(st.x * 4.0);
//  float value = 0.0;

  float value = mod(u_time / 10.0, 1.0);

//  vec3 values = vec3(cv1_uni, cv1_bi, cv1_time,

  if(column == 0) { value = cv1_uni; }
  if(column == 1) { value = cv1_bi; }
  if(column == 2) { value = mod(cv1_time / 100., 1.0); }
/*  if(col == 4) { value = cv5; }
  if(col == 5) { value = cv6; }
  if(col == 6) { value = cv7; }
  if(col == 7) { value = cv8; }
*/
  float color = step(0.5 - value, 0.5 - st.y);
  gl_FragColor = vec4(color, color, color, 1.);
}
