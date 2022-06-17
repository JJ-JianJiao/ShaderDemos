Shader "JJ Shader Demos/Culling_03"
{
	Properties
	{
		_Color("Main Color", Color) = (1,1,1,0)
		_SpecColor("Specular Color", Color) = (1,1,1,1)
		_Emission("Emission Color", Color) = (0,0,0,0)
		_Shininess("Shininess", Range(0.01, 1)) = 0.7
		_MainTex("Basic Texture",2D) = "white"{}

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
		//【2】开启光照
		Lighting On
		//【3】开启独立镜面反射
		SeparateSpecular On

		//4.开启透明的混合 (alpha blending)
		Blend SrcAlpha OneMinusSrcAlpha

		//-----------------------【通道一】-----------------------
		//		说明：渲染对象的背面部分
		//-------------------------------------------------------
		Pass
		{
			Cull Front	//不绘制面向观察者的几何面
			SetTexture[_MainTex]
			{
				Combine Primary * Texture
			}
		}
		
		//-----------------------【通道一】-----------------------
		//		说明：渲染对象背对我们的部分
		//-------------------------------------------------------
		Pass
		{
			Cull Back	//不绘制背离观察者的几何面
			SetTexture[_MainTex]
			{
				Combine Primary * Texture
			}
		}
	}
}