<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="{$_RENEWAL_DIR}/common/css/import.css">
{include file=$template_javascript}
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
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
		<div class="wrapper center entry">
			<h2 class="hl_3">お問い合わせフォーム</h2>
			<form action="./check.php#form" method="post">
				<table class="tbl_form">
					<tbody>
						<tr class="first">
							<th scope="row">会社名<span class="need">必須</span></th>
							<td>
								{if !empty($message.ng.company)}<span class="error">※{$message.ng.company}</span>{/if}
								<input type="text" name="company" value="{$arr_post.company}">
							</td>
						</tr>
						<tr>
							<th scope="row">部署</th>
							<td>
								{if !empty($message.ng.post)}<span class="error">※{$message.ng.post}</span>{/if}
								<input type="text" name="post" value="{$arr_post.post}">
							</td>
						</tr>
						<tr>
							<th scope="row">ご担当者名<span class="need">必須</span></th>
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
							<th class="pos-vt">住所<span class="need">必須</span></th>
							<td>
								<dl>
									{if !empty($message.ng.zip)}<span class="error">※{$message.ng.zip}</span>{/if}
									<dt>郵便番号<span class="c_red" style="font-size:12px;">　半角数字で入力してください</span></dt>
									<dd>
										<input name="zip" value="{$arr_post.zip|default:""}" type="text" class="zip w150" placeholder="000-000" >
										<a href="javascript:AjaxZip3.zip2addr('zip','','prefecture','address');" class="bTn wp100 w_sm_A dis_b dis_sm_ib"><i class="fa fa-search" aria-hidden="true"></i>郵便番号から住所を自動入力する</a>
									</dd>
								</dl>
								{if !empty($message.ng.prefecture)}<span class="error">※{$message.ng.prefecture}</span>{/if}
								<dl>
									<dt>都道府県</dt>
									<dd>
										{html_select_ken name="prefecture" class="form-control inline input-s" selected=$arr_post.prefecture|default:"0"}
									</dd>
								</dl>
								{if !empty($message.ng.address)}<span class="error">※{$message.ng.address}</span>{/if}
								<dl>
									<dt>住所</dt>
									<dd class="w-420">
										<input name="address" value="{$arr_post.address|default:""}" type="text">
									</dd>
								</dl>
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
								<textarea rows="10" name="comment">{$arr_post.comment}</textarea>
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
