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
		<div class="img_back"><img src="{$_RENEWAL_DIR}/common/image/contents/form_top.jpg" alt="お問い合わせ"></div>
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
		<div class="wrapper center entry">
			<p class="mb10 c_red">まだフォームの送信は完了していません。</p>
			<p class="mb30">下記内容をご確認の上、「送信する」ボタンを押してください。</p>
			<form action="./#form" method="post">
				<table class="tbl_form mb50">
					<tbody>
						<tr class="first">
							<th scope="row">お問い合わせ項目</th>
							<td>{$OptionContent[$arr_post.content]}<input type="hidden" name="content" value="{$arr_post.content}" ></td>
						</tr>
						{if $arr_post.company}
						<tr>
							<th scope="row">会社名</th>
							<td>{$arr_post.company}<input type="hidden" name="company" value="{$arr_post.company}"></td>
						</tr>
						{/if}
						<tr>
							<th scope="row">名前</th>
							<td>{$arr_post.name}<input type="hidden" name="name" value="{$arr_post.name}"></td>
						</tr>
						<tr>
							<th scope="row">フリガナ</th>
							<td>{$arr_post.ruby}<input type="hidden" name="ruby" value="{$arr_post.ruby}" ></td>
						</tr>
						<tr>
							<th scope="row">電話番号</th>
							<td>{$arr_post.tel}
								<input type="hidden" name="tel" value="{$arr_post.tel}">
							</td>
							</tr>
						<tr>
							<th scope="row">メールアドレス</th>
							<td>{$arr_post.mail}
								<input type="hidden" name="mail" value="{$arr_post.mail}">
							</td>
						</tr>
						<tr>
							<th scope="row">お問い合わせ内容</th>
							<td>{$arr_post.comment|nl2br}
								<input type="hidden" name="comment" value="{$arr_post.comment}" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="row form_button">
					<div class="col-xs-6 mb20 left">
						<button class="button _back" type="submit"><i class="arrow_cg2"></i>修正する</button>
					</div>
					<div class="col-xs-6 right">
						<button id="send_button" class="button" type="submit">送信する<i class="arrow_cg"></i></button>
					</div>
				</div>
			</form>
		</div>
	</section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
