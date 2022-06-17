Shader "JJ Shader/AlphaTextureCombine_3.1"
{
	Properties
	{
		_MainTex("Basic Texture (RGB)", 2D) = "white"{}
		_BlendTex("Mix Texture(RGBA)", 2D) = "white"{}
	}

	SubShader
	{
		Pass
		{
			//Apply main texture
			SetTexture[_MainTex] {combine texture}
			//use multiple operater to combine Alpha texture
			SetTexture[_BlendTex]{combine texture * previous}
		}
	
	}



}