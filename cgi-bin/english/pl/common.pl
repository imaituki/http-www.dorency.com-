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
# auto_link
# ���������N�B
##################################################
sub auto_link{
	$msg =~ s/([^=^\"]|^)(http\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$msg =~ s/([^=^\"]|^)(https\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$msg =~ s/\b([-\w.]+@[-\w.]+\.[-\w.]+)\b/<a href=\"mailto:$1\">$1<\/a>/g;
}
##################################################
# auto_cmt4
# ���������N�B
##################################################
sub auto_cmt4{
	$cmt4 =~ s/([^=^\"]|^)(http\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$cmt4 =~ s/([^=^\"]|^)(https\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
	$cmt4 =~ s/\b([-\w.]+@[-\w.]+\.[-\w.]+)\b/<a href=\"mailto:$1\">$1<\/a>/g;
}
##################################################
# get_time
# ���Ԃ��擾�B
##################################################
sub get_time{

	#�^�C���]�[������{���ԂցB
	$ENV{'TZ'} = "JST-9";

	#���ԕϐ��ݒ�B
	$times = time;

	#�i�b�A���A���A���A���A�N�A�j���A�_�~�[�A�_�~�[�j
	($sec,$min,$hour,$mday,$mon,$year,$wday,$dummy,$dummy) = localtime($times);

	#�j���̔z���ݒ�B
	@week = ('��','��','��','��','��','��','�y');

	#�����̃t�H�[�}�b�g�B[��F2000/01/01(��) 01:01:01]
	$date = sprintf("%04d\/%02d\/%02d(%s) %02d\:%02d:%02d",$year + 1900,$mon + 1,$mday,$week[$wday],$hour,$min,$sec);

	#�����̃t�H�[�}�b�g�B[��F2000/01/01]
	$date2 = sprintf("%04d\%02d\%02d",$year + 1900,$mon + 1,$mday);

}
##################################################
# decode
# �f�R�[�h�����B
##################################################
sub decode{

	if($ENV{'REQUEST_METHOD'} eq "POST"){		#�f�[�^���M���@��POST�̏ꍇ�B

		#�o�C�i�����[�h�œǂނ悤�ɂ���B
		binmode(STDIN);

		#POST���ꂽ�f�[�^���o�C�i���Ńo�b�t�@�ɕۑ��B
		read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});

	}else{						#�f�[�^���M���@��GET�̏ꍇ�B

		#�p�����[�^�����o�b�t�@�ɕۑ��B
		$buffer = $ENV{'QUERY_STRING'};

	}

	if($ENV{'CONTENT_TYPE'} =~ /multipart\/form-data; boundary=(.*)/){

		#���M���e���t�@�C���̏ꍇ�B
		&methodmulti;

	}else{

		#���M���e���t�@�C���ł͂Ȃ��ꍇ�B

		#�o�b�t�@���u&�v�ʂŔz��ɕۑ��B
		@pairs = split(/&/,$buffer);

		#�o�b�t�@�f�[�^�����B
		foreach $pair(@pairs){

			#�o�b�t�@�f�[�^���p�����[�^���A�f�[�^�ɕ�����B
			local($name,$value) = split(/=/,$pair);

			#�p�����[�^���擾�̏����B
			$value =~ tr/+/ /;
			$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

			#�f�[�^�擾�̏����B
			$name =~ tr/+/ /;
			$name =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

			#�����R�[�h�ϊ��B
			&jcode'h2z_sjis(*value);
			&jcode'convert(*value,'sjis');
			&jcode'convert(*name,'sjis');

			#���s�����B
			$value =~ s/\r\n/<br>/g;
			$value =~ s/\r/<br>/g;
			$value =~ s/\n/<br>/g;

			#�p�����[�^�����uuser_data�v�̏ꍇ�B
			if($name eq "user_data"){
				$value =~ s/:/�F/g;
				$value =~ s/;/�G/g;
				$value =~ s/,/&#44;/g;
				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;
				push(@user_data,$value);
			}

			#�p�����[�^�����udelivery_address�v�̏ꍇ�B
			if($name eq "delivery_address"){
				$value =~ s/:/�F/g;
				$value =~ s/;/�G/g;
				$value =~ s/,/&#44;/g;
				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;
				push(@delivery_address,$value);
			}

			#�p�����[�^�����ur_delivery_address�v�̏ꍇ�B
			if($name eq "r_delivery_address"){
				$value =~ s/:/�F/g;
				$value =~ s/;/�G/g;
				$value =~ s/,/&#44;/g;
				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;
				push(@r_delivery_address,$value);
			}

			if($name ne "user_data" || $name ne "delivery_address" || $name ne "r_delivery_address"){

				$value =~ s/\"/&quot;/g;
				$value =~ s/</&lt;/g;
				$value =~ s/>/&gt;/g;

			}

			#�p�����[�^�����uitem_count�v�̏ꍇ�B
			if($name eq "item_count"){
				if($value eq ""){
					$value = "0";
				}
				push(@item_count,$value);
			}

			#�p�����[�^�����uclear�v�̏ꍇ�B
			if($name eq "clear"){
				push(@clear,$value);
			}

			$flg = 0;

			#�p�����[�^���̐擪�Ɂu\_�v������ꍇ�B
			if($name =~ /^\_/){

				if($value eq ""){

					$flg = 1;

				}

			}

			if($temp_name ne $name){

				if($flg == 1){

					$temp_name = $name;

					#�p�����[�^���̐擪�Ɂu\_�v������ꍇ�͍폜�B
					$name =~ s/^\_//;

					#�p�����[�^���̐擪�ɂR���̐���������ꍇ�͍폜�B
					$name =~ s/^[0-9][0-9][0-9]//;

					#�G���[���ڂ�z��ɑ���B
					push(@errorMsg,"���͍��ڂ�[$name]�͕K�{���ڂł��B");

				}

			}

			#�p�����[�^���̐擪�Ɂu\_�v������ꍇ�͍폜�B
			$name =~ s/^\_//;

			#�f�[�^���������đ���B
			$in{$name} .= $value;

			#�p�����[�^����z��ɑ���B
			push(@formdata,$name);
		}
	}

	#�e���ڂ�ݒ�B�i���[�h�A�\���A�R�[�h�A�����j
	$mode  = $in{'mode'};
	$view  = $in{'view'};
	$code  = $in{'code'};
	$clear = $in{'clear'};
}
##################################################
# access_check
# �A�N�Z�X�F�؃`�F�b�N�B
##################################################
sub access_check{

	#���[�U�[�F�؃A�J�E���g���t�@�C���ǂݍ��݁B
	open(IN,"$rootdir/option/access/page/acs.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@access_check = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	#���[�U�[�F�؃A�J�E���g��񐸍��B
	foreach $x(@access_check){

		#���[�U�[�F�؃A�J�E���g��񂩂�ID,PASS���擾����B
		($dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$id,$pass) = split(/,/,$x);

		#�擾����ID,PASS��POST(GET)����ID,PASS���}�b�`���O�B
		if($id eq "$in{'user_id'}" && $pass eq "$in{'user_pass'}"){

			#�����̏ꍇ�Ƀ��[�v�𔲂���B
			last;
		}

	}

	#�擾����ID,PASS��POST(GET)����ID,PASS���}�b�`���O�B
	if($id eq "$in{'user_id'}" && $pass eq "$in{'user_pass'}"){

		#���[�U�[���̔��s�B
		&user_set;

		#�w�b�_�[�o�́B
		&header;

		if($in{'user'} eq "out"){

			if($rootdir eq '.'){
				#���O�A�E�g�̏ꍇ�ɂ̓g�b�v�y�[�W�Ƀ��_�C���N�g�B
				print"<body onLoad=\"MM_goToURL('parent','$html_address');return document.MM_returnValue\">";
			}else{
				#���O�A�E�g�̏ꍇ�ɂ̓g�b�v�y�[�W�Ƀ��_�C���N�g�B
				print"<body onLoad=\"MM_goToURL('parent','$script');return document.MM_returnValue\">";
			}
		}else{

			#���O�C���̏ꍇ�ɂ̓p�����[�^�w��̃y�[�W�Ƀ��_�C���N�g�B
			print"<body onLoad=\"MM_goToURL('parent','$script?category=$in{'category'}&page=$in{'page'}');return document.MM_returnValue\">";
		}
	}else{

		#�w�b�_�[�o�́B
		&header;

		#���O�C���G���[�̏ꍇ�ɂ̓p�����[�^�w��̃y�[�W(�G���[�y�[�W)�Ƀ��_�C���N�g�B
		print"<body onLoad=\"MM_goToURL('parent','$script?category=$in{'category'}&page=$in{'page'}&access=error');return document.MM_returnValue\">";
	}
}
##################################################
# user_set
# ���[�U�[���̔��s�B
##################################################
sub user_set{

	#�N�b�L�[�͍��ێ��Ԃ��L�[�Ƃ��A�ۑ�������365���ԁB�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#�j�����ƏT�����p��\���̔z��Œ�`�B
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365����̍��ێ��Ԃ��w��t�H�[�}�b�g���B[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	if($in{'user'} eq "out"){

		#���O�A�E�g�̏ꍇ�ɂ͏�����ɂ��ăN�b�L�[���s�B
		$user = "user_id\:\,user_pass\:\,save\:\,";
	}else{

		#���O�C���̏ꍇ�ɂ͏����Z�b�g���ăN�b�L�[���s�B
		$user = "user_id\:$in{'user_id'}\,user_pass\:$in{'user_pass'}\,save\:$in{'save'}\,";
	}

	#�N�b�L�[����ۑ�����B
	if($in{'save'} eq "save"){
		print"Set-Cookie: $site_folder=$user; expires=$date_gmt;\n";
	}
	if($in{'save'} ne "save"){
		print"Set-Cookie: $site_folder=$user;\n";
	}

}
##################################################
# user_get
# ���[�U�[�����擾�B
##################################################
sub user_get{

	#�N�b�L�[�����擾�B
	$cookie_user = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie_user);

	#�������ăN�b�L�[���𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[�f�[�^���p�����[�^���A�f�[�^�ɕ�����B
		local($name,$value) = split(/=/,$pair);

		#�󔒕������폜�B
		$name =~ s/\s//g;

		#�ꎞ�ۑ��ϐ���p�ӁB
		$DUMMY{$name} = $value;
	}

	#�N�b�L�[ID���w��B
	@pairs = split(/,/,$DUMMY{$site_folder});

	#�N�b�L�[ID�𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[ID���p�����[�^���A�f�[�^�ɕ�����B
		local($name,$value) = split(/:/,$pair);

		#�N�b�L�[ID���烆�[�U���w��B
		$COOKIE_USER{$name} = $value;
	}

	#�N�b�L�[�œ������O�A���[���AURL���`�B
	$c_id   = $COOKIE_USER{'user_id'};
	$c_pass = $COOKIE_USER{'user_pass'};
	$c_save = $COOKIE_USER{'save'};
}
##################################################
# get_image
# �摜���擾�B
##################################################
sub get_image{

	$res = &get_type($target);

	if($res eq "jpg")   {($h,$w) = &jpg_getsize($target);}
	elsif($res eq "png"){($h,$w) = &png_getsize($target);}
	elsif($res eq "gif"){($h,$w) = &gif_getsize($target);}
	elsif($res eq "bmp"){($h,$w) = &bmp_getsize($target);}
	else                {($h,$w) = ("","");              }

	#�G���[�F���B
	if($h eq "" || $w eq ""){
		($res,$h,$w) = ("","","");
	}

	return($res,$h,$w);

}
##################################################
# get_type
# �摜�^�C�v�擾�B
##################################################
sub get_type{

	$file = $_[0];

	open(FILE,$file);
	read(FILE,$data,4);
	close(FILE);

	($type) = unpack("H4",$data);

	if($type eq "4749")   {$type = "gif";}
	elsif($type eq "424d"){$type = "bmp";}
	elsif($type eq "8950"){$type = "png";}
	elsif($type eq "ffd8"){$type = "jpg";}
	else                  {$type = "";   }

	return($type);

}
##################################################
# gif_getsize
# �摜�T�C�Y�擾�B(gif)
##################################################
sub gif_getsize{

	$gif = $_[0];

	open(GIF,$gif);
	seek(GIF,6,0);
	read(GIF,$size,4);
	close(GIF);

	($width,$height) = unpack("vv",$size);

	return($height,$width);

}
##################################################
# bmp_getsize
# �摜�T�C�Y�擾�B(bmp)
##################################################
sub bmp_getsize{

	$bmp = $_[0];

	open(BMP,$bmp);
	seek(BMP,18,0);
	read(BMP,$size,8);
	close(BMP);

	($width,$height) = unpack("V2", $size);

	return($height,$width);

}
##################################################
# png_getsize
# �摜�T�C�Y�擾�B(png)
##################################################
sub png_getsize{

	$png = $_[0];

	open(PNG,$png);
	seek(PNG,16,0);
	read(PNG,$size,8);
	close(PNG);

	($dummy,$width,$height) = unpack("nnNN",$size);

	return($height,$width);

}
##################################################
# jpg_getsize
# �摜�T�C�Y�擾�B(jpg)
##################################################
sub jpg_getsize{

	$jpg = $_[0];

	$now = 2;

	open(JPG,$jpg);
	seek(JPG,$now,0);

	while(!eof(JPG)){

		#�}�[�J�[�`�F�b�N�B
		read(JPG,$maker,2);

		$now += 2;

		($w1) = unpack("H4",$maker);

		if ($w1 ne "ffc2" && $w1 ne "ffc0"){

			read(JPG,$jump,2);

			$now += 2;

			($s1) = unpack("n",$jump);

			$now += $s1-2;

			seek(JPG,$now,0);

		}else{

			$now += 3;

			seek(JPG,$now,0);

			read(JPG,$size,4);

			($height,$width) = unpack("nn",$size);

			seek(JPG,0,2);

		}
	}

	close(JPG);

	return($height,$width);

}
##################################################
# errorAccess
# �A�N�Z�X�F�؃G���[�B
##################################################
sub errorAccess{

print<<"EOM";
      <br>
      <br>
      <table bgcolor="#CCCCCC" border="1" cellpadding="2" cellspacing="2" width="300" align="center" bordercolor="#999999">
       <tr bordercolor="#CCCCCC" bgcolor="#000066">
        <td align="center" height="30"><font color="#FFFFFF" size="-1">�F�؃G���[</font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td align="center"><font color="#FF0000" size="-1"><strong>�F�؂ł��܂���ł����B</strong></font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td align="center">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="submit" value="�߂�">
        </form>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
EOM

}
##################################################
# errorSearch
# �G���[��ʕ\���B
##################################################
sub errorSearch{

	#�G���[���b�Z�[�W�̕\���B

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
        <font color="#FF0000" size="-1"><strong>�����L�[���[�h��ݒ肵�Ă��������B</strong></font>
        </td>
       </tr>
       <tr>
        <td align="center">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="������ʂɖ߂�">
        </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}
##################################################
# errorPage
# �G���[��ʕ\���B
##################################################
sub errorPage{

	#�G���[���b�Z�[�W�̕\���B

print<<"EOM";
    <div align="center">
    <table border="0" cellpadding="1" cellspacing="1">
     <tr>
      <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
     </tr>
     <tr>
      <td align="center">
      <font color="#FF0000" size="-1"><strong>�y�[�W������܂���B</strong></font>
      </td>
     </tr>
     <tr>
      <td align="center"><input type="button" value="�߂�" onClick="history.back()"></td>
     </tr>
    </table>
    </div>
EOM

}
##################################################
# errorSystem
# �G���[��ʕ\���B
##################################################
sub errorSystem{

	#�G���[���b�Z�[�W�̕\���B

print"Content-type: text/html\n\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>�V�X�e���G���[</title>
</head>
<body>
<center>
<table border="0" cellpadding="1" cellspacing="1">
 <tr>
  <td valign="top">
   <div align="center">
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
    </tr>
    <tr>
     <td align="center">
     <font color="#FF0000" size="-1"><strong>�V�X�e����񂪂���܂���B</strong></font>
     </td>
    </tr>
    <tr>
     <td align="center"><input type="button" value="�߂�" onClick="history.back()"></td>
    </tr>
   </table>
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td align="center"><font size="-1">COPYRIGHT(C)2004 SUNFIRST.INC ALL RIGHTS RESERVED.</font></td>
    </tr>
   </table>
   </div>
  </td>
 </tr>
</table>
</center>
</body>
</html>
EOM

}

1;
