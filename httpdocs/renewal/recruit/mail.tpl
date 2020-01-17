--------------------------------------------------------
■ エントリー内容
--------------------------------------------------------
[採用種別]
{$OptionRecruit[$arr_post.recruit]|default:""}

[お名前]
{$arr_post.name|default:""}

[フリガナ]
{$arr_post.ruby|default:""}

[ご住所]
〒{$arr_post.zip|default:""}
{html_select_ken selected=$arr_post.prefecture|default:"" pre=1}{$arr_post.address|default:""}

[電話番号]
{$arr_post.tel|default:""}

[メールアドレス]
{$arr_post.mail|default:""}

[自由項目]
{$arr_post.comment|default:"ー"}
