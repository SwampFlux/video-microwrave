#ifdef GL_ES
precision highp float;
#endif

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;

float rand2(vec2 coordinate, float seed){
	return fract(sin(dot(coordinate.xy ,vec2(seed*time,78.233))) * 43758.5453);
}

float range(float input, float in_min, float in_max, float out_min, float out_max){
	return ;
}

vec3 contrast(vec3 original, float contrast_amount){
	return (original - 0.5) * max(contrast_amount,0.0) + 0.5;
}

void main( void ) {
	vec3 result;

	if(mouse.x < 0.5 && mouse.y > 0.5){
		float noiseA = rand2(gl_FragCoord.xy,12.89898);
		float noiseB = rand2(gl_FragCoord.xy,18.89898);
		float noiseC = rand2(gl_FragCoord.xy,0.898);
		result = vec3(noiseA,noiseB,noiseC);
		float stripes = mod(gl_FragCoord.x, 20.0*mouse.x);
		if(stripes <= 1.0) result = vec3(0.02,0.02,0.02);
	}

	if(mouse.x > 0.5 && mouse.y > 0.5){
		vec3 red = vec3(1.0,0.2,0.2);
		vec3 green = vec3(0.1,1.0,0.4);
		vec3 blue = vec3(0.1,0.3,1.0);
		vec3 black = vec3(0.02,0.02,0.02);
		vec3 yellow = vec3(0.8,0.9,0.12);
		vec3 fuchsia = vec3(0.8,0.0,0.8);
		float stripes = mod(gl_FragCoord.y, 50.0) + sin(time*50.0*(1.5-mouse.x))+15.0;
		float switchTime = mod(time*mouse.y*9.5, 1.0);

		result = black;
		if(stripes > 50.0 && stripes <= 60.0){
			if(switchTime > 0.0 && switchTime < 0.2) result = red;
			if(switchTime > 0.2 && switchTime < 0.4) result = green;
			if(switchTime > 0.4 && switchTime < 0.6) result = yellow;
			if(switchTime > 0.6 && switchTime < 0.8) result = blue;
			if(switchTime > 0.8 && switchTime < 1.0) result = fuchsia;
		}
	}

	if(mouse.x < 0.5 && mouse.y < 0.5){
		vec2 position = ( gl_FragCoord.xy / resolution.xy ) + mouse / 4.0;

		float color = 0.0;
		color += sin( position.x * cos( time / 15.7 ) * 8.0 ) + cos( position.y * cos( time / 2.0 ) * 0.9 - 5.0 )*10.246;
		color += sin( position.y * sin( time / 12.1 ) * 4.0 ) + cos( position.x * sin( time / 5.0 ) * 40.0 - 20.0 )*2.156;
		color += cos( position.y * sin( time / 4.2 ) * 1.0 - 0.5 ) + sin( position.x * sin( time / 15.0 ) * 80.0 - 0.4 )*6.3;
		color *= sin( time / 10.0 ) * 0.5;

		result = vec3( color, color * 0.5, sin( color + time / 3.0 ) * 0.75 );
	}

	if(mouse.x > 0.5 && mouse.y < 0.5){
		float noise = rand2(gl_FragCoord.xy/10234.0,8.10978);
		vec3 purple = vec3(0.3*(sin(mouse.x*10.0)+0.5),0.2,0.4*(mouse.y+0.25));
		result = purple + (noise*0.3) - 0.3;
	}

	gl_FragColor = vec4( result, 1.0 );
}