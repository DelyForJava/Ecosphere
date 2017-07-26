// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32945,y:32579,varname:node_4795,prsc:2|emission-4786-OUT,alpha-5246-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31853,y:32449,ptovrint:False,ptlb:MainTex01,ptin:_MainTex01,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8754-UVOUT;n:type:ShaderForge.SFN_Color,id:797,x:31812,y:32685,ptovrint:True,ptlb:Color01,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:8754,x:31663,y:32449,varname:node_8754,prsc:2,spu:1,spv:0|UVIN-9194-UVOUT,DIST-7759-OUT;n:type:ShaderForge.SFN_TexCoord,id:9194,x:31374,y:32432,varname:node_9194,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3815,x:31225,y:32615,varname:node_3815,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7759,x:31425,y:32592,varname:node_7759,prsc:2|A-3815-T,B-511-OUT;n:type:ShaderForge.SFN_ValueProperty,id:511,x:31225,y:32788,ptovrint:False,ptlb:Tex01_speed,ptin:_Tex01_speed,varname:node_511,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:323,x:31219,y:33294,ptovrint:False,ptlb:Tex02_speed,ptin:_Tex02_speed,varname:_Tex01_speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Time,id:1894,x:31219,y:33121,varname:node_1894,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7902,x:31419,y:33098,varname:node_7902,prsc:2|A-1894-T,B-323-OUT;n:type:ShaderForge.SFN_TexCoord,id:7823,x:31368,y:32938,varname:node_7823,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4201,x:31657,y:32955,varname:node_4201,prsc:2,spu:1,spv:0|UVIN-7823-UVOUT,DIST-7902-OUT;n:type:ShaderForge.SFN_Tex2d,id:2869,x:31859,y:32955,ptovrint:False,ptlb:MainTex02,ptin:_MainTex02,varname:_MainTex02,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:afcd8ea767fe22c45b5de94c44627151,ntxv:0,isnm:False|UVIN-4201-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2474,x:32155,y:32502,varname:node_2474,prsc:2|A-6074-RGB,B-797-RGB;n:type:ShaderForge.SFN_Multiply,id:2902,x:32135,y:32950,varname:node_2902,prsc:2|A-2869-RGB,B-4188-RGB;n:type:ShaderForge.SFN_Multiply,id:4786,x:32547,y:32534,varname:node_4786,prsc:2|A-2474-OUT,B-5973-RGB,C-2902-OUT,D-6107-OUT;n:type:ShaderForge.SFN_VertexColor,id:5973,x:32060,y:32736,varname:node_5973,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5246,x:32577,y:32919,varname:node_5246,prsc:2|A-6074-A,B-5973-A,C-2869-A,D-4125-A,E-6107-OUT;n:type:ShaderForge.SFN_Color,id:4188,x:31859,y:33196,ptovrint:False,ptlb:Color02,ptin:_Color02,varname:node_4188,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4125,x:32135,y:33147,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_4125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6107,x:32272,y:32780,ptovrint:False,ptlb:Lighten,ptin:_Lighten,varname:node_6107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:6074-797-511-2869-323-4188-4125-6107;pass:END;sub:END;*/

Shader "Shader Forge/Fx_Particle_UV" {
    Properties {
        _MainTex01 ("MainTex01", 2D) = "white" {}
        [HDR]_TintColor ("Color01", Color) = (0.5,0.5,0.5,1)
        _Tex01_speed ("Tex01_speed", Float ) = 1
        _MainTex02 ("MainTex02", 2D) = "white" {}
        _Tex02_speed ("Tex02_speed", Float ) = -1
        [HDR]_Color02 ("Color02", Color) = (0.5,0.5,0.5,1)
        _Mask ("Mask", 2D) = "white" {}
        _Lighten ("Lighten", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex01; uniform float4 _MainTex01_ST;
            uniform float4 _TintColor;
            uniform float _Tex01_speed;
            uniform float _Tex02_speed;
            uniform sampler2D _MainTex02; uniform float4 _MainTex02_ST;
            uniform float4 _Color02;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Lighten;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_3815 = _Time + _TimeEditor;
                float2 node_8754 = (i.uv0+(node_3815.g*_Tex01_speed)*float2(1,0));
                float4 _MainTex01_var = tex2D(_MainTex01,TRANSFORM_TEX(node_8754, _MainTex01));
                float4 node_1894 = _Time + _TimeEditor;
                float2 node_4201 = (i.uv0+(node_1894.g*_Tex02_speed)*float2(1,0));
                float4 _MainTex02_var = tex2D(_MainTex02,TRANSFORM_TEX(node_4201, _MainTex02));
                float3 emissive = ((_MainTex01_var.rgb*_TintColor.rgb)*i.vertexColor.rgb*(_MainTex02_var.rgb*_Color02.rgb)*_Lighten);
                float3 finalColor = emissive;
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex01_var.a*i.vertexColor.a*_MainTex02_var.a*_Mask_var.a*_Lighten));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
