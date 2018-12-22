uniform vec2 u_resolution;

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec3 color = vec3(0.);
    color += step(0.5, st.x);
  gl_FragColor = vec4(color,1.);
}

