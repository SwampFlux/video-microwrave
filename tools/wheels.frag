#ifdef GL_ES
  precision mediump float;
#endif

#define TAU 6.283185

uniform vec2 u_resolution;

uniform float cv1;
uniform float cvTime1;
uniform float cvTime2;
uniform float cvTime3;
uniform float cvTime4;
uniform float cvTime5;
uniform float cvTime6;
uniform float cvTime7;
uniform float cvTime8;
uniform float u_time;

float stroke(float x, float s, float w){
  float d = step(s,x+w*0.5) - step(s,x-w*0.5);
  return clamp(d, 0.0, 1.0);
}

float circle(vec2 st) {
  return length(st-.5)*2.;
}

void dial(inout vec3 col, in vec2 uv, float val){
  vec3 dialColor = vec3(1.);
  // ring
  col = mix(col, dialColor, smoothstep(0.005, 0., abs(length(uv)-0.05)));
  // pip
  float angle = val * TAU;
  vec2 pipuv = uv - vec2(-sin(angle),-cos(angle)) * 0.05;
  col = mix(col, dialColor, smoothstep(0.005, 0., length(pipuv)-0.01));
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;

  vec3 color = vec3(0.1,0.,0.);
  
  dial(color, st-vec2(0.2, 0.8), u_time);
  dial(color, st-vec2(0.4, 0.8), cv1);
  dial(color, st-vec2(0.2, 0.6), cvTime1);
  dial(color, st-vec2(0.4, 0.6), cvTime2);
  dial(color, st-vec2(0.6, 0.6), cvTime3);
  dial(color, st-vec2(0.8, 0.6), cvTime4);
  dial(color, st-vec2(0.2, 0.4), cvTime5);
  dial(color, st-vec2(0.4, 0.4), cvTime6);
  dial(color, st-vec2(0.6, 0.4), cvTime7);
  dial(color, st-vec2(0.8, 0.4), cvTime8);

  gl_FragColor = vec4(color, 1.0);
}

