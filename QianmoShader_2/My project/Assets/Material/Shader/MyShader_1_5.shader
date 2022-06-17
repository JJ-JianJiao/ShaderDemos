//3.可调漫反射光的Shader
Shader "JJ_Shaders/0.Shader_01_5"
{

	Properties
	{
		_MainColor("Main Color", Color) = (1,1,1,0)
		_SpecColor("Specular Color", Color) = (1,1,1,1)
		_Emission("Emission Color", Color) = (0,0,0,0)
		_Shininess("Shinesee Color", Range(0.01,1)) = 0.7
	}

	SubShader
	{
		Pass
		{
			Material
			{
				Diffuse[_MainColor]
				Ambient[_MainColor]
				Shininess[_Shininess]
				Specular[_SpecColor]
				Emission[_Emission]
			}
			Lighting On

		}

	}

}
