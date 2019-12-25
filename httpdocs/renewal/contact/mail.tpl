--------------------------------------------------------
■ お問い合わせ内容
--------------------------------------------------------
[会社名]
{$arr_post.company|default:""}

[部署名]
{$arr_post.post|default:"--"}

[ご担当者様名]
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

[お問い合わせ内容]
{$arr_post.comment|default:""}
