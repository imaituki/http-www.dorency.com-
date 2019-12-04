##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2009 SUNFIRST.INC ALL RIGHTS RESERVED.
#
# �\�t�g�E�F�A�g�p�����_��
#
# [SITEUP-SYSTEM](�ȉ�[�{�\�t�g�E�F�A]�ƋL��)�Ɋւ��钘�쌠���̒m�I���Y���́A
# �T���t�@�[�X�g�������(�ȉ�[����]�ƋL��)�ɋA�����A
# ���{�̒��쌠�@���̑��֘A���ēK�p�����@�����ɂ���ĕی삳��Ă��܂��B
#
# [�{�\�t�g�E�F�A]�͎��s�t�@�C�������łȂ��A
# ���[�U�f�[�^��w���v���܂ޑS�Ă̍\���t�@�C����\���܂��B
#
# ���q�l�́A�\�t�g�E�F�A�g�p�����_��(�ȉ�[�_��]�ƋL��)�̏����ɏ]���āA
# [�{�\�t�g�E�F�A]����{�����Ŏg�p����A��Ɛ�I�Ȍ�����[�_��]�Ɋ�Â��擾���܂��B
#
# [�_��]�ɖ����I�ɋ�������Ă���ꍇ�������āA
# [�{�\�t�g�E�F�A]�̎g�p�A�S�����͈ꕔ�𕡐��A���ϓ��͏o���܂���B
# [�_��]�ɖ����I�ɋ�������Ă���A[�{�\�t�g�E�F�A]�𕡐�����ꍇ�ɂ́A
# [�{�\�t�g�E�F�A]�ɕt����Ă��钘�쌠�\���y�сA���̑��̌����\���������ɕ���������̂Ƃ��܂��B
#
# [�{�\�t�g�E�F�A]�y�ъ֘A�����ɕt����Ă���A
# ���쌠�\���y�т��̑��̌����\�����������邱�Ƃ͏o���܂���B
#
# [�_��]���I�������Ƃ��́A������[�{�\�t�g�E�F�A]�y�т��̑S�Ă̕��������тɊ֘A������
# �j��������̂Ƃ��܂��B
#
# [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A[�_��]�ɓ��ӂ����Ă����ꍇ�ł��A
# [�{�\�t�g�E�F�A]���l���p�E�Г����p�E�c���ړI�E��c���ړI���킸�A
# �S�����͈ꕔ�𕡐��A���ϓ����s�����ꍇ�̎g�p�ɂ���Đ����������鑹�Q�ɂ��āA
# �@���Ȃ�ӔC�������܂���B
# [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A
# ���̂悤�ȑ��Q����������\���ɂ��āA���O�ɒm�炳��Ă����ꍇ�ł����l�ł��B
#
# ���ȏ�̓C���X�g�[�������ۂɕ\�������u�\�t�g�E�F�A�g�p�����_�񏑁v�𔲐��A�ǋL�������̂ł��B
#
##################################################
##################################################
# header
# HTML�w�b�_�[�o�́B
##################################################
sub header{

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�P�v
	if($ppt10 ne ""){push(@keyword,$ppt10);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�Q�v
	if($ppt11 ne ""){push(@keyword,$ppt11);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�R�v
	if($ppt12 ne ""){push(@keyword,$ppt12);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�S�v
	if($ppt13 ne ""){push(@keyword,$ppt13);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�T�v
	if($ppt14 ne ""){push(@keyword,$ppt14);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�U�v
	if($ppt15 ne ""){push(@keyword,$ppt15);}

	#���{�b�g�����Ή��imeta�^�O�j
	if ($#keyword > 0){
		$metaKeyword .= "<meta name=\"keywords\" content=\"";
		for($i = 0 ; $i <= $#keyword ; $i++){
			if($#keyword == $i){
				$metaKeyword .= $keyword[$i];
			}else{
				$metaKeyword .= $keyword[$i];
				$metaKeyword .= ",";
			}
		}
		$metaKeyword .= "\">";
	}

	#���s�u<br>�v���폜�i�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�ڍׁv�j
	if($ppt16 ne ""){
		$ppt16 =~ s/<br>//g;
		$metaDescription = "<meta name=\"description\" content=\"$ppt16\">";
	}

# �ϐ��������B
#
# $metaKeyword
# �T�C�g�L�[���[�h
# �T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�P�`�U�v
#
# $ppt16
# �T�C�g������
# �T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�ڍׁv
#
# $title
# �^�C�g��
# �g�b�v�y�[�W �� �T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�^�C�g���v
# �e�y�[�W �� �T�C�g���y�[�W���upage.dat�F�J�e�S���[(1�`5)�y�[�W(1�`6)�y�[�W���v

print"Content-type: text/html\n";

	if($in{'view'} eq "payment_nicos"){
		print"Set-Cookie: NAME=COMMODITY; expires=Thu, 01-Jan-1970 00:00:00 GMT;\n";
	}

print"\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.10">
EOM

	if($metaKeyword ne ""){
		print"$metaKeyword\n";
	}

	if($metaDescription ne ""){
		print"$metaDescription\n";
	}

print<<"EOM";
<title>$title</title>
EOM

	if($location eq "up"){

		my $new_html_address = "";

		if($rls15 eq "on" && $rls16 ne "" && $kind eq "�t�H�[��1"){

			$new_html_address = $rls16;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "�ꗗ�ɖ߂�") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){

			$new_html_address = $crt43;

		}else{

			$new_html_address = $html_address;

		}

print<<"EOM";
<link rel="stylesheet" type="text/css" href="$new_html_address/common.css" media="all">
<script language="javascript" type="text/javascript" src="$new_html_address/common.js"></script>
EOM

	}else{

print<<"EOM";
<STYLE TYPE="text/css">
<!--
a:hover{color:$ppt8}
-->
</STYLE>
<script language="javascript" type="text/javascript" src="http://localhost:11213/$site_folder/up/common.js"></script>
EOM

	}

print<<"EOM";
</head>
<noscript>JavaScript�͎g���Ȃ���Ԃł��E�E�E</noscript>
EOM

}
##################################################
# header_shop
# HTML�w�b�_�[(�V���b�v)�o�́B
##################################################
sub header_shop{

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�P�v
	if($ppt10 ne ""){push(@keyword,$ppt10);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�Q�v
	if($ppt11 ne ""){push(@keyword,$ppt11);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�R�v
	if($ppt12 ne ""){push(@keyword,$ppt12);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�S�v
	if($ppt13 ne ""){push(@keyword,$ppt13);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�T�v
	if($ppt14 ne ""){push(@keyword,$ppt14);}

	#�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�U�v
	if($ppt15 ne ""){push(@keyword,$ppt15);}

	#���{�b�g�����Ή��imeta�^�O�j
	if ($#keyword > 0){
		$metaKeyword .= "<meta name=\"keywords\" content=\"";
		for($i = 0 ; $i <= $#keyword ; $i++){
			if($#keyword == $i){
				$metaKeyword .= $keyword[$i];
			}else{
				$metaKeyword .= $keyword[$i];
				$metaKeyword .= ",";
			}
		}
		$metaKeyword .= "\">";
	}

	#���s�u<br>�v���폜�i�T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�ڍׁv�j
	if($ppt16 ne ""){
		$ppt16 =~ s/<br>//g;
		$metaDescription = "<meta name=\"description\" content=\"$ppt16\">";
	}

# �ϐ��������B
#
# $metaKeyword
# �T�C�g�L�[���[�h
# �T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�L�[���[�h�P�`�U�v
#
# $ppt16
# �T�C�g������
# �T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�ڍׁv
#
# $title
# �g�b�v�y�[�W �� �T�C�g�S�̃v���p�e�B�ݒ���uproperty.dat�F�y�[�W�v���p�e�B��:�^�C�g���v
# �e�y�[�W �� �T�C�g���y�[�W���upage.dat�F�J�e�S���[(1�`5)�y�[�W(1�`6)�y�[�W���v

print"Content-type: text/html\n";
##########
	if($in{'cart'} eq "" && $kind eq "�V���b�v1"){
		&item_cookie_get;
	}elsif($in{'cart'} eq "detail" && $kind eq "�V���b�v1"){
	}elsif($in{'cart'} eq "search" && $kind eq "�V���b�v1"){
		&item_cookie_get;
##########
##########
	}elsif($in{'cart'} eq "" && $kind eq "�V���b�v2"){
		&item_cookie_get;
	}elsif($in{'cart'} eq "detail" && $kind eq "�V���b�v2"){
		&item_cookie_get;
	}elsif($in{'cart'} eq "search" && $kind eq "�V���b�v2"){
		&item_cookie_get;
##########
##########
	}elsif($in{'cart'} eq "payment"){
	}elsif($in{'cart'} eq "view"){
		&item_get;
	}elsif($in{'cart'} eq "select" && $kind eq "�V���b�v1"){
		if($in{'submit'} eq "���͉�ʂɖ߂�"){
			&item_get;
		}else{
			&item_set;
		}
	}elsif($in{'cart'} eq "select" && $kind eq "�V���b�v2"){
		if($in{'submit'} eq "���i�ꗗ�ɖ߂�"){
			&item_get;
		}elsif($in{'submit'} eq "���͉�ʂɖ߂�"){
			&item_get;
		}else{
			&item_set;
		}
##########
##########
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "�ύX"){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq ""){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "�폜"){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "�ꊇ�폜"){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq ""){
		&item_get;
	}elsif($in{'cart'} eq "order1" && $in{'submit'} eq "�����ғ��͉�ʂɐi��"){
		if($crt42 eq "on" && $crt43 ne ""){
			&item_get_ssl;
			&cart_user_cookie_get;
		}else{
			&item_get;
			&cart_user_cookie_get;
		}
	}elsif($in{'cart'} eq "order2" && $in{'back'} eq "�I�����i�ꗗ��ʂɖ߂�"){
		&item_get;
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���͉�ʂɖ߂�"){
		&item_get;
		&cart_user_cookie_get;
##########
####################
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_set;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�����ғ��͉�ʂɖ߂�" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�������m�F��ʂɐi��" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
####################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�ύX����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_cookie_get;
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�X�V����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_set;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "user_edit"){
		&item_get;
		&cart_user_cookie_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�ύX����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�X�V����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�ύX����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�X�V����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "delivery_day_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�ύX����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�X�V����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "message_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
####################
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���i�z���m�F��ʂɖ߂�" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "��L���e�ő��M����" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
		
		#�G���[����Ȃ���Ώ��i���폜
		if($#errorMsg == -1){
		&item_delete;
		}
		
####################
####################
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "�z������͉�ʂɐi��" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_set;
		&delivery_cookie_get;
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "�����ғ��͉�ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "���i�z���ݒ��ʂɐi��" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "add" && $in{'submit'} eq "�z�����o�^����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_set;
	}elsif($in{'cart'} eq "add" && $in{'submit'} eq "�����҂�z����ɒǉ�����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_set;
	}elsif($in{'cart'} eq "add" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_cookie_get;
	}elsif($in{'cart'} eq "del" && $in{'submit'} eq "�폜" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_edit;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "�z������͉�ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_cookie_get;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���i�z���ݒ��ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�������m�F��ʂɐi��" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
####################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "���i�z������ύX����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "�X�V����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�ύX����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_cookie_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�X�V����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_set;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "user_edit"){
		&item_get;
		&cart_user_cookie_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�ύX����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�X�V����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "payment_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�ύX����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�X�V����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "delivery_day_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�ύX����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�X�V����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "message_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
####################
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���i�z���m�F��ʂɖ߂�" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "��L���e�ő��M����" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
		
		#�G���[����Ȃ���Ώ��i���폜
		if($#errorMsg == -1){
		&item_delete;
		}
	}
####################
print"\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.10">
EOM

	if($metaKeyword ne ""){
		print"$metaKeyword\n";
	}

	if($metaDescription ne ""){
		print"$metaDescription\n";
	}

print<<"EOM";
<title>$title</title>
EOM

	if($location eq "up"){

		my $new_html_address = "";

		if($rls15 eq "on" && $rls16 ne "" && $kind eq "�t�H�[��1"){

			$new_html_address = $rls16;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "�ꗗ�ɖ߂�") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){

			$new_html_address = $crt43;

		}else{

			$new_html_address = $html_address;

		}

print<<"EOM";
<link rel="stylesheet" type="text/css" href="$new_html_address/common.css" media="all">
<script language="javascript" type="text/javascript" src="$new_html_address/common.js"></script>
EOM

	}else{

print<<"EOM";
<STYLE TYPE="text/css">
<!--
a:hover{color:$ppt8}
-->
</STYLE>
<script language="javascript" type="text/javascript" src="http://localhost:11213/$site_folder/up/common.js"></script>
EOM

	}

print<<"EOM";
</head>
<noscript>JavaScript�͎g���Ȃ���Ԃł��E�E�E</noscript>
EOM

}

1;
