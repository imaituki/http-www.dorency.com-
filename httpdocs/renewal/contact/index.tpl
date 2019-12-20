<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<link rel="canonical" href="http://k-shinko-s.com/contact/">
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
			<form action="./check.php#form" method="post">
				<table class="tbl_form mb50">
					<tbody>
						<tr class="first">
							<th scope="row">お問い合わせ項目<span class="need">必須</span></th>
							<td>
								{if $message.ng.content|default:"" != NULL}<p class="error">{$message.ng.content}</p>{/if}
								{html_radios name="content" options=$OptionContent selected=$arr_post.content|default:1}
							</td>
						</tr>
						<tr>
							<th scope="row">会社名</th>
							<td>
								{if !empty($message.ng.company)}<span class="error">※{$message.ng.company}</span>{/if}
								<input type="text" name="company" value="{$arr_post.company}">
							</td>
						</tr>
						<tr>
							<th scope="row">名前<span class="need">必須</span></th>
							<td>
								{if !empty($message.ng.name)}<span class="error">※{$message.ng.name}</span>{/if}
								<input type="text" name="name" value="{$arr_post.name}">
							</td>
						</tr>
						<tr>
							<th scope="row">フリガナ<span class="need">必須</span></th>
							<td>
								{if !empty($message.ng.ruby)}<span class="error">※{$message.ng.ruby}</span>{/if}
								<input type="text" name="ruby" value="{$arr_post.ruby}">
							</td>
						</tr>
						<tr>
							<th scope="row">電話番号<span class="need">必須</span></th>
							<td>
								{if !empty($message.ng.tel)}<span class="error">※{$message.ng.tel}</span>{/if}
								<input type="text" name="tel" value="{$arr_post.tel}" maxlength="13" class="w150" placeholder="090-000-000">
							</td>
						</tr>
						<tr>
							<th scope="row">メールアドレス<span class="need">必須</span></th>
							<td>
								{if !empty($message.ng.mail)}<span class="error">※{$message.ng.mail}</span>{/if}
								<input type="text" name="mail" value="{$arr_post.mail}" maxlength="255" >
							</td>
						</tr>
						<tr class="last">
							<th scope="row">お問い合わせ内容<span class="need">必須</span></th>
							<td>
								{if !empty($message.ng.comment)}<span class="error">※{$message.ng.comment}</span>{/if}
								<textarea rows="5" name="comment">{$arr_post.comment}</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="pos_ac form_button">
					<button class="button" type="submit">確認する<i class="arrow_cg"></i></button>
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
