//3.可调漫反射光的Shader
Shader "JJ_Shaders/0.Shader_01_4"
{

	Properties
	{
		_MainColor("Main Color", Color) = (1,1,0.5,1)
	}

	SubShader
	{
		Pass
		{
			Material
			{
				Diffuse[_MainColor]
				Ambient[_MainColor]
			}
			Lighting On
	
		}
		
	}

}
