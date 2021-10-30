precision mediump float;

varying vec4 frag_color;
varying vec4 frag_texcoord;

uniform vec4 firstColor;
uniform vec4 secondColor;

uniform lowp sampler2D texture_diffuse;


vec3 DoColor(float maxChn, float minChn, float midChn, float texCoordX)
{
	float x = texCoordX;

	float r2 = 0.0;
	float g2 = 0.0;
	float b2 = 0.0;
	
	//red
	if (x <= .20)
        r2 = 1.0;
    
	if (x >= .20) 
	{
		r2 = .20 - (x - .20);
		r2 *= 5.0;
	}

	//green
	if (x <= .20)
	{
		g2 = x * 5.0;
	}
	else if (x >= .60)
	{
		g2 = .20 - (x - .60);
		g2 *= 5.0;
	}
	else
	{
        g2 = 1.0;
	}

	//blue
	if (x >= .4)
	{
		b2 = (x - .20) * 5.0;
	}
    
	if (x >= .8)
	{
		b2 = .20 - (x - .80);
		b2 *= 5.0;
		r2 = (x - .80) * 5.0;
	}
    
    r2 = clamp(r2, 0.0, 1.0);
    g2 = clamp(g2, 0.0, 1.0);
    b2 = clamp(b2, 0.0, 1.0);

	return vec3(maxChn * r2, maxChn * g2, maxChn * b2);
}

vec4 ArmorColor(vec4 texColor, vec4 dyeColor, float texCoordX)
{
	//texColor = float4(1,1,1,1);
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
   	float maxChn = max(max(r,g),b);
   	float minChn = min(min(r,g),b);
   	float midChn = r+g+b - minChn - maxChn;
	
//	r = maxChn;
//	g = minChn;
//	b = minChn;
	
	return vec4(DoColor(maxChn, minChn, midChn, texCoordX),texColor.a);
}


void main()
{
    vec4 textureColor = texture2D(texture_diffuse, frag_texcoord.xy);
			
	textureColor.r *= textureColor.a;
	textureColor.b *= textureColor.a;
	textureColor.g *= textureColor.a;
    
    vec4 finalColor = textureColor * frag_color;
    
    gl_FragColor = ArmorColor(finalColor, firstColor, (mod(frag_texcoord.z+firstColor.x, 1.0)-0.5)*1.5 + 0.75);
    
}