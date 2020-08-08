#ifdef GL_ES
precision mediump float;
#endif

#define ITERATIONS 5

uniform sampler2D u_backbuffer;
uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

uniform float u_analog0;
uniform float u_analog1;

float diffU = 0.25;
float diffV = 0.05;
float f = 0.1;
float k = 0.063;

float random (in float x) {
    return fract(sin(x)*43758.5453123);
}

float random (vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233)))*43758.5453123);
}

void main(void) {
    // use screenspace
    vec2 st   = gl_FragCoord.st/u_resolution;
    vec2 pixel = 1./u_resolution;

    // blob around mouse
    vec2 xy = vec2(u_analog0, u_mouse.x);
    vec2 blob = st - xy * pixel * u_analog1;
    float mouseMask = step(1.0-pixel.x,1.0-dot(blob,blob));

    // add mouse to backbuffer
    vec4 colorA = vec4(0.3,0.5,0.1,1.0);
    vec4 colorB = vec4(max(texture2D(u_backbuffer, st + pixel/2.0).rgb - 0.01,0.0), 1.0);
    vec4 fragment = mix(colorB,colorA,mouseMask);

    gl_FragColor = vec4(fragment);

    
}
