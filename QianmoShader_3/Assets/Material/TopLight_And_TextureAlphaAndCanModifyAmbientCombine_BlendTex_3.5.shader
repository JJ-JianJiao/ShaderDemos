Shader "JJ Shader/TextureAlphaAndCanModifyAmbientCombine_3.5"
{
	Properties
	{
		_IlluminCol("Ambient Color", Color) = (0,0,0,0)
		_Color("Main Color", Color) = (1,1,1,0)
		_SpecColor("Specular Color", Color) = (1,1,1,1)
		_Emission("Emission Color", Color) = (0,0,0,0)
		_Shininess("Shininess", Range(0.01,1)) = 0.7
		_MainTex("Basic Texture(RGB) - Ambient(A)", 2D) = "white"{}
		_BlendTex("Mix texture(RGBA)", 2D) = "white"{}

	}

		SubShader
	{
		Pass
		{
			//1.Set white top dot light
			Material
			{
				Diffuse[_Color]
				Ambient[_Color]
				Shininess[_Shininess]
				Specular[_SpecColor]
				Emission[_Emission]

			}
			
			//2. open lighting
			Lighting On

			//3. turn on separateSpecular
			SeparateSpecular On

			//4.using Texture Alpha combine color(1,1,1,1)
			SetTexture[_MainTex]
			{
				constantColor[_IlluminCol]
				combine constant lerp(texture) previous
			}

			//5.multiple with texture
			SetTexture[_MainTex]
			{
				combine previous * texture
			}

			//6. use mix texture
			SetTexture[_BlendTex] {combine previous*texture}

			//6. multiple top texture
			SetTexture[_MainTex] {
				Combine previous * primary DOUBLE, previous * primary
			}
		}
	}

}
