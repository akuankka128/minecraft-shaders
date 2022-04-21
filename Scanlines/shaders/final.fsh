#version 120

varying vec4 texcoord;

uniform int frameCounter;
uniform float viewWidth;
uniform float viewHeight;
uniform sampler2D gcolor;

void main() {
    int fc = int(mod(frameCounter, viewHeight));

	vec3 color = texture2D(gcolor, texcoord.st).rgb;
	
    vec4 coords = gl_FragCoord;

    if(mod(int(coords.y), 4) < 2) {
        color.r -= 0.3;
        color.g -= 0.3;
        color.b -= 0.3;
    }

    if(coords.y - 3 < fc && coords.y + 3 > fc) {
        color.r -= 0.1;
        color.g -= 0.1;
        color.b -= 0.1;
    }

	gl_FragColor = vec4(color.rgb, 1.0f);
}
