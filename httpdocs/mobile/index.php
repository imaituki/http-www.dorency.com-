<?php

// 携帯キャリア別自動振り分けスクリプト
// URL:http://www.marguerite.to/Nihongo/Labo/PHP4Mobile/PageDistribution.html
//
// elksystem.ltd
//
//

    //タイトル
    $title="転送";
    //EZウェブ専用ページのURL
    $page_e='./ez/';
    //ボーダフォン専用のURL
    $page_j='./v/';
    //一般携帯電話対応ページのURL
    $page_i='./i/';
    //H"リンク専用対応ページのURL
    $page_h='./i/';

    $i=$_SERVER['HTTP_USER_AGENT'];
    //EZウェブHDML機か。
    if (preg_match("/UP\.Browser\/[3-5]/",$i)) {
        header('Content-Type: text/x-hdml;charset=shift_jis');
        echo('<hdml version="3.0" markable="TRUE" public="TRUE">');
        echo('<nodisplay markable="TRUE" public="TRUE" title="'.$title.'">');
        echo('<action type="ACCEPT" task="GO" dest="'.$page_e.'">');
        echo('</nodisplay>');
        echo('</hdml>');
        exit();
        }

    //ボーダフォン在来機か。
    if (preg_match("/J-PHONE\//",$i)) {
        header("Location: $page_j");
        exit();
        }

    //H"リンクか。
    if (preg_match("/PDXGW\//",$i)) {
        header("Content-Type: text/plain");
        echo("From: $page_h\n");
        echo("Subject: $title\n");
        echo("Content-Type:Text/X-PmailDX\n");
        echo("\n");
        echo("<SEL=99;$page_h>\n");
        echo("<BODY=000000;BG=FFFFFF>\n");
        echo("$title\n");
        echo("\n");
        echo("　いらっしゃいませ。ご訪問ありがとうございます。\n");
        echo(" ------------\n");
        echo("99⇒メニュー\n");
        echo("「99」を入力して下さい。\n");
        exit();
        }

    //ｉモード/EZウェブ次世代機/エアーH"フォンなどの携帯端末一般。
    if (preg_match("/DoCoMo\//",$i) ||
        preg_match("/Opera[\s\/]/",$i) && !(preg_match("/(Win|Mac|Linux|FreeBSD|OS\/2|Solaris)/i",$i)) ||
        preg_match("/UP\.Browser/",$i) ||
        preg_match("/\AVodafone/",$i) ||
        preg_match("/\AMOT-/",$i) ||
        preg_match("/ASTEL\//",$i) ||
        preg_match("/DDIPOCKET;/",$i) ||
        preg_match("/L-mode\/\//",$i)) {
        header("Location: $page_i");
        exit();
        }
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=shift_jis" />
<title>転送</title>
<meta http-equiv="refresh" content="0;URL=./i/" />
</head>
<body>
</body>
</html>
