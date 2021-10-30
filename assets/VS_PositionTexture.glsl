attribute vec3 position;
attribute vec2 texcoord;

varying vec2 frag_texcoord;

uniform mat4 modelMatrix;
uniform mat4 viewProjectionMatrix;

void main()
{
    vec4 p = modelMatrix * vec4(position, 1.0);
    
    frag_texcoord = texcoord;
    
    gl_Position = viewProjectionMatrix * p;
}
