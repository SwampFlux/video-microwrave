uniform vec2 u_resolution;

#define PI 3.14

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec3 color = vec3(0.1);
    color += step(0.5 + cos(st.y*PI)*.25, st.x);
  gl_FragColor = vec4(color,1.);
}

