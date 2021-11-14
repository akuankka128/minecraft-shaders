#version 120

varying vec3 tintColor;
varying vec3 normal;
varying vec4 texcoord;

void main() {
	vec4 position = gl_ModelViewMatrix * gl_Vertex;

	gl_Position = gl_ProjectionMatrix * position;
	normal = gl_NormalMatrix * gl_Normal;
	texcoord = gl_TextureMatrix[0] * gl_MultiTexCoord0;
}