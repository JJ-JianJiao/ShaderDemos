Shader "JJ Shader/TextureAlphaAndAmbientCombine_3.2"
{
	Properties
	{
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
				constantColor(1,1,1,1)
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
