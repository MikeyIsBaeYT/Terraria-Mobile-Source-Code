attribute vec3 position;
attribute vec3 normal;
attribute vec4 color;

varying vec4 frag_color;
varying vec3 frag_normal;

uniform mat4 modelMatrix;
uniform mat4 viewProjectionMatrix;

void main()
{
	vec4 p = modelMatrix * vec4(position, 1.0);
	
	frag_color = color;
    frag_normal = normal;
    
	gl_Position = viewProjectionMatrix * p;
}
