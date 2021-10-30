// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//
// Copyright (c) Microsoft Corporation. All rights reserved
//----------------------------------------------------------------------

cbuffer WorldBuffer : register(b0)
{
    matrix worldMatrix;
};

cbuffer ViewProjectionBuffer : register(b1)
{
    matrix viewMatrix;
    matrix projectionMatrix;
};

struct VertexInputType
{
    float3 position : POSITION;
	float3 normal : NORMAL;
	float4 color : COLOR;
};

struct PixelInputType
{
    float4 position : SV_POSITION;
	float3 normal : NORMAL;
	float4 color : COLOR;
};

PixelInputType main(VertexInputType input)
{
    PixelInputType output;
	
	float4 pos = float4(input.position, 1.0f);

    // Transform the vertex position into projection space.
    pos = mul(pos, viewMatrix);
    pos = mul(pos, projectionMatrix);
    output.position = pos;

    output.normal = normalize(input.normal);

	output.color = input.color;

    return output;
}


