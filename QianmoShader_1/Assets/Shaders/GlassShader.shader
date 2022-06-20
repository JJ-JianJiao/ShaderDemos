Shader "JJ Shader Demo/Glass"
{
	Properties
	{
		_Color("Main Color", color) = (1,1,1,0)
		_SpecColor("Specular", Color) = (1,1,1,1)
		_Emission("Emission", Color) = (0,0,0,0)
		_Shininess("Shininess", Range(0.01,1)) = 0.7
		_MainTex("Basic Texture", 2D) = "white"{}
	}

	SubShader
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

		SeparateSpecular On

		Blend SrcAlpha OneMinusSrcAlpha


		Pass
		{
			Cull Front
			SetTexture[_MainTex]
			{
				Combine Primary * Texture
			}
		}

		Pass
		{
			Cull Back
			SetTexture[_MainTex]
			{
				Combine Primary * Texture
			}
		}
	}
}