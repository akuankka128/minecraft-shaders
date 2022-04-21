#version 120

varying vec4 texcoord;
uniform sampler2D gcolor;

void main() {
	vec3 color = texture2D(gcolor, texcoord.st).rgb;
	
	float red = float(color.r);
	float green = float(color.g);
	float blue = float(color.b);

	color.r = 1 - red;
	color.g = 1 - green;
	color.b = 1 - blue;

	gl_FragColor = vec4(color.rgb, 1.0f);
}