//材质颜色&开启光照的Shader
Shader "JJ_Shaders/0.Shader_01_3"
{
	SubShader
	{
		Pass
		{
			Material
			{
				//将漫反射和环境反射颜色设为相同
				//Diffuse(0.9,0.5,0.4,1)
				//Ambient(0.9,0.5,0.4,1)

				Diffuse(0.1,0.5,0.1,1)
				Ambient(0.1,0.5,0.1,1)
			}
			
			//Turn on Light
			Lighting On
		}
	}
}