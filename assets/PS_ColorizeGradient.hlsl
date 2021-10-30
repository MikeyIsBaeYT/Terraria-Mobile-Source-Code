
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

float CalcLeft(float minChn, float maxChn, float texCoordX)
{
	float v = saturate(texCoordX);
	float v2 = 1 - v;
	v = (1 + v) / 2;
	v *= maxChn;
	v2 *= minChn;
	return v + v2;
}

float CalcRight(float minChn, float maxChn, float texCoordX)
{
	float v = saturate(1 - texCoordX);
	float v2 = 1 - v;
	v = (1 + v) / 2;
	v *= maxChn;
	v2 *= minChn;
	return v + v2;
}

float4 ArmorColor(float4 texColor, float4 minColor, float4 maxColor, float texCoordX)
{
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
   	float maxChn = max(max(r,g),b);
   	float minChn = min(min(r,g),b);
   	float midChn = r+g+b - minChn - maxChn;
	
	float left = CalcLeft(minChn, maxChn, texCoordX);
	float right = CalcRight(minChn, maxChn, texCoordX);
	
	float4 LeftOvers = 1 - (minColor + maxColor);

	r = right * maxColor.x + left * minColor.x + (LeftOvers.x * minChn);
	g = right * maxColor.y + left * minColor.y + (LeftOvers.y * minChn);
	b = right * maxColor.z + left * minColor.z + (LeftOvers.z * minChn);
	
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
