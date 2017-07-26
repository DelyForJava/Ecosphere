// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:1,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:32358,y:33004,varname:node_2865,prsc:2|emission-8417-OUT,alpha-753-OUT,voffset-9496-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:31873,y:33365,varname:node_6793,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9496,x:32072,y:33365,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6793-UVOUT;n:type:ShaderForge.SFN_Color,id:4354,x:31958,y:32771,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3931035,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3382,x:31958,y:32943,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_3382,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4039-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8417,x:32209,y:32847,varname:node_8417,prsc:2|A-4354-RGB,B-3382-RGB;n:type:ShaderForge.SFN_TexCoord,id:5037,x:30757,y:32942,varname:node_5037,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:5455,x:30947,y:32942,varname:node_5455,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5037-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4497,x:31110,y:32942,varname:node_4497,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5455-OUT;n:type:ShaderForge.SFN_ArcTan2,id:10,x:31298,y:32942,varname:node_10,prsc:2,attp:3|A-4497-G,B-4497-R;n:type:ShaderForge.SFN_Append,id:3009,x:31449,y:32942,varname:node_3009,prsc:2|A-10-OUT,B-10-OUT;n:type:ShaderForge.SFN_Rotator,id:4039,x:31698,y:32942,varname:node_4039,prsc:2|UVIN-3009-OUT;n:type:ShaderForge.SFN_TexCoord,id:4279,x:31028,y:33155,varname:node_4279,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:8503,x:31028,y:33340,varname:node_8503,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Distance,id:1838,x:31269,y:33155,varname:node_1838,prsc:2|A-4279-UVOUT,B-8503-OUT;n:type:ShaderForge.SFN_Power,id:50,x:31586,y:33156,varname:node_50,prsc:2|VAL-3498-OUT,EXP-9803-OUT;n:type:ShaderForge.SFN_Exp,id:9803,x:31568,y:33324,varname:node_9803,prsc:2,et:0|IN-4292-OUT;n:type:ShaderForge.SFN_Slider,id:4292,x:31184,y:33506,ptovrint:False,ptlb:intensities,ptin:_intensities,varname:node_4292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_RemapRange,id:3498,x:31425,y:33139,varname:node_3498,prsc:2,frmn:0,frmx:0.5,tomn:0,tomx:0.6|IN-1838-OUT;n:type:ShaderForge.SFN_Clamp01,id:8581,x:31822,y:33123,varname:node_8581,prsc:2|IN-50-OUT;n:type:ShaderForge.SFN_Slider,id:3754,x:31873,y:33282,ptovrint:False,ptlb:inten,ptin:_inten,varname:node_3754,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:753,x:32107,y:33069,varname:node_753,prsc:2|A-8581-OUT,B-3754-OUT;proporder:4354-3382-4292-3754;pass:END;sub:END;*/

Shader "Shader Forge/FX_Camera" {
    Properties {
        _Color ("Color", Color) = (1,0.3931035,0,1)
        _Texture ("Texture", 2D) = "white" {}
        _intensities ("intensities", Range(0, 10)) = 1
        _inten ("inten", Range(0, 5)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+1"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _intensities;
            uniform float _inten;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz = float3((o.uv0*2.0+-1.0),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = v.vertex;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 node_1059 = _Time + _TimeEditor;
                float node_4039_ang = node_1059.g;
                float node_4039_spd = 1.0;
                float node_4039_cos = cos(node_4039_spd*node_4039_ang);
                float node_4039_sin = sin(node_4039_spd*node_4039_ang);
                float2 node_4039_piv = float2(0.5,0.5);
                float2 node_4497 = (i.uv0*2.0+-1.0).rg;
                float node_10 = (1-abs(atan2(node_4497.g,node_4497.r)/3.14159265359));
                float2 node_4039 = (mul(float2(node_10,node_10)-node_4039_piv,float2x2( node_4039_cos, -node_4039_sin, node_4039_sin, node_4039_cos))+node_4039_piv);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_4039, _Texture));
                float3 emissive = (_Color.rgb*_Texture_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(saturate(pow((distance(i.uv0,float2(0.5,0.5))*1.2+0.0),exp(_intensities)))*_inten));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
