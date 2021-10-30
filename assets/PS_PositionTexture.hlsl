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
	float2 tex : TEXCOORD0;
};


float4 main(PixelInputType input) : SV_TARGET
{	
	float4 textureColor = SimpleTexture.Sample(TextureSampler, input.tex);
	
	textureColor.r *= textureColor.a;
	textureColor.b *= textureColor.a;
	textureColor.g *= textureColor.a;

	float4 finalColor = textureColor;
	
	//If the pixel is not fully white and the alpha is 0, than discard the pixel. If the pixel is fully white, than no matter what, dont discard it
	if ( finalColor.a < 0.005f )
		discard;
		
	return finalColor;
}
