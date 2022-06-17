//3.可调漫反射光的Shader
Shader "JJ_Shaders/0.Shader_01_6"
{

	Properties
	{
		_MainTex("Basic Texture", 2D) = "White"{TexGen SphereMap}
	}

	SubShader
	{
		Pass
		{
			SetTexture[_MainTex]{combine texture}
		}

	}

	Fallback "Diffuse"

}
