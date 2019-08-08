<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pojo.user" %>
<%@ page import="pojo.myMessage" %>
<%@ page import="dao.impl.UserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: Crush
  Date: 2019/7/26
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mtime影评网</title>

    <link rel="dns-prefetch" href="https://p0.meituan.net/">
    <link rel="dns-prefetch" href="https://p1.meituan.net/">
    <link rel="dns-prefetch" href="https://ms0.meituan.net/">
    <link rel="dns-prefetch" href="https://s0.meituan.net/">
    <link rel="dns-prefetch" href="https://ms1.meituan.net/">
    <link rel="dns-prefetch" href="https://analytics.meituan.com/">
    <link rel="dns-prefetch" href="https://report.meituan.com/">
    <link rel="dns-prefetch" href="https://frep.meituan.com/">



    <meta name="keywords" content="电影,电视剧,票房,美剧,猫眼电影,电影排行榜,电影票,经典电影,在线评论·">
    <meta name="description" content="国内观众优选，用户流行的观影评论平台。">
    <meta http-equiv="cleartype" content="yes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="email=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">



    <link rel="stylesheet" href="./index_files/common.d0f96cc2.css">
    <link rel="stylesheet" href="./index_files/home-index.521afa7b.css">
    <!--<script  src="./index_files/stat.88d57c80.js"></script><script async="" defer="" charset="utf-8" src="./index_files/web.js"></script>
    <script>if(window.devicePixelRatio >= 2) { document.write('<link rel="stylesheet" href="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/image-2x.8ba7074d.css"/>') }</script>
  -->
    <meta name="msvalidate.01" content="F338006073F396CBBDA443AAB6A8BA47">
    <meta name="360-site-verification" content="6f1d12912a62a74ce2f1b3c2e75f6c23">
    <meta name="sogou_site_verification" content="uh9MkgvBm3">
    <style>
        @font-face {
            font-family: stonefont;
            src: url('//https://vfile.meituan.net/colorstone/db8ea33fb446de7f6cb3ae80518b536e3168.eot');
            src: url('//https://vfile.meituan.net/colorstone/db8ea33fb446de7f6cb3ae80518b536e3168.eot?#iefix') format('embedded-opentype'),
            url('//https://vfile.meituan.net/colorstone/51b8e4ce897e9dde078b7812ffaf20c12084.woff') format('woff');
        }

        .stonefont {
            font-family: stonefont;
        }
        .header .nav .navbar li a {
            text-align: center;
            display: inline-block;
            height: 80px;
            line-height: 80px;
            width: 120px;
            font-size: 18px;
            color: #333
        }
        .body{
            margin: -120px 300px ;
            width: 70%;
            height: 950px;

        }
        ul li {
            list-style-type: none;
        }
        .herder{
            width: 95%;
            margin: 5px 5px;
            height: 330px;

        }
        .left_img{
            margin: -15px 5px;
            width: 40px;
            height: 45px;



        }

        .right_header{

            margin: -50px 60px;
            width:900px;
            height: 30px;


        }

        .right_body{

            padding: 10px;
            margin: 65px 60px;
            width:900px;
            height:50px;

        }
        .down_body{

            margin: -60px 60px;
            width:900px;
            height: 150px;

        }
        #addMessage{
            width: 1000px;
            height: 500px;
            box-shadow: 5px 5px 5px #888888;
            border: 1px solid;
            margin: -100px 300px;
        }

        .imageDiv {
            display:inline-block;
            width:160px;
            height:130px;
            -webkit-box-sizing:border-box;
            -moz-box-sizing:border-box;
            box-sizing:border-box;
            border:1px /*dashed darkgray*/;
            background:#f8f8f8;
            position:relative;
            overflow:hidden;
            margin:10px
        }
        .cover {
            position:absolute;
            z-index:1;
            top:0;
            left:0;
            width:160px;
            height:130px;
            background-color:rgba(0,0,0,.3);
            display:none;
            line-height:125px;
            text-align:center;
            cursor:pointer;
        }
        .cover .delbtn {
            color:red;
            font-size:20px;
        }
        .imageDiv:hover .cover {
            display:block;
        }
        .addImages {
            display:inline-block;
            width:160px;
            height:130px;
            -webkit-box-sizing:border-box;
            -moz-box-sizing:border-box;
            box-sizing:border-box;
            border:1px /*dashed darkgray*/;
            background:#f8f8f8;
            position:relative;
            overflow:hidden;
            margin:10px;
        }
        .text-detail {
            margin-top:40px;
            text-align:center;
        }
        .text-detail span {
            font-size:40px;
        }
        .file {
            position:absolute;
            top:0;
            left:0;
            width:160px;
            height:130px;
            opacity:0;
        }

    </style>

    <script type="text/javascript" src="/js/jquery-3.2.1.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $.post("/LoginUser",function (data) {
                if(data==1){
                    $(".welcome")[0].innerHTML="您还未登录！";
                }else{
                    $(".welcome")[0].innerHTML=" 您好! "+data;}
            })

        })
    </script>


    <meta name="lx:autopv" content="off"><meta name="lx:appnm" content="movie"><meta name="lx:category" content="movie">
</head>
<body>

<%--顶部栏--%>
<div class="header" style="left: 0px;">
    <div class="header-inner">
        <a href="" class="logo" data-act="icon-click"><!--<img src="./index_files/sp190724_141454.jpg">-->
        </a>
        <div class="city-container" data-val="{currentcityid:30 }">
            <div class="city-selected">
                <div class="city-name">
                    深圳
                    <span class="caret"></span>
                </div>
            </div>
            <div class="city-list" data-val="{ localcityid: 30 }">
                <div class="city-list-header">定位城市：<a class="js-geo-city">深圳</a></div>

                <ul>
                    <li>
                        <span>A</span>
                        <div>
                            <a class="js-city-name" data-ci="150" data-val="{ choosecityid:150 }" data-act="cityChange-click">阿拉善盟</a><a class="js-city-name" data-ci="151" data-val="{ choosecityid:151 }" data-act="cityChange-click">鞍山</a><a class="js-city-name" data-ci="197" data-val="{ choosecityid:197 }" data-act="cityChange-click">安庆</a><a class="js-city-name" data-ci="238" data-val="{ choosecityid:238 }" data-act="cityChange-click">安阳</a><a class="js-city-name" data-ci="319" data-val="{ choosecityid:319 }" data-act="cityChange-click">阿坝</a><a class="js-city-name" data-ci="324" data-val="{ choosecityid:324 }" data-act="cityChange-click">安顺</a><a class="js-city-name" data-ci="359" data-val="{ choosecityid:359 }" data-act="cityChange-click">安康</a><a class="js-city-name" data-ci="400" data-val="{ choosecityid:400 }" data-act="cityChange-click">阿勒泰</a><a class="js-city-name" data-ci="394" data-val="{ choosecityid:394 }" data-act="cityChange-click">阿克苏</a><a class="js-city-name" data-ci="490" data-val="{ choosecityid:490 }" data-act="cityChange-click">安吉</a><a class="js-city-name" data-ci="588" data-val="{ choosecityid:588 }" data-act="cityChange-click">安丘</a><a class="js-city-name" data-ci="699" data-val="{ choosecityid:699 }" data-act="cityChange-click">安岳</a><a class="js-city-name" data-ci="807" data-val="{ choosecityid:807 }" data-act="cityChange-click">安平</a><a class="js-city-name" data-ci="873" data-val="{ choosecityid:873 }" data-act="cityChange-click">安宁</a><a class="js-city-name" data-ci="844" data-val="{ choosecityid:844 }" data-act="cityChange-click">安溪</a><a class="js-city-name" data-ci="1008" data-val="{ choosecityid:1008 }" data-act="cityChange-click">安化</a><a class="js-city-name" data-ci="1126" data-val="{ choosecityid:1126 }" data-act="cityChange-click">阿勒泰市</a><a class="js-city-name" data-ci="1068" data-val="{ choosecityid:1068 }" data-act="cityChange-click">安福</a>
                        </div>
                    </li>

                    <li>
                        <span>B</span>
                        <div>
                            <a class="js-city-name" data-ci="1" data-val="{ choosecityid:1 }" data-act="cityChange-click">北京</a><a class="js-city-name" data-ci="84" data-val="{ choosecityid:84 }" data-act="cityChange-click">保定</a><a class="js-city-name" data-ci="88" data-val="{ choosecityid:88 }" data-act="cityChange-click">蚌埠</a><a class="js-city-name" data-ci="140" data-val="{ choosecityid:140 }" data-act="cityChange-click">包头</a><a class="js-city-name" data-ci="153" data-val="{ choosecityid:153 }" data-act="cityChange-click">本溪</a><a class="js-city-name" data-ci="146" data-val="{ choosecityid:146 }" data-act="cityChange-click">巴彦淖尔</a><a class="js-city-name" data-ci="167" data-val="{ choosecityid:167 }" data-act="cityChange-click">白城</a><a class="js-city-name" data-ci="165" data-val="{ choosecityid:165 }" data-act="cityChange-click">白山</a><a class="js-city-name" data-ci="204" data-val="{ choosecityid:204 }" data-act="cityChange-click">亳州</a><a class="js-city-name" data-ci="233" data-val="{ choosecityid:233 }" data-act="cityChange-click">滨州</a><a class="js-city-name" data-ci="317" data-val="{ choosecityid:317 }" data-act="cityChange-click">巴中</a><a class="js-city-name" data-ci="292" data-val="{ choosecityid:292 }" data-act="cityChange-click">北海</a><a class="js-city-name" data-ci="297" data-val="{ choosecityid:297 }" data-act="cityChange-click">百色</a><a class="js-city-name" data-ci="327" data-val="{ choosecityid:327 }" data-act="cityChange-click">毕节</a><a class="js-city-name" data-ci="332" data-val="{ choosecityid:332 }" data-act="cityChange-click">保山</a><a class="js-city-name" data-ci="353" data-val="{ choosecityid:353 }" data-act="cityChange-click">宝鸡</a><a class="js-city-name" data-ci="363" data-val="{ choosecityid:363 }" data-act="cityChange-click">白银</a><a class="js-city-name" data-ci="393" data-val="{ choosecityid:393 }" data-act="cityChange-click">巴州</a><a class="js-city-name" data-ci="392" data-val="{ choosecityid:392 }" data-act="cityChange-click">博尔塔拉</a><a class="js-city-name" data-ci="533" data-val="{ choosecityid:533 }" data-act="cityChange-click">滨海</a><a class="js-city-name" data-ci="602" data-val="{ choosecityid:602 }" data-act="cityChange-click">宝应</a><a class="js-city-name" data-ci="681" data-val="{ choosecityid:681 }" data-act="cityChange-click">北流</a><a class="js-city-name" data-ci="698" data-val="{ choosecityid:698 }" data-act="cityChange-click">博爱</a><a class="js-city-name" data-ci="731" data-val="{ choosecityid:731 }" data-act="cityChange-click">北碚</a><a class="js-city-name" data-ci="783" data-val="{ choosecityid:783 }" data-act="cityChange-click">宝丰</a><a class="js-city-name" data-ci="887" data-val="{ choosecityid:887 }" data-act="cityChange-click">泌阳</a><a class="js-city-name" data-ci="852" data-val="{ choosecityid:852 }" data-act="cityChange-click">博兴</a><a class="js-city-name" data-ci="952" data-val="{ choosecityid:952 }" data-act="cityChange-click">博山</a><a class="js-city-name" data-ci="946" data-val="{ choosecityid:946 }" data-act="cityChange-click">璧山</a><a class="js-city-name" data-ci="915" data-val="{ choosecityid:915 }" data-act="cityChange-click">彬县</a><a class="js-city-name" data-ci="994" data-val="{ choosecityid:994 }" data-act="cityChange-click">宾阳</a><a class="js-city-name" data-ci="1102" data-val="{ choosecityid:1102 }" data-act="cityChange-click">博白县</a><a class="js-city-name" data-ci="1098" data-val="{ choosecityid:1098 }" data-act="cityChange-click">博罗县</a><a class="js-city-name" data-ci="1141" data-val="{ choosecityid:1141 }" data-act="cityChange-click">北镇市</a><a class="js-city-name" data-ci="1074" data-val="{ choosecityid:1074 }" data-act="cityChange-click">泊头市</a><a class="js-city-name" data-ci="1165" data-val="{ choosecityid:1165 }" data-act="cityChange-click">北安市</a><a class="js-city-name" data-ci="1193" data-val="{ choosecityid:1193 }" data-act="cityChange-click">巴彦县</a>
                        </div>
                    </li>

                    <li>
                        <span>C</span>
                        <div>
                            <a class="js-city-name" data-ci="45" data-val="{ choosecityid:45 }" data-act="cityChange-click">重庆</a><a class="js-city-name" data-ci="59" data-val="{ choosecityid:59 }" data-act="cityChange-click">成都</a><a class="js-city-name" data-ci="70" data-val="{ choosecityid:70 }" data-act="cityChange-click">长沙</a><a class="js-city-name" data-ci="89" data-val="{ choosecityid:89 }" data-act="cityChange-click">常州</a><a class="js-city-name" data-ci="116" data-val="{ choosecityid:116 }" data-act="cityChange-click">长春</a><a class="js-city-name" data-ci="127" data-val="{ choosecityid:127 }" data-act="cityChange-click">沧州</a><a class="js-city-name" data-ci="126" data-val="{ choosecityid:126 }" data-act="cityChange-click">承德</a><a class="js-city-name" data-ci="142" data-val="{ choosecityid:142 }" data-act="cityChange-click">赤峰</a><a class="js-city-name" data-ci="131" data-val="{ choosecityid:131 }" data-act="cityChange-click">长治</a><a class="js-city-name" data-ci="160" data-val="{ choosecityid:160 }" data-act="cityChange-click">朝阳</a><a class="js-city-name" data-ci="205" data-val="{ choosecityid:205 }" data-act="cityChange-click">池州</a><a class="js-city-name" data-ci="202" data-val="{ choosecityid:202 }" data-act="cityChange-click">巢湖</a><a class="js-city-name" data-ci="199" data-val="{ choosecityid:199 }" data-act="cityChange-click">滁州</a><a class="js-city-name" data-ci="287" data-val="{ choosecityid:287 }" data-act="cityChange-click">潮州</a><a class="js-city-name" data-ci="271" data-val="{ choosecityid:271 }" data-act="cityChange-click">郴州</a><a class="js-city-name" data-ci="268" data-val="{ choosecityid:268 }" data-act="cityChange-click">常德</a><a class="js-city-name" data-ci="301" data-val="{ choosecityid:301 }" data-act="cityChange-click">崇左</a><a class="js-city-name" data-ci="337" data-val="{ choosecityid:337 }" data-act="cityChange-click">楚雄</a><a class="js-city-name" data-ci="391" data-val="{ choosecityid:391 }" data-act="cityChange-click">昌吉</a><a class="js-city-name" data-ci="421" data-val="{ choosecityid:421 }" data-act="cityChange-click">从化</a><a class="js-city-name" data-ci="422" data-val="{ choosecityid:422 }" data-act="cityChange-click">常熟</a><a class="js-city-name" data-ci="463" data-val="{ choosecityid:463 }" data-act="cityChange-click">长乐</a><a class="js-city-name" data-ci="452" data-val="{ choosecityid:452 }" data-act="cityChange-click">长兴</a><a class="js-city-name" data-ci="451" data-val="{ choosecityid:451 }" data-act="cityChange-click">慈溪</a><a class="js-city-name" data-ci="527" data-val="{ choosecityid:527 }" data-act="cityChange-click">昌邑</a><a class="js-city-name" data-ci="627" data-val="{ choosecityid:627 }" data-act="cityChange-click">长葛</a><a class="js-city-name" data-ci="624" data-val="{ choosecityid:624 }" data-act="cityChange-click">苍南</a><a class="js-city-name" data-ci="700" data-val="{ choosecityid:700 }" data-act="cityChange-click">承德县</a><a class="js-city-name" data-ci="653" data-val="{ choosecityid:653 }" data-act="cityChange-click">赤壁</a><a class="js-city-name" data-ci="646" data-val="{ choosecityid:646 }" data-act="cityChange-click">崇州</a><a class="js-city-name" data-ci="660" data-val="{ choosecityid:660 }" data-act="cityChange-click">淳安</a><a class="js-city-name" data-ci="746" data-val="{ choosecityid:746 }" data-act="cityChange-click">曹妃甸</a><a class="js-city-name" data-ci="737" data-val="{ choosecityid:737 }" data-act="cityChange-click">昌乐</a><a class="js-city-name" data-ci="767" data-val="{ choosecityid:767 }" data-act="cityChange-click">磁县</a><a class="js-city-name" data-ci="801" data-val="{ choosecityid:801 }" data-act="cityChange-click">昌黎</a><a class="js-city-name" data-ci="811" data-val="{ choosecityid:811 }" data-act="cityChange-click">岑溪</a><a class="js-city-name" data-ci="798" data-val="{ choosecityid:798 }" data-act="cityChange-click">成安</a><a class="js-city-name" data-ci="795" data-val="{ choosecityid:795 }" data-act="cityChange-click">长垣</a><a class="js-city-name" data-ci="883" data-val="{ choosecityid:883 }" data-act="cityChange-click">曹县</a><a class="js-city-name" data-ci="890" data-val="{ choosecityid:890 }" data-act="cityChange-click">城阳</a><a class="js-city-name" data-ci="877" data-val="{ choosecityid:877 }" data-act="cityChange-click">茌平</a><a class="js-city-name" data-ci="954" data-val="{ choosecityid:954 }" data-act="cityChange-click">长汀</a><a class="js-city-name" data-ci="909" data-val="{ choosecityid:909 }" data-act="cityChange-click">城固</a><a class="js-city-name" data-ci="1018" data-val="{ choosecityid:1018 }" data-act="cityChange-click">赤水</a><a class="js-city-name" data-ci="993" data-val="{ choosecityid:993 }" data-act="cityChange-click">常山</a><a class="js-city-name" data-ci="981" data-val="{ choosecityid:981 }" data-act="cityChange-click">长寿</a><a class="js-city-name" data-ci="970" data-val="{ choosecityid:970 }" data-act="cityChange-click">潮安</a><a class="js-city-name" data-ci="969" data-val="{ choosecityid:969 }" data-act="cityChange-click">潮阳</a><a class="js-city-name" data-ci="968" data-val="{ choosecityid:968 }" data-act="cityChange-click">澄海</a><a class="js-city-name" data-ci="1100" data-val="{ choosecityid:1100 }" data-act="cityChange-click">长丰县</a><a class="js-city-name" data-ci="1097" data-val="{ choosecityid:1097 }" data-act="cityChange-click">茶陵</a><a class="js-city-name" data-ci="1092" data-val="{ choosecityid:1092 }" data-act="cityChange-click">常宁市</a><a class="js-city-name" data-ci="1150" data-val="{ choosecityid:1150 }" data-act="cityChange-click">苍溪县</a><a class="js-city-name" data-ci="1078" data-val="{ choosecityid:1078 }" data-act="cityChange-click">慈利</a><a class="js-city-name" data-ci="1157" data-val="{ choosecityid:1157 }" data-act="cityChange-click">长清区</a><a class="js-city-name" data-ci="1164" data-val="{ choosecityid:1164 }" data-act="cityChange-click">崇明区</a><a class="js-city-name" data-ci="1201" data-val="{ choosecityid:1201 }" data-act="cityChange-click">成武县</a><a class="js-city-name" data-ci="1205" data-val="{ choosecityid:1205 }" data-act="cityChange-click">澄江县</a>
                        </div>
                    </li>

                    <li>
                        <span>D</span>
                        <div>
                            <a class="js-city-name" data-ci="65" data-val="{ choosecityid:65 }" data-act="cityChange-click">大连</a><a class="js-city-name" data-ci="91" data-val="{ choosecityid:91 }" data-act="cityChange-click">东莞</a><a class="js-city-name" data-ci="90" data-val="{ choosecityid:90 }" data-act="cityChange-click">大庆</a><a class="js-city-name" data-ci="129" data-val="{ choosecityid:129 }" data-act="cityChange-click">大同</a><a class="js-city-name" data-ci="154" data-val="{ choosecityid:154 }" data-act="cityChange-click">丹东</a><a class="js-city-name" data-ci="178" data-val="{ choosecityid:178 }" data-act="cityChange-click">大兴安岭</a><a class="js-city-name" data-ci="223" data-val="{ choosecityid:223 }" data-act="cityChange-click">东营</a><a class="js-city-name" data-ci="231" data-val="{ choosecityid:231 }" data-act="cityChange-click">德州</a><a class="js-city-name" data-ci="305" data-val="{ choosecityid:305 }" data-act="cityChange-click">德阳</a><a class="js-city-name" data-ci="315" data-val="{ choosecityid:315 }" data-act="cityChange-click">达州</a><a class="js-city-name" data-ci="342" data-val="{ choosecityid:342 }" data-act="cityChange-click">德宏</a><a class="js-city-name" data-ci="341" data-val="{ choosecityid:341 }" data-act="cityChange-click">大理</a><a class="js-city-name" data-ci="344" data-val="{ choosecityid:344 }" data-act="cityChange-click">迪庆</a><a class="js-city-name" data-ci="370" data-val="{ choosecityid:370 }" data-act="cityChange-click">定西</a><a class="js-city-name" data-ci="434" data-val="{ choosecityid:434 }" data-act="cityChange-click">敦煌</a><a class="js-city-name" data-ci="431" data-val="{ choosecityid:431 }" data-act="cityChange-click">丹阳</a><a class="js-city-name" data-ci="478" data-val="{ choosecityid:478 }" data-act="cityChange-click">东台</a><a class="js-city-name" data-ci="477" data-val="{ choosecityid:477 }" data-act="cityChange-click">大丰</a><a class="js-city-name" data-ci="467" data-val="{ choosecityid:467 }" data-act="cityChange-click">德清</a><a class="js-city-name" data-ci="455" data-val="{ choosecityid:455 }" data-act="cityChange-click">东阳</a><a class="js-city-name" data-ci="491" data-val="{ choosecityid:491 }" data-act="cityChange-click">当阳</a><a class="js-city-name" data-ci="552" data-val="{ choosecityid:552 }" data-act="cityChange-click">登封</a><a class="js-city-name" data-ci="571" data-val="{ choosecityid:571 }" data-act="cityChange-click">儋州</a><a class="js-city-name" data-ci="539" data-val="{ choosecityid:539 }" data-act="cityChange-click">东港</a><a class="js-city-name" data-ci="635" data-val="{ choosecityid:635 }" data-act="cityChange-click">东兴</a><a class="js-city-name" data-ci="576" data-val="{ choosecityid:576 }" data-act="cityChange-click">都江堰</a><a class="js-city-name" data-ci="599" data-val="{ choosecityid:599 }" data-act="cityChange-click">大石桥</a><a class="js-city-name" data-ci="600" data-val="{ choosecityid:600 }" data-act="cityChange-click">大冶</a><a class="js-city-name" data-ci="686" data-val="{ choosecityid:686 }" data-act="cityChange-click">东方</a><a class="js-city-name" data-ci="679" data-val="{ choosecityid:679 }" data-act="cityChange-click">大通</a><a class="js-city-name" data-ci="651" data-val="{ choosecityid:651 }" data-act="cityChange-click">灯塔</a><a class="js-city-name" data-ci="642" data-val="{ choosecityid:642 }" data-act="cityChange-click">调兵山</a><a class="js-city-name" data-ci="662" data-val="{ choosecityid:662 }" data-act="cityChange-click">邓州</a><a class="js-city-name" data-ci="750" data-val="{ choosecityid:750 }" data-act="cityChange-click">电白</a><a class="js-city-name" data-ci="738" data-val="{ choosecityid:738 }" data-act="cityChange-click">东平</a><a class="js-city-name" data-ci="765" data-val="{ choosecityid:765 }" data-act="cityChange-click">定州</a><a class="js-city-name" data-ci="754" data-val="{ choosecityid:754 }" data-act="cityChange-click">东海</a><a class="js-city-name" data-ci="874" data-val="{ choosecityid:874 }" data-act="cityChange-click">达拉特旗</a><a class="js-city-name" data-ci="835" data-val="{ choosecityid:835 }" data-act="cityChange-click">郸城</a><a class="js-city-name" data-ci="836" data-val="{ choosecityid:836 }" data-act="cityChange-click">大荔</a><a class="js-city-name" data-ci="945" data-val="{ choosecityid:945 }" data-act="cityChange-click">大洼</a><a class="js-city-name" data-ci="910" data-val="{ choosecityid:910 }" data-act="cityChange-click">大竹</a><a class="js-city-name" data-ci="999" data-val="{ choosecityid:999 }" data-act="cityChange-click">东光</a><a class="js-city-name" data-ci="978" data-val="{ choosecityid:978 }" data-act="cityChange-click">敦化</a><a class="js-city-name" data-ci="971" data-val="{ choosecityid:971 }" data-act="cityChange-click">大邑</a><a class="js-city-name" data-ci="974" data-val="{ choosecityid:974 }" data-act="cityChange-click">砀山</a><a class="js-city-name" data-ci="1035" data-val="{ choosecityid:1035 }" data-act="cityChange-click">道县</a><a class="js-city-name" data-ci="1076" data-val="{ choosecityid:1076 }" data-act="cityChange-click">大安市</a><a class="js-city-name" data-ci="1168" data-val="{ choosecityid:1168 }" data-act="cityChange-click">定安县</a><a class="js-city-name" data-ci="1203" data-val="{ choosecityid:1203 }" data-act="cityChange-click">东明县</a><a class="js-city-name" data-ci="1204" data-val="{ choosecityid:1204 }" data-act="cityChange-click">定陶区</a><a class="js-city-name" data-ci="1208" data-val="{ choosecityid:1208 }" data-act="cityChange-click">定边县</a>
                        </div>
                    </li>

                    <li>
                        <span>E</span>
                        <div>
                            <a class="js-city-name" data-ci="144" data-val="{ choosecityid:144 }" data-act="cityChange-click">鄂尔多斯</a><a class="js-city-name" data-ci="254" data-val="{ choosecityid:254 }" data-act="cityChange-click">鄂州</a><a class="js-city-name" data-ci="261" data-val="{ choosecityid:261 }" data-act="cityChange-click">恩施</a><a class="js-city-name" data-ci="417" data-val="{ choosecityid:417 }" data-act="cityChange-click">峨眉山</a><a class="js-city-name" data-ci="568" data-val="{ choosecityid:568 }" data-act="cityChange-click">额尔古纳</a><a class="js-city-name" data-ci="989" data-val="{ choosecityid:989 }" data-act="cityChange-click">恩平</a><a class="js-city-name" data-ci="1172" data-val="{ choosecityid:1172 }" data-act="cityChange-click">额敏县</a>
                        </div>
                    </li>

                    <li>
                        <span>F</span>
                        <div>
                            <a class="js-city-name" data-ci="44" data-val="{ choosecityid:44 }" data-act="cityChange-click">福州</a><a class="js-city-name" data-ci="92" data-val="{ choosecityid:92 }" data-act="cityChange-click">佛山</a><a class="js-city-name" data-ci="152" data-val="{ choosecityid:152 }" data-act="cityChange-click">抚顺</a><a class="js-city-name" data-ci="156" data-val="{ choosecityid:156 }" data-act="cityChange-click">阜新</a><a class="js-city-name" data-ci="200" data-val="{ choosecityid:200 }" data-act="cityChange-click">阜阳</a><a class="js-city-name" data-ci="220" data-val="{ choosecityid:220 }" data-act="cityChange-click">抚州</a><a class="js-city-name" data-ci="293" data-val="{ choosecityid:293 }" data-act="cityChange-click">防城港</a><a class="js-city-name" data-ci="427" data-val="{ choosecityid:427 }" data-act="cityChange-click">涪陵</a><a class="js-city-name" data-ci="416" data-val="{ choosecityid:416 }" data-act="cityChange-click">富阳</a><a class="js-city-name" data-ci="462" data-val="{ choosecityid:462 }" data-act="cityChange-click">福清</a><a class="js-city-name" data-ci="480" data-val="{ choosecityid:480 }" data-act="cityChange-click">凤凰</a><a class="js-city-name" data-ci="545" data-val="{ choosecityid:545 }" data-act="cityChange-click">肥城</a><a class="js-city-name" data-ci="535" data-val="{ choosecityid:535 }" data-act="cityChange-click">阜宁</a><a class="js-city-name" data-ci="540" data-val="{ choosecityid:540 }" data-act="cityChange-click">奉化</a><a class="js-city-name" data-ci="677" data-val="{ choosecityid:677 }" data-act="cityChange-click">汾阳</a><a class="js-city-name" data-ci="689" data-val="{ choosecityid:689 }" data-act="cityChange-click">阜康</a><a class="js-city-name" data-ci="665" data-val="{ choosecityid:665 }" data-act="cityChange-click">凤城</a><a class="js-city-name" data-ci="742" data-val="{ choosecityid:742 }" data-act="cityChange-click">范县</a><a class="js-city-name" data-ci="735" data-val="{ choosecityid:735 }" data-act="cityChange-click">丰城</a><a class="js-city-name" data-ci="827" data-val="{ choosecityid:827 }" data-act="cityChange-click">封丘</a><a class="js-city-name" data-ci="792" data-val="{ choosecityid:792 }" data-act="cityChange-click">肥乡</a><a class="js-city-name" data-ci="774" data-val="{ choosecityid:774 }" data-act="cityChange-click">繁昌</a><a class="js-city-name" data-ci="888" data-val="{ choosecityid:888 }" data-act="cityChange-click">富顺</a><a class="js-city-name" data-ci="869" data-val="{ choosecityid:869 }" data-act="cityChange-click">抚松</a><a class="js-city-name" data-ci="862" data-val="{ choosecityid:862 }" data-act="cityChange-click">丰县</a><a class="js-city-name" data-ci="861" data-val="{ choosecityid:861 }" data-act="cityChange-click">扶风</a><a class="js-city-name" data-ci="937" data-val="{ choosecityid:937 }" data-act="cityChange-click">扶沟</a><a class="js-city-name" data-ci="924" data-val="{ choosecityid:924 }" data-act="cityChange-click">丰宁</a><a class="js-city-name" data-ci="921" data-val="{ choosecityid:921 }" data-act="cityChange-click">佛冈</a><a class="js-city-name" data-ci="916" data-val="{ choosecityid:916 }" data-act="cityChange-click">费县</a><a class="js-city-name" data-ci="980" data-val="{ choosecityid:980 }" data-act="cityChange-click">凤台</a><a class="js-city-name" data-ci="1142" data-val="{ choosecityid:1142 }" data-act="cityChange-click">肥西县</a><a class="js-city-name" data-ci="1031" data-val="{ choosecityid:1031 }" data-act="cityChange-click">奉新</a><a class="js-city-name" data-ci="1052" data-val="{ choosecityid:1052 }" data-act="cityChange-click">方城</a><a class="js-city-name" data-ci="1066" data-val="{ choosecityid:1066 }" data-act="cityChange-click">富源县</a><a class="js-city-name" data-ci="1070" data-val="{ choosecityid:1070 }" data-act="cityChange-click">分宜</a><a class="js-city-name" data-ci="1084" data-val="{ choosecityid:1084 }" data-act="cityChange-click">扶绥县</a><a class="js-city-name" data-ci="1152" data-val="{ choosecityid:1152 }" data-act="cityChange-click">凤翔县</a><a class="js-city-name" data-ci="1195" data-val="{ choosecityid:1195 }" data-act="cityChange-click">福安</a><a class="js-city-name" data-ci="1202" data-val="{ choosecityid:1202 }" data-act="cityChange-click">福鼎市</a><a class="js-city-name" data-ci="1209" data-val="{ choosecityid:1209 }" data-act="cityChange-click">府谷县</a>
                        </div>
                    </li>

                    <li>
                        <span>G</span>
                        <div>
                            <a class="js-city-name" data-ci="20" data-val="{ choosecityid:20 }" data-act="cityChange-click">广州</a><a class="js-city-name" data-ci="93" data-val="{ choosecityid:93 }" data-act="cityChange-click">桂林</a><a class="js-city-name" data-ci="107" data-val="{ choosecityid:107 }" data-act="cityChange-click">贵阳</a><a class="js-city-name" data-ci="217" data-val="{ choosecityid:217 }" data-act="cityChange-click">赣州</a><a class="js-city-name" data-ci="307" data-val="{ choosecityid:307 }" data-act="cityChange-click">广元</a><a class="js-city-name" data-ci="314" data-val="{ choosecityid:314 }" data-act="cityChange-click">广安</a><a class="js-city-name" data-ci="295" data-val="{ choosecityid:295 }" data-act="cityChange-click">贵港</a><a class="js-city-name" data-ci="320" data-val="{ choosecityid:320 }" data-act="cityChange-click">甘孜</a><a class="js-city-name" data-ci="373" data-val="{ choosecityid:373 }" data-act="cityChange-click">甘南</a><a class="js-city-name" data-ci="385" data-val="{ choosecityid:385 }" data-act="cityChange-click">固原</a><a class="js-city-name" data-ci="553" data-val="{ choosecityid:553 }" data-act="cityChange-click">巩义</a><a class="js-city-name" data-ci="570" data-val="{ choosecityid:570 }" data-act="cityChange-click">桂平</a><a class="js-city-name" data-ci="521" data-val="{ choosecityid:521 }" data-act="cityChange-click">高邮</a><a class="js-city-name" data-ci="541" data-val="{ choosecityid:541 }" data-act="cityChange-click">广饶</a><a class="js-city-name" data-ci="631" data-val="{ choosecityid:631 }" data-act="cityChange-click">高州</a><a class="js-city-name" data-ci="630" data-val="{ choosecityid:630 }" data-act="cityChange-click">个旧</a><a class="js-city-name" data-ci="629" data-val="{ choosecityid:629 }" data-act="cityChange-click">高碑店</a><a class="js-city-name" data-ci="638" data-val="{ choosecityid:638 }" data-act="cityChange-click">盖州</a><a class="js-city-name" data-ci="581" data-val="{ choosecityid:581 }" data-act="cityChange-click">公主岭</a><a class="js-city-name" data-ci="589" data-val="{ choosecityid:589 }" data-act="cityChange-click">高密</a><a class="js-city-name" data-ci="593" data-val="{ choosecityid:593 }" data-act="cityChange-click">广汉</a><a class="js-city-name" data-ci="595" data-val="{ choosecityid:595 }" data-act="cityChange-click">藁城</a><a class="js-city-name" data-ci="601" data-val="{ choosecityid:601 }" data-act="cityChange-click">高平</a><a class="js-city-name" data-ci="702" data-val="{ choosecityid:702 }" data-act="cityChange-click">格尔木</a><a class="js-city-name" data-ci="691" data-val="{ choosecityid:691 }" data-act="cityChange-click">古交</a><a class="js-city-name" data-ci="751" data-val="{ choosecityid:751 }" data-act="cityChange-click">灌云</a><a class="js-city-name" data-ci="752" data-val="{ choosecityid:752 }" data-act="cityChange-click">灌南</a><a class="js-city-name" data-ci="753" data-val="{ choosecityid:753 }" data-act="cityChange-click">赣榆</a><a class="js-city-name" data-ci="787" data-val="{ choosecityid:787 }" data-act="cityChange-click">共青城</a><a class="js-city-name" data-ci="771" data-val="{ choosecityid:771 }" data-act="cityChange-click">高安</a><a class="js-city-name" data-ci="780" data-val="{ choosecityid:780 }" data-act="cityChange-click">广德</a><a class="js-city-name" data-ci="866" data-val="{ choosecityid:866 }" data-act="cityChange-click">高陵</a><a class="js-city-name" data-ci="854" data-val="{ choosecityid:854 }" data-act="cityChange-click">高阳</a><a class="js-city-name" data-ci="911" data-val="{ choosecityid:911 }" data-act="cityChange-click">公安</a><a class="js-city-name" data-ci="1104" data-val="{ choosecityid:1104 }" data-act="cityChange-click">固始县</a><a class="js-city-name" data-ci="1174" data-val="{ choosecityid:1174 }" data-act="cityChange-click">光泽</a>
                        </div>
                    </li>

                    <li>
                        <span>H</span>
                        <div>
                            <a class="js-city-name" data-ci="50" data-val="{ choosecityid:50 }" data-act="cityChange-click">杭州</a><a class="js-city-name" data-ci="56" data-val="{ choosecityid:56 }" data-act="cityChange-click">合肥</a><a class="js-city-name" data-ci="95" data-val="{ choosecityid:95 }" data-act="cityChange-click">葫芦岛</a><a class="js-city-name" data-ci="94" data-val="{ choosecityid:94 }" data-act="cityChange-click">海口</a><a class="js-city-name" data-ci="105" data-val="{ choosecityid:105 }" data-act="cityChange-click">哈尔滨</a><a class="js-city-name" data-ci="123" data-val="{ choosecityid:123 }" data-act="cityChange-click">邯郸</a><a class="js-city-name" data-ci="139" data-val="{ choosecityid:139 }" data-act="cityChange-click">呼和浩特</a><a class="js-city-name" data-ci="128" data-val="{ choosecityid:128 }" data-act="cityChange-click">衡水</a><a class="js-city-name" data-ci="145" data-val="{ choosecityid:145 }" data-act="cityChange-click">呼伦贝尔</a><a class="js-city-name" data-ci="170" data-val="{ choosecityid:170 }" data-act="cityChange-click">鹤岗</a><a class="js-city-name" data-ci="186" data-val="{ choosecityid:186 }" data-act="cityChange-click">湖州</a><a class="js-city-name" data-ci="176" data-val="{ choosecityid:176 }" data-act="cityChange-click">黑河</a><a class="js-city-name" data-ci="180" data-val="{ choosecityid:180 }" data-act="cityChange-click">淮安</a><a class="js-city-name" data-ci="198" data-val="{ choosecityid:198 }" data-act="cityChange-click">黄山</a><a class="js-city-name" data-ci="193" data-val="{ choosecityid:193 }" data-act="cityChange-click">淮南</a><a class="js-city-name" data-ci="195" data-val="{ choosecityid:195 }" data-act="cityChange-click">淮北</a><a class="js-city-name" data-ci="239" data-val="{ choosecityid:239 }" data-act="cityChange-click">鹤壁</a><a class="js-city-name" data-ci="234" data-val="{ choosecityid:234 }" data-act="cityChange-click">菏泽</a><a class="js-city-name" data-ci="250" data-val="{ choosecityid:250 }" data-act="cityChange-click">黄石</a><a class="js-city-name" data-ci="273" data-val="{ choosecityid:273 }" data-act="cityChange-click">怀化</a><a class="js-city-name" data-ci="281" data-val="{ choosecityid:281 }" data-act="cityChange-click">惠州</a><a class="js-city-name" data-ci="284" data-val="{ choosecityid:284 }" data-act="cityChange-click">河源</a><a class="js-city-name" data-ci="258" data-val="{ choosecityid:258 }" data-act="cityChange-click">黄冈</a><a class="js-city-name" data-ci="265" data-val="{ choosecityid:265 }" data-act="cityChange-click">衡阳</a><a class="js-city-name" data-ci="298" data-val="{ choosecityid:298 }" data-act="cityChange-click">贺州</a><a class="js-city-name" data-ci="299" data-val="{ choosecityid:299 }" data-act="cityChange-click">河池</a><a class="js-city-name" data-ci="338" data-val="{ choosecityid:338 }" data-act="cityChange-click">红河</a><a class="js-city-name" data-ci="375" data-val="{ choosecityid:375 }" data-act="cityChange-click">海东</a><a class="js-city-name" data-ci="381" data-val="{ choosecityid:381 }" data-act="cityChange-click">海西</a><a class="js-city-name" data-ci="378" data-val="{ choosecityid:378 }" data-act="cityChange-click">海南州</a><a class="js-city-name" data-ci="357" data-val="{ choosecityid:357 }" data-act="cityChange-click">汉中</a><a class="js-city-name" data-ci="410" data-val="{ choosecityid:410 }" data-act="cityChange-click">花都</a><a class="js-city-name" data-ci="390" data-val="{ choosecityid:390 }" data-act="cityChange-click">哈密</a><a class="js-city-name" data-ci="424" data-val="{ choosecityid:424 }" data-act="cityChange-click">海宁</a><a class="js-city-name" data-ci="472" data-val="{ choosecityid:472 }" data-act="cityChange-click">惠阳</a><a class="js-city-name" data-ci="471" data-val="{ choosecityid:471 }" data-act="cityChange-click">惠东</a><a class="js-city-name" data-ci="464" data-val="{ choosecityid:464 }" data-act="cityChange-click">黄岛</a><a class="js-city-name" data-ci="504" data-val="{ choosecityid:504 }" data-act="cityChange-click">鹤山</a><a class="js-city-name" data-ci="505" data-val="{ choosecityid:505 }" data-act="cityChange-click">桦甸</a><a class="js-city-name" data-ci="506" data-val="{ choosecityid:506 }" data-act="cityChange-click">海城</a><a class="js-city-name" data-ci="564" data-val="{ choosecityid:564 }" data-act="cityChange-click">华阴</a><a class="js-city-name" data-ci="575" data-val="{ choosecityid:575 }" data-act="cityChange-click">霸州</a><a class="js-city-name" data-ci="573" data-val="{ choosecityid:573 }" data-act="cityChange-click">海阳</a><a class="js-city-name" data-ci="519" data-val="{ choosecityid:519 }" data-act="cityChange-click">海门</a><a class="js-city-name" data-ci="623" data-val="{ choosecityid:623 }" data-act="cityChange-click">海安</a><a class="js-city-name" data-ci="579" data-val="{ choosecityid:579 }" data-act="cityChange-click">侯马</a><a class="js-city-name" data-ci="598" data-val="{ choosecityid:598 }" data-act="cityChange-click">河津</a><a class="js-city-name" data-ci="685" data-val="{ choosecityid:685 }" data-act="cityChange-click">海林</a><a class="js-city-name" data-ci="672" data-val="{ choosecityid:672 }" data-act="cityChange-click">化州</a><a class="js-city-name" data-ci="650" data-val="{ choosecityid:650 }" data-act="cityChange-click">黄骅</a><a class="js-city-name" data-ci="645" data-val="{ choosecityid:645 }" data-act="cityChange-click">霍州</a><a class="js-city-name" data-ci="758" data-val="{ choosecityid:758 }" data-act="cityChange-click">淮阳</a><a class="js-city-name" data-ci="732" data-val="{ choosecityid:732 }" data-act="cityChange-click">合川</a><a class="js-city-name" data-ci="726" data-val="{ choosecityid:726 }" data-act="cityChange-click">海盐</a><a class="js-city-name" data-ci="816" data-val="{ choosecityid:816 }" data-act="cityChange-click">滑县</a><a class="js-city-name" data-ci="825" data-val="{ choosecityid:825 }" data-act="cityChange-click">惠安</a><a class="js-city-name" data-ci="806" data-val="{ choosecityid:806 }" data-act="cityChange-click">怀仁</a><a class="js-city-name" data-ci="800" data-val="{ choosecityid:800 }" data-act="cityChange-click">辉县</a><a class="js-city-name" data-ci="799" data-val="{ choosecityid:799 }" data-act="cityChange-click">户县</a><a class="js-city-name" data-ci="794" data-val="{ choosecityid:794 }" data-act="cityChange-click">和县</a><a class="js-city-name" data-ci="793" data-val="{ choosecityid:793 }" data-act="cityChange-click">含山</a><a class="js-city-name" data-ci="772" data-val="{ choosecityid:772 }" data-act="cityChange-click">汉阴</a><a class="js-city-name" data-ci="881" data-val="{ choosecityid:881 }" data-act="cityChange-click">河口</a><a class="js-city-name" data-ci="894" data-val="{ choosecityid:894 }" data-act="cityChange-click">辉南</a><a class="js-city-name" data-ci="867" data-val="{ choosecityid:867 }" data-act="cityChange-click">洪洞</a><a class="js-city-name" data-ci="851" data-val="{ choosecityid:851 }" data-act="cityChange-click">横店</a><a class="js-city-name" data-ci="856" data-val="{ choosecityid:856 }" data-act="cityChange-click">华亭</a><a class="js-city-name" data-ci="832" data-val="{ choosecityid:832 }" data-act="cityChange-click">韩城</a><a class="js-city-name" data-ci="928" data-val="{ choosecityid:928 }" data-act="cityChange-click">洪湖</a><a class="js-city-name" data-ci="1005" data-val="{ choosecityid:1005 }" data-act="cityChange-click">怀宁</a><a class="js-city-name" data-ci="977" data-val="{ choosecityid:977 }" data-act="cityChange-click">珲春</a><a class="js-city-name" data-ci="975" data-val="{ choosecityid:975 }" data-act="cityChange-click">霍邱</a><a class="js-city-name" data-ci="964" data-val="{ choosecityid:964 }" data-act="cityChange-click">海沧</a><a class="js-city-name" data-ci="1103" data-val="{ choosecityid:1103 }" data-act="cityChange-click">潢川县</a><a class="js-city-name" data-ci="1088" data-val="{ choosecityid:1088 }" data-act="cityChange-click">衡阳县</a><a class="js-city-name" data-ci="1090" data-val="{ choosecityid:1090 }" data-act="cityChange-click">衡山县</a><a class="js-city-name" data-ci="1091" data-val="{ choosecityid:1091 }" data-act="cityChange-click">衡东县</a><a class="js-city-name" data-ci="1105" data-val="{ choosecityid:1105 }" data-act="cityChange-click">贺兰县</a><a class="js-city-name" data-ci="1130" data-val="{ choosecityid:1130 }" data-act="cityChange-click">海伦市</a><a class="js-city-name" data-ci="1124" data-val="{ choosecityid:1124 }" data-act="cityChange-click">汉南区</a><a class="js-city-name" data-ci="1145" data-val="{ choosecityid:1145 }" data-act="cityChange-click">合江县</a><a class="js-city-name" data-ci="1042" data-val="{ choosecityid:1042 }" data-act="cityChange-click">怀远县</a><a class="js-city-name" data-ci="1065" data-val="{ choosecityid:1065 }" data-act="cityChange-click">会泽县</a><a class="js-city-name" data-ci="1080" data-val="{ choosecityid:1080 }" data-act="cityChange-click">河间市</a><a class="js-city-name" data-ci="1086" data-val="{ choosecityid:1086 }" data-act="cityChange-click">合浦县</a><a class="js-city-name" data-ci="1185" data-val="{ choosecityid:1185 }" data-act="cityChange-click">环县</a><a class="js-city-name" data-ci="1206" data-val="{ choosecityid:1206 }" data-act="cityChange-click">黄陵县</a><a class="js-city-name" data-ci="8001" data-val="{ choosecityid:8001 }" data-act="cityChange-click">华容</a>
                        </div>
                    </li>

                    <li>
                        <span>J</span>
                        <div>
                            <a class="js-city-name" data-ci="98" data-val="{ choosecityid:98 }" data-act="cityChange-click">锦州</a><a class="js-city-name" data-ci="96" data-val="{ choosecityid:96 }" data-act="cityChange-click">济南</a><a class="js-city-name" data-ci="97" data-val="{ choosecityid:97 }" data-act="cityChange-click">焦作</a><a class="js-city-name" data-ci="115" data-val="{ choosecityid:115 }" data-act="cityChange-click">九江</a><a class="js-city-name" data-ci="132" data-val="{ choosecityid:132 }" data-act="cityChange-click">晋城</a><a class="js-city-name" data-ci="134" data-val="{ choosecityid:134 }" data-act="cityChange-click">晋中</a><a class="js-city-name" data-ci="169" data-val="{ choosecityid:169 }" data-act="cityChange-click">鸡西</a><a class="js-city-name" data-ci="173" data-val="{ choosecityid:173 }" data-act="cityChange-click">佳木斯</a><a class="js-city-name" data-ci="161" data-val="{ choosecityid:161 }" data-act="cityChange-click">吉林</a><a class="js-city-name" data-ci="185" data-val="{ choosecityid:185 }" data-act="cityChange-click">嘉兴</a><a class="js-city-name" data-ci="188" data-val="{ choosecityid:188 }" data-act="cityChange-click">金华</a><a class="js-city-name" data-ci="218" data-val="{ choosecityid:218 }" data-act="cityChange-click">吉安</a><a class="js-city-name" data-ci="213" data-val="{ choosecityid:213 }" data-act="cityChange-click">景德镇</a><a class="js-city-name" data-ci="225" data-val="{ choosecityid:225 }" data-act="cityChange-click">济宁</a><a class="js-city-name" data-ci="255" data-val="{ choosecityid:255 }" data-act="cityChange-click">荆门</a><a class="js-city-name" data-ci="249" data-val="{ choosecityid:249 }" data-act="cityChange-click">济源</a><a class="js-city-name" data-ci="277" data-val="{ choosecityid:277 }" data-act="cityChange-click">江门</a><a class="js-city-name" data-ci="257" data-val="{ choosecityid:257 }" data-act="cityChange-click">荆州</a><a class="js-city-name" data-ci="288" data-val="{ choosecityid:288 }" data-act="cityChange-click">揭阳</a><a class="js-city-name" data-ci="368" data-val="{ choosecityid:368 }" data-act="cityChange-click">酒泉</a><a class="js-city-name" data-ci="362" data-val="{ choosecityid:362 }" data-act="cityChange-click">金昌</a><a class="js-city-name" data-ci="409" data-val="{ choosecityid:409 }" data-act="cityChange-click">嘉峪关</a><a class="js-city-name" data-ci="404" data-val="{ choosecityid:404 }" data-act="cityChange-click">江阴</a><a class="js-city-name" data-ci="439" data-val="{ choosecityid:439 }" data-act="cityChange-click">靖江</a><a class="js-city-name" data-ci="420" data-val="{ choosecityid:420 }" data-act="cityChange-click">晋江</a><a class="js-city-name" data-ci="460" data-val="{ choosecityid:460 }" data-act="cityChange-click">金坛</a><a class="js-city-name" data-ci="510" data-val="{ choosecityid:510 }" data-act="cityChange-click">江山</a><a class="js-city-name" data-ci="489" data-val="{ choosecityid:489 }" data-act="cityChange-click">嘉善</a><a class="js-city-name" data-ci="544" data-val="{ choosecityid:544 }" data-act="cityChange-click">晋州</a><a class="js-city-name" data-ci="515" data-val="{ choosecityid:515 }" data-act="cityChange-click">句容</a><a class="js-city-name" data-ci="536" data-val="{ choosecityid:536 }" data-act="cityChange-click">建湖</a><a class="js-city-name" data-ci="636" data-val="{ choosecityid:636 }" data-act="cityChange-click">介休</a><a class="js-city-name" data-ci="583" data-val="{ choosecityid:583 }" data-act="cityChange-click">胶州</a><a class="js-city-name" data-ci="594" data-val="{ choosecityid:594 }" data-act="cityChange-click">建德</a><a class="js-city-name" data-ci="605" data-val="{ choosecityid:605 }" data-act="cityChange-click">简阳</a><a class="js-city-name" data-ci="678" data-val="{ choosecityid:678 }" data-act="cityChange-click">集安</a><a class="js-city-name" data-ci="664" data-val="{ choosecityid:664 }" data-act="cityChange-click">即墨</a><a class="js-city-name" data-ci="756" data-val="{ choosecityid:756 }" data-act="cityChange-click">建阳</a><a class="js-city-name" data-ci="725" data-val="{ choosecityid:725 }" data-act="cityChange-click">蛟河</a><a class="js-city-name" data-ci="831" data-val="{ choosecityid:831 }" data-act="cityChange-click">监利</a><a class="js-city-name" data-ci="785" data-val="{ choosecityid:785 }" data-act="cityChange-click">郏县</a><a class="js-city-name" data-ci="882" data-val="{ choosecityid:882 }" data-act="cityChange-click">巨野</a><a class="js-city-name" data-ci="871" data-val="{ choosecityid:871 }" data-act="cityChange-click">江津</a><a class="js-city-name" data-ci="956" data-val="{ choosecityid:956 }" data-act="cityChange-click">金湖</a><a class="js-city-name" data-ci="948" data-val="{ choosecityid:948 }" data-act="cityChange-click">江都</a><a class="js-city-name" data-ci="941" data-val="{ choosecityid:941 }" data-act="cityChange-click">莒南</a><a class="js-city-name" data-ci="927" data-val="{ choosecityid:927 }" data-act="cityChange-click">江油</a><a class="js-city-name" data-ci="918" data-val="{ choosecityid:918 }" data-act="cityChange-click">京山</a><a class="js-city-name" data-ci="913" data-val="{ choosecityid:913 }" data-act="cityChange-click">缙云</a><a class="js-city-name" data-ci="900" data-val="{ choosecityid:900 }" data-act="cityChange-click">金乡</a><a class="js-city-name" data-ci="899" data-val="{ choosecityid:899 }" data-act="cityChange-click">嘉祥</a><a class="js-city-name" data-ci="1001" data-val="{ choosecityid:1001 }" data-act="cityChange-click">金沙</a><a class="js-city-name" data-ci="1003" data-val="{ choosecityid:1003 }" data-act="cityChange-click">泾县</a><a class="js-city-name" data-ci="963" data-val="{ choosecityid:963 }" data-act="cityChange-click">集美</a><a class="js-city-name" data-ci="1134" data-val="{ choosecityid:1134 }" data-act="cityChange-click">鄄城县</a><a class="js-city-name" data-ci="1146" data-val="{ choosecityid:1146 }" data-act="cityChange-click">靖边</a><a class="js-city-name" data-ci="1032" data-val="{ choosecityid:1032 }" data-act="cityChange-click">江川县</a><a class="js-city-name" data-ci="1038" data-val="{ choosecityid:1038 }" data-act="cityChange-click">江华瑶族自治县</a><a class="js-city-name" data-ci="1028" data-val="{ choosecityid:1028 }" data-act="cityChange-click">吉安县</a><a class="js-city-name" data-ci="1029" data-val="{ choosecityid:1029 }" data-act="cityChange-click">吉水县</a><a class="js-city-name" data-ci="1059" data-val="{ choosecityid:1059 }" data-act="cityChange-click">晋宁县</a><a class="js-city-name" data-ci="1061" data-val="{ choosecityid:1061 }" data-act="cityChange-click">江永</a><a class="js-city-name" data-ci="1085" data-val="{ choosecityid:1085 }" data-act="cityChange-click">建水县</a><a class="js-city-name" data-ci="1153" data-val="{ choosecityid:1153 }" data-act="cityChange-click">嘉鱼县</a><a class="js-city-name" data-ci="1188" data-val="{ choosecityid:1188 }" data-act="cityChange-click">祁县</a><a class="js-city-name" data-ci="1194" data-val="{ choosecityid:1194 }" data-act="cityChange-click">精河县</a><a class="js-city-name" data-ci="1197" data-val="{ choosecityid:1197 }" data-act="cityChange-click">靖西县</a>
                        </div>
                    </li>

                    <li>
                        <span>K</span>
                        <div>
                            <a class="js-city-name" data-ci="114" data-val="{ choosecityid:114 }" data-act="cityChange-click">昆明</a><a class="js-city-name" data-ci="235" data-val="{ choosecityid:235 }" data-act="cityChange-click">开封</a><a class="js-city-name" data-ci="403" data-val="{ choosecityid:403 }" data-act="cityChange-click">昆山</a><a class="js-city-name" data-ci="396" data-val="{ choosecityid:396 }" data-act="cityChange-click">喀什地区</a><a class="js-city-name" data-ci="388" data-val="{ choosecityid:388 }" data-act="cityChange-click">克拉玛依</a><a class="js-city-name" data-ci="502" data-val="{ choosecityid:502 }" data-act="cityChange-click">开平</a><a class="js-city-name" data-ci="603" data-val="{ choosecityid:603 }" data-act="cityChange-click">库尔勒</a><a class="js-city-name" data-ci="643" data-val="{ choosecityid:643 }" data-act="cityChange-click">奎屯</a><a class="js-city-name" data-ci="748" data-val="{ choosecityid:748 }" data-act="cityChange-click">开州区</a><a class="js-city-name" data-ci="880" data-val="{ choosecityid:880 }" data-act="cityChange-click">垦利</a><a class="js-city-name" data-ci="925" data-val="{ choosecityid:925 }" data-act="cityChange-click">宽城</a><a class="js-city-name" data-ci="1002" data-val="{ choosecityid:1002 }" data-act="cityChange-click">开阳</a><a class="js-city-name" data-ci="990" data-val="{ choosecityid:990 }" data-act="cityChange-click">开化</a>
                        </div>
                    </li>

                    <li>
                        <span>L</span>
                        <div>
                            <a class="js-city-name" data-ci="106" data-val="{ choosecityid:106 }" data-act="cityChange-click">廊坊</a><a class="js-city-name" data-ci="137" data-val="{ choosecityid:137 }" data-act="cityChange-click">临汾</a><a class="js-city-name" data-ci="138" data-val="{ choosecityid:138 }" data-act="cityChange-click">吕梁</a><a class="js-city-name" data-ci="157" data-val="{ choosecityid:157 }" data-act="cityChange-click">辽阳</a><a class="js-city-name" data-ci="163" data-val="{ choosecityid:163 }" data-act="cityChange-click">辽源</a><a class="js-city-name" data-ci="179" data-val="{ choosecityid:179 }" data-act="cityChange-click">连云港</a><a class="js-city-name" data-ci="203" data-val="{ choosecityid:203 }" data-act="cityChange-click">六安</a><a class="js-city-name" data-ci="192" data-val="{ choosecityid:192 }" data-act="cityChange-click">丽水</a><a class="js-city-name" data-ci="211" data-val="{ choosecityid:211 }" data-act="cityChange-click">龙岩</a><a class="js-city-name" data-ci="236" data-val="{ choosecityid:236 }" data-act="cityChange-click">洛阳</a><a class="js-city-name" data-ci="232" data-val="{ choosecityid:232 }" data-act="cityChange-click">聊城</a><a class="js-city-name" data-ci="230" data-val="{ choosecityid:230 }" data-act="cityChange-click">临沂</a><a class="js-city-name" data-ci="229" data-val="{ choosecityid:229 }" data-act="cityChange-click">莱芜</a><a class="js-city-name" data-ci="242" data-val="{ choosecityid:242 }" data-act="cityChange-click">漯河</a><a class="js-city-name" data-ci="274" data-val="{ choosecityid:274 }" data-act="cityChange-click">娄底</a><a class="js-city-name" data-ci="304" data-val="{ choosecityid:304 }" data-act="cityChange-click">泸州</a><a class="js-city-name" data-ci="310" data-val="{ choosecityid:310 }" data-act="cityChange-click">乐山</a><a class="js-city-name" data-ci="290" data-val="{ choosecityid:290 }" data-act="cityChange-click">柳州</a><a class="js-city-name" data-ci="300" data-val="{ choosecityid:300 }" data-act="cityChange-click">来宾</a><a class="js-city-name" data-ci="336" data-val="{ choosecityid:336 }" data-act="cityChange-click">临沧</a><a class="js-city-name" data-ci="345" data-val="{ choosecityid:345 }" data-act="cityChange-click">拉萨</a><a class="js-city-name" data-ci="322" data-val="{ choosecityid:322 }" data-act="cityChange-click">六盘水</a><a class="js-city-name" data-ci="321" data-val="{ choosecityid:321 }" data-act="cityChange-click">凉山</a><a class="js-city-name" data-ci="334" data-val="{ choosecityid:334 }" data-act="cityChange-click">丽江</a><a class="js-city-name" data-ci="372" data-val="{ choosecityid:372 }" data-act="cityChange-click">临夏</a><a class="js-city-name" data-ci="371" data-val="{ choosecityid:371 }" data-act="cityChange-click">陇南</a><a class="js-city-name" data-ci="361" data-val="{ choosecityid:361 }" data-act="cityChange-click">兰州</a><a class="js-city-name" data-ci="476" data-val="{ choosecityid:476 }" data-act="cityChange-click">兰溪</a><a class="js-city-name" data-ci="461" data-val="{ choosecityid:461 }" data-act="cityChange-click">临海</a><a class="js-city-name" data-ci="450" data-val="{ choosecityid:450 }" data-act="cityChange-click">溧阳</a><a class="js-city-name" data-ci="509" data-val="{ choosecityid:509 }" data-act="cityChange-click">耒阳</a><a class="js-city-name" data-ci="492" data-val="{ choosecityid:492 }" data-act="cityChange-click">龙口</a><a class="js-city-name" data-ci="567" data-val="{ choosecityid:567 }" data-act="cityChange-click">陆丰</a><a class="js-city-name" data-ci="561" data-val="{ choosecityid:561 }" data-act="cityChange-click">莱阳</a><a class="js-city-name" data-ci="513" data-val="{ choosecityid:513 }" data-act="cityChange-click">乐昌</a><a class="js-city-name" data-ci="529" data-val="{ choosecityid:529 }" data-act="cityChange-click">莱州</a><a class="js-city-name" data-ci="542" data-val="{ choosecityid:542 }" data-act="cityChange-click">临安</a><a class="js-city-name" data-ci="537" data-val="{ choosecityid:537 }" data-act="cityChange-click">临清</a><a class="js-city-name" data-ci="611" data-val="{ choosecityid:611 }" data-act="cityChange-click">乐陵</a><a class="js-city-name" data-ci="618" data-val="{ choosecityid:618 }" data-act="cityChange-click">龙海</a><a class="js-city-name" data-ci="619" data-val="{ choosecityid:619 }" data-act="cityChange-click">醴陵</a><a class="js-city-name" data-ci="617" data-val="{ choosecityid:617 }" data-act="cityChange-click">浏阳</a><a class="js-city-name" data-ci="620" data-val="{ choosecityid:620 }" data-act="cityChange-click">莱西</a><a class="js-city-name" data-ci="628" data-val="{ choosecityid:628 }" data-act="cityChange-click">廉江</a><a class="js-city-name" data-ci="634" data-val="{ choosecityid:634 }" data-act="cityChange-click">阆中</a><a class="js-city-name" data-ci="632" data-val="{ choosecityid:632 }" data-act="cityChange-click">乐平</a><a class="js-city-name" data-ci="596" data-val="{ choosecityid:596 }" data-act="cityChange-click">灵宝</a><a class="js-city-name" data-ci="606" data-val="{ choosecityid:606 }" data-act="cityChange-click">冷水江</a><a class="js-city-name" data-ci="683" data-val="{ choosecityid:683 }" data-act="cityChange-click">连州</a><a class="js-city-name" data-ci="675" data-val="{ choosecityid:675 }" data-act="cityChange-click">灵山</a><a class="js-city-name" data-ci="674" data-val="{ choosecityid:674 }" data-act="cityChange-click">滦南</a><a class="js-city-name" data-ci="690" data-val="{ choosecityid:690 }" data-act="cityChange-click">临江</a><a class="js-city-name" data-ci="688" data-val="{ choosecityid:688 }" data-act="cityChange-click">陵水</a><a class="js-city-name" data-ci="652" data-val="{ choosecityid:652 }" data-act="cityChange-click">鹿泉</a><a class="js-city-name" data-ci="655" data-val="{ choosecityid:655 }" data-act="cityChange-click">利川</a><a class="js-city-name" data-ci="670" data-val="{ choosecityid:670 }" data-act="cityChange-click">凌海</a><a class="js-city-name" data-ci="659" data-val="{ choosecityid:659 }" data-act="cityChange-click">老河口</a><a class="js-city-name" data-ci="745" data-val="{ choosecityid:745 }" data-act="cityChange-click">滦县</a><a class="js-city-name" data-ci="744" data-val="{ choosecityid:744 }" data-act="cityChange-click">乐亭</a><a class="js-city-name" data-ci="739" data-val="{ choosecityid:739 }" data-act="cityChange-click">临朐</a><a class="js-city-name" data-ci="766" data-val="{ choosecityid:766 }" data-act="cityChange-click">栾城</a><a class="js-city-name" data-ci="724" data-val="{ choosecityid:724 }" data-act="cityChange-click">连江</a><a class="js-city-name" data-ci="823" data-val="{ choosecityid:823 }" data-act="cityChange-click">隆昌</a><a class="js-city-name" data-ci="815" data-val="{ choosecityid:815 }" data-act="cityChange-click">林州</a><a class="js-city-name" data-ci="808" data-val="{ choosecityid:808 }" data-act="cityChange-click">临潼</a><a class="js-city-name" data-ci="809" data-val="{ choosecityid:809 }" data-act="cityChange-click">蓝田</a><a class="js-city-name" data-ci="791" data-val="{ choosecityid:791 }" data-act="cityChange-click">临漳</a><a class="js-city-name" data-ci="789" data-val="{ choosecityid:789 }" data-act="cityChange-click">灵石</a><a class="js-city-name" data-ci="786" data-val="{ choosecityid:786 }" data-act="cityChange-click">鲁山</a><a class="js-city-name" data-ci="889" data-val="{ choosecityid:889 }" data-act="cityChange-click">临猗</a><a class="js-city-name" data-ci="868" data-val="{ choosecityid:868 }" data-act="cityChange-click">柳河</a><a class="js-city-name" data-ci="839" data-val="{ choosecityid:839 }" data-act="cityChange-click">鹿邑</a><a class="js-city-name" data-ci="951" data-val="{ choosecityid:951 }" data-act="cityChange-click">临沭</a><a class="js-city-name" data-ci="939" data-val="{ choosecityid:939 }" data-act="cityChange-click">兰陵</a><a class="js-city-name" data-ci="938" data-val="{ choosecityid:938 }" data-act="cityChange-click">龙游</a><a class="js-city-name" data-ci="935" data-val="{ choosecityid:935 }" data-act="cityChange-click">栾川</a><a class="js-city-name" data-ci="934" data-val="{ choosecityid:934 }" data-act="cityChange-click">雷州</a><a class="js-city-name" data-ci="930" data-val="{ choosecityid:930 }" data-act="cityChange-click">隆尧</a><a class="js-city-name" data-ci="919" data-val="{ choosecityid:919 }" data-act="cityChange-click">陵川</a><a class="js-city-name" data-ci="912" data-val="{ choosecityid:912 }" data-act="cityChange-click">龙泉</a><a class="js-city-name" data-ci="905" data-val="{ choosecityid:905 }" data-act="cityChange-click">临邑</a><a class="js-city-name" data-ci="902" data-val="{ choosecityid:902 }" data-act="cityChange-click">利津</a><a class="js-city-name" data-ci="896" data-val="{ choosecityid:896 }" data-act="cityChange-click">梁山</a><a class="js-city-name" data-ci="1010" data-val="{ choosecityid:1010 }" data-act="cityChange-click">澧县</a><a class="js-city-name" data-ci="1011" data-val="{ choosecityid:1011 }" data-act="cityChange-click">辽中</a><a class="js-city-name" data-ci="976" data-val="{ choosecityid:976 }" data-act="cityChange-click">涟水</a><a class="js-city-name" data-ci="1119" data-val="{ choosecityid:1119 }" data-act="cityChange-click">临澧</a><a class="js-city-name" data-ci="1110" data-val="{ choosecityid:1110 }" data-act="cityChange-click">兰考县</a><a class="js-city-name" data-ci="1133" data-val="{ choosecityid:1133 }" data-act="cityChange-click">灵丘县</a><a class="js-city-name" data-ci="1121" data-val="{ choosecityid:1121 }" data-act="cityChange-click">利辛</a><a class="js-city-name" data-ci="1147" data-val="{ choosecityid:1147 }" data-act="cityChange-click">洛川县</a><a class="js-city-name" data-ci="1144" data-val="{ choosecityid:1144 }" data-act="cityChange-click">泸县</a><a class="js-city-name" data-ci="1143" data-val="{ choosecityid:1143 }" data-act="cityChange-click">溧水区</a><a class="js-city-name" data-ci="1138" data-val="{ choosecityid:1138 }" data-act="cityChange-click">禄丰县</a><a class="js-city-name" data-ci="1034" data-val="{ choosecityid:1034 }" data-act="cityChange-click">罗平县</a><a class="js-city-name" data-ci="1037" data-val="{ choosecityid:1037 }" data-act="cityChange-click">涟源市</a><a class="js-city-name" data-ci="1040" data-val="{ choosecityid:1040 }" data-act="cityChange-click">庐江县</a><a class="js-city-name" data-ci="1064" data-val="{ choosecityid:1064 }" data-act="cityChange-click">隆回</a><a class="js-city-name" data-ci="1056" data-val="{ choosecityid:1056 }" data-act="cityChange-click">临颍</a><a class="js-city-name" data-ci="1060" data-val="{ choosecityid:1060 }" data-act="cityChange-click">蓝山</a><a class="js-city-name" data-ci="1083" data-val="{ choosecityid:1083 }" data-act="cityChange-click">隆化县</a><a class="js-city-name" data-ci="1087" data-val="{ choosecityid:1087 }" data-act="cityChange-click">洛宁</a><a class="js-city-name" data-ci="1073" data-val="{ choosecityid:1073 }" data-act="cityChange-click">芦溪</a><a class="js-city-name" data-ci="1079" data-val="{ choosecityid:1079 }" data-act="cityChange-click">卢氏县</a><a class="js-city-name" data-ci="1163" data-val="{ choosecityid:1163 }" data-act="cityChange-click">罗定市</a><a class="js-city-name" data-ci="1171" data-val="{ choosecityid:1171 }" data-act="cityChange-click">乐东</a><a class="js-city-name" data-ci="1178" data-val="{ choosecityid:1178 }" data-act="cityChange-click">梁平</a><a class="js-city-name" data-ci="1183" data-val="{ choosecityid:1183 }" data-act="cityChange-click">临高县</a><a class="js-city-name" data-ci="1184" data-val="{ choosecityid:1184 }" data-act="cityChange-click">罗源县</a>
                        </div>
                    </li>

                    <li>
                        <span>M</span>
                        <div>
                            <a class="js-city-name" data-ci="175" data-val="{ choosecityid:175 }" data-act="cityChange-click">牡丹江</a><a class="js-city-name" data-ci="194" data-val="{ choosecityid:194 }" data-act="cityChange-click">马鞍山</a><a class="js-city-name" data-ci="279" data-val="{ choosecityid:279 }" data-act="cityChange-click">茂名</a><a class="js-city-name" data-ci="282" data-val="{ choosecityid:282 }" data-act="cityChange-click">梅州</a><a class="js-city-name" data-ci="306" data-val="{ choosecityid:306 }" data-act="cityChange-click">绵阳</a><a class="js-city-name" data-ci="312" data-val="{ choosecityid:312 }" data-act="cityChange-click">眉山</a><a class="js-city-name" data-ci="566" data-val="{ choosecityid:566 }" data-act="cityChange-click">密山</a><a class="js-city-name" data-ci="563" data-val="{ choosecityid:563 }" data-act="cityChange-click">漠河</a><a class="js-city-name" data-ci="572" data-val="{ choosecityid:572 }" data-act="cityChange-click">满洲里</a><a class="js-city-name" data-ci="610" data-val="{ choosecityid:610 }" data-act="cityChange-click">明光</a><a class="js-city-name" data-ci="584" data-val="{ choosecityid:584 }" data-act="cityChange-click">梅河口</a><a class="js-city-name" data-ci="694" data-val="{ choosecityid:694 }" data-act="cityChange-click">孟州</a><a class="js-city-name" data-ci="668" data-val="{ choosecityid:668 }" data-act="cityChange-click">麻城</a><a class="js-city-name" data-ci="872" data-val="{ choosecityid:872 }" data-act="cityChange-click">渑池</a><a class="js-city-name" data-ci="848" data-val="{ choosecityid:848 }" data-act="cityChange-click">眉县</a><a class="js-city-name" data-ci="860" data-val="{ choosecityid:860 }" data-act="cityChange-click">民权</a><a class="js-city-name" data-ci="838" data-val="{ choosecityid:838 }" data-act="cityChange-click">孟津</a><a class="js-city-name" data-ci="846" data-val="{ choosecityid:846 }" data-act="cityChange-click">牟平</a><a class="js-city-name" data-ci="944" data-val="{ choosecityid:944 }" data-act="cityChange-click">蒙阴</a><a class="js-city-name" data-ci="906" data-val="{ choosecityid:906 }" data-act="cityChange-click">绵竹</a><a class="js-city-name" data-ci="1116" data-val="{ choosecityid:1116 }" data-act="cityChange-click">蒙自市</a><a class="js-city-name" data-ci="1122" data-val="{ choosecityid:1122 }" data-act="cityChange-click">蒙城</a><a class="js-city-name" data-ci="1222" data-val="{ choosecityid:1222 }" data-act="cityChange-click">明水县</a><a class="js-city-name" data-ci="1216" data-val="{ choosecityid:1216 }" data-act="cityChange-click">米易县</a><a class="js-city-name" data-ci="1219" data-val="{ choosecityid:1219 }" data-act="cityChange-click">闽侯县</a><a class="js-city-name" data-ci="1210" data-val="{ choosecityid:1210 }" data-act="cityChange-click">勐腊县</a>
                        </div>
                    </li>

                    <li>
                        <span>N</span>
                        <div>
                            <a class="js-city-name" data-ci="51" data-val="{ choosecityid:51 }" data-act="cityChange-click">宁波</a><a class="js-city-name" data-ci="55" data-val="{ choosecityid:55 }" data-act="cityChange-click">南京</a><a class="js-city-name" data-ci="83" data-val="{ choosecityid:83 }" data-act="cityChange-click">南昌</a><a class="js-city-name" data-ci="82" data-val="{ choosecityid:82 }" data-act="cityChange-click">南通</a><a class="js-city-name" data-ci="99" data-val="{ choosecityid:99 }" data-act="cityChange-click">南宁</a><a class="js-city-name" data-ci="212" data-val="{ choosecityid:212 }" data-act="cityChange-click">宁德</a><a class="js-city-name" data-ci="210" data-val="{ choosecityid:210 }" data-act="cityChange-click">南平</a><a class="js-city-name" data-ci="244" data-val="{ choosecityid:244 }" data-act="cityChange-click">南阳</a><a class="js-city-name" data-ci="309" data-val="{ choosecityid:309 }" data-act="cityChange-click">内江</a><a class="js-city-name" data-ci="311" data-val="{ choosecityid:311 }" data-act="cityChange-click">南充</a><a class="js-city-name" data-ci="343" data-val="{ choosecityid:343 }" data-act="cityChange-click">怒江</a><a class="js-city-name" data-ci="547" data-val="{ choosecityid:547 }" data-act="cityChange-click">南沙</a><a class="js-city-name" data-ci="512" data-val="{ choosecityid:512 }" data-act="cityChange-click">宁海</a><a class="js-city-name" data-ci="520" data-val="{ choosecityid:520 }" data-act="cityChange-click">宁乡</a><a class="js-city-name" data-ci="621" data-val="{ choosecityid:621 }" data-act="cityChange-click">南安</a><a class="js-city-name" data-ci="687" data-val="{ choosecityid:687 }" data-act="cityChange-click">南雄</a><a class="js-city-name" data-ci="682" data-val="{ choosecityid:682 }" data-act="cityChange-click">讷河</a><a class="js-city-name" data-ci="741" data-val="{ choosecityid:741 }" data-act="cityChange-click">南乐</a><a class="js-city-name" data-ci="820" data-val="{ choosecityid:820 }" data-act="cityChange-click">宁津</a><a class="js-city-name" data-ci="813" data-val="{ choosecityid:813 }" data-act="cityChange-click">宁晋</a><a class="js-city-name" data-ci="775" data-val="{ choosecityid:775 }" data-act="cityChange-click">南陵</a><a class="js-city-name" data-ci="781" data-val="{ choosecityid:781 }" data-act="cityChange-click">宁国</a><a class="js-city-name" data-ci="779" data-val="{ choosecityid:779 }" data-act="cityChange-click">宁阳</a><a class="js-city-name" data-ci="931" data-val="{ choosecityid:931 }" data-act="cityChange-click">内丘</a><a class="js-city-name" data-ci="1013" data-val="{ choosecityid:1013 }" data-act="cityChange-click">南和</a><a class="js-city-name" data-ci="979" data-val="{ choosecityid:979 }" data-act="cityChange-click">内黄</a><a class="js-city-name" data-ci="1112" data-val="{ choosecityid:1112 }" data-act="cityChange-click">宁陵</a><a class="js-city-name" data-ci="1053" data-val="{ choosecityid:1053 }" data-act="cityChange-click">南部县</a><a class="js-city-name" data-ci="1075" data-val="{ choosecityid:1075 }" data-act="cityChange-click">南皮县</a><a class="js-city-name" data-ci="1224" data-val="{ choosecityid:1224 }" data-act="cityChange-click">宁远县</a><a class="js-city-name" data-ci="1166" data-val="{ choosecityid:1166 }" data-act="cityChange-click">嫩江县</a>
                        </div>
                    </li>

                    <li>
                        <span>P</span>
                        <div>
                            <a class="js-city-name" data-ci="158" data-val="{ choosecityid:158 }" data-act="cityChange-click">盘锦</a><a class="js-city-name" data-ci="207" data-val="{ choosecityid:207 }" data-act="cityChange-click">莆田</a><a class="js-city-name" data-ci="214" data-val="{ choosecityid:214 }" data-act="cityChange-click">萍乡</a><a class="js-city-name" data-ci="237" data-val="{ choosecityid:237 }" data-act="cityChange-click">平顶山</a><a class="js-city-name" data-ci="240" data-val="{ choosecityid:240 }" data-act="cityChange-click">濮阳</a><a class="js-city-name" data-ci="303" data-val="{ choosecityid:303 }" data-act="cityChange-click">攀枝花</a><a class="js-city-name" data-ci="335" data-val="{ choosecityid:335 }" data-act="cityChange-click">普洱</a><a class="js-city-name" data-ci="367" data-val="{ choosecityid:367 }" data-act="cityChange-click">平凉</a><a class="js-city-name" data-ci="493" data-val="{ choosecityid:493 }" data-act="cityChange-click">邳州</a><a class="js-city-name" data-ci="546" data-val="{ choosecityid:546 }" data-act="cityChange-click">普宁</a><a class="js-city-name" data-ci="524" data-val="{ choosecityid:524 }" data-act="cityChange-click">平湖</a><a class="js-city-name" data-ci="582" data-val="{ choosecityid:582 }" data-act="cityChange-click">平度</a><a class="js-city-name" data-ci="585" data-val="{ choosecityid:585 }" data-act="cityChange-click">彭州</a><a class="js-city-name" data-ci="587" data-val="{ choosecityid:587 }" data-act="cityChange-click">蓬莱</a><a class="js-city-name" data-ci="701" data-val="{ choosecityid:701 }" data-act="cityChange-click">鄱阳</a><a class="js-city-name" data-ci="761" data-val="{ choosecityid:761 }" data-act="cityChange-click">磐石</a><a class="js-city-name" data-ci="730" data-val="{ choosecityid:730 }" data-act="cityChange-click">浦江</a><a class="js-city-name" data-ci="805" data-val="{ choosecityid:805 }" data-act="cityChange-click">平潭</a><a class="js-city-name" data-ci="777" data-val="{ choosecityid:777 }" data-act="cityChange-click">平原</a><a class="js-city-name" data-ci="893" data-val="{ choosecityid:893 }" data-act="cityChange-click">平山</a><a class="js-city-name" data-ci="849" data-val="{ choosecityid:849 }" data-act="cityChange-click">濮阳县</a><a class="js-city-name" data-ci="833" data-val="{ choosecityid:833 }" data-act="cityChange-click">沛县</a><a class="js-city-name" data-ci="837" data-val="{ choosecityid:837 }" data-act="cityChange-click">蒲城</a><a class="js-city-name" data-ci="842" data-val="{ choosecityid:842 }" data-act="cityChange-click">盘县</a><a class="js-city-name" data-ci="847" data-val="{ choosecityid:847 }" data-act="cityChange-click">平江</a><a class="js-city-name" data-ci="950" data-val="{ choosecityid:950 }" data-act="cityChange-click">平邑</a><a class="js-city-name" data-ci="987" data-val="{ choosecityid:987 }" data-act="cityChange-click">平遥</a><a class="js-city-name" data-ci="991" data-val="{ choosecityid:991 }" data-act="cityChange-click">平果</a><a class="js-city-name" data-ci="972" data-val="{ choosecityid:972 }" data-act="cityChange-click">平阳</a><a class="js-city-name" data-ci="960" data-val="{ choosecityid:960 }" data-act="cityChange-click">平舆</a><a class="js-city-name" data-ci="1106" data-val="{ choosecityid:1106 }" data-act="cityChange-click">平罗县</a><a class="js-city-name" data-ci="1156" data-val="{ choosecityid:1156 }" data-act="cityChange-click">平阴县</a><a class="js-city-name" data-ci="1214" data-val="{ choosecityid:1214 }" data-act="cityChange-click">平昌县</a>
                        </div>
                    </li>

                    <li>
                        <span>Q</span>
                        <div>
                            <a class="js-city-name" data-ci="60" data-val="{ choosecityid:60 }" data-act="cityChange-click">青岛</a><a class="js-city-name" data-ci="110" data-val="{ choosecityid:110 }" data-act="cityChange-click">泉州</a><a class="js-city-name" data-ci="109" data-val="{ choosecityid:109 }" data-act="cityChange-click">齐齐哈尔</a><a class="js-city-name" data-ci="122" data-val="{ choosecityid:122 }" data-act="cityChange-click">秦皇岛</a><a class="js-city-name" data-ci="174" data-val="{ choosecityid:174 }" data-act="cityChange-click">七台河</a><a class="js-city-name" data-ci="189" data-val="{ choosecityid:189 }" data-act="cityChange-click">衢州</a><a class="js-city-name" data-ci="286" data-val="{ choosecityid:286 }" data-act="cityChange-click">清远</a><a class="js-city-name" data-ci="294" data-val="{ choosecityid:294 }" data-act="cityChange-click">钦州</a><a class="js-city-name" data-ci="326" data-val="{ choosecityid:326 }" data-act="cityChange-click">黔西南</a><a class="js-city-name" data-ci="330" data-val="{ choosecityid:330 }" data-act="cityChange-click">曲靖</a><a class="js-city-name" data-ci="328" data-val="{ choosecityid:328 }" data-act="cityChange-click">黔东南</a><a class="js-city-name" data-ci="329" data-val="{ choosecityid:329 }" data-act="cityChange-click">黔南</a><a class="js-city-name" data-ci="369" data-val="{ choosecityid:369 }" data-act="cityChange-click">庆阳</a><a class="js-city-name" data-ci="430" data-val="{ choosecityid:430 }" data-act="cityChange-click">迁安</a><a class="js-city-name" data-ci="418" data-val="{ choosecityid:418 }" data-act="cityChange-click">琼海</a><a class="js-city-name" data-ci="507" data-val="{ choosecityid:507 }" data-act="cityChange-click">曲阜</a><a class="js-city-name" data-ci="500" data-val="{ choosecityid:500 }" data-act="cityChange-click">启东</a><a class="js-city-name" data-ci="496" data-val="{ choosecityid:496 }" data-act="cityChange-click">青州</a><a class="js-city-name" data-ci="550" data-val="{ choosecityid:550 }" data-act="cityChange-click">潜江</a><a class="js-city-name" data-ci="644" data-val="{ choosecityid:644 }" data-act="cityChange-click">沁阳</a><a class="js-city-name" data-ci="647" data-val="{ choosecityid:647 }" data-act="cityChange-click">邛崃</a><a class="js-city-name" data-ci="740" data-val="{ choosecityid:740 }" data-act="cityChange-click">清丰</a><a class="js-city-name" data-ci="727" data-val="{ choosecityid:727 }" data-act="cityChange-click">齐河</a><a class="js-city-name" data-ci="864" data-val="{ choosecityid:864 }" data-act="cityChange-click">淇县</a><a class="js-city-name" data-ci="865" data-val="{ choosecityid:865 }" data-act="cityChange-click">全椒</a><a class="js-city-name" data-ci="929" data-val="{ choosecityid:929 }" data-act="cityChange-click">清河</a><a class="js-city-name" data-ci="922" data-val="{ choosecityid:922 }" data-act="cityChange-click">青田</a><a class="js-city-name" data-ci="914" data-val="{ choosecityid:914 }" data-act="cityChange-click">栖霞</a><a class="js-city-name" data-ci="1020" data-val="{ choosecityid:1020 }" data-act="cityChange-click">青县</a><a class="js-city-name" data-ci="1004" data-val="{ choosecityid:1004 }" data-act="cityChange-click">潜山</a><a class="js-city-name" data-ci="998" data-val="{ choosecityid:998 }" data-act="cityChange-click">庆云</a><a class="js-city-name" data-ci="1089" data-val="{ choosecityid:1089 }" data-act="cityChange-click">祁东县</a><a class="js-city-name" data-ci="1115" data-val="{ choosecityid:1115 }" data-act="cityChange-click">杞县</a><a class="js-city-name" data-ci="1107" data-val="{ choosecityid:1107 }" data-act="cityChange-click">庆安县</a><a class="js-city-name" data-ci="1131" data-val="{ choosecityid:1131 }" data-act="cityChange-click">青冈县</a><a class="js-city-name" data-ci="1139" data-val="{ choosecityid:1139 }" data-act="cityChange-click">岐山县</a><a class="js-city-name" data-ci="1220" data-val="{ choosecityid:1220 }" data-act="cityChange-click">青阳县</a>
                        </div>
                    </li>

                    <li>
                        <span>R</span>
                        <div>
                            <a class="js-city-name" data-ci="228" data-val="{ choosecityid:228 }" data-act="cityChange-click">日照</a><a class="js-city-name" data-ci="348" data-val="{ choosecityid:348 }" data-act="cityChange-click">日喀则</a><a class="js-city-name" data-ci="475" data-val="{ choosecityid:475 }" data-act="cityChange-click">仁怀</a><a class="js-city-name" data-ci="469" data-val="{ choosecityid:469 }" data-act="cityChange-click">瑞安</a><a class="js-city-name" data-ci="501" data-val="{ choosecityid:501 }" data-act="cityChange-click">如皋</a><a class="js-city-name" data-ci="497" data-val="{ choosecityid:497 }" data-act="cityChange-click">荣成</a><a class="js-city-name" data-ci="499" data-val="{ choosecityid:499 }" data-act="cityChange-click">乳山</a><a class="js-city-name" data-ci="616" data-val="{ choosecityid:616 }" data-act="cityChange-click">汝州</a><a class="js-city-name" data-ci="639" data-val="{ choosecityid:639 }" data-act="cityChange-click">瑞金</a><a class="js-city-name" data-ci="657" data-val="{ choosecityid:657 }" data-act="cityChange-click">瑞昌</a><a class="js-city-name" data-ci="749" data-val="{ choosecityid:749 }" data-act="cityChange-click">仁寿</a><a class="js-city-name" data-ci="917" data-val="{ choosecityid:917 }" data-act="cityChange-click">任丘</a><a class="js-city-name" data-ci="988" data-val="{ choosecityid:988 }" data-act="cityChange-click">如东</a><a class="js-city-name" data-ci="966" data-val="{ choosecityid:966 }" data-act="cityChange-click">汝阳</a><a class="js-city-name" data-ci="1101" data-val="{ choosecityid:1101 }" data-act="cityChange-click">容县</a><a class="js-city-name" data-ci="1095" data-val="{ choosecityid:1095 }" data-act="cityChange-click">汝城县</a><a class="js-city-name" data-ci="1114" data-val="{ choosecityid:1114 }" data-act="cityChange-click">荣昌区</a>
                        </div>
                    </li>

                    <li>
                        <span>S</span>
                        <div>
                            <a class="js-city-name" data-ci="10" data-val="{ choosecityid:10 }" data-act="cityChange-click">上海</a><a class="js-city-name" data-ci="30" data-val="{ choosecityid:30 }" data-act="cityChange-click">深圳</a><a class="js-city-name" data-ci="66" data-val="{ choosecityid:66 }" data-act="cityChange-click">沈阳</a><a class="js-city-name" data-ci="76" data-val="{ choosecityid:76 }" data-act="cityChange-click">石家庄</a><a class="js-city-name" data-ci="80" data-val="{ choosecityid:80 }" data-act="cityChange-click">苏州</a><a class="js-city-name" data-ci="111" data-val="{ choosecityid:111 }" data-act="cityChange-click">三亚</a><a class="js-city-name" data-ci="117" data-val="{ choosecityid:117 }" data-act="cityChange-click">汕头</a><a class="js-city-name" data-ci="133" data-val="{ choosecityid:133 }" data-act="cityChange-click">朔州</a><a class="js-city-name" data-ci="171" data-val="{ choosecityid:171 }" data-act="cityChange-click">双鸭山</a><a class="js-city-name" data-ci="162" data-val="{ choosecityid:162 }" data-act="cityChange-click">四平</a><a class="js-city-name" data-ci="166" data-val="{ choosecityid:166 }" data-act="cityChange-click">松原</a><a class="js-city-name" data-ci="187" data-val="{ choosecityid:187 }" data-act="cityChange-click">绍兴</a><a class="js-city-name" data-ci="184" data-val="{ choosecityid:184 }" data-act="cityChange-click">宿迁</a><a class="js-city-name" data-ci="177" data-val="{ choosecityid:177 }" data-act="cityChange-click">绥化</a><a class="js-city-name" data-ci="201" data-val="{ choosecityid:201 }" data-act="cityChange-click">宿州</a><a class="js-city-name" data-ci="221" data-val="{ choosecityid:221 }" data-act="cityChange-click">上饶</a><a class="js-city-name" data-ci="208" data-val="{ choosecityid:208 }" data-act="cityChange-click">三明</a><a class="js-city-name" data-ci="251" data-val="{ choosecityid:251 }" data-act="cityChange-click">十堰</a><a class="js-city-name" data-ci="245" data-val="{ choosecityid:245 }" data-act="cityChange-click">商丘</a><a class="js-city-name" data-ci="243" data-val="{ choosecityid:243 }" data-act="cityChange-click">三门峡</a><a class="js-city-name" data-ci="276" data-val="{ choosecityid:276 }" data-act="cityChange-click">韶关</a><a class="js-city-name" data-ci="283" data-val="{ choosecityid:283 }" data-act="cityChange-click">汕尾</a><a class="js-city-name" data-ci="260" data-val="{ choosecityid:260 }" data-act="cityChange-click">随州</a><a class="js-city-name" data-ci="266" data-val="{ choosecityid:266 }" data-act="cityChange-click">邵阳</a><a class="js-city-name" data-ci="308" data-val="{ choosecityid:308 }" data-act="cityChange-click">遂宁</a><a class="js-city-name" data-ci="383" data-val="{ choosecityid:383 }" data-act="cityChange-click">石嘴山</a><a class="js-city-name" data-ci="360" data-val="{ choosecityid:360 }" data-act="cityChange-click">商洛</a><a class="js-city-name" data-ci="408" data-val="{ choosecityid:408 }" data-act="cityChange-click">石河子</a><a class="js-city-name" data-ci="406" data-val="{ choosecityid:406 }" data-act="cityChange-click">顺德</a><a class="js-city-name" data-ci="440" data-val="{ choosecityid:440 }" data-act="cityChange-click">石狮</a><a class="js-city-name" data-ci="456" data-val="{ choosecityid:456 }" data-act="cityChange-click">上虞</a><a class="js-city-name" data-ci="495" data-val="{ choosecityid:495 }" data-act="cityChange-click">寿光</a><a class="js-city-name" data-ci="487" data-val="{ choosecityid:487 }" data-act="cityChange-click">神农架</a><a class="js-city-name" data-ci="569" data-val="{ choosecityid:569 }" data-act="cityChange-click">韶山</a><a class="js-city-name" data-ci="532" data-val="{ choosecityid:532 }" data-act="cityChange-click">射阳</a><a class="js-city-name" data-ci="531" data-val="{ choosecityid:531 }" data-act="cityChange-click">沭阳</a><a class="js-city-name" data-ci="530" data-val="{ choosecityid:530 }" data-act="cityChange-click">嵊州</a><a class="js-city-name" data-ci="538" data-val="{ choosecityid:538 }" data-act="cityChange-click">三河</a><a class="js-city-name" data-ci="613" data-val="{ choosecityid:613 }" data-act="cityChange-click">沙河</a><a class="js-city-name" data-ci="633" data-val="{ choosecityid:633 }" data-act="cityChange-click">四会</a><a class="js-city-name" data-ci="648" data-val="{ choosecityid:648 }" data-act="cityChange-click">松滋</a><a class="js-city-name" data-ci="669" data-val="{ choosecityid:669 }" data-act="cityChange-click">舒兰</a><a class="js-city-name" data-ci="736" data-val="{ choosecityid:736 }" data-act="cityChange-click">邵东</a><a class="js-city-name" data-ci="762" data-val="{ choosecityid:762 }" data-act="cityChange-click">沙湾</a><a class="js-city-name" data-ci="760" data-val="{ choosecityid:760 }" data-act="cityChange-click">泗阳</a><a class="js-city-name" data-ci="755" data-val="{ choosecityid:755 }" data-act="cityChange-click">睢县</a><a class="js-city-name" data-ci="819" data-val="{ choosecityid:819 }" data-act="cityChange-click">石泉</a><a class="js-city-name" data-ci="830" data-val="{ choosecityid:830 }" data-act="cityChange-click">单县</a><a class="js-city-name" data-ci="824" data-val="{ choosecityid:824 }" data-act="cityChange-click">泗洪</a><a class="js-city-name" data-ci="804" data-val="{ choosecityid:804 }" data-act="cityChange-click">上高</a><a class="js-city-name" data-ci="797" data-val="{ choosecityid:797 }" data-act="cityChange-click">绥中</a><a class="js-city-name" data-ci="796" data-val="{ choosecityid:796 }" data-act="cityChange-click">神木</a><a class="js-city-name" data-ci="768" data-val="{ choosecityid:768 }" data-act="cityChange-click">涉县</a><a class="js-city-name" data-ci="886" data-val="{ choosecityid:886 }" data-act="cityChange-click">上蔡</a><a class="js-city-name" data-ci="895" data-val="{ choosecityid:895 }" data-act="cityChange-click">遂昌</a><a class="js-city-name" data-ci="875" data-val="{ choosecityid:875 }" data-act="cityChange-click">睢宁</a><a class="js-city-name" data-ci="840" data-val="{ choosecityid:840 }" data-act="cityChange-click">沈丘</a><a class="js-city-name" data-ci="845" data-val="{ choosecityid:845 }" data-act="cityChange-click">三门</a><a class="js-city-name" data-ci="953" data-val="{ choosecityid:953 }" data-act="cityChange-click">什邡</a><a class="js-city-name" data-ci="955" data-val="{ choosecityid:955 }" data-act="cityChange-click">上杭</a><a class="js-city-name" data-ci="907" data-val="{ choosecityid:907 }" data-act="cityChange-click">石岛</a><a class="js-city-name" data-ci="1017" data-val="{ choosecityid:1017 }" data-act="cityChange-click">泗水</a><a class="js-city-name" data-ci="1022" data-val="{ choosecityid:1022 }" data-act="cityChange-click">社旗</a><a class="js-city-name" data-ci="1015" data-val="{ choosecityid:1015 }" data-act="cityChange-click">商河</a><a class="js-city-name" data-ci="992" data-val="{ choosecityid:992 }" data-act="cityChange-click">射洪</a><a class="js-city-name" data-ci="982" data-val="{ choosecityid:982 }" data-act="cityChange-click">舒城</a><a class="js-city-name" data-ci="965" data-val="{ choosecityid:965 }" data-act="cityChange-click">嵩县</a><a class="js-city-name" data-ci="1118" data-val="{ choosecityid:1118 }" data-act="cityChange-click">石门</a><a class="js-city-name" data-ci="1113" data-val="{ choosecityid:1113 }" data-act="cityChange-click">桑植</a><a class="js-city-name" data-ci="1108" data-val="{ choosecityid:1108 }" data-act="cityChange-click">商城县</a><a class="js-city-name" data-ci="1120" data-val="{ choosecityid:1120 }" data-act="cityChange-click">鄯善县</a><a class="js-city-name" data-ci="1039" data-val="{ choosecityid:1039 }" data-act="cityChange-click">深州市</a><a class="js-city-name" data-ci="1024" data-val="{ choosecityid:1024 }" data-act="cityChange-click">泗县</a><a class="js-city-name" data-ci="1055" data-val="{ choosecityid:1055 }" data-act="cityChange-click">商水县</a><a class="js-city-name" data-ci="1045" data-val="{ choosecityid:1045 }" data-act="cityChange-click">上林县</a><a class="js-city-name" data-ci="1067" data-val="{ choosecityid:1067 }" data-act="cityChange-click">遂川</a><a class="js-city-name" data-ci="1071" data-val="{ choosecityid:1071 }" data-act="cityChange-click">上栗</a><a class="js-city-name" data-ci="1062" data-val="{ choosecityid:1062 }" data-act="cityChange-click">双峰</a><a class="js-city-name" data-ci="1081" data-val="{ choosecityid:1081 }" data-act="cityChange-click">肃宁县</a><a class="js-city-name" data-ci="1077" data-val="{ choosecityid:1077 }" data-act="cityChange-click">莎车县</a><a class="js-city-name" data-ci="1155" data-val="{ choosecityid:1155 }" data-act="cityChange-click">绥德县</a><a class="js-city-name" data-ci="1158" data-val="{ choosecityid:1158 }" data-act="cityChange-click">沙县</a><a class="js-city-name" data-ci="1176" data-val="{ choosecityid:1176 }" data-act="cityChange-click">深泽县</a><a class="js-city-name" data-ci="1180" data-val="{ choosecityid:1180 }" data-act="cityChange-click">石柱</a><a class="js-city-name" data-ci="1189" data-val="{ choosecityid:1189 }" data-act="cityChange-click">邵武</a><a class="js-city-name" data-ci="1192" data-val="{ choosecityid:1192 }" data-act="cityChange-click">寿县</a><a class="js-city-name" data-ci="1211" data-val="{ choosecityid:1211 }" data-act="cityChange-click">三台县</a>
                        </div>
                    </li>

                    <li>
                        <span>T</span>
                        <div>
                            <a class="js-city-name" data-ci="40" data-val="{ choosecityid:40 }" data-act="cityChange-click">天津</a><a class="js-city-name" data-ci="101" data-val="{ choosecityid:101 }" data-act="cityChange-click">太原</a><a class="js-city-name" data-ci="121" data-val="{ choosecityid:121 }" data-act="cityChange-click">唐山</a><a class="js-city-name" data-ci="143" data-val="{ choosecityid:143 }" data-act="cityChange-click">通辽</a><a class="js-city-name" data-ci="159" data-val="{ choosecityid:159 }" data-act="cityChange-click">铁岭</a><a class="js-city-name" data-ci="164" data-val="{ choosecityid:164 }" data-act="cityChange-click">通化</a><a class="js-city-name" data-ci="191" data-val="{ choosecityid:191 }" data-act="cityChange-click">台州</a><a class="js-city-name" data-ci="183" data-val="{ choosecityid:183 }" data-act="cityChange-click">泰州</a><a class="js-city-name" data-ci="196" data-val="{ choosecityid:196 }" data-act="cityChange-click">铜陵</a><a class="js-city-name" data-ci="226" data-val="{ choosecityid:226 }" data-act="cityChange-click">泰安</a><a class="js-city-name" data-ci="325" data-val="{ choosecityid:325 }" data-act="cityChange-click">铜仁</a><a class="js-city-name" data-ci="352" data-val="{ choosecityid:352 }" data-act="cityChange-click">铜川</a><a class="js-city-name" data-ci="364" data-val="{ choosecityid:364 }" data-act="cityChange-click">天水</a><a class="js-city-name" data-ci="399" data-val="{ choosecityid:399 }" data-act="cityChange-click">塔城</a><a class="js-city-name" data-ci="389" data-val="{ choosecityid:389 }" data-act="cityChange-click">吐鲁番</a><a class="js-city-name" data-ci="432" data-val="{ choosecityid:432 }" data-act="cityChange-click">太仓</a><a class="js-city-name" data-ci="425" data-val="{ choosecityid:425 }" data-act="cityChange-click">桐乡</a><a class="js-city-name" data-ci="503" data-val="{ choosecityid:503 }" data-act="cityChange-click">台山</a><a class="js-city-name" data-ci="482" data-val="{ choosecityid:482 }" data-act="cityChange-click">腾冲</a><a class="js-city-name" data-ci="549" data-val="{ choosecityid:549 }" data-act="cityChange-click">滕州</a><a class="js-city-name" data-ci="554" data-val="{ choosecityid:554 }" data-act="cityChange-click">桐庐</a><a class="js-city-name" data-ci="518" data-val="{ choosecityid:518 }" data-act="cityChange-click">泰兴</a><a class="js-city-name" data-ci="626" data-val="{ choosecityid:626 }" data-act="cityChange-click">天长</a><a class="js-city-name" data-ci="578" data-val="{ choosecityid:578 }" data-act="cityChange-click">天门</a><a class="js-city-name" data-ci="673" data-val="{ choosecityid:673 }" data-act="cityChange-click">桐城</a><a class="js-city-name" data-ci="666" data-val="{ choosecityid:666 }" data-act="cityChange-click">洮南</a><a class="js-city-name" data-ci="743" data-val="{ choosecityid:743 }" data-act="cityChange-click">台前</a><a class="js-city-name" data-ci="759" data-val="{ choosecityid:759 }" data-act="cityChange-click">太和</a><a class="js-city-name" data-ci="817" data-val="{ choosecityid:817 }" data-act="cityChange-click">汤阴</a><a class="js-city-name" data-ci="812" data-val="{ choosecityid:812 }" data-act="cityChange-click">藤县</a><a class="js-city-name" data-ci="790" data-val="{ choosecityid:790 }" data-act="cityChange-click">太谷</a><a class="js-city-name" data-ci="782" data-val="{ choosecityid:782 }" data-act="cityChange-click">天台</a><a class="js-city-name" data-ci="879" data-val="{ choosecityid:879 }" data-act="cityChange-click">土默特右旗</a><a class="js-city-name" data-ci="947" data-val="{ choosecityid:947 }" data-act="cityChange-click">铜梁</a><a class="js-city-name" data-ci="942" data-val="{ choosecityid:942 }" data-act="cityChange-click">郯城</a><a class="js-city-name" data-ci="1009" data-val="{ choosecityid:1009 }" data-act="cityChange-click">桃源</a><a class="js-city-name" data-ci="962" data-val="{ choosecityid:962 }" data-act="cityChange-click">同安</a><a class="js-city-name" data-ci="1111" data-val="{ choosecityid:1111 }" data-act="cityChange-click">通许县</a><a class="js-city-name" data-ci="1135" data-val="{ choosecityid:1135 }" data-act="cityChange-click">通榆县</a><a class="js-city-name" data-ci="1132" data-val="{ choosecityid:1132 }" data-act="cityChange-click">通海县</a><a class="js-city-name" data-ci="1136" data-val="{ choosecityid:1136 }" data-act="cityChange-click">唐河</a><a class="js-city-name" data-ci="1030" data-val="{ choosecityid:1030 }" data-act="cityChange-click">泰和县</a><a class="js-city-name" data-ci="1054" data-val="{ choosecityid:1054 }" data-act="cityChange-click">太康县</a><a class="js-city-name" data-ci="1041" data-val="{ choosecityid:1041 }" data-act="cityChange-click">铜鼓</a><a class="js-city-name" data-ci="1044" data-val="{ choosecityid:1044 }" data-act="cityChange-click">田东县</a><a class="js-city-name" data-ci="1215" data-val="{ choosecityid:1215 }" data-act="cityChange-click">通江县</a>
                        </div>
                    </li>

                    <li>
                        <span>W</span>
                        <div>
                            <a class="js-city-name" data-ci="52" data-val="{ choosecityid:52 }" data-act="cityChange-click">无锡</a><a class="js-city-name" data-ci="57" data-val="{ choosecityid:57 }" data-act="cityChange-click">武汉</a><a class="js-city-name" data-ci="102" data-val="{ choosecityid:102 }" data-act="cityChange-click">芜湖</a><a class="js-city-name" data-ci="112" data-val="{ choosecityid:112 }" data-act="cityChange-click">温州</a><a class="js-city-name" data-ci="141" data-val="{ choosecityid:141 }" data-act="cityChange-click">乌海</a><a class="js-city-name" data-ci="147" data-val="{ choosecityid:147 }" data-act="cityChange-click">乌兰察布</a><a class="js-city-name" data-ci="227" data-val="{ choosecityid:227 }" data-act="cityChange-click">威海</a><a class="js-city-name" data-ci="224" data-val="{ choosecityid:224 }" data-act="cityChange-click">潍坊</a><a class="js-city-name" data-ci="291" data-val="{ choosecityid:291 }" data-act="cityChange-click">梧州</a><a class="js-city-name" data-ci="339" data-val="{ choosecityid:339 }" data-act="cityChange-click">文山</a><a class="js-city-name" data-ci="355" data-val="{ choosecityid:355 }" data-act="cityChange-click">渭南</a><a class="js-city-name" data-ci="365" data-val="{ choosecityid:365 }" data-act="cityChange-click">武威</a><a class="js-city-name" data-ci="387" data-val="{ choosecityid:387 }" data-act="cityChange-click">乌鲁木齐</a><a class="js-city-name" data-ci="384" data-val="{ choosecityid:384 }" data-act="cityChange-click">吴忠</a><a class="js-city-name" data-ci="443" data-val="{ choosecityid:443 }" data-act="cityChange-click">武夷山</a><a class="js-city-name" data-ci="433" data-val="{ choosecityid:433 }" data-act="cityChange-click">吴江</a><a class="js-city-name" data-ci="428" data-val="{ choosecityid:428 }" data-act="cityChange-click">万州</a><a class="js-city-name" data-ci="479" data-val="{ choosecityid:479 }" data-act="cityChange-click">婺源</a><a class="js-city-name" data-ci="457" data-val="{ choosecityid:457 }" data-act="cityChange-click">温岭</a><a class="js-city-name" data-ci="449" data-val="{ choosecityid:449 }" data-act="cityChange-click">武安</a><a class="js-city-name" data-ci="498" data-val="{ choosecityid:498 }" data-act="cityChange-click">文登</a><a class="js-city-name" data-ci="551" data-val="{ choosecityid:551 }" data-act="cityChange-click">乌镇</a><a class="js-city-name" data-ci="592" data-val="{ choosecityid:592 }" data-act="cityChange-click">吴川</a><a class="js-city-name" data-ci="607" data-val="{ choosecityid:607 }" data-act="cityChange-click">文昌</a><a class="js-city-name" data-ci="684" data-val="{ choosecityid:684 }" data-act="cityChange-click">舞钢</a><a class="js-city-name" data-ci="680" data-val="{ choosecityid:680 }" data-act="cityChange-click">万宁</a><a class="js-city-name" data-ci="696" data-val="{ choosecityid:696 }" data-act="cityChange-click">温县</a><a class="js-city-name" data-ci="697" data-val="{ choosecityid:697 }" data-act="cityChange-click">武陟</a><a class="js-city-name" data-ci="667" data-val="{ choosecityid:667 }" data-act="cityChange-click">武穴</a><a class="js-city-name" data-ci="747" data-val="{ choosecityid:747 }" data-act="cityChange-click">乌苏</a><a class="js-city-name" data-ci="826" data-val="{ choosecityid:826 }" data-act="cityChange-click">卫辉</a><a class="js-city-name" data-ci="773" data-val="{ choosecityid:773 }" data-act="cityChange-click">芜湖县</a><a class="js-city-name" data-ci="769" data-val="{ choosecityid:769 }" data-act="cityChange-click">无为</a><a class="js-city-name" data-ci="850" data-val="{ choosecityid:850 }" data-act="cityChange-click">乌拉特前旗</a><a class="js-city-name" data-ci="926" data-val="{ choosecityid:926 }" data-act="cityChange-click">围场</a><a class="js-city-name" data-ci="904" data-val="{ choosecityid:904 }" data-act="cityChange-click">武城</a><a class="js-city-name" data-ci="898" data-val="{ choosecityid:898 }" data-act="cityChange-click">汶上</a><a class="js-city-name" data-ci="897" data-val="{ choosecityid:897 }" data-act="cityChange-click">微山</a><a class="js-city-name" data-ci="1019" data-val="{ choosecityid:1019 }" data-act="cityChange-click">无极</a><a class="js-city-name" data-ci="1023" data-val="{ choosecityid:1023 }" data-act="cityChange-click">万荣</a><a class="js-city-name" data-ci="1014" data-val="{ choosecityid:1014 }" data-act="cityChange-click">舞阳</a><a class="js-city-name" data-ci="1006" data-val="{ choosecityid:1006 }" data-act="cityChange-click">威宁</a><a class="js-city-name" data-ci="995" data-val="{ choosecityid:995 }" data-act="cityChange-click">武鸣</a><a class="js-city-name" data-ci="973" data-val="{ choosecityid:973 }" data-act="cityChange-click">武义</a><a class="js-city-name" data-ci="967" data-val="{ choosecityid:967 }" data-act="cityChange-click">瓦房店</a><a class="js-city-name" data-ci="1109" data-val="{ choosecityid:1109 }" data-act="cityChange-click">尉氏县</a><a class="js-city-name" data-ci="1128" data-val="{ choosecityid:1128 }" data-act="cityChange-click">武隆县</a><a class="js-city-name" data-ci="1025" data-val="{ choosecityid:1025 }" data-act="cityChange-click">万载</a><a class="js-city-name" data-ci="1049" data-val="{ choosecityid:1049 }" data-act="cityChange-click">武平县</a><a class="js-city-name" data-ci="1046" data-val="{ choosecityid:1046 }" data-act="cityChange-click">威县</a><a class="js-city-name" data-ci="1223" data-val="{ choosecityid:1223 }" data-act="cityChange-click">武冈市</a><a class="js-city-name" data-ci="1217" data-val="{ choosecityid:1217 }" data-act="cityChange-click">望奎县</a><a class="js-city-name" data-ci="1187" data-val="{ choosecityid:1187 }" data-act="cityChange-click">五常市</a><a class="js-city-name" data-ci="1207" data-val="{ choosecityid:1207 }" data-act="cityChange-click">旺苍县</a>
                        </div>
                    </li>

                    <li>
                        <span>X</span>
                        <div>
                            <a class="js-city-name" data-ci="42" data-val="{ choosecityid:42 }" data-act="cityChange-click">西安</a><a class="js-city-name" data-ci="62" data-val="{ choosecityid:62 }" data-act="cityChange-click">厦门</a><a class="js-city-name" data-ci="103" data-val="{ choosecityid:103 }" data-act="cityChange-click">新乡</a><a class="js-city-name" data-ci="119" data-val="{ choosecityid:119 }" data-act="cityChange-click">徐州</a><a class="js-city-name" data-ci="124" data-val="{ choosecityid:124 }" data-act="cityChange-click">邢台</a><a class="js-city-name" data-ci="136" data-val="{ choosecityid:136 }" data-act="cityChange-click">忻州</a><a class="js-city-name" data-ci="148" data-val="{ choosecityid:148 }" data-act="cityChange-click">兴安盟</a><a class="js-city-name" data-ci="149" data-val="{ choosecityid:149 }" data-act="cityChange-click">锡林郭勒</a><a class="js-city-name" data-ci="206" data-val="{ choosecityid:206 }" data-act="cityChange-click">宣城</a><a class="js-city-name" data-ci="215" data-val="{ choosecityid:215 }" data-act="cityChange-click">新余</a><a class="js-city-name" data-ci="253" data-val="{ choosecityid:253 }" data-act="cityChange-click">襄阳</a><a class="js-city-name" data-ci="246" data-val="{ choosecityid:246 }" data-act="cityChange-click">信阳</a><a class="js-city-name" data-ci="241" data-val="{ choosecityid:241 }" data-act="cityChange-click">许昌</a><a class="js-city-name" data-ci="275" data-val="{ choosecityid:275 }" data-act="cityChange-click">湘西</a><a class="js-city-name" data-ci="259" data-val="{ choosecityid:259 }" data-act="cityChange-click">咸宁</a><a class="js-city-name" data-ci="256" data-val="{ choosecityid:256 }" data-act="cityChange-click">孝感</a><a class="js-city-name" data-ci="264" data-val="{ choosecityid:264 }" data-act="cityChange-click">湘潭</a><a class="js-city-name" data-ci="340" data-val="{ choosecityid:340 }" data-act="cityChange-click">西双版纳</a><a class="js-city-name" data-ci="374" data-val="{ choosecityid:374 }" data-act="cityChange-click">西宁</a><a class="js-city-name" data-ci="354" data-val="{ choosecityid:354 }" data-act="cityChange-click">咸阳</a><a class="js-city-name" data-ci="412" data-val="{ choosecityid:412 }" data-act="cityChange-click">仙桃</a><a class="js-city-name" data-ci="484" data-val="{ choosecityid:484 }" data-act="cityChange-click">香格里拉</a><a class="js-city-name" data-ci="548" data-val="{ choosecityid:548 }" data-act="cityChange-click">新沂</a><a class="js-city-name" data-ci="556" data-val="{ choosecityid:556 }" data-act="cityChange-click">新密</a><a class="js-city-name" data-ci="557" data-val="{ choosecityid:557 }" data-act="cityChange-click">荥阳</a><a class="js-city-name" data-ci="555" data-val="{ choosecityid:555 }" data-act="cityChange-click">新郑</a><a class="js-city-name" data-ci="562" data-val="{ choosecityid:562 }" data-act="cityChange-click">兴宁</a><a class="js-city-name" data-ci="560" data-val="{ choosecityid:560 }" data-act="cityChange-click">西塘</a><a class="js-city-name" data-ci="574" data-val="{ choosecityid:574 }" data-act="cityChange-click">新民</a><a class="js-city-name" data-ci="517" data-val="{ choosecityid:517 }" data-act="cityChange-click">兴化</a><a class="js-city-name" data-ci="525" data-val="{ choosecityid:525 }" data-act="cityChange-click">湘阴</a><a class="js-city-name" data-ci="523" data-val="{ choosecityid:523 }" data-act="cityChange-click">新泰</a><a class="js-city-name" data-ci="534" data-val="{ choosecityid:534 }" data-act="cityChange-click">响水</a><a class="js-city-name" data-ci="543" data-val="{ choosecityid:543 }" data-act="cityChange-click">辛集</a><a class="js-city-name" data-ci="614" data-val="{ choosecityid:614 }" data-act="cityChange-click">湘乡</a><a class="js-city-name" data-ci="580" data-val="{ choosecityid:580 }" data-act="cityChange-click">项城</a><a class="js-city-name" data-ci="604" data-val="{ choosecityid:604 }" data-act="cityChange-click">孝义</a><a class="js-city-name" data-ci="695" data-val="{ choosecityid:695 }" data-act="cityChange-click">修武</a><a class="js-city-name" data-ci="692" data-val="{ choosecityid:692 }" data-act="cityChange-click">象山</a><a class="js-city-name" data-ci="641" data-val="{ choosecityid:641 }" data-act="cityChange-click">兴城</a><a class="js-city-name" data-ci="661" data-val="{ choosecityid:661 }" data-act="cityChange-click">兴平</a><a class="js-city-name" data-ci="764" data-val="{ choosecityid:764 }" data-act="cityChange-click">仙居</a><a class="js-city-name" data-ci="728" data-val="{ choosecityid:728 }" data-act="cityChange-click">夏津</a><a class="js-city-name" data-ci="729" data-val="{ choosecityid:729 }" data-act="cityChange-click">信宜</a><a class="js-city-name" data-ci="734" data-val="{ choosecityid:734 }" data-act="cityChange-click">新化</a><a class="js-city-name" data-ci="818" data-val="{ choosecityid:818 }" data-act="cityChange-click">新安</a><a class="js-city-name" data-ci="828" data-val="{ choosecityid:828 }" data-act="cityChange-click">新乡县</a><a class="js-city-name" data-ci="802" data-val="{ choosecityid:802 }" data-act="cityChange-click">宣威</a><a class="js-city-name" data-ci="810" data-val="{ choosecityid:810 }" data-act="cityChange-click">霞浦</a><a class="js-city-name" data-ci="776" data-val="{ choosecityid:776 }" data-act="cityChange-click">襄垣</a><a class="js-city-name" data-ci="885" data-val="{ choosecityid:885 }" data-act="cityChange-click">西平</a><a class="js-city-name" data-ci="892" data-val="{ choosecityid:892 }" data-act="cityChange-click">新乐</a><a class="js-city-name" data-ci="870" data-val="{ choosecityid:870 }" data-act="cityChange-click">西乡</a><a class="js-city-name" data-ci="853" data-val="{ choosecityid:853 }" data-act="cityChange-click">徐闻</a><a class="js-city-name" data-ci="857" data-val="{ choosecityid:857 }" data-act="cityChange-click">夏邑</a><a class="js-city-name" data-ci="863" data-val="{ choosecityid:863 }" data-act="cityChange-click">浚县</a><a class="js-city-name" data-ci="843" data-val="{ choosecityid:843 }" data-act="cityChange-click">盱眙</a><a class="js-city-name" data-ci="957" data-val="{ choosecityid:957 }" data-act="cityChange-click">香河</a><a class="js-city-name" data-ci="959" data-val="{ choosecityid:959 }" data-act="cityChange-click">信丰</a><a class="js-city-name" data-ci="949" data-val="{ choosecityid:949 }" data-act="cityChange-click">浠水</a><a class="js-city-name" data-ci="936" data-val="{ choosecityid:936 }" data-act="cityChange-click">西华</a><a class="js-city-name" data-ci="920" data-val="{ choosecityid:920 }" data-act="cityChange-click">薛城</a><a class="js-city-name" data-ci="903" data-val="{ choosecityid:903 }" data-act="cityChange-click">新昌</a><a class="js-city-name" data-ci="1021" data-val="{ choosecityid:1021 }" data-act="cityChange-click">淅川</a><a class="js-city-name" data-ci="996" data-val="{ choosecityid:996 }" data-act="cityChange-click">溆浦</a><a class="js-city-name" data-ci="961" data-val="{ choosecityid:961 }" data-act="cityChange-click">新蔡</a><a class="js-city-name" data-ci="1129" data-val="{ choosecityid:1129 }" data-act="cityChange-click">秀山土家族苗族自治县</a><a class="js-city-name" data-ci="1123" data-val="{ choosecityid:1123 }" data-act="cityChange-click">新洲区</a><a class="js-city-name" data-ci="1149" data-val="{ choosecityid:1149 }" data-act="cityChange-click">仙游县</a><a class="js-city-name" data-ci="1137" data-val="{ choosecityid:1137 }" data-act="cityChange-click">新野</a><a class="js-city-name" data-ci="1033" data-val="{ choosecityid:1033 }" data-act="cityChange-click">兴国县</a><a class="js-city-name" data-ci="1036" data-val="{ choosecityid:1036 }" data-act="cityChange-click">新田</a><a class="js-city-name" data-ci="1026" data-val="{ choosecityid:1026 }" data-act="cityChange-click">新干</a><a class="js-city-name" data-ci="1051" data-val="{ choosecityid:1051 }" data-act="cityChange-click">祥云县</a><a class="js-city-name" data-ci="1050" data-val="{ choosecityid:1050 }" data-act="cityChange-click">寻乌县</a><a class="js-city-name" data-ci="1057" data-val="{ choosecityid:1057 }" data-act="cityChange-click">襄城县</a><a class="js-city-name" data-ci="1063" data-val="{ choosecityid:1063 }" data-act="cityChange-click">新宁</a><a class="js-city-name" data-ci="1082" data-val="{ choosecityid:1082 }" data-act="cityChange-click">献县</a><a class="js-city-name" data-ci="1167" data-val="{ choosecityid:1167 }" data-act="cityChange-click">新津县</a><a class="js-city-name" data-ci="1213" data-val="{ choosecityid:1213 }" data-act="cityChange-click">旬阳县</a>
                        </div>
                    </li>

                    <li>
                        <span>Y</span>
                        <div>
                            <a class="js-city-name" data-ci="104" data-val="{ choosecityid:104 }" data-act="cityChange-click">烟台</a><a class="js-city-name" data-ci="120" data-val="{ choosecityid:120 }" data-act="cityChange-click">扬州</a><a class="js-city-name" data-ci="130" data-val="{ choosecityid:130 }" data-act="cityChange-click">阳泉</a><a class="js-city-name" data-ci="135" data-val="{ choosecityid:135 }" data-act="cityChange-click">运城</a><a class="js-city-name" data-ci="155" data-val="{ choosecityid:155 }" data-act="cityChange-click">营口</a><a class="js-city-name" data-ci="168" data-val="{ choosecityid:168 }" data-act="cityChange-click">延边</a><a class="js-city-name" data-ci="172" data-val="{ choosecityid:172 }" data-act="cityChange-click">伊春</a><a class="js-city-name" data-ci="181" data-val="{ choosecityid:181 }" data-act="cityChange-click">盐城</a><a class="js-city-name" data-ci="216" data-val="{ choosecityid:216 }" data-act="cityChange-click">鹰潭</a><a class="js-city-name" data-ci="219" data-val="{ choosecityid:219 }" data-act="cityChange-click">宜春</a><a class="js-city-name" data-ci="252" data-val="{ choosecityid:252 }" data-act="cityChange-click">宜昌</a><a class="js-city-name" data-ci="272" data-val="{ choosecityid:272 }" data-act="cityChange-click">永州</a><a class="js-city-name" data-ci="285" data-val="{ choosecityid:285 }" data-act="cityChange-click">阳江</a><a class="js-city-name" data-ci="267" data-val="{ choosecityid:267 }" data-act="cityChange-click">岳阳</a><a class="js-city-name" data-ci="270" data-val="{ choosecityid:270 }" data-act="cityChange-click">益阳</a><a class="js-city-name" data-ci="313" data-val="{ choosecityid:313 }" data-act="cityChange-click">宜宾</a><a class="js-city-name" data-ci="316" data-val="{ choosecityid:316 }" data-act="cityChange-click">雅安</a><a class="js-city-name" data-ci="289" data-val="{ choosecityid:289 }" data-act="cityChange-click">云浮</a><a class="js-city-name" data-ci="296" data-val="{ choosecityid:296 }" data-act="cityChange-click">玉林</a><a class="js-city-name" data-ci="331" data-val="{ choosecityid:331 }" data-act="cityChange-click">玉溪</a><a class="js-city-name" data-ci="382" data-val="{ choosecityid:382 }" data-act="cityChange-click">银川</a><a class="js-city-name" data-ci="356" data-val="{ choosecityid:356 }" data-act="cityChange-click">延安</a><a class="js-city-name" data-ci="358" data-val="{ choosecityid:358 }" data-act="cityChange-click">榆林</a><a class="js-city-name" data-ci="405" data-val="{ choosecityid:405 }" data-act="cityChange-click">义乌</a><a class="js-city-name" data-ci="398" data-val="{ choosecityid:398 }" data-act="cityChange-click">伊犁</a><a class="js-city-name" data-ci="470" data-val="{ choosecityid:470 }" data-act="cityChange-click">乐清</a><a class="js-city-name" data-ci="466" data-val="{ choosecityid:466 }" data-act="cityChange-click">阳朔</a><a class="js-city-name" data-ci="459" data-val="{ choosecityid:459 }" data-act="cityChange-click">余姚</a><a class="js-city-name" data-ci="458" data-val="{ choosecityid:458 }" data-act="cityChange-click">永康</a><a class="js-city-name" data-ci="454" data-val="{ choosecityid:454 }" data-act="cityChange-click">宜兴</a><a class="js-city-name" data-ci="453" data-val="{ choosecityid:453 }" data-act="cityChange-click">兖州</a><a class="js-city-name" data-ci="559" data-val="{ choosecityid:559 }" data-act="cityChange-click">扬中</a><a class="js-city-name" data-ci="516" data-val="{ choosecityid:516 }" data-act="cityChange-click">伊川</a><a class="js-city-name" data-ci="514" data-val="{ choosecityid:514 }" data-act="cityChange-click">英德</a><a class="js-city-name" data-ci="522" data-val="{ choosecityid:522 }" data-act="cityChange-click">仪征</a><a class="js-city-name" data-ci="528" data-val="{ choosecityid:528 }" data-act="cityChange-click">偃师</a><a class="js-city-name" data-ci="608" data-val="{ choosecityid:608 }" data-act="cityChange-click">禹城</a><a class="js-city-name" data-ci="609" data-val="{ choosecityid:609 }" data-act="cityChange-click">禹州</a><a class="js-city-name" data-ci="622" data-val="{ choosecityid:622 }" data-act="cityChange-click">伊宁</a><a class="js-city-name" data-ci="625" data-val="{ choosecityid:625 }" data-act="cityChange-click">宜城</a><a class="js-city-name" data-ci="637" data-val="{ choosecityid:637 }" data-act="cityChange-click">原平</a><a class="js-city-name" data-ci="577" data-val="{ choosecityid:577 }" data-act="cityChange-click">永城</a><a class="js-city-name" data-ci="597" data-val="{ choosecityid:597 }" data-act="cityChange-click">永济</a><a class="js-city-name" data-ci="693" data-val="{ choosecityid:693 }" data-act="cityChange-click">玉环</a><a class="js-city-name" data-ci="656" data-val="{ choosecityid:656 }" data-act="cityChange-click">宜都</a><a class="js-city-name" data-ci="658" data-val="{ choosecityid:658 }" data-act="cityChange-click">沅江</a><a class="js-city-name" data-ci="763" data-val="{ choosecityid:763 }" data-act="cityChange-click">永年</a><a class="js-city-name" data-ci="733" data-val="{ choosecityid:733 }" data-act="cityChange-click">永川</a><a class="js-city-name" data-ci="822" data-val="{ choosecityid:822 }" data-act="cityChange-click">阎良</a><a class="js-city-name" data-ci="829" data-val="{ choosecityid:829 }" data-act="cityChange-click">原阳</a><a class="js-city-name" data-ci="803" data-val="{ choosecityid:803 }" data-act="cityChange-click">易县</a><a class="js-city-name" data-ci="814" data-val="{ choosecityid:814 }" data-act="cityChange-click">宜阳</a><a class="js-city-name" data-ci="784" data-val="{ choosecityid:784 }" data-act="cityChange-click">叶县</a><a class="js-city-name" data-ci="770" data-val="{ choosecityid:770 }" data-act="cityChange-click">阳城</a><a class="js-city-name" data-ci="778" data-val="{ choosecityid:778 }" data-act="cityChange-click">云阳</a><a class="js-city-name" data-ci="884" data-val="{ choosecityid:884 }" data-act="cityChange-click">郓城</a><a class="js-city-name" data-ci="876" data-val="{ choosecityid:876 }" data-act="cityChange-click">玉山</a><a class="js-city-name" data-ci="878" data-val="{ choosecityid:878 }" data-act="cityChange-click">阳谷</a><a class="js-city-name" data-ci="859" data-val="{ choosecityid:859 }" data-act="cityChange-click">虞城</a><a class="js-city-name" data-ci="958" data-val="{ choosecityid:958 }" data-act="cityChange-click">于都</a><a class="js-city-name" data-ci="940" data-val="{ choosecityid:940 }" data-act="cityChange-click">沂水</a><a class="js-city-name" data-ci="943" data-val="{ choosecityid:943 }" data-act="cityChange-click">沂南</a><a class="js-city-name" data-ci="908" data-val="{ choosecityid:908 }" data-act="cityChange-click">杨凌</a><a class="js-city-name" data-ci="901" data-val="{ choosecityid:901 }" data-act="cityChange-click">伊金霍洛旗</a><a class="js-city-name" data-ci="1096" data-val="{ choosecityid:1096 }" data-act="cityChange-click">攸县</a><a class="js-city-name" data-ci="1099" data-val="{ choosecityid:1099 }" data-act="cityChange-click">永顺县</a><a class="js-city-name" data-ci="1094" data-val="{ choosecityid:1094 }" data-act="cityChange-click">永兴县</a><a class="js-city-name" data-ci="1127" data-val="{ choosecityid:1127 }" data-act="cityChange-click">酉阳土家族苗族自治县</a><a class="js-city-name" data-ci="1151" data-val="{ choosecityid:1151 }" data-act="cityChange-click">应县</a><a class="js-city-name" data-ci="1027" data-val="{ choosecityid:1027 }" data-act="cityChange-click">宜丰</a><a class="js-city-name" data-ci="1043" data-val="{ choosecityid:1043 }" data-act="cityChange-click">营山县</a><a class="js-city-name" data-ci="1047" data-val="{ choosecityid:1047 }" data-act="cityChange-click">永安</a><a class="js-city-name" data-ci="1069" data-val="{ choosecityid:1069 }" data-act="cityChange-click">永丰</a><a class="js-city-name" data-ci="1058" data-val="{ choosecityid:1058 }" data-act="cityChange-click">鄢陵</a><a class="js-city-name" data-ci="1072" data-val="{ choosecityid:1072 }" data-act="cityChange-click">永新</a><a class="js-city-name" data-ci="1218" data-val="{ choosecityid:1218 }" data-act="cityChange-click">宜良县</a><a class="js-city-name" data-ci="1159" data-val="{ choosecityid:1159 }" data-act="cityChange-click">阳山县</a><a class="js-city-name" data-ci="1160" data-val="{ choosecityid:1160 }" data-act="cityChange-click">榆树市</a><a class="js-city-name" data-ci="1162" data-val="{ choosecityid:1162 }" data-act="cityChange-click">沅陵县</a><a class="js-city-name" data-ci="1169" data-val="{ choosecityid:1169 }" data-act="cityChange-click">永登县</a><a class="js-city-name" data-ci="1181" data-val="{ choosecityid:1181 }" data-act="cityChange-click">鱼台县</a><a class="js-city-name" data-ci="1182" data-val="{ choosecityid:1182 }" data-act="cityChange-click">宜州市</a><a class="js-city-name" data-ci="1186" data-val="{ choosecityid:1186 }" data-act="cityChange-click">义马市</a><a class="js-city-name" data-ci="1199" data-val="{ choosecityid:1199 }" data-act="cityChange-click">盂县</a><a class="js-city-name" data-ci="1198" data-val="{ choosecityid:1198 }" data-act="cityChange-click">永嘉县</a>
                        </div>
                    </li>

                    <li>
                        <span>Z</span>
                        <div>
                            <a class="js-city-name" data-ci="73" data-val="{ choosecityid:73 }" data-act="cityChange-click">郑州</a><a class="js-city-name" data-ci="81" data-val="{ choosecityid:81 }" data-act="cityChange-click">淄博</a><a class="js-city-name" data-ci="108" data-val="{ choosecityid:108 }" data-act="cityChange-click">珠海</a><a class="js-city-name" data-ci="113" data-val="{ choosecityid:113 }" data-act="cityChange-click">中山</a><a class="js-city-name" data-ci="125" data-val="{ choosecityid:125 }" data-act="cityChange-click">张家口</a><a class="js-city-name" data-ci="190" data-val="{ choosecityid:190 }" data-act="cityChange-click">舟山</a><a class="js-city-name" data-ci="182" data-val="{ choosecityid:182 }" data-act="cityChange-click">镇江</a><a class="js-city-name" data-ci="222" data-val="{ choosecityid:222 }" data-act="cityChange-click">枣庄</a><a class="js-city-name" data-ci="209" data-val="{ choosecityid:209 }" data-act="cityChange-click">漳州</a><a class="js-city-name" data-ci="248" data-val="{ choosecityid:248 }" data-act="cityChange-click">驻马店</a><a class="js-city-name" data-ci="247" data-val="{ choosecityid:247 }" data-act="cityChange-click">周口</a><a class="js-city-name" data-ci="278" data-val="{ choosecityid:278 }" data-act="cityChange-click">湛江</a><a class="js-city-name" data-ci="280" data-val="{ choosecityid:280 }" data-act="cityChange-click">肇庆</a><a class="js-city-name" data-ci="263" data-val="{ choosecityid:263 }" data-act="cityChange-click">株洲</a><a class="js-city-name" data-ci="269" data-val="{ choosecityid:269 }" data-act="cityChange-click">张家界</a><a class="js-city-name" data-ci="318" data-val="{ choosecityid:318 }" data-act="cityChange-click">资阳</a><a class="js-city-name" data-ci="302" data-val="{ choosecityid:302 }" data-act="cityChange-click">自贡</a><a class="js-city-name" data-ci="323" data-val="{ choosecityid:323 }" data-act="cityChange-click">遵义</a><a class="js-city-name" data-ci="333" data-val="{ choosecityid:333 }" data-act="cityChange-click">昭通</a><a class="js-city-name" data-ci="366" data-val="{ choosecityid:366 }" data-act="cityChange-click">张掖</a><a class="js-city-name" data-ci="386" data-val="{ choosecityid:386 }" data-act="cityChange-click">中卫</a><a class="js-city-name" data-ci="426" data-val="{ choosecityid:426 }" data-act="cityChange-click">涿州</a><a class="js-city-name" data-ci="419" data-val="{ choosecityid:419 }" data-act="cityChange-click">张家港</a><a class="js-city-name" data-ci="474" data-val="{ choosecityid:474 }" data-act="cityChange-click">增城</a><a class="js-city-name" data-ci="468" data-val="{ choosecityid:468 }" data-act="cityChange-click">诸暨</a><a class="js-city-name" data-ci="465" data-val="{ choosecityid:465 }" data-act="cityChange-click">章丘</a><a class="js-city-name" data-ci="508" data-val="{ choosecityid:508 }" data-act="cityChange-click">邹平</a><a class="js-city-name" data-ci="494" data-val="{ choosecityid:494 }" data-act="cityChange-click">枣阳</a><a class="js-city-name" data-ci="558" data-val="{ choosecityid:558 }" data-act="cityChange-click">庄河</a><a class="js-city-name" data-ci="526" data-val="{ choosecityid:526 }" data-act="cityChange-click">诸城</a><a class="js-city-name" data-ci="612" data-val="{ choosecityid:612 }" data-act="cityChange-click">钟祥</a><a class="js-city-name" data-ci="586" data-val="{ choosecityid:586 }" data-act="cityChange-click">招远</a><a class="js-city-name" data-ci="591" data-val="{ choosecityid:591 }" data-act="cityChange-click">遵化</a><a class="js-city-name" data-ci="654" data-val="{ choosecityid:654 }" data-act="cityChange-click">枝江</a><a class="js-city-name" data-ci="671" data-val="{ choosecityid:671 }" data-act="cityChange-click">樟树</a><a class="js-city-name" data-ci="663" data-val="{ choosecityid:663 }" data-act="cityChange-click">漳浦</a><a class="js-city-name" data-ci="757" data-val="{ choosecityid:757 }" data-act="cityChange-click">正定</a><a class="js-city-name" data-ci="821" data-val="{ choosecityid:821 }" data-act="cityChange-click">中牟</a><a class="js-city-name" data-ci="891" data-val="{ choosecityid:891 }" data-act="cityChange-click">准格尔旗</a><a class="js-city-name" data-ci="858" data-val="{ choosecityid:858 }" data-act="cityChange-click">柘城</a><a class="js-city-name" data-ci="834" data-val="{ choosecityid:834 }" data-act="cityChange-click">邹城</a><a class="js-city-name" data-ci="841" data-val="{ choosecityid:841 }" data-act="cityChange-click">赵县</a><a class="js-city-name" data-ci="1007" data-val="{ choosecityid:1007 }" data-act="cityChange-click">织金</a><a class="js-city-name" data-ci="997" data-val="{ choosecityid:997 }" data-act="cityChange-click">芷江</a><a class="js-city-name" data-ci="985" data-val="{ choosecityid:985 }" data-act="cityChange-click">周至</a><a class="js-city-name" data-ci="1093" data-val="{ choosecityid:1093 }" data-act="cityChange-click">资兴市</a><a class="js-city-name" data-ci="1140" data-val="{ choosecityid:1140 }" data-act="cityChange-click">扎兰屯市</a><a class="js-city-name" data-ci="1048" data-val="{ choosecityid:1048 }" data-act="cityChange-click">漳平</a><a class="js-city-name" data-ci="1179" data-val="{ choosecityid:1179 }" data-act="cityChange-click">忠县</a><a class="js-city-name" data-ci="1196" data-val="{ choosecityid:1196 }" data-act="cityChange-click">柘荣</a><a class="js-city-name" data-ci="1200" data-val="{ choosecityid:1200 }" data-act="cityChange-click">中江县</a>
                        </div>
                    </li>
                </ul></div>
        </div>


        <div class="nav">
            <ul class="navbar">
                <li><a href="http://localhost:8080/index.html" data-act="home-click" >首页</a></li>
                <li><a href="/hotMessage" data-act="movies-click">热门影评</a></li>
                <li><a href="/writeMessage" data-act="cinemas-click"class="active">写评论</a></li>
                <li><a href="/personalMessage" >个人中心</a></li>
            </ul>
        </div>


        <div style="width: 150px;height: 75px ;float: right">
            <div style="width: 95%;height:30px;margin: 25px 5px" >
                <a href="http://localhost:8080/login" class="welcome" style="color: #797979" ></a>
            </div>
        </div>

        <div class="user-info">
            <div class="user-avatar J-login">
                <img src="./index_files/7dd82a16316ab32c8359debdb04396ef2897.png">
                <span class="caret"></span>
                <ul class="user-menu">
                    <li><a href="login.html">登录</a></li>
                    <li><a href="/loginOut">退出</a></li>
                </ul>
            </div>
        </div>

        <form action="#query" target="_blank" class="search-form" data-actform="search-click">
            <input name="kw" class="search" type="search" maxlength="32" placeholder="找电影" autocomplete="off">
            <input class="submit" type="submit" value="">
        </form>

        <div class="app-download">
            <a href="#app" target="_blank">
                <span class="iphone-icon"></span>
                <span class="apptext">APP下载</span>
                <span class="caret"></span>
                <div class="download-icon">
                    <p class="down-title">扫码下载APP</p>
                    <p class="down-content">选座更优惠</p>
                </div>
            </a>
        </div>

    </div>
</div>


<div style="margin: 120px 300px;width: 200px;height: 50px">
    <input  type="button" onclick="writeMessage()" value="写评论"/>
    <input id="return" style="display: none;float: right" type="button" onclick="returnMessage()" value="返回上一级"/>
</div>

<%--<% myMessage myMessage= (pojo.myMessage) request.getAttribute("myMessage");
    String pic=myMessage.getComPic();
%>--%>

<div id="addMessage" style="display: none">
    <form action="/writeMessage" method="post" name="upload" enctype="multipart/form-data"  ><%----%>
        <div style="margin:30px 100px;width:840px;height:370px;" >
            <input onclick="urlSubmit()"type="submit" value="提交评论" style="float: left;margin: -100px 135px">
            <input type="text" size="100"  name="title"style="float: left;height: 30px" placeholder="请输入标题" id="title"><br><br>

            <textarea id="message" rows="12" cols="100" type="text" name="message" class="smallInput" style="float: left" placeholder="请输入评论内容"></textarea>

            <div id="Pic_pass" style="float: left;">

                <div class="picDiv">
                    <div class="addImages">

                        <input type="file" name="picture" class="file" id="uploadFilexxx" multiple="multiple" accept="image/png, image/jpeg, image/gif, image/jpg">
                        <div class="text-detail">
                            <span>+</span>
                            <p>点击上传图片</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="msg" style="display: none;"></div>


        </div><br>

        <div class="msg" style="display: none;"></div>

    </form>
</div>

<div class="body" id="body">

    <c:forEach items="${list}" var="hotMess">
        <ul><hr>
            <h3 style="margin-left: 10px;color: #666699">${hotMess.title}</h3>
            <c:choose>
            <c:when test="${not empty hotMess.comPic}">
            <li class="herder">

                <br>

                    <div class="left_img">
                        <img style="width: 40px; height: 45px;"
                             src="hotMes_file/${hotMess.pic}">
                    </div>


                <div  class="right_header">
                    <a style="margin-left: 10px;font-size: 15px ;color: #9999A6" href="/personalMessage">${hotMess.userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 13px ;color: #9999A6;">${hotMess.comTime}</span><br><br>

                </div>


                <div class="right_body">

                    <a style="color: #494949">
                            ${hotMess.comMessage}
                    </a>
                </div>

               
                    <div class="down_body">
                    <img style="width: 120px; height: 150px;" src="hotMes_file/${hotMess.comPic}">

                    </div>
                    <div></div>


            </li>
            </c:when>

                <c:otherwise>
            <li class="herder" style="height: 120px">

                <br>

                <div class="left_img">
                    <img style="width: 40px; height: 45px;"
                         src="hotMes_file/${hotMess.pic}">
                </div>


                <div  class="right_header">
                    <a style="margin-left: 10px;font-size: 15px ;color: #9999A6" href="/personalMessage">${hotMess.userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 13px ;color: #9999A6;">${hotMess.comTime}</span><br><br>

                </div>


                <div class="right_body" >

                    <a style="color: #494949;">
                            ${hotMess.comMessage}
                    </a>
                </div>
            </li>

                </c:otherwise>

            </c:choose>
        
        </ul>
        <input style="margin-left: 70px" type="button" value="评论" onclick="comment()">
        <%--<input type="button" value="收起评论" onclick="hideComment()">--%>


        <div id="comment" style="margin:20px 70px;width: 850px;">
            <form >
                <textarea required="true" id="${hotMess.messageID}"  name="addMessage" cols="90" rows="5"  placeholder="写评论.." style="font-size: 16px;color: black;"></textarea>

                <input style="margin: 70px 5px ;" type="button" value="提交评论" onclick="submitComment(${hotMess.messageID})"/>
            </form>

            <c:forEach items="${list1}" var="addMess">
                <c:choose>
                <c:when test="${hotMess.messageID==addMess.messageID}">
                <div style="margin-top:0px;width: 900px;height:100px;">
                    <div style=" width: 40px;height: 45px">
                        <img style="width: 40px; height: 45px;" src="/hotMes_file/${addMess.pic} ">
                    </div>



                    <div  style="margin: -50px 60px;width:750px;height: 30px;">

                        <a style="margin-left: 10px;font-size: 15px ;color: #9999A6;" href="/personalMessage">${addMess.userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 13px ;color: #9999A6;">${addMess.addComTime}</span><br><br>

                    </div>


                    <div style="margin: 60px 70px;width:750px;height: 40px;word-wrap: break-word">

                        <a style="color: #494949">
                                ${addMess.addMessage}
                        </a>
                    </div>



                </div>
                </c:when>


                <c:otherwise>
                    <br>
                </c:otherwise>


                </c:choose>


            </c:forEach>

        </div>


    </c:forEach>



</div>
<%--<%

    user user= (user) session.getAttribute("login");
    out.print(user.getUserName());


%>--%>
<script src="js/jquery-3.2.1.js"></script>
<script>

    function urlSubmit() {

        var title = document.getElementById("title").value;
        var message = document.getElementById("message").value;
        if (title.length == 0 || message.length == 0) {
            alert("信息填写不完整");
            return false;
            location.href = "/writeMessage"
        }

        var action = "/writeMessage";
        var data = document.upload.picture.value.split("\\");
        action += "?picture=" + data[2];
        document.upload.action = action;
        document.upload.submit();

    }
    //图片上传预览功能
    var userAgent = navigator.userAgent; //用于判断浏览器类型
    //使用formData完成多图片上传
    var formData = new FormData();
    var formData2 = new FormData();
    $(".file").change(function() {
        //获取选择图片的对象
        var docObj = $(this)[0];
        var picDiv = $(this).parents(".picDiv");
        //得到所有的图片文件
        var fileList = docObj.files;
        //将图片数据放到formData中传递后台
        if($(this)[0].files.length==1){
            formData.append("file",docObj.files[0]);
            formData2.append("file",docObj.files[0]);
        }else{
            for(var i=0; i<$(this)[0].files.length;i++){
                formData.append("file",$(this)[0].files[i]);
                formData2.append("file",$(this)[0].files[i]);
            }
        }
        //循环遍历
        for (var i = 0; i < fileList.length; i++) {
            //动态添加html元素
            var picHtml = "<div class='imageDiv' nm='"+fileList[i].name+"'> <img id='img" + fileList[i].name + "' /> <div class='cover'><i class='delbtn'>删除</i></div></div>";
            console.log(picHtml);
            picDiv.prepend(picHtml);
            //获取图片imgi的对象
            var imgObjPreview = document.getElementById("img" + fileList[i].name);
            if (fileList && fileList[i]) {
                //图片属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '160px';
                imgObjPreview.style.height = '130px';
                //imgObjPreview.src = docObj.files[0].getAsDataURL();
                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要以下方式
                if (userAgent.indexOf('MSIE') == -1) {
                    //IE以外浏览器
                    imgObjPreview.src = window.URL.createObjectURL(docObj.files[i]); //获取上传图片文件的物理路径;
                    console.log(imgObjPreview.src);
                    // var msgHtml = '<input type="file" id="fileInput" multiple/>';
                } else {
                    //IE浏览器
                    if (docObj.value.indexOf(",") != -1) {
                        var srcArr = docObj.value.split(",");
                        imgObjPreview.src = srcArr[i];
                    } else {
                        imgObjPreview.src = docObj.value;
                    }
                }
            }
        }
        /*删除功能*/
        $(".delbtn").click(function() {
            if(formData.getAll("file").length==0){
                formData=formData2;
            }else{
                formData2.delete("file");
                for(var i=0;i<formData.getAll("file").length;i++){
                    if(formData.getAll("file")[i].name==$(this).parents(".imageDiv").attr("nm")){

                    }else{
                        formData2.append("file",formData.getAll("file")[i]);
                    }
                }
            }
            formData.delete("file");
            for(var i=0;i<formData2.getAll("file").length;i++){
                formData.append("file",formData2.getAll("file")[i]);
            }
            var _this = $(this);
            _this.parents(".imageDiv").remove();
        });
    });
    /*$("#bbt").click(function(){
        $.ajax({
            type:'post',
            dataType:'json',
            data:formData2,
            cache: false, //上传文件不需要缓存
            url:'/editMessage',
            processData: false, // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            success:function(data){
                if(data.success==1){
                    $.messager.alert('提示', '图片上传成功！');
                    // window.location.reload();
                }else{
                    $.messager.alert('提示', '图片上传失败！');
                }
            }
        })
    })*/

    function comment() {
        //alert("1111")
        //$("#comment").css("display","block")
    }
    function submitComment(a) {
        //alert("1111")
        //$("#comment").css("display","block")
        var messageID=a;
        var addMessage=document.getElementById(a).value;
        //alert(addMessage)
        if(addMessage.length==0){
            alert("提交信息不能为空！")
        }else{
            $.post("/addMessage",{"messageID":messageID,"addMessage":addMessage},function (data) {
                if(data==1){
                    alert("评论成功！")
                    window.location.href="/writeMessage"
                }else{
                    alert("评论失败！")
                }
            })
        }

    }
    function hideComment() {
        $("#comment").css("display","none")
    }

    function writeMessage(){
        $("#body").css("display","none")
        $("#addMessage").css("display","block")
        $("#return").css("display","block")
    }
    function returnMessage() {
        $("#body").css("display","block")
        $("#addMessage").css("display","none")
        $("#return").css("display","none")
    }
    /*function writeMessage(){

        window.location.href="/editMessage";
    }*/
    city_container = document.getElementsByClassName('city-container')[0]
    city_list = document.getElementsByClassName("city-list")[0]
    city_container.onmouseover = function () {
        city_container.className = "city-container active"
    }
    city_container.onmouseout = function () {
        city_container.className = "city-container"
    }
</script>
</body>
</html>
