##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2004 SUNFIRST.INC ALL RIGHTS RESERVED.
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
# fileRead
# �ݒ���ǂݍ��݁B
#
# �T�C�g�T�[�o�[�ݒ�			./root.ini
# �J�e�S���[�ݒ���			$rootdir/constraction/category.dat
# �T�C�g���y�[�W���			$rootdir/constraction/page.dat
# �y�[�W�Ή�URL���			$rootdir/constraction/page_url.dat
# �T�C�g�S�̃v���p�e�B�ݒ���		$rootdir/base_design/property.dat
# �T�C�g�S�̃y�[�W���C�A�E�g�ݒ�	$rootdir/base_design/all.dat
# �T�C�g�S�̃w�b�_�[�ݒ���		$rootdir/base_design/header.dat
# �i�r�Q�[�V�������ݒ���		$rootdir/base_design/navigation.dat
# ���j���[�{�^���ݒ���u0�ԁv		$rootdir/base_design/button0.dat
# ���j���[�{�^���ݒ���u1�ԁv		$rootdir/base_design/button1.dat
# ���j���[�{�^���ݒ���u2�ԁv		$rootdir/base_design/button2.dat
# ���j���[�{�^���ݒ���u3�ԁv		$rootdir/base_design/button3.dat
# ���j���[�{�^���ݒ���u4�ԁv		$rootdir/base_design/button4.dat
# ���j���[�{�^���ݒ���u5�ԁv		$rootdir/base_design/button5.dat
# ���[�U�[�F�؃y�[�W���		$rootdir/option/access.dat
# �V���b�s���O�J�[�g���C�A�E�g�ݒ���	$rootdir/page_design/story/cart/design.dat
# �V���b�s���O�J�[�g�ݒ���		$rootdir/page_design/story/cart/cart.dat
# �V���b�s���O�J�[�g�ʐM�̔����	$rootdir/page_design/story/cart/low.dat
# �V���b�s���O�J�[�g���͍��ڐݒ���	$rootdir/page_design/story/cart/input.dat
# �₢���킹�t�H�[����{�ݒ���	$rootdir/page_design/story/ask/ask.dat
# �₢���킹�t�H�[���f�U�C���ݒ���	$rootdir/page_design/story/ask/design.dat
# �₢���킹�t�H�[�����͍��ڐݒ���	$rootdir/page_design/story/ask/input.dat
##################################################
sub fileRead{

	#�T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
	if(-e "./root.ini"){
		open(IN,"./root.ini");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@root = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);
	}else{
		$error = 99;
	}

	#�Ō��[CR/LF]�����B
	chomp $rootdir;

	#�J�e�S���[�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/constraction/category.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@constraction = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($cnm0,$cnm1,$cnm2,$cnm3,$cnm4,$cnm5,$url0,$brs0,$url1,$brs1,$url2,$brs2,$url3,$brs3,$url4,$brs4,$url5,$brs5,$cat0,$cat1,$cat2,$cat3,$cat4,$cat5) = split(/,/,$constraction[0]);

	#�T�C�g���y�[�W���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/constraction/page.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@page_kind = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($pnm00,$knm00,$pnm10,$knm10,$pnm11,$knm11,$pnm12,$knm12,$pnm13,$knm13,$pnm14,$knm14,$pnm15,$knm15,$pnm20,$knm20,$pnm21,$knm21,$pnm22,$knm22,$pnm23,$knm23,$pnm24,$knm24,$pnm25,$knm25,$pnm30,$knm30,$pnm31,$knm31,$pnm32,$knm32,$pnm33,$knm33,$pnm34,$knm34,$pnm35,$knm35,$pnm40,$knm40,$pnm41,$knm41,$pnm42,$knm42,$pnm43,$knm43,$pnm44,$knm44,$pnm45,$knm45,$pnm50,$knm50,$pnm51,$knm51,$pnm52,$knm52,$pnm53,$knm53,$pnm54,$knm54,$pnm55,$knm55) = split(/,/,$page_kind[0]);

	#�y�[�W�Ή�URL���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/constraction/page_url.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@page_url = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($url10,$brs10,$url11,$brs11,$url12,$brs12,$url13,$brs13,$url14,$brs14,$url15,$brs15,$url20,$brs20,$url21,$brs21,$url22,$brs22,$url23,$brs23,$url24,$brs24,$url25,$brs25,$url30,$brs30,$url31,$brs31,$url32,$brs32,$url33,$brs33,$url34,$brs34,$url35,$brs35,$url40,$brs40,$url41,$brs41,$url42,$brs42,$url43,$brs43,$url44,$brs44,$url45,$brs45,$url50,$brs50,$url51,$brs51,$url52,$brs52,$url53,$brs53,$url54,$brs54,$url55,$brs55) = split(/,/,$page_url[0]);

	#�y�[�W�ꎞ��\�����t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/constraction/page_stop.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@page_stop = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($ps10,$ps11,$ps12,$ps13,$ps14,$ps15,$ps20,$ps21,$ps22,$ps23,$ps24,$ps25,$ps30,$ps31,$ps32,$ps33,$ps34,$ps35,$ps40,$ps41,$ps42,$ps43,$ps44,$ps45,$ps50,$ps51,$ps52,$ps53,$ps54,$ps55) = split(/,/,$page_stop[0]);

	#�T�C�g�S�̃v���p�e�B�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/property.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@property = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($ppt1,$ppt2,$ppt3,$ppt4,$ppt5,$ppt6,$ppt7,$ppt8,$ppt9,$ppt10,$ppt11,$ppt12,$ppt13,$ppt14,$ppt15,$ppt16,$ppt17) = split(/,/,$property[0]);

	#�T�C�g�S�̃y�[�W���C�A�E�g�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/all.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@all = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($all1,$all2,$all3,$all4,$all5,$all6,$all7,$all8,$all9) = split(/,/,$all[0]);

	#�T�C�g�S�̃w�b�_�[�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/header.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@header = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($hdr1,$hdr2,$hdr3,$hdr4,$hdr5,$hdr6,$hdr7,$hdr8,$hdr9,$hdr10,$hdr11,$hdr12,$hdr13,$hdr14,$hdr15,$hdr16,$hdr17,$hdr18,$hdr19,$hdr20,$hdr21,$hdr22,$hdr23,$hdr24,$hdr25,$hdr26,$hdr27,$hdr28,$hdr29,$hdr30,$hdr31,$hdr32,$hdr33) = split(/,/,$header[0]);

	#�i�r�Q�[�V�������ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/navigation.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@navigation = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($ngs1,$ngs2,$ngs3,$ngs4,$ngs5,$ngs6,$ngs7,$ngs8) = split(/,/,$navigation[0]);

	#���j���[�{�^���ݒ���u0�ԁv�t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/button0.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@button0 = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($btn1_0,$btn2_0,$btn3_0,$btn4_0,$btn5_0,$btn6_0,$btn7_0,$btn8_0,$btn9_0,$btn10_0,$btn11_0,$btn12_0,$btn13_0,$btn14_0,$btn15_0,$btn16_0,$btn17_0,$btn18_0,$btn19_0,$btn20_0,$btn21_0,$btn22_0,$btn23_0,$btn24_0,$btn25_0,$btn26_0,$btn27_0,$btn28_0,$btn29_0,$btn30_0,$btn31_0,$btn32_0,$btn33_0,$btn34_0,$btn35_0,$btn36_0) = split(/,/,$button0[0]);

	#���j���[�{�^���ݒ���u1�ԁv�t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/button1.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@button1 = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($btn1_1,$btn2_1,$btn3_1,$btn4_1,$btn5_1,$btn6_1,$btn7_1,$btn8_1,$btn9_1,$btn10_1,$btn11_1,$btn12_1,$btn13_1,$btn14_1,$btn15_1,$btn16_1,$btn17_1,$btn18_1,$btn19_1,$btn20_1,$btn21_1,$btn22_1,$btn23_1,$btn24_1,$btn25_1,$btn26_1,$btn27_1,$btn28_1,$btn29_1,$btn30_1,$btn31_1,$btn32_1,$btn33_1,$btn34_1,$btn35_1,$btn36_1) = split(/,/,$button1[0]);

	#���j���[�{�^���ݒ���u2�ԁv�t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/button2.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@button2 = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($btn1_2,$btn2_2,$btn3_2,$btn4_2,$btn5_2,$btn6_2,$btn7_2,$btn8_2,$btn9_2,$btn10_2,$btn11_2,$btn12_2,$btn13_2,$btn14_2,$btn15_2,$btn16_2,$btn17_2,$btn18_2,$btn19_2,$btn20_2,$btn21_2,$btn22_2,$btn23_2,$btn24_2,$btn25_2,$btn26_2,$btn27_2,$btn28_2,$btn29_2,$btn30_2,$btn31_2,$btn32_2,$btn33_2,$btn34_2,$btn35_2,$btn36_2) = split(/,/,$button2[0]);

	#���j���[�{�^���ݒ���u3�ԁv�t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/button3.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@button3 = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($btn1_3,$btn2_3,$btn3_3,$btn4_3,$btn5_3,$btn6_3,$btn7_3,$btn8_3,$btn9_3,$btn10_3,$btn11_3,$btn12_3,$btn13_3,$btn14_3,$btn15_3,$btn16_3,$btn17_3,$btn18_3,$btn19_3,$btn20_3,$btn21_3,$btn22_3,$btn23_3,$btn24_3,$btn25_3,$btn26_3,$btn27_3,$btn28_3,$btn29_3,$btn30_3,$btn31_3,$btn32_3,$btn33_3,$btn34_3,$btn35_3,$btn36_3) = split(/,/,$button3[0]);

	#���j���[�{�^���ݒ���u4�ԁv�t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/button4.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@button4 = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($btn1_4,$btn2_4,$btn3_4,$btn4_4,$btn5_4,$btn6_4,$btn7_4,$btn8_4,$btn9_4,$btn10_4,$btn11_4,$btn12_4,$btn13_4,$btn14_4,$btn15_4,$btn16_4,$btn17_4,$btn18_4,$btn19_4,$btn20_4,$btn21_4,$btn22_4,$btn23_4,$btn24_4,$btn25_4,$btn26_4,$btn27_4,$btn28_4,$btn29_4,$btn30_4,$btn31_4,$btn32_4,$btn33_4,$btn34_4,$btn35_4,$btn36_4) = split(/,/,$button4[0]);

	#���j���[�{�^���ݒ���u5�ԁv�t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/base_design/button5.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@button5 = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($btn1_5,$btn2_5,$btn3_5,$btn4_5,$btn5_5,$btn6_5,$btn7_5,$btn8_5,$btn9_5,$btn10_5,$btn11_5,$btn12_5,$btn13_5,$btn14_5,$btn15_5,$btn16_5,$btn17_5,$btn18_5,$btn19_5,$btn20_5,$btn21_5,$btn22_5,$btn23_5,$btn24_5,$btn25_5,$btn26_5,$btn27_5,$btn28_5,$btn29_5,$btn30_5,$btn31_5,$btn32_5,$btn33_5,$btn34_5,$btn35_5,$btn36_5) = split(/,/,$button5[0]);

	#���[�U�[�F�؃y�[�W���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/option/access.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@access = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($acs1,$acs2,$acs3,$acs4,$acs5,$acs6,$acs7,$acs8,$acs9,$acs10,$acs11,$acs12,$acs13,$acs14,$acs15,$acs16,$acs17,$acs18,$acs19,$acs20,$acs21,$acs22,$acs23,$acs24,$acs25,$acs26,$acs27,$acs28,$acs29,$acs30) = split(/,/,$access[0]);

	#�V���b�s���O�J�[�g���C�A�E�g�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/cart/design.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@cartdesign = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($cds1,$cds2,$cds3,$cds4,$cds5,$cds6,$cds7,$cds8,$cds9,$cds10,$cds11,$cds12,$cds13,$cds14,$cds15,$cds16,$cds17,$cds18,$cds19,$cds20,$cds21,$cds22) = split(/,/,$cartdesign[0]);

	#�V���b�s���O�J�[�g�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/cart/cart.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@cart = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($crt1,$crt2,$crt3,$crt4,$crt5,$crt6,$crt7,$crt8,$crt9,$crt10,$crt11,$crt12,$crt13,$crt14,$crt15,$crt16,$crt17,$crt18,$crt19,$crt20,$crt21,$crt22,$crt23,$crt24,$crt25,$crt26,$crt27,$crt28,$crt29,$crt30,$crt31,$crt32,$crt33,$crt34,$crt35,$crt36,$crt37,$crt38,$crt39,$crt40,$crt41,$crt42,$crt43,$crt44,$crt45,$crt46,$crt47,$crt48,$crt49,$crt50,$crt51,$crt52) = split(/,/,$cart[0]);

	#�V���b�s���O�J�[�g�ʐM�̔����t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/cart/low.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@low = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($low1,$low2,$low3,$low4,$low5,$low6,$low7,$low8,$low9,$low10,$low11,$low12,$low13,$low14,$low15,$low16,$low17,$low18,$low19,$low20,$low21,$low22,$low23,$low24,$low25,$low26,$low27,$low28,$low29,$low30,$low31,$low32,$low33,$low34,$low35,$low36,$low37,$low38,$low39,$low40,$low41,$low42,$low43,$low44,$low45,$low46,$low47,$low48,$low49,$low50) = split(/,/,$low[0]);

	#�V���b�s���O�J�[�g���͍��ڐݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/cart/input.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@cartinput = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($cri1,$cri2,$cri3,$cri4,$cri5,$cri6,$cri7,$cri8,$cri9,$cri10) = split(/,/,$cartinput[0]);

	#�₢���킹�t�H�[����{�ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/ask/ask.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@ask = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($ask1,$ask2,$ask3,$ask4,$ask5,$ask6,$ask7,$ask8,$ask9,$ask10,$ask11,$ask12,$ask13,$ask14,$ask15,$ask16,$ask17,$ask18,$ask19,$ask20,$ask21) = split(/,/,$ask[0]);

	#�₢���킹�t�H�[���f�U�C���ݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/ask/design.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@askdesign = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($ads1,$ads2,$ads3,$ads4,$ads5,$ads6,$ads7,$ads8,$ads9,$ads10,$ads11,$ads12,$ads13,$ads14,$ads15,$ads16,$ads17,$ads18,$ads19,$ads20,$ads21,$ads22) = split(/,/,$askdesign[0]);

	#�₢���킹�t�H�[�����͍��ڐݒ���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/page_design/story/ask/input.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@askinput = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($ain1,$ain2,$ain3,$ain4,$ain5,$ain6,$ain7,$ain8,$ain9,$ain10,$ain11,$ain12,$ain13,$ain14) = split(/,/,$askinput[0]);

}
##################################################
# fileReadPage
# �y�[�W�ʐݒ���ǂݍ��݁B
#
# �y�[�W���C�A�E�g�ݒ���	$rootdir/page_design/page/$in{'category'}$in{'page'}.dat
# �y�[�W�C���[�W�ݒ���	$rootdir/page_design/image/$in{'category'}$in{'page'}.dat
# �y�[�W�R�����g�ݒ���	$rootdir/page_design/comment/$in{'category'}$in{'page'}.dat
# �L���̈惌�C�A�E�g�ݒ���	$rootdir/page_design/story/story/$in{'category'}$in{'page'}.dat
# �L���`���K���ݒ���		$rootdir/page_design/story/rules/$in{'category'}$in{'page'}.dat
# �L�����e���			$rootdir/page_design/story/comment/$in{'category'}$in{'page'}.dat
##################################################
sub fileReadPage{

	#�y�[�W���C�A�E�g�ݒ���t�@�C���ǂݍ��݁B
	if(-e "$rootdir/page_design/page/$in{'category'}$in{'page'}.dat"){
		open(IN,"$rootdir/page_design/page/$in{'category'}$in{'page'}.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@page = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		($pge1,$pge2,$pge3,$pge4,$pge5,$pge6,$pge7,$pge8) = split(/,/,$page[0]);
	}else{
		$noData = 1;
	}

	#�y�[�W�C���[�W�ݒ���t�@�C���ǂݍ��݁B
	if(-e "$rootdir/page_design/image/$in{'category'}$in{'page'}.dat"){
		open(IN,"$rootdir/page_design/image/$in{'category'}$in{'page'}.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@image = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		($pig1,$pig2,$pig3,$pig4,$pig5,$pig6,$pig7,$pig8,$pig9,$pig10,$pig11,$pig12,$pig13,$pig14,$pig15,$pig16,$pig17,$pig18,$pig19,$pig20,$pig21,$pig22,$pig23,$pig24,$pig25,$pig26,$pig27,$pig28,$pig29,$pig30,$pig31,$pig32,$pig33,$pig34) = split(/,/,$image[0]);
	}else{
		$noData = 1;
	}

	#�y�[�W�R�����g�ݒ���t�@�C���ǂݍ��݁B
	if(-e "$rootdir/page_design/comment/$in{'category'}$in{'page'}.dat"){
		open(IN,"$rootdir/page_design/comment/$in{'category'}$in{'page'}.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@comment = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		($pct1,$pct2,$pct3,$pct4,$pct5,$pct6,$pct7,$pct8,$pct9,$pct10,$pct11,$pct12,$pct13,$pct14,$pct15,$pct16,$pct17,$pct18,$pct19,$pct20,$pct21,$pct22,$pct23,$pct24) = split(/,/,$comment[0]);
	}else{
		$noData = 1;
	}

	#�L���̈惌�C�A�E�g�ݒ���t�@�C���ǂݍ��݁B
	if(-e "$rootdir/page_design/story/story/$in{'category'}$in{'page'}.dat"){
		open(IN,"$rootdir/page_design/story/story/$in{'category'}$in{'page'}.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@story = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		($pst1,$pst2,$pst3,$pst4,$pst5,$pst6,$pst7,$pst8,$pst9,$pst10,$pst11,$pst12,$pst13) = split(/,/,$story[0]);
	}else{
		$noData = 1;
	}

	#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
	if(-e "$rootdir/page_design/story/rules/$in{'category'}$in{'page'}.dat"){
		open(IN,"$rootdir/page_design/story/rules/$in{'category'}$in{'page'}.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@rules = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		($rls1,$rls2,$rls3,$rls4,$rls5,$rls6,$rls7,$rls8,$rls9,$rls10,$rls11,$rls12,$rls13,$rls14,$rls15,$rls16,$rls17,$rls18,$rls19,$rls20,$rls21,$rls22,$rls23,$rls24,$rls25,$rls26,$rls27,$rls28,$rls29,$rls30,$rls31,$rls32,$rls33,$rls34,$rls35,$rls36,$rls37,$rls38,$rls39,$rls40) = split(/,/,$rules[0]);
	}else{
		$noData = 1;
	}

	#�L�����e���t�@�C���ǂݍ��݁B
	if(-e "$rootdir/page_design/story/comment/$in{'category'}$in{'page'}.dat"){
		open(IN,"$rootdir/page_design/story/comment/$in{'category'}$in{'page'}.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@storycomment = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
	}else{
		$noData = 1;
	}

}

1;
