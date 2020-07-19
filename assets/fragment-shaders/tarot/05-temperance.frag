// 05

#define PI 3.14

uniform vec2 u_resolution;

float stroke(float x, float s, float w) {
  float d = step(s,x+w*.5) -
            step(s,x-w*.5);
  return clamp(d, 0., 1.);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;

  vec3 color = vec3(0.1);

  float offset = cos(st.y * PI) * 0.15;

  color += stroke(st.x, .28+offset, .1);
  color += stroke(st.x, .50+offset, .1);
  color += stroke(st.x, .72+offset, .1);

  gl_FragColor = vec4(color,1.);
}

