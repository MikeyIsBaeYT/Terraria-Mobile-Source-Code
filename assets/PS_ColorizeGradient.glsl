precision mediump float;

varying vec4 frag_color;
varying vec4 frag_texcoord;

uniform vec4 firstColor;
uniform vec4 secondColor;

uniform lowp sampler2D texture_diffuse;


float CalcLeft(float minChn, float maxChn, float texCoordX)
{
	float v = clamp(texCoordX, 0.0, 1.0);
	float v2 = 1.0 - v;
	v = (1.0 + v) / 2.0;
	v *= maxChn;
	v2 *= minChn;
	return v + v2;
}

float CalcRight(float minChn, float maxChn, float texCoordX)
{
	float v = clamp(1.0 - texCoordX, 0.0, 1.0);
	float v2 = 1.0 - v;
	v = (1.0 + v) / 2.0;
	v *= maxChn;
	v2 *= minChn;
	return v + v2;
}

vec4 ArmorColor(vec4 texColor, vec4 minColor, vec4 maxColor, float texCoordX)
{
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
   	float maxChn = max(max(r,g),b);
   	float minChn = min(min(r,g),b);
   	float midChn = r+g+b - minChn - maxChn;
	
	float left = CalcLeft(minChn, maxChn, texCoordX);
	float right = CalcRight(minChn, maxChn, texCoordX);
	
	vec4 LeftOvers = 1.0 - (minColor + maxColor);

	r = right * maxColor.x + left * minColor.x + (LeftOvers.x * minChn);
	g = right * maxColor.y + left * minColor.y + (LeftOvers.y * minChn);
	b = right * maxColor.z + left * minColor.z + (LeftOvers.z * minChn);
	
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