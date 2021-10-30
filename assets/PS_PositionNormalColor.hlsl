// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//
// Copyright (c) Microsoft Corporation. All rights reserved
//----------------------------------------------------------------------

struct PixelInputType
{
    float4 position : SV_POSITION;
	float3 normal : NORMAL;
	float4 color : COLOR;
};


float4 main(PixelInputType input) : SV_TARGET
{	
	 // In the vertex shader, the normals were transformed into the world space,
    // so the lighting vector here will be relative to the world space.
    //float3 lightDirection = normalize(float3(1, -1, 0));
	
    //float lightMagnitude = 0.8f * saturate(dot( input.normal, -lightDirection)) + 0.6f;
	
	//lightMagnitude = 1.0f;//clamp(lightMagnitude, 0.0f, 1.0f);
	
    return input.color;// * lightMagnitude;
}
