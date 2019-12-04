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
# form_check
# �₢���킹���e�m�F��ʕ\���B
##################################################
sub form_check{

	#�f�[�^�`�F�b�N�B
	&dataCheck;

	#�G���[��ʂ�\���B
	if($#errorMsg != -1){
		&errorForm;
	}else{

		local($t_rls7,$t_rls3,$t_rls6,$t_rls4,$t_rls5,$t_rls1,$t_rls2);
		local($t_dsn8,$t_dsn7,$t_dsn4,$t_dsn3,$t1_font1,$t1_font2);

		#�L�����e�����擾�B
		@line = sort{(split(/,/,$a))[1] <=> (split(/,/,$b))[1]} @storycomment;

		#�L�����e���𕪊��B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line[0]);

		#[table]���`���B
		if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
		if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
		if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
		if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
		if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
		if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
		if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
		if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
		if($rls1 ne ""){$t_rls1 = " width=\"$rls1\"";}
		if($rls2 ne ""){$t_rls2 = " height=\"$rls2\"";}

		#[td]���`���B
		if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
		if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}

		#[font]���`���B
		if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
		if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font1 = "<font$t_dsn4$t_dsn3>";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font2 = "</font>";}

print<<"EOM";
      <div align="center">
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7 align="center">
        $t1_font1�����͒��������e���m�F���đ��M�{�^���������ĉ������B$t1_font2
        </td>
       </tr>
      </table>
      <br>
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
EOM

		#�p�����[�^�ԍ��Z�b�g�B
		$n = 0;

		#�L�����e���𐸍��B
		foreach (@line){

			$i="";
			if($n < 10){
				$i = "00" . $n;
			}elsif($n < 100){
				$i = "0" . $n;
			}else{
				$i = $n;
			}

			#�L�����e���𕪊��B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

			if($cmt8 ne "on"){

				local($t_dsn8,$t_dsn7,$t_rls9,$t_cmt5,$t_dsn1,$t_dsn2);
				local($t_dsn17,$t_dsn16,$t_rls10,$t_cmt7,$t_dsn10,$t_dsn11);
				local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);

				#[td]���`���B
				if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
				if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
				if($rls9 ne ""){$t_rls9 = " width=\"$rls9\"";}
#				if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}
				if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
				if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
				if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

				if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
				if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
				if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
				if($cmt7 ne "") {$t_cmt7  = " height=\"$cmt7\"";}
				if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
				if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
				if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

				#[font]���`���B
				if($dsn4 ne "")                 {$t_dsn4   = " size=\"$dsn4\"";}
				if($dsn3 ne "")                 {$t_dsn3   = " color=\"$dsn3\"";}
				if($dsn4 ne "" || $dsn3 ne "")  {$t2_font1 = "<font$t_dsn4$t_dsn3>";}
				if($dsn4 ne "" || $dsn3 ne "")  {$t2_font2 = "</font>";}
				if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
				if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

				#�p�����[�^���𐸍��B
				foreach (@formdata){
					next if ($bef eq "$_");
					next if ($_ eq "form");
					next if ($_ eq "mode");
					next if ($_ eq "category");
					next if ($_ eq "page");
					$paramName = $_;

					$tmp_title = "$i$title";

					if($paramName eq $tmp_title){

						$paramName =~ s/^[0-9][0-9][0-9]//;

						$in{$_} =~ s/&lt;/</g;
						$in{$_} =~ s/&gt;/>/g;
						$in{$_} =~ s/&lt;br&gt;/<br>/g;

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls9$t_cmt5$t_dsn1$t_dsn2>
        $t2_font1$paramName$t2_font2
        </td>
EOM

						if($in{$_} eq ""){

print<<"EOM";
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt7$t_dsn10$t_dsn11>
        $t3_font1&nbsp;
        $t3_font2</td>
EOM

						}else{

print<<"EOM";
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt7$t_dsn10$t_dsn11>
        $t3_font1$in{$_}
        $t3_font2</td>
EOM

						}

print<<"EOM";
       </tr>
EOM

						$hidden .= "        <input type=\"hidden\" name=\"$_\" value=\"$in{$_}\">\n";

						$bef = $_;

					}
				}

				$n++;

			}

		}

		#�Ō��[CR/LF]�����B
		chomp($hidden);

print<<"EOM";
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="button" value="�O��ʂɖ߂�" onClick="history.back()"></td>
EOM

		#��M���[���A�h���X�����݂���ꍇ��[form]��\���B
		if($location eq "up" && $rls11 ne ""){

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="form" value="mail">
$hidden
        <input type="submit" value="���̓��e�ő��M����">
        </form>
        </td>
EOM

		}else{

print<<"EOM";
        <td><input type="button" value="���̓��e�ő��M����"></td>
EOM

		}

print<<"EOM";
       </tr>
      </table>
      </div>
      <br>
EOM

	}
}
##################################################
# form_mail
# �₢���킹���e���[�����M�B
##################################################
sub form_mail{

	#�f�[�^�`�F�b�N�B
	&dataCheck;

	#�G���[��ʕ\���B
	if($#errorMsg != -1){
		&errorForm;
	}else{

		#�ԐM���[���^�C�g���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#		$rls12 =~ s/&lt;/</g;
#		$rls12 =~ s/&gt;/>/g;
		$rls12 =~ s/&quot;/\"/g;
		$rls12 =~ s/<br>/\n/g;
		$rls12 =~ s/&lt;br&gt;/\n/g;
		$rls12 =~ s/\.\n/\. \n/g;
		$rls12 =~ s/\&\#44\;/\,/g;

		#�ԐM���[���w�b�_�[���͂̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#		$rls13 =~ s/&lt;/</g;
#		$rls13 =~ s/&gt;/>/g;
		$rls13 =~ s/&quot;/\"/g;
		$rls13 =~ s/<br>/\n/g;
		$rls13 =~ s/&lt;br&gt;/\n/g;
		$rls13 =~ s/\.\n/\. \n/g;
		$rls13 =~ s/\&\#44\;/\,/g;

		#�ԐM���[���t�b�^�[���͂̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#		$rls14 =~ s/&lt;/</g;
#		$rls14 =~ s/&gt;/>/g;
		$rls14 =~ s/&quot;/\"/g;
		$rls14 =~ s/<br>/\n/g;
		$rls14 =~ s/&lt;br&gt;/\n/g;
		$rls14 =~ s/\.\n/\. \n/g;
		$rls14 =~ s/\&\#44\;/\,/g;

		#��M���[���A�h���X�ݒ�B
		$mailto = "$rls11";

		#���M���e�̌`���B

$re_mailhead=<<EOM;

$rls13
EOM

$mailhead=<<EOM;

���₢���킹���e�͈ȉ��̒ʂ�ł��B
EOM

$re_mailfoot=<<EOM;
$rls14
EOM

		my @temp_data1 = ();
		my @temp_data2 = ();

		#�p�����[�^���𐸍��B
		foreach (@formdata){
			next if ($bef eq $_);
			next if ($_ eq "form");
			next if ($_ eq "mode");
			next if ($_ eq "page");
			next if ($_ eq "category");

			#�p�����[�^���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
			my $tmp_data = $in{$_};
#			$tmp_data =~ s/&lt;/</g;
#			$tmp_data =~ s/&gt;/>/g;
			$tmp_data =~ s/&quot;/\"/g;
			$tmp_data =~ s/<br>/\n/g;
			$tmp_data =~ s/&lt;br&gt;/\n/g;
			$tmp_data =~ s/\.\n/\. \n/g;
			$sendDataName = $_;
			$sendDataName =~ s/^[0-9][0-9][0-9]//;

			#���[���{���̍쐬�B
			if($in{$_} =~ /\n/){
				$mail_body .= "��$sendDataName \n$tmp_data\n\n";
			}else{
				$mail_body .= "��$sendDataName \n$tmp_data\n\n";
			}

			push(@temp_data1,$sendDataName);
			push(@temp_data2,$tmp_data);

			$bef = $_;
		}

		#�p�����[�^�ԍ��Z�b�g�B
		$n = 0;

		#���M�揉�����B
		@email = ();

		#�L�����e���̐����B
		foreach (@storycomment){

			if($n < 10){
				$i = "00" . $n;
			}elsif($n < 100){
				$i = "0" . $n;
			}else{
				$i = $n;
			}

			#�L�����e���𕪊��B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

			if($cmt8 ne "on"){

				#���[�����擾�B
				if($cmt2 eq "mail"){
					push(@email,$in{$i.$title});
				}
				$n++;

			}
		}

		#���[�������ݒ�B
		$subject = "�z�[���y�[�W�u$title�v����̂��₢���킹";

		#�ԐM���[���^�C�g���ݒ�B
		$re_subject = "$rls12";

		#JIS�R�[�h�ϊ��B
		&jcode'convert(*re_subject,'jis');
		&jcode'convert(*subject,'jis');
		&jcode'convert(*re_mailhead,'jis');
		&jcode'convert(*mailhead,'jis');
		&jcode'convert(*mail_body,'jis');
		&jcode'convert(*re_mailfoot,'jis');

		if($#email == -1){

			#���[�����M�B�i��M���[���j
			open(MAIL,"|$sendmail -t -f '$mailto'") || &error("���[�����M�Ɏ��s���܂���");
			print MAIL "Message-Id:\n";
			print MAIL "To: $mailto\n";
			print MAIL "From: $mailto <$mailto>\n";
			print MAIL "Subject: $subject\n";
			print MAIL "MIME-Version: 1.0\n";
			print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
			print MAIL "Content-Transfer-Encoding: 7bit\n";
			print MAIL "$mailhead\n";
			print MAIL "$mail_body\n";
			close(MAIL);

		}else{

			#���[�����M�B�i��M���[���j�i�m�F���[���j
			for($i = 0 ; $i <= $#email ; $i++){

				if($email[$i] ne ""){

					open(MAIL,"|$sendmail -t -f '$email[$i]'") || &error("���[�����M�Ɏ��s���܂���");
					print MAIL "Message-Id:\n";
					print MAIL "To: $mailto\n";
					print MAIL "From: $email[$i] <$email[$i]>\n";
					print MAIL "Subject: $subject\n";
					print MAIL "MIME-Version: 1.0\n";
					print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
					print MAIL "Content-Transfer-Encoding: 7bit\n";
					print MAIL "$mailhead\n";
					print MAIL "$mail_body\n";
					close(MAIL);

					open(MAIL,"|$sendmail -t -f '$mailto'") || &error("���[�����M�Ɏ��s���܂���");
					print MAIL "Message-Id:\n";
					print MAIL "To: $email[$i]\n";
					print MAIL "From: $mailto <$mailto>\n";
					print MAIL "Subject: $re_subject\n";
					print MAIL "MIME-Version: 1.0\n";
					print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
					print MAIL "Content-Transfer-Encoding: 7bit\n";
					print MAIL "$re_mailhead\n";
					print MAIL "$mail_body\n";
					print MAIL "$re_mailfoot\n";
					close(MAIL);

				}
			}
		}

		#�������b�Z�[�W�̕\���B

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center"><font size="-1"><strong>�����͒��������e�̑��M�͊����������܂����B</strong></font></td>
       </tr>
      </table>
      </div>
EOM

		#���ݎ����擾�B
		&get_time;

		#�����[�g�z�X�g���擾�B
		$remote_host = $ENV{'REMOTE_HOST'};

		#IP�A�h���X�擾�B
		$remote_addr = $ENV{'REMOTE_ADDR'};

		#���[�U���ϐ��擾�B
		$http_user_agent = $ENV{'HTTP_USER_AGENT'};

		#���[�U���ϐ��u���B
		$http_user_agent =~ s/HTML,/HTML/g;

		#�p�����[�^���擾�B
		if($buffer =~ /&&|&amp;&amp;/){
			($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
		}

		#�����N����URL�擾�B
		if($http_referer eq ""){
			$http_referer = $ENV{'HTTP_REFERER'};
		}

		#�����N����URL�u���B
		$http_referer =~ s/\,/\&\#44\;/g;

		#�����[�g�z�X�g������A�������̓����[�g�z�X�g����IP�A�h���X�̏ꍇ�ɂ́AIP�A�h���X���烊���[�g�z�X�g���擾�B
		if($remote_host eq "" || $remote_host eq "$remote_addr"){
			$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
		}

		#�����[�g�z�X�g������̏ꍇ�ɂ̓����[�g�z�X�g����IP�A�h���X�ɂ���B
		if($remote_host eq ""){
			$remote_host = $remote_addr;
		}

		#�t�@�C����ǂݏo���B
		open(IN,"./site_log/$date2.cgi");
		flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
		@temp = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		#�t�@�C���o�͏������s�t���Ō`���B�i[�^�C�g��]�A[�����[�g�z�X�g��]�A[IP�A�h���X]�A[���[�U���ϐ�]�A[�����N����URL]�A[���ԁi1970�N1��1������̌o�ߕb���j]�j
		$line = "���[�����M�i�₢���킹�j,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

		#�擪�ɐ��������v�f��ǉ��B
		unshift(@temp,$line);

		#�t�@�C���������o���B
		open(OUT, "> ./site_log/$date2.cgi");	# �ǂݏ������[�h�ŊJ��
		flock(OUT, 2);				# ���b�N�m�F�B���b�N
		seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
		print OUT @temp;			# ��������
		truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
		close(OUT);				# close����Ύ����Ń��b�N����

		##################################################
		# ASP�f�[�^�o��
		##################################################

		my $temp1 = "";

		for (my $i = 0 ; $i <= 45 ; $i++){

			my $temp = $temp_data1[$i];

			$temp    =~ s/&lt;/</g;
			$temp    =~ s/&gt;/>/g;
			$temp    =~ s/\n/<br>/g;
			$temp    =~ s/\,/&#44;/g;

			$temp1  .= "$temp,";

		}

		my $setting = "���s�[�g��,���擾��,SITEUP-SYSTEM����̎擾���y�[�W��,$temp1\n";

		#�t�@�C���������o���B
		open(OUT, "> ./settingFrom$in{'category'}$in{'page'}.dat");		# �ǂݏ������[�h�ŊJ��
		flock(OUT, 2);								# ���b�N�m�F�B���b�N
		seek(OUT, 0, 0);							# �t�@�C���|�C���^��擪�ɃZ�b�g
		print OUT $setting;							# ��������
		truncate(OUT, tell(OUT));						# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
		close(OUT);								# close����Ύ����Ń��b�N����

		my $temp2 = "";

		for (my $i = 0 ; $i <= 45 ; $i++){

			my $temp = $temp_data2[$i];

			$temp    =~ s/&lt;/</g;
			$temp    =~ s/&gt;/>/g;
			$temp    =~ s/\n/<br>/g;
			$temp    =~ s/\,/&#44;/g;

			$temp2  .= "$temp,";

		}

		#�t�@�C����ǂݏo���B
		open(IN,"./customerFrom$in{'category'}$in{'page'}.dat");
		flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
		my @customer = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		$time_data = time;

		my $customer = "1,$time_data,$title,$temp2$in{'category'}$in{'page'}\n";

		#�擪�ɐ��������v�f��ǉ��B
		unshift(@customer,$customer);

		#�t�@�C���������o���B
		open(OUT, "> ./customerFrom$in{'category'}$in{'page'}.dat");		# �ǂݏ������[�h�ŊJ��
		flock(OUT, 2);								# ���b�N�m�F�B���b�N
		seek(OUT, 0, 0);							# �t�@�C���|�C���^��擪�ɃZ�b�g
		print OUT @customer;							# ��������
		truncate(OUT, tell(OUT));						# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
		close(OUT);								# close����Ύ����Ń��b�N����

		##################################################

	}
}
##################################################
# dataCheck
# �f�[�^�`�F�b�N�B
##################################################
sub dataCheck{

	#�J�E���g�ϐ��������B
	$n = 0;
	$m = 0;
	$o = 0;

	#�L�����e���̐����B
	foreach (@storycomment){

		if($n < 10){
			$i = "00" . $n;
		}elsif($n < 100){
			$i = "0" . $n;
		}else{
			$i = $n;
		}

		local($paramName,$text_data);
		local($year,$mon,$day);
		local($tmp1,$tmp2,$tmp3);

		#�L�����e���𕪊��B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		if($cmt8 ne "on"){

			#���͗���ނ��^�C�v�B
			if($cmt2 eq "textarea"){

				$paramName = $i.$title;

				$text_data = $in{$paramName};

				if(length($text_data) > 1000){
					$paramName =~ s/^[0-9][0-9][0-9]//;
					push(@errorMsg,"���͍���[$paramName]�̓��͂��������܂��B");
				}
			}

			#���͗���ނ��Z���^�C�v�B
			if($cmt2 eq "address"){

				if($cmt6 eq "_"){

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					($tmp1,$tmp2,$tmp3) = split(/ /,$text_data);

					($tmp4,$tmp5) = split(/-/,$tmp1);

					if($tmp4 ne "" && $tmp5 ne ""){

						if(length($tmp4) != 3){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");
						}elsif($tmp4 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");
						}

						if(length($tmp5) != 4){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");
						}elsif($tmp5 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");
						}
					}

				}else{

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					($tmp1,$tmp2,$tmp3) = split(/ /,$text_data);

					($tmp4,$tmp5) = split(/-/,$tmp1);

					if($tmp4 ne "" || $tmp5 ne ""){

						if(length($tmp4) != 3){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");
						}elsif($tmp4 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");
						}

						if(length($tmp5) != 4){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");
						}elsif($tmp5 =~ /[^0-9]/){
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"[$paramName]�̗X�֔ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");
						}
					}
				}
			}

			#���͗���ނ��N�����^�C�v�i�a��j�^�C�v�B
			if($cmt2 eq "day1"){

				$flg = 0;

				if($cmt6 eq "_"){

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					if($text_data =~ /^����/){

						#������[�������N1��8���`]�܂ŁB

						$text_data =~ s/����//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($mon == 1 && $day < 8){
								$in{$paramName} = "���a64�N$mon��$day��";
							}

							$year += 1988;
						}

					}elsif($text_data =~ /^���a/){

						#���a��[���a���N12��26���`64�N1��7��]�܂ŁB

						$text_data =~ s/���a//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($year == 64 && $mon == 1 && $day > 7){
								$in{$paramName} = "����1�N$mon��$day��";
							}elsif($year == 64 && $mon >= 2){
								$in{$paramName} = "����1�N$mon��$day��";
							}elsif($year >= 65){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								$flg = 1;
							}

							if($year == 1 && $mon == 12 && $day < 26){
								$in{$paramName} = "�吳15�N$mon��$day��";
							}elsif($year == 1 && $mon <= 11){
								$in{$paramName} = "�吳15�N$mon��$day��";
							}

							$year += 1925;
						}

					}elsif($text_data =~ /^�吳/){

						#�吳��[�吳���N7��31���`15�N12��25��]�܂ŁB

						$text_data =~ s/�吳//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($year == 15 && $mon == 12 && $day > 25){
								$in{$paramName} = "���a1�N$mon��$day��";
							}elsif($year >= 16){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								$flg = 1;
							}

							if($year == 1 && $mon == 7 && $day < 31){
								$in{$paramName} = "����45�N$mon��$day��";
							}elsif($year == 1 && $mon <= 6){
								$in{$paramName} = "����45�N$mon��$day��";
							}

							$year += 1911;
						}

					}elsif($text_data =~ /^����/){

						#������[�������N�`45�N7��30��]�܂ŁB

						$text_data =~ s/����//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" && $mon ne "" && $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($year == 45 && $mon == 7 && $day > 30){
								$in{$paramName} = "�吳1�N$mon��$day��";
							}elsif($year >= 46){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								$flg = 1;
							}

							$year += 1867;
						}
					}

					if(($year ne "" && $mon ne "" && $day ne "") && $flg == 0){

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){
							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
							}else{
								# ���̌��̖������v�Z�B(2�s�ڂ͉[�N�̌v�Z)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));
								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								}
							}
						}
					}

				}else{

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					if($text_data =~ /^����/){

						#������[�������N1��8���`]�܂ŁB

						$text_data =~ s/����//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($mon == 1 && $day < 8){
								$in{$paramName} = "���a64�N$mon��$day��";
							}

							$year += 1988;
						}

					}elsif($text_data =~ /^���a/){

						#���a��[���a���N12��26���`64�N1��7��]�܂ŁB

						$text_data =~ s/���a//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($year == 64 && $mon == 1 && $day > 7){
								$in{$paramName} = "����1�N$mon��$day��";
							}elsif($year == 64 && $mon >= 2){
								$in{$paramName} = "����1�N$mon��$day��";
							}elsif($year >= 65){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								$flg = 1;
							}

							if($year == 1 && $mon == 12 && $day < 26){
								$in{$paramName} = "�吳15�N$mon��$day��";
							}elsif($year == 1 && $mon <= 11){
								$in{$paramName} = "�吳15�N$mon��$day��";
							}

							$year += 1925;
						}

					}elsif($text_data =~ /^�吳/){

						#�吳��[�吳���N7��31���`15�N12��25��]�܂ŁB

						$text_data =~ s/�吳//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($year == 15 && $mon == 12 && $day > 25){
								$in{$paramName} = "���a1�N$mon��$day��";
							}elsif($year >= 16){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								$flg = 1;
							}

							if($year == 1 && $mon == 7 && $day < 31){
								$in{$paramName} = "����45�N$mon��$day��";
							}elsif($year == 1 && $mon <= 6){
								$in{$paramName} = "����45�N$mon��$day��";
							}

							$year += 1911;
						}

					}elsif($text_data =~ /^����/){

						#������[�������N�`45�N7��30��]�܂ŁB

						$text_data =~ s/����//i;

						($year,$tmp1) = split(/�N/,$text_data);
						($mon,$tmp2)  = split(/��/,$tmp1);
						($day,$tmp3)  = split(/��/,$tmp2);

						if($year ne "" || $mon ne "" || $day ne ""){

							if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
							if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
							if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

							if($year == 45 && $mon == 7 && $day > 30){
								$in{$paramName} = "�吳1�N$mon��$day��";
							}elsif($year >= 46){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								$flg = 1;
							}

							$year += 1867;
						}
					}

					if(($year ne "" || $mon ne "" || $day ne "") && $flg == 0){

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){
							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
							}else{
								# ���̌��̖������v�Z�B(2�s�ڂ͉[�N�̌v�Z)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));
								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								}
							}
						}
					}
				}
			}

			#���͗���ނ��N�����^�C�v�i����j�^�C�v�B
			if($cmt2 eq "day2"){

				if($cmt6 eq "_"){

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					$text_data =~ s/����//i;

					($year,$tmp1) = split(/�N/,$text_data);
					($mon,$tmp2)  = split(/��/,$tmp1);
					($day,$tmp3)  = split(/��/,$tmp2);

					if($year ne "" && $mon ne "" && $day ne ""){

						if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
						if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
						if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){

							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
							}else{

								# ���̌��̖������v�Z�B(2�s�ڂ͉[�N�̌v�Z)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));

								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								}
							}
						}
					}
				}else{

					$paramName = $i.$title;

					$text_data = $in{$paramName};

					$text_data =~ s/����//i;

					($year,$tmp1) = split(/�N/,$text_data);
					($mon,$tmp2)  = split(/��/,$tmp1);
					($day,$tmp3)  = split(/��/,$tmp2);

					if($year ne "" || $mon ne "" || $day ne ""){

						if($year =~ /[^0-9]/ && $year ne ""){push(@errorMsg,"�N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
						if($mon =~ /[^0-9]/ && $mon ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}
						if($day =~ /[^0-9]/ && $day ne "")  {push(@errorMsg,"�N�����i���j�ɔ��p���������͂���Ă��܂���B");}

						if($year !~ /[^0-9]/ && $mon !~ /[^0-9]/ && $day !~ /[^0-9]/){

							if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
								$paramName =~ s/^[0-9][0-9][0-9]//;
								push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
							}else{

								# ���̌��̖������v�Z�B(2�s�ڂ͉[�N�̌v�Z)
								my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));

								if($day > $lastday){
									$paramName =~ s/^[0-9][0-9][0-9]//;
									push(@errorMsg,"[$paramName]�̔N�������s���ł��B");
								}
							}
						}
					}
				}
			}

			#���͗���ނ����[���A�h���X�^�C�v�B
			if($cmt2 eq "mail"){

				$paramName = $i.$title;

				$text_data = $in{$paramName};

				#���[���A�h���X�������͂��B
				if($text_data ne ""){

					#���[���A�h���X�ɃR���}�u,�v���܂܂�Ă��Ȃ����B
					if($text_data =~ /\,/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"���[���A�h���X[$paramName]�ɃR���}�u\,�v���܂܂�Ă��܂��B");
					}

					#���[���A�h���X�ɃA�b�g�}�[�N�u@�v���܂܂�Ă��邩�B
					if($text_data !~ /@/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"���[���A�h���X[$paramName]�A�b�g�}�[�N�u@�v���܂܂�Ă��܂���B");
					}

					#���[���A�h���X�ɑS�p���܂܂�Ă��Ȃ����B
					if($text_data =~ /[^0-9a-zA-Z\.\-\_\@]/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"���[���A�h���X[$paramName]�ɑS�p���܂܂�Ă��܂��B");
					}

					#���[���A�h���X�̃h���C���������s�����B
					if($text_data !~ /\.[a-zA-Z]{2,5}$/){
						$errorFlg  = 1;
						$paramName =~ s/^[0-9][0-9][0-9]//;
						push(@errorMsg,"���[���A�h���X[$paramName]�𐳂������͂��ĉ������B");
					}

					#���[���A�h���X�`�F�b�N�⑫�B
					if(!$errorFlg){

						$mail_regex =
							q{(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\} .
							q{\[\]\000-\037\x80-\xff])|"[^\\\\\x80-\xff\n\015"]*(?:\\\\[^\x80-\xff][} .
							q{^\\\\\x80-\xff\n\015"]*)*")(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x} .
							q{80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|"[^\\\\\x80-} .
							q{\xff\n\015"]*(?:\\\\[^\x80-\xff][^\\\\\x80-\xff\n\015"]*)*"))*@(?:[^(} .
							q{\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\0} .
							q{00-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[^\x80-\xff])*} .
							q{\])(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,} .
							q{;:".\\\\\[\]\000-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[} .
							q{^\x80-\xff])*\]))*};

						#���[���A�h���X�̏������s�����B
						if ($text_data !~ /^$mail_regex$/o){
							$errorFlg  = 1;
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"���[���A�h���X[$paramName]�𐳂������͂��ĉ������B");
						}

						#���[���A�h���X�̏������s�����B
						if($text_data !~ /[\w\.\-]+\@[\w\.\-]+\.[a-zA-Z]{2,5}$/){
							$errorFlg  = 1;
							$paramName =~ s/^[0-9][0-9][0-9]//;
							push(@errorMsg,"���[���A�h���X[$paramName]�̏������s���ł��B");
						}
					}

					#�m�F���[�����M��A�h���X�̐ݒ�B
					if(!$errorFlg){
						push(@email,$text_data);
					}

					$o++;
				}

				$m++;
			}

			$n++;
		}

	}

#	#���[���A�h���X�������͂��B
#	if(!$errorFlg){
#		if($m != 0){
#			if($o == 0){
#				push(@errorMsg,"���[���A�h���X�������͂ł��B");
#			}
#		}
#	}
}
##################################################
# errorForm
# �G���[��ʕ\���B
##################################################
sub errorForm{

	#�G���[��ʂ̕\���B

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
EOM

	#�G���[���b�Z�[�W�̕\���B
	for($i = 0 ; $i <= $#errorMsg ; $i++){
		print"        <font color=\"#FF0000\" size=\"-1\"><strong>$errorMsg[$i]</strong></font><br>\n";
	}

print<<"EOM";
        </td>
       </tr>
       <tr>
        <td align="center"><input type="button" value="�O��ʂɖ߂�" onClick="history.back()"></td>
       </tr>
      </table>
      </div>
EOM

}

1;

