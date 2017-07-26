// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|emission-5504-OUT,custl-4772-OUT,alpha-9169-OUT;n:type:ShaderForge.SFN_Lerp,id:6537,x:32068,y:32502,varname:node_6537,prsc:2|A-2149-RGB,B-9426-RGB,T-9629-OUT;n:type:ShaderForge.SFN_Color,id:2149,x:31701,y:32380,ptovrint:False,ptlb:1,ptin:_1,varname:node_2149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9426,x:31701,y:32540,ptovrint:False,ptlb:2,ptin:_2,varname:node_9426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9929006,c2:1,c3:0.4852941,c4:1;n:type:ShaderForge.SFN_Fresnel,id:9629,x:31801,y:32871,varname:node_9629,prsc:2|EXP-4992-OUT;n:type:ShaderForge.SFN_Vector1,id:4992,x:31547,y:33009,varname:node_4992,prsc:2,v1:1;n:type:ShaderForge.SFN_Fresnel,id:1161,x:31914,y:33068,varname:node_1161,prsc:2|EXP-2838-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2838,x:31641,y:33305,ptovrint:False,ptlb:glow,ptin:_glow,varname:node_2838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:3234,x:32126,y:32738,ptovrint:False,ptlb:glow_01,ptin:_glow_01,varname:node_3234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4a7ecf485f049427fb42936230bac779,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:464,x:32323,y:32563,varname:node_464,prsc:2|A-6537-OUT,B-9629-OUT;n:type:ShaderForge.SFN_Multiply,id:5504,x:32473,y:32675,varname:node_5504,prsc:2|A-464-OUT,B-3234-RGB;n:type:ShaderForge.SFN_Multiply,id:4772,x:32421,y:32888,varname:node_4772,prsc:2|A-6537-OUT,B-9629-OUT,C-3234-A;n:type:ShaderForge.SFN_Add,id:9169,x:32353,y:33085,varname:node_9169,prsc:2|A-9629-OUT,B-1161-OUT;proporder:2149-9426-2838-3234;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _1 ("1", Color) = (1,0,0,1)
        _2 ("2", Color) = (0.9929006,1,0.4852941,1)
        _glow ("glow", Float ) = 1
        _glow_01 ("glow_01", 2D) = "white" {}
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
            uniform float4 _1;
            uniform float4 _2;
            uniform float _glow;
            uniform sampler2D _glow_01; uniform float4 _glow_01_ST;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_9629 = pow(1.0-max(0,dot(normalDirection, viewDirection)),1.0);
                float3 node_6537 = lerp(_1.rgb,_2.rgb,node_9629);
                float4 _glow_01_var = tex2D(_glow_01,TRANSFORM_TEX(i.uv0, _glow_01));
                float3 emissive = ((node_6537*node_9629)*_glow_01_var.rgb);
                float3 finalColor = emissive + (node_6537*node_9629*_glow_01_var.a);
                fixed4 finalRGBA = fixed4(finalColor,(node_9629+pow(1.0-max(0,dot(normalDirection, viewDirection)),_glow)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
