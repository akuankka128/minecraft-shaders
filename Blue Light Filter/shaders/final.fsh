#version 120

#define Intensity 0.5 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]

varying vec4 texcoord;
uniform sampler2D gcolor;

void main() {
	vec3 color = texture2D(gcolor, texcoord.st).rgb;
	
	float blue = float(color.b) * 255;

	blue = blue - blue * Intensity;
	blue = blue / 255;

	color.b = blue;

	gl_FragColor = vec4(color.rgb, 1.0f);
}