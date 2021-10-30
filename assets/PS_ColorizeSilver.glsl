precision mediump float;

varying vec4 frag_color;
varying vec4 frag_texcoord;

uniform vec4 firstColor;
uniform vec4 secondColor;

uniform lowp sampler2D texture_diffuse;

vec4 ArmorColor(vec4 texColor, vec4 minColor, vec4 maxColor, float texCoordX)
{
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
   	float maxChn = max(max(r,g),b);
   	float minChn = min(min(r,g),b);
   	float midChn = r+g+b - minChn - maxChn;
	
	
	float l = (maxChn + minChn) / 2.0;
	l = 1.0 - l;
	l = ((maxChn * 5.0 + minChn * 3.0) / 8.0) * (1.0 + l);
	r = l;
	float hiVal = l;
	
	l = (midChn + minChn) / 2.0;
	l = 1.0 - l;
	l = ((midChn * 5.0 + minChn * 3.0) / 8.0) * (1.0 + l);
	float loVal = (minChn + l) / 2.0;

	r = hiVal * maxColor.x + loVal * minColor.x;
	g = hiVal * maxColor.y + loVal * minColor.y;
	b = hiVal * maxColor.z + loVal * minColor.z;
	
	return vec4(r, g, b, texColor.a);
}


void main()
{
    vec4 textureColor = texture2D(texture_diffuse, frag_texcoord.xy);
    		
	textureColor.r *= textureColor.a;
	textureColor.b *= textureColor.a;
	textureColor.g *= textureColor.a;
    
    vec4 finalColor = textureColor * frag_color;
    
    gl_FragColor = ArmorColor(finalColor, firstColor, secondColor, frag_texcoord.z);
    
}