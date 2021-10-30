
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//
// Copyright (c) Microsoft Corporation. All rights reserved
//----------------------------------------------------------------------

Texture2D SimpleTexture : register(t0);
SamplerState TextureSampler : register(s0);

cbuffer SimpleConstantBuffer : register(b2)
{
	float4 color;
};

struct PixelInputType
{
    float4 position : SV_POSITION;
	float3 normal : NORMAL;
    float2 tex : TEXCOORD0;
};

float4 main(PixelInputType input) : SV_TARGET
{	
	float3 lightDirection = normalize(float3(1, 0.5, 0.5f));
    float4 texelColor = SimpleTexture.Sample(TextureSampler, input.tex);
    float lightMagnitude = saturate(dot( input.normal, lightDirection) + 1.f);
	
	lightMagnitude = clamp(lightMagnitude, 0.5f, 1.0f);

    float4 finalColor = texelColor * lightMagnitude;
	finalColor.a = texelColor.a;
	
	finalColor *= color;

	//Alpha testing (no default testing for dx11, no fixed pipeline :D)
	if (finalColor.a < 0.01f)
		discard; 

	return finalColor;
}
