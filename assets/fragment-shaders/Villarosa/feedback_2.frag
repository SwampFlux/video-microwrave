#ifdef GL_ES
  precision mediump float;
#endif

#define ITERATIONS 2

uniform sampler2D u_backbuffer;
uniform vec2 u_resolution;
uniform float u_time;
uniform float u_analog0;
uniform float u_analog1;
uniform float u_analog2;
uniform float u_analog3;

vec4 sigmoid(vec4 x) {
  return x / (1.0 + abs(x));
}

void main() {
  float t0 = cos(0.7*u_time);
  float t1 = cos(0.17*u_time);
  float t2 = cos(0.117*u_time);
  float t3 = cos(0.1717*u_time);
  float t4 = cos(0.11717*u_time);

  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec2 pixel = 1.0 / u_resolution;.xy
  vec2 uv = st + pixel / 2.0;

  vec2 slip = vec2(u_analog0, u_analog1);

  vec4 color = texture2D(u_backbuffer, uv);
  color = -1.0 + 2.0 * texture2D(u_backbuffer, uv + t0 * slip * color.rg);
  color = -1.0 + 2.0 * texture2D(u_backbuffer, uv - t1 * slip * color.ba);
  color = -1.0 + 2.0 * texture2D(u_backbuffer, uv + t2 * slip * color.ar);
  color = -1.0 + 2.0 * texture2D(u_backbuffer, uv - t3 * slip * color.gb);

  vec4 newPaint = vec4(st.x,st.y,0.0,1.0);

  vec4 rePaint = mix(color, newPaint, 0.1);

  gl_FragColor = mix(color, newPaint, 0.1);

  /*
    // use screenspace
    vec2 st   = gl_FragCoord.st/u_resolution;
    vec2 pixel = 1./u_resolution;

    // blob around mouse
    vec2 xy = vec2(u_analog0, u_analog1);
    vec2 blob = st - xy * pixel;
    float mouseMask = step(1.0-pixel.x, 1.0-dot(blob,blob));

    // add mouse to backbuffer
    vec4 colorA = vec4(0.3,0.5,0.1,1.0);
    vec4 colorB = vec4(max(texture2D(u_backbuffer, st + pixel/2.0).rgb - 0.003,0.0), 1.0);
    vec4 fragment = mix(colorB,colorA,mouseMask);

    gl_FragColor = vec4(fragment);
*/
 }
