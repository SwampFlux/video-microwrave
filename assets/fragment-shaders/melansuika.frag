// this is from the photo jess took in salt lake city

uniform vec2 u_resolution;
uniform float u_time;

uniform float time1_x;

float circle (in vec2 _st, in vec2 pos, in float _radius) {
  float edge = 20.0 / u_resolution.x;
  vec2 dist = _st - pos;
  return 1.0 - smoothstep(_radius - (_radius * edge),
                          _radius - (_radius * edge),
                          dot(dist, dist) * 4.0);
}

void main() {
  vec2 screenSpace = gl_FragCoord.xy / u_resolution.xy;

  float breaker = 0.2;
  float gridSize = 6.0 + 6.0 * time1_x;

  vec3 color = vec3(0.0);
  float x = step(breaker, mod(screenSpace.x * gridSize, 1.0));
  float y = step(breaker, mod(screenSpace.y * gridSize, 1.0));
  color += x * y;

  gl_FragColor = vec4(color,1.0);
}

