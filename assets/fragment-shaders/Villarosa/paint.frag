#ifdef GL_ES
  precision mediump float;
#endif

#define TAU 6.2

uniform vec2 u_resolution;
uniform sampler2D u_backbuffer;
uniform float cv3;
uniform float cv5;
uniform float cv7;
uniform float cvTime7;

vec3 palette( float t ){
  vec3 a = vec3(1.037,0.121,0.071);
  vec3 b = vec3(1.240,1.638,0.243);
  vec3 c = vec3(0.088,0.091,0.095);
  vec3 d = vec3(0.600,0.117,0.532);
  return a + b * cos(TAU * (c * t + d));
}

void main() {
    // screenspace
    vec2 st = gl_FragCoord.st / u_resolution;
    vec2 pixel = 1. / u_resolution;
    // blob
    vec2 xy = vec2(1. - cv5, 1. - cv3);
    vec2 blob = st - xy;
    float mask = smoothstep(0.002, 0.001, dot(blob, blob));

    vec2 wobble = vec2(0.0);//vec2(u_analog6, u_analog7) * pixel * 2.0 - pixel;
    vec4 colorA = vec4( palette(cvTime7) * 3.0, 1);
    vec4 colorB = vec4(texture2D(u_backbuffer, st + pixel / 2.0).rgb, 1.);

    gl_FragColor = mix(colorB, colorA, mask);
}
