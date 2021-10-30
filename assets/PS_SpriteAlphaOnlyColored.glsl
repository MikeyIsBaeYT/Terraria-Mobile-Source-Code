precision lowp float;

varying vec4 frag_color;
varying vec2 frag_texcoord;

uniform lowp sampler2D texture_diffuse;

void main()
{
    float alphaColor = texture2D(texture_diffuse, frag_texcoord).a;
    
    vec4 finalColor = frag_color * alphaColor;
    
    gl_FragColor = finalColor;
}