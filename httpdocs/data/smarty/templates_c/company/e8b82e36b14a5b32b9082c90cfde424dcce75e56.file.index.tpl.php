<?php /* Smarty version Smarty-3.1.18, created on 2019-11-18 19:15:53
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15839481495dc8d2f7d2a698-13543980%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1574072100,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15839481495dc8d2f7d2a698-13543980',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dc8d2f7d4d300_27976765',
  'variables' => 
  array (
    'template_meta' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    'mst_siteconf' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dc8d2f7d4d300_27976765')) {function content_5dc8d2f7d4d300_27976765($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="../common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="company">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/company/top.jpg" alt="会社概要"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2>会社概要</h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_dot">
		<div class="center">
			<ul>
				<li><a href="/">HOME</a></li>
				<li>会社概要</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper bg_lblueo">
			<div class="center">
				<h2 class="hl_1"><span class="bg_lblueo">会社情報<span class="sub">company information</span></span></h2>
				<div class="box" id="company_info">
					<table class="tbl_2">
						<tbody>
							<tr>
								<th>事務所名</th>
								<td><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['company'];?>
</td>
							</tr>
							<tr>
								<th>所在地</th>
								<td>〒<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['zip'];?>
<br><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['address'];?>
</td>
							</tr>
							<tr>
								<th>電話／FAX</th>
								<td><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel'];?>
</td>
							</tr>
							<tr>
								<th>E-mail</th>
								<td><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['mail'];?>
</td>
							</tr>
							<tr>
								<th>代表者</th>
								<td><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['representative'];?>
</td>
							</tr>
							<tr>
								<th>保有資格</th>
								<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['competence']);?>
</td>
							</tr>
							<tr>
								<th>主な事業内容</th>
								<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['business']);?>
</td>
							</tr>
							<tr>
								<th>主な顧問先・お取引先</th>
								<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['customer']);?>
</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="wrapper-b bg_lblueo" id="history">
			<div class="center">
				<h2 class="hl_1"><span class="bg_lblueo">沿革<span class="sub">history</span></span></h2>
				<div class="center2">
					<table class="tbl_3">
						<tbody>
							<tr>
								<th scope="row">0000年</th>
								<td>・テキストテキストテキストテキス<br>
									・テキストテキストテキストテキス<br>
									・テキストテキストテキストテキス<br>
									・テキストテキストテキストテキス<br>
								</td>
							</tr>
							<tr>
								<th scope="row">0000年</th>
								<td>・テキストテキストテキストテキス</td>
							</tr>
							<tr>
								<th scope="row">0000年</th>
								<td>・テキストテキストテキストテキス</td>
							</tr>
						</tbody>
					</table>
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
