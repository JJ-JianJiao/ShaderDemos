Shader "JJ_Shaders/0.Shader_01"
{
	//-----------------------Properties----------------------
	Properties{
		//Texture
		_MainTex("Basic Texture", 2D) = "White"{TexGen ObjectLinear}
	}

	//----------------------SubShader-------------------------
	SubShader
	{
		//-----------------Pipeline------------------------
		Pass
		{
			//Set Texture
			SetTexture[_MainTex]{combine texture}
		}
	}


	//-------------------------------spare tire(haha)----------------
	Fallback "Diffuse"
}