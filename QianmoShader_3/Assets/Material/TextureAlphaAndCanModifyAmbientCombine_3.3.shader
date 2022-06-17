Shader "JJ Shader/TextureAlphaAndCanModifyAmbientCombine_3.3"
{
	Properties
	{
		_IlluminCol("Ambient Color", Color) = (1,1,1,1)
		_MainTex("Basic Texture(RGB) - Ambient(A)", 2D) = "red"{}

	}

		SubShader
	{
		Pass
		{
			//1.Set white top dot light
			Material
			{
				Diffuse(1,1,1,1)
				Ambient(1,1,1,1)

			}
			
			//2. open lighting
			Lighting On

			//3.using Texture Alpha combine color(1,1,1,1)
			SetTexture[_MainTex]
			{
				constantColor[_IlluminCol]
				combine constant lerp(texture) previous
			}

			//4.multiple with texture
			SetTexture[_MainTex]
			{
				combine previous * texture
			}
		}
	}

}
