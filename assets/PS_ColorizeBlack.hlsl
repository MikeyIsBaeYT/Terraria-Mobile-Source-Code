
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

float4 ArmorColor(float4 texColor, float4 minColor, float4 maxColor, float texCoordX)
{
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
   	float maxChn = max(max(r,g),b);
   	float minChn = min(min(r,g),b);
   	float midChn = r+g+b - minChn - maxChn;

	r = maxChn * maxColor.x + minChn * minColor.x;
	g = maxChn * maxColor.y + minChn * minColor.y;
	b = maxChn * maxColor.z + minChn * minColor.z;
	
	float d = maxChn - minChn;
	if (d < 0.5f)
	{
		d = (1.0f + d + d) / 3.0f;
		r *= d;
		g *= d;
		b *= d;
	}
	
	return float4(r, g, b, texColor.a);
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
		
	return ArmorColor(finalColor, firstColor, secondColor, input.tex.z);
}
