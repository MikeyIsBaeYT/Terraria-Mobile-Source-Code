precision lowp float;

varying vec2 frag_texcoord;

uniform lowp sampler2D texture_diffuse;

void main()
{
    vec4 diffuse = texture2D(texture_diffuse, frag_texcoord);
    
    gl_FragColor = diffuse;
}