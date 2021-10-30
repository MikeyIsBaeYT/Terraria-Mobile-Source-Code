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

float4 ArmorColor(float4 texColor, float4 inputColor)
{
	float r = texColor.r;
	float g = texColor.g;
	float b = texColor.b;
	
	float brighestColor = max(max(r, g), b);

	//set the colors
	
	if (brighestColor > 0) 
	{
		r = 1 - r;
		g = 1 - g;
		b = 1 - b;
	}

	float4 color = float4(r, g, b, texColor.a);
    return color * inputColor;
}

float4 main(PixelInputType input) : SV_TARGET
{
	float4 textureColor = SimpleTexture.Sample(TextureSampler, input.tex.xy);

	float4 result = ArmorColor(textureColor, input.color);
		
	return result;
}