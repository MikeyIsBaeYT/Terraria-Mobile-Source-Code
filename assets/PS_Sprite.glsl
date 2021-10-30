precision mediump float;

varying vec4 frag_color;
varying vec2 frag_texcoord;

uniform mediump sampler2D texture_diffuse;

void main()
{
    vec4 diffuse = texture2D(texture_diffuse, frag_texcoord);
	    
    vec4 finalColor = diffuse * frag_color;
	
    gl_FragColor = finalColor;
}