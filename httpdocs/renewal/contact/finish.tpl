<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="contact">
<div id="base">
{include file=$template_header}
<main>
	<div id="body">
		<div id="page_title">
			<div><img src="{$_RENEWAL_DIR}/common/image/contents/top.jpg" alt="お問い合わせ"></div>
			<div class="page_title_wrap common">
				<div class="center mincho cg5">
					<h2><span class="main">お問い合わせ</span><span class="sub">Contact</span></h2>
				</div>
			</div>
		</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="{$_RENEWAL_DIR}/"><i class="fa fa-home"></i></a></li>
				<li>お問い合わせ</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			<h2 class="hl_1 mincho pos_ac">お問い合わせが完了しました</h2>
			<p class="mb20 pos_ac">ご入力いただいたメールアドレス{if !empty( $arr_post.mail )}({$arr_post.mail}){/if}宛に、確認メールをお送りしておりますのでご確認ください。</p>
			<p class="mb20 pos_ac">
				しばらくたっても自動送信メールが届かない場合には、主に次の原因が考えられます。<br>
				「ご入力いただいたメールアドレスが間違っている」<br>
				「迷惑メール対策による受信メールの自動削除設定」<br>
				「メールボックスの容量オーバー（特にフリーメール）」<br>
				「メールの受信制限や拒否設定（特に携帯メール）」</p>
			<p class="mb20 pos_ac">メールアドレスの間違いや、ドメイン指定などの受信設定を今一度ご確認いただき、<br>
				送受信できる正しいメールアドレスを、メールまたはお電話にてご連絡くださいますようお願い申し上げます。</p>
			<p class="mb50 pos_ac">その他、何かご不明な点等ございましたら、お気軽にお問い合わせください。</p>
			<div class="button _type_2"><a href="{$_RENEWAL_DIR}/"><i class="arrow_cg2"></i>トップページに戻る</a></div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
