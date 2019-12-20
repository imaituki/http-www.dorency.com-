--------------------------------------------------------
■ お問い合わせ内容
--------------------------------------------------------
[お問い合わせ項目]
{$OptionContent[$arr_post.content]}

{if $arr_post.company}[会社名]
{$arr_post.company|default:""}

{/if}
[名前]
{$arr_post.name|default:""}

[フリガナ]
{$arr_post.ruby|default:""}

[電話番号]
{$arr_post.tel|default:""}

[メール]
{$arr_post.mail|default:""}

[お問い合わせ内容]
{$arr_post.comment|default:""}
