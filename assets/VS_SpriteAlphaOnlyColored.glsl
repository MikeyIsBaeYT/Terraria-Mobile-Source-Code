attribute vec2 position;
attribute vec4 color;
attribute vec2 texcoord;

varying vec4 frag_color;
varying vec2 frag_texcoord;

uniform mat4 modelMatrix;
uniform mat4 viewProjectionMatrix;

void main()
{    
    frag_color = color;
    frag_texcoord = texcoord;
    
    gl_Position = viewProjectionMatrix * vec4(position, 0, 1);
}


