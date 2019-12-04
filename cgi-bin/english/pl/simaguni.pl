package simaguni;
;#####################################################################################
;#
;# simaguni.pl: Perl library for decode Unicode into Japanese text(JIS/SJIS/EUC)
;# Version 3.0b(2002/07/19 00:52:42)
;#
;# This software is freeware.(^o^)/
;#
;# Copyright(c) 2002 Komuro Akio All Rights Reserved.
;# E-mail                   akio1998@opal.famille.ne.jp
;# Home Page                http://www2.famille.ne.jp/~akio1998/index.html
;# Links for Web Developer  http://www2.famille.ne.jp/~akio1998/l_goodhp.html
;#
;#####################################################################################
;# 
;# UPGRADE HISTORY:
;#  Version1.1
;#   First publish.
;#  Version 2.0b
;#   Add decode UTF-8 function(sub decode8)
;#    ->Refer to SAMPLE(Decode UTF-8)
;#  Version 3.0b
;#   Speed up algorithm in decode(UTF-16 / UTF-8)
;#   Delete a function(sub findencodedunicode)
;#    ->Refer to SAMPLE(Decode UTF-16)
;# 
;#####################################################################################
;#
;# FILES:
;#  simaguni.pl     This file.
;#  jipang16.txt    UTF-16 Code book.
;#  jipang8.txt     UTF-8 Code book.
;#
;# FORMAT(jipang16.txt):
;#  jJISjsS-JISsxEUCxzUTF16z
;#  j2140js815FsxA1C0xz005Cz
;#  j2171js8191sxA1F1xz00A2z
;#  :
;#  j216Fjs818FsxA1EFxzFFE5z
;#
;# FORMAT(jipang8.txt):
;#  jJIS jsSJISsxEUC xyUTF-8 y
;#  j2140js815FsxA1C0xy5C    y
;#  j2171js8191sxA1F1xyC2A2  y
;#  :
;#  j216Fjs818FsxA1EFxyEFBFA5y
;#
;# DIRECTORY:
;#  Please put simaguni.pl and jipang8.txt and jipang16.txt same directory.
;#
;# PERMISSION:
;#  simaguni.pl     755
;#  jipang16.txt    644
;#  jipang8.txt     644
;#
;#####################################################################################
;#
;# SAMPLE(Decode UTF-16):
;#  %u30A8%u30AF%u30B9%u30D7%u30ED%u30FC%u30E9%uFF14
;#   -> EKUSUPURORA4(Zenkaku)
;#
;# $s = $ENV{'QUERY_STRING'};
;# if($s =~ /%u[0-9a-fA-F]{4}/){
;#     require './simaguni.pl';
;#     if(&simaguni'loadbook()){
;#         &simaguni'decode(*s,'euc');
;#         &simaguni'unloadbook();
;#     }
;# }else{
;#     (Decode program for Netscape,IE3 etc)
;# }
;#
;#####################################################################################
;#
;# SAMPLE(Decode UTF-8):
;#  %e9%9b%bb%e8%a9%b1%e7%95%aa%e5%8f%b7%e6%a4%9c%e7%b4%a2
;#   -> DENWABANGOUKENSAKU(Zenkaku)
;#
;# $s = $ENV{'QUERY_STRING'};
;# if($s =~ m/%[eE][0-9a-fA-F]{1}%[0-9a-fA-F]{2}%[0-9a-fA-F]{2}%[eE][0-9a-fA-F]{1}%[0-9a-fA-F]{2}%[0-9a-fA-F]{2}/){
;#     require './simaguni.pl';
;#     if(&simaguni'loadbook8()){
;#         &simaguni'decode8(*s,'euc');
;#         &simaguni'unloadbook8();
;#     }
;# }else{
;#     (Decode program for Shift-Jis,EUC etc)
;# }
;#
;#####################################################################################
;#
;# CAUTION!:
;#  Function &simaguni'decode(*s,$c); dose not tr/+/ /;
;#  Function &simaguni'decode8(*s,$c); dose not tr/+/ /;
;#
;#####################################################################################
;#
;# INTERFACE:
;#
;#  &simaguni'loadbook();
;#      rerurn  Over 1:OK / 0:Error
;#      This function read UTF-16 codebook(file name:'./jipang16.txt').
;#
;#  &simaguni'loadbook8();
;#      rerurn  Over 1:OK / 0:Error
;#      This function read UTF-8 codebook(file name:'./jipang8.txt').
;#
;#  &simaguni'decode(*s,$c);
;#      *s      Line contain UTF-16('%u30A8%u30AF%u30B9%u30D7%u30ED%u30FC%u30E9%uFF14' etc)
;#      $c      Character set name('jis' / 'sjis' / 'euc' / 'utf16')
;#      rerurn  1:OK / 0:Error
;#      This function decode *s into Japanese text('EKUSUPURO-RA4'<-ja etc).
;#
;#  &simaguni'decodechar($u);
;#      $u      A Unicode('82B1' etc)
;#      rerurn  A Japanese character('HANA'<-3256 etc) / %u$u(Not found in code book)
;#      This function decode $u into a Japanese character.
;#
;#  &simaguni'decodeutf16($u);
;#      $u      A Unicode('82B1' etc)
;#      rerurn  A UTF-16 character('HANA'<-82B1 etc)
;#      This function decode $u into a Unicode character.
;#
;#  &simaguni'decode8(*s,$c);
;#      *s      Line contain UTF-8('%E3%82%A8%E3%83%A9%E3%83%BC%E5%87%A6%E7%90%86' etc)
;#      $c      Character set name('jis' / 'sjis' / 'euc')
;#      rerurn  1:OK / 0:Error
;#      This function decode *s into Japanese text('ERA^SHORI'<-ja etc).
;#
;#  &simaguni'decode8char($u1,$u2,$u3);
;#      $u1,$u2,$u3  A UTF-8('E8','8A','B1' etc)
;#      rerurn  A Japanese character('HANA'<-B2D6 etc) / %uE88AB1(Not found in code book)
;#      This function decode $u1,$u2,$u3 into a Japanese character.
;#
;#  &simaguni'unloadbook();
;#      rerurn  1:OK / 0:Error
;#      This function release memory for UTF-16 codebook.
;#
;#  &simaguni'unloadbook8();
;#      rerurn  1:OK / 0:Error
;#      This function release memory for UTF-8 codebook.
;#
;#####################################################################################

;#
;# This function read UTF-16 codebook(file name:'./jipang16.txt').
;#
sub loadbook(){
    $path = './jipang16.txt';
    @BOOK = ();
    unless(-e $path){return 0;}
    if(!open(BOOKDATA,"$path")){return 0;}
    $head = <BOOKDATA>;
    @BOOK = <BOOKDATA>;
    close (BOOKDATA);
    $firstmin = 0;
    $firstmax = $#BOOK;
    return ($firstmax + 1);
}

;#
;# This function read UTF-8 codebook(file name:'./jipang8.txt').
;#
sub loadbook8(){
    $path = './jipang8.txt';
    @BOOK8 = ();
    unless(-e $path){return 0;}
    if(!open(BOOKDATA,"$path")){return 0;}
    $head8 = <BOOKDATA>;
    @BOOK8 = <BOOKDATA>;
    close (BOOKDATA);
    $firstmin8 = 0;
    $firstmax8 = $#BOOK8;
    return ($firstmax8 + 1);
}

;#
;# This function decode *s into Japanese character('EKUSUPURO-RA'<-ja etc).
;#
sub decode(){
    *s = $_[0];
    $c = $_[1];

    if($c eq 'euc'){
        $charposition = 13;
    }
    elsif($c eq 'sjis'){
        $charposition = 7;
    }
    elsif($c eq 'jis'){
        $charposition = 1;
    }
    elsif($c eq 'utf16'){
        $s =~ s/%u([0-9a-fA-F]{4})/&decodeutf16($1)/eg;
        $s =~ s/%([0-9a-fA-F][0-9a-fA-F])/pack("C",hex($1))/eg;
        return 1;
    }
    else{
        return 0;
    }
    $s =~ s/%u([0-9a-fA-F]{4})/&decodechar($1)/eg;
    $s =~ s/%([0-9a-fA-F][0-9a-fA-F])/pack("C",hex($1))/eg;
    return 1;
}

;#
;# This function decode $u into a Japanese character.
;#
sub decodechar(){
    local($u) = $_[0];
    local($hint) = 0;
    local($current) = int($firstmax / 2);
    local($min) = $firstmin;
    local($max) = $firstmax;
    local($lastorder) = 0;

    $u =~ tr/[a-f]/[A-F]/;

    for($step = 1;$step <= 20;$step++){
        $hint = ($u cmp substr($BOOK[$current],19,4));
        if($hint == 0){
            local($j) = substr($BOOK[$current],$charposition,4);
            return (pack("C",hex(substr($j,0,2))) . pack("C",hex(substr($j,2,2))));
        }
        if($hint < 0){
            $max = $current;
        }
        else{
            $min = $current;
        }
        if(($max - $min) >= 2){$current = int(($max + $min) / 2);next;}
        if($lastorder == 1){last;}
        $lastorder = 1;$current += $hint;
        if($current < $firstmin){last;}
        if($current > $firstmax){last;}
    }
    return ('%u'. $_[0]);
}

;#
;# This function decode $u into a Unicode character.
;#
sub decodeutf16(){
    local($u) = $_[0];
    $u =~ tr/[a-f]/[A-F]/;
    return (pack("C",hex(substr($u,0,2))) . pack("C",hex(substr($u,2,2))));
}

;#
;# This function decode *s into Japanese character('EKUSUPURO-RA'<-ja etc).
;#
sub decode8(){
    *s = $_[0];
    $c = $_[1];
    $sp = '  ';

    if($c eq 'euc'){
        $charposition8 = 13;
    }
    elsif($c eq 'sjis'){
        $charposition8 = 7;
    }
    elsif($c eq 'jis'){
        $charposition8 = 1;
    }
    else{
        return 0;
    }
    $s =~ s/%([eE][0-9a-fA-F]{1})%([0-9a-fA-F]{2})%([0-9a-fA-F]{2})/&decode8char($1,$2,$3)/eg;
    ;# $s =~ s/%([CD]{1}[0-9A-F]{1})%([0-9A-F]{2})/&decode8char($1,$2,$sp)/ieg;
    ;# $s =~ s/%5C/&decode8char($1,$sp,$sp)/ieg;
    $s =~ s/%([0-9a-fA-F][0-9a-fA-F])/pack("C",hex($1))/eg;
    return 1;
}

;#
;# This function decode $u1,$u2,$u3 into a Japanese character.
;#
sub decode8char(){
    local($u) = $_[0] . $_[1] . $_[2];
    local($hint) = 0;
    local($current) = int($firstmax8 / 2);
    local($min) = $firstmin8;
    local($max) = $firstmax8;
    local($lastorder) = 0;

    $u =~ tr/[a-f]/[A-F]/;

    for($step = 1;$step <= 20;$step++){
        $hint = ($u cmp substr($BOOK8[$current],19,6));
        if($hint == 0){
            local($j) = substr($BOOK8[$current],$charposition8,4);
            return (pack("C",hex(substr($j,0,2))) . pack("C",hex(substr($j,2,2))));
        }
        if($hint < 0){
            $max = $current;
        }
        else{
            $min = $current;
        }
        if(($max - $min) >= 2){$current = int(($max + $min) / 2);next;}
        if($lastorder == 1){last;}
        $lastorder = 1;$current += $hint;
        if($current < $firstmin8){last;}
        if($current > $firstmax8){last;}
    }
    local($unknown) = '%u'. $_[0];
    if($_[1] ne $sp){
        $unknown .= $_[1];
        if($_[2] ne $sp){
            $unknown .= $_[2];
        }
    }
    return $unknown;
}

;#
;# This function release memory for UTF-16 codebook.
;#
sub unloadbook(){
    @BOOK = ();
    return 1;
}

;#
;# This function release memory for UTF-8 codebook.
;#
sub unloadbook8(){
    @BOOK8 = ();
    return 1;
}

1;
