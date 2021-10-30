attribute vec3 position;
attribute vec3 normal;
attribute vec2 texcoord;

varying vec3 frag_normal;
varying vec2 frag_texcoord;

uniform mat4 modelMatrix;
uniform mat4 viewProjectionMatrix;

void main()
{
	vec4 p = modelMatrix * vec4(position, 1.0);
	
    frag_normal = normal;
    frag_texcoord = texcoord;
    
	gl_Position = viewProjectionMatrix * p;
}

