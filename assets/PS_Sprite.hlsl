// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//
// Copyright (c) Microsoft Corporation. All rights reserved
//----------------------------------------------------------------------
Texture2D SimpleTexture : register(t0);
SamplerState TextureSampler : register(s0);

struct PixelInputType
{
    float4 position : SV_POSITION;
	float4 color : COLOR;
	float2 tex : TEXCOORD0;
};


float4 main(PixelInputType input) : SV_TARGET
{
	float4 inputColor = input.color;

	float4 textureColor = SimpleTexture.Sample(TextureSampler, input.tex);

	float4 finalColor = textureColor * inputColor;
			
	return finalColor;
}
