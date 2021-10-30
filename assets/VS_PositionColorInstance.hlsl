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
	float4 color0 : COLOR0;
	
	//Instance stuff:
	float4 instanceRow0 : TEXCOORD0;
	float4 instanceRow1 : TEXCOORD1;
	float4 instanceRow2 : TEXCOORD2;
	float4 instanceRow3 : TEXCOORD3;	
	float4 color1 : NORMAL;
	
};

struct PixelInputType
{
    float4 position : SV_POSITION;
	float4 color : COLOR0;
};

PixelInputType main(VertexInputType input)
{
    PixelInputType output;
	
	float4 pos = float4(input.position, 1.0f);

	matrix instanceMatrix;
	instanceMatrix[0] = input.instanceRow0;
	instanceMatrix[1] = input.instanceRow1;
	instanceMatrix[2] = input.instanceRow2;
	instanceMatrix[3] = input.instanceRow3;
	
    // Transform the vertex position into projection space.
    pos = mul(pos, worldMatrix);
	pos = mul(pos, instanceMatrix);	
    pos = mul(pos, viewMatrix);
    pos = mul(pos, projectionMatrix);
	
    output.position = pos;
	float4 clr = (input.color0 * input.color1);
	output.color = clr;
	

    return output;
}


