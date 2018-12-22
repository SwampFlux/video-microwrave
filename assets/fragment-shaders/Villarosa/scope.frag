#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;
uniform float u_analog0;
uniform float u_analog1;
uniform float u_analog2;
uniform float u_analog3;
uniform float u_analog4;
uniform float u_analog5;
uniform float u_analog6;
uniform float u_analog7;

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;

  int col = int(st.x * 9.0);

  float value = mod(u_time / 10.0, 1.0);

  if(col == 0) { value = u_analog0; }
  if(col == 1) { value = u_analog1; }
  if(col == 2) { value = u_analog2; }
  if(col == 3) { value = u_analog3; }
  if(col == 4) { value = u_analog4; }
  if(col == 5) { value = u_analog5; }
  if(col == 6) { value = u_analog6; }
  if(col == 7) { value = u_analog7; }

  float color = step(0.5 - value, 0.5 - st.y);
  gl_FragColor = vec4(color, color, color, 1.);
}
