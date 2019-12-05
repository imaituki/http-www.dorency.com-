<?php /* Smarty version Smarty-3.1.18, created on 2019-11-27 19:37:02
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8322470725dd6460eea98b6-92760750%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1574851021,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8322470725dd6460eea98b6-92760750',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dd6460ef0f4b4_77867806',
  'variables' => 
  array (
    'template_meta' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    't_seminar' => 0,
    'mst_siteconf' => 0,
    'message' => 0,
    'arr_post' => 0,
    'OptionContent' => 0,
    'key' => 0,
    'content' => 0,
    'OptionContentComment' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dd6460ef0f4b4_77867806')) {function content_5dd6460ef0f4b4_77867806($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="contact">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/contact/top.jpg" alt="お問い合わせ"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2>お問い合わせ</h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_dot">
		<div class="center">
			<ul>
				<li><a href="/">HOME</a></li>
				<li>お問い合わせ</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper bg_lblueo">
			<div class="center">
				<div class="box">
					<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']==null) {?>
					<p class="mb10">お問い合わせ、相談のお申し込みはこちらのお問い合わせフォームにご記入ください。<br class="hidden-only">内容が確認でき次第、1営業日以内にご連絡を差し上げます。</p>
					<p class="mb10">お電話でのお問い合わせをご希望の場合は、<span class="tel" data-tel="<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['mobile'];?>
"><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['mobile'];?>
</span>まで、<br class="hidden-only">FAXでのお問い合わせをご希望の場合は<span class="tel" data-tel="<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel'];?>
"><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel'];?>
</span>までご連絡くださいませ。</p>
					<p class="mb10">相談時間については、土日祝及び夜間（20時頃まで）もご相談が可能です。平日忙しくて時間が取れない場合や、仕事終わりにもご相談いただくことができます。</p>
					<?php }?>
					<p class="mb50">送信いただいた個人情報は弊社<a href="/privacy/">プライバシーポリシー</a>に則り、厳重に管理いたします。<br>また、<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']) {?>お申し込み<?php } else { ?>お問い合わせ<?php }?>をいただいても、こちらから無理な提案や押しつけはいたしませんのでご安心下さい。</p>

					<form action="./check.php#form" method="post">
						<table class="tbl_form mb50">
							<tbody>
								<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']) {?>
								<tr>
									<th scope="row">申し込みセミナー</th>
									<td>
										<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>

										<input type="hidden" name="id_seminar" value="<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['id_seminar'];?>
" />
									</td>
								</tr>
								<?php }?>
								<tr>
									<th scope="row">お名前（漢字）<span class="need">必須</span></th>
									<td>
										<?php if (!empty($_smarty_tpl->tpl_vars['message']->value['ng']['name'])) {?><span class="error">※<?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['name'];?>
</span><?php }?>
										<input type="text" name="name" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['name'];?>
">
									</td>
								</tr>
								<tr>
									<th scope="row">お名前（フリガナ）<span class="need">必須</span></th>
									<td>
										<?php if (!empty($_smarty_tpl->tpl_vars['message']->value['ng']['ruby'])) {?><span class="error">※<?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['ruby'];?>
</span><?php }?>
										<input type="text" name="ruby" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['ruby'];?>
">
									</td>
								</tr>
								<tr>
									<th scope="row">メールアドレス<span class="need">必須</span></th>
									<td>
										<?php if (!empty($_smarty_tpl->tpl_vars['message']->value['ng']['mail'])) {?><span class="error">※<?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['mail'];?>
</span><?php }?>
										<input type="text" name="mail" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['mail'];?>
" maxlength="255" >
									</td>
								</tr>
								<tr>
									<th scope="row">電話番号<span class="need">必須</span></th>
									<td>
										<?php if (!empty($_smarty_tpl->tpl_vars['message']->value['ng']['tel'])) {?><span class="error">※<?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['tel'];?>
</span><?php }?>
										<input type="text" name="tel" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['tel'];?>
" maxlength="13" class="w150" placeholder="090-000-0000">
									</td>
								</tr>
								<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']==null) {?>
								<tr>
									<th scope="row">お問い合わせ項目<span class="need">必須</span></th>
									<td>
										<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['content'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['content'];?>
</p><?php }?>
										<?php  $_smarty_tpl->tpl_vars["content"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["content"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['OptionContent']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["content"]->key => $_smarty_tpl->tpl_vars["content"]->value) {
$_smarty_tpl->tpl_vars["content"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["content"]->key;
?>
										<div class="mb30 content_check">
											<label>
												<span class="disp_ib pos_vt _checkbox"><input type="checkbox" name="content[]" value="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" id="content_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"<?php if (in_array($_smarty_tpl->tpl_vars['key']->value,$_smarty_tpl->tpl_vars['arr_post']->value['content'])) {?> checked<?php }?>></span>
												<span class="disp_ib pos_vt _caption"><?php echo $_smarty_tpl->tpl_vars['content']->value;?>

													<span class="disp_b c_gray x-small"><?php echo $_smarty_tpl->tpl_vars['OptionContentComment']->value[$_smarty_tpl->tpl_vars['key']->value];?>
</span>
												</span>
											</label>
										</div>
										<?php } ?>
									</td>
								</tr>
								<?php }?>
								<tr class="last">
									<th scope="row"><?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']) {?>申し込み<?php } else { ?>お問い合わせ<?php }?>内容</th>
									<td>
										<?php if (!empty($_smarty_tpl->tpl_vars['message']->value['ng']['comment'])) {?><span class="error">※<?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['comment'];?>
</span><?php }?>
										<textarea rows="5" name="comment"><?php echo $_smarty_tpl->tpl_vars['arr_post']->value['comment'];?>
</textarea>
									</td>
								</tr>
								<tr>
									<th scope="row">ご紹介者名<br><span style="font-size: 12px;">※お分かりになる方はご記入ください（可能であればフルネームのご入力をお願いします。）</span></th>
									<td>
										<?php if (!empty($_smarty_tpl->tpl_vars['message']->value['ng']['referrer'])) {?><span class="error">※<?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['referrer'];?>
</span><?php }?>
										<div class="flex">
											<input type="text" name="referrer" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['referrer'];?>
">
											<span>様</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="pos_ac form_button">
							<button class="button _more" type="submit">確認する<i class="fa fa-arrow-right"></i></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
