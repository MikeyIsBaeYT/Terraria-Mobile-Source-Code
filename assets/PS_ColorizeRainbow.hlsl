
Texture2D SimpleTexture : register(t0);
SamplerState TextureSampler : register(s0);

struct PixelInputType
{
    float4 position : SV_POSITION;
	float4 color : COLOR;
	float4 tex : TEXCOORD0;
};

cbuffer SimpleConstantBuffer : register(b2)
{
	float4 firstColor;
};

cbuffer SimpleConstantBuffer : register(b3)
{
	float4 secondColor;
};

float3 DoColor(float maxChn, float minChn, float midChn, float texCoordX)
{
	float x = texCoordX;

	float r2 = 0;
	float g2 = 0;
	float b2 = 0;
	
	//red
	if (x <= .20) r2 = 1;
	if (x >= .20) 
	{
		r2 = .20 - (x - .20);
		r2 *= 5;
	}

	//green
	if (x <= .20)
	{
		g2 = x * 5;
	}
	else if (x >= .60)
	{
		g2 = .20 - (x - .60);
		g2 *= 5;
	}
	else
	{
	g2 = 1;
	}

	//blue
	if (x >= .4)
	{
		b2 = (x - .20) * 5;
	}
	if (x >= .8)
	{
		b2 = .20 - (x - .80);
		b2 *= 5;
		r2 = (x - .80) * 5;
	}


	if (r2 < 0) r2 = 0;
	if (r2 > 1) r2 = 1;
	if (g2 < 0) g2 = 0;
	if (g2 > 1) g2 = 1;
	if (b2 < 0) b2 = 0;
	if (b2 > 1) b2 = 1;

	return float3(maxChn * r2, maxChn * g2, maxChn * b2);
}

float4 ArmorColor(float4 texColor, float4 dyeColor, float texCoordX)
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
	
	return float4(DoColor(maxChn, minChn, midChn, texCoordX),texColor.a);
}

float4 main(PixelInputType input) : SV_TARGET
{	
	float4 inputColor = input.color;

	float4 textureColor = SimpleTexture.Sample(TextureSampler, input.tex.xy);

	textureColor.r *= textureColor.a;
	textureColor.b *= textureColor.a;
	textureColor.g *= textureColor.a;


	float4 finalColor = textureColor * inputColor;
	
	//If the pixel is not fully white and the alpha is 0, than discard the pixel. If the pixel is fully white, than no matter what, dont discard it
	if ((inputColor.r != 1.0f || inputColor.g != 1.0f || inputColor.b != 1.0f) && finalColor.a < 0.005f)
		discard;
		
	return ArmorColor(finalColor, firstColor, (fmod(input.tex.z+firstColor.x, 1.0f)-0.5f)*1.5f + 0.75f);
}
