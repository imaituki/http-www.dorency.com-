<?php

// �g�уL�����A�ʎ����U�蕪���X�N���v�g
// URL:http://www.marguerite.to/Nihongo/Labo/PHP4Mobile/PageDistribution.html
//
// elksystem.ltd
//
//

    //�^�C�g��
    $title="�]��";
    //EZ�E�F�u��p�y�[�W��URL
    $page_e='./ez/';
    //�{�[�_�t�H����p��URL
    $page_j='./v/';
    //��ʌg�ѓd�b�Ή��y�[�W��URL
    $page_i='./i/';
    //H"�����N��p�Ή��y�[�W��URL
    $page_h='./i/';

    $i=$_SERVER['HTTP_USER_AGENT'];
    //EZ�E�F�uHDML�@���B
    if (preg_match("/UP\.Browser\/[3-5]/",$i)) {
        header('Content-Type: text/x-hdml;charset=shift_jis');
        echo('<hdml version="3.0" markable="TRUE" public="TRUE">');
        echo('<nodisplay markable="TRUE" public="TRUE" title="'.$title.'">');
        echo('<action type="ACCEPT" task="GO" dest="'.$page_e.'">');
        echo('</nodisplay>');
        echo('</hdml>');
        exit();
        }

    //�{�[�_�t�H���ݗ��@���B
    if (preg_match("/J-PHONE\//",$i)) {
        header("Location: $page_j");
        exit();
        }

    //H"�����N���B
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
        echo("�@��������Ⴂ�܂��B���K�₠�肪�Ƃ��������܂��B\n");
        echo(" ------------\n");
        echo("99�˃��j���[\n");
        echo("�u99�v����͂��ĉ������B\n");
        exit();
        }

    //�����[�h/EZ�E�F�u������@/�G�A�[H"�t�H���Ȃǂ̌g�ђ[����ʁB
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
<title>�]��</title>
<meta http-equiv="refresh" content="0;URL=./i/" />
</head>
<body>
</body>
</html>
