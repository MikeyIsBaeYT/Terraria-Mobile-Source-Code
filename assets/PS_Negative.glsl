precision mediump float;

varying vec4 frag_color;
varying vec4 frag_texcoord;

uniform vec4 firstColor;
uniform vec4 secondColor;

uniform lowp sampler2D texture_diffuse;

vec4 ArmorColor(vec4 texColor, vec4 inputColor)
{
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
	float brighestColor = max(max(r, g), b);

	//set the colors	
	if (brighestColor > 0.0)
	{
		r = 1.0 - r;
		g = 1.0 - g;
		b = 1.0 - b;
	}

	vec4 color = vec4(r, g, b, texColor.a);
    return color * inputColor;
}

void main()
{
    vec4 textureColor = texture2D(texture_diffuse, frag_texcoord.xy);
			
	textureColor.r *= textureColor.a;
	textureColor.b *= textureColor.a;
	textureColor.g *= textureColor.a;
                             	    
    gl_FragColor = ArmorColor(textureColor, frag_color);
		
}
