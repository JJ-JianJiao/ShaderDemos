Shader "JJ Shader Demos/Culling_02"
{
	Properties
	{
		_Color("Main Color", Color) = (1,1,1,0)
		_SpecColor("Specular Color", Color) = (1,1,1,1)
		_Emission("Emission Color", Color) = (0,0,0,0)
		_Shininess("Shininess Range", Range(0.01, 1)) = 0.7
		_MainTex("Main texture", 2D) = "white"{}
	}

		SubShader
		{
			Pass
			{
				Material
				{
					Diffuse[_Color]
					Ambient[_Color]
					Shininess[_Shininess]
					Specular[_SpecColor]
					Emission[_Emission]
				}

				Lighting On

				SetTexture[_MainTex]
				{
					Combine Primary * Texture
				}

			}

			Pass
			{
				Color(0,0,1,1)
				Cull Front
			}
		}
}