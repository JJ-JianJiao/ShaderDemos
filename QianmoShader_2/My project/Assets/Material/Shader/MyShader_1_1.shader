Shader "JJ_Shaders/0.Shader_01_1"
{
	Properties
	{
		//Properties for water shader
		_waveScale("Wave scale", Range(0.02, 0.15)) = 0.07 //Scroll bar
		_ReflDistort("Reflection distort", Range(0,1.5)) = 0.5
		_RefrDistort("Refraction distort", Range(0,1.5)) = 0.4
		_RefrColor("Refraction color", Color) = (.32,.28,.92,1) 
		_ReflectionTex("Enviromment Reflction", 2D) = ""{}
		_RefractionTex("Environment Refraction", 2D) = ""{}
		_Fresnel("Fresnel (A)", 2D) = "" {}
		_BumpMap("Bumpmap (RGB)", 2D) = "" {}

	}

	SubShader
	{
		Pass
		{
			//Set Texture
			SetTexture[_MainTex]{combine texture}
		}
	}


	Fallback "Diffuse"
}