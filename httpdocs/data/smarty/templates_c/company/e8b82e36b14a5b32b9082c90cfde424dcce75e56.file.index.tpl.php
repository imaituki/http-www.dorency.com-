<?php /* Smarty version Smarty-3.1.18, created on 2020-01-15 10:Jan:th
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7607475275e1e68f63c1ee9-22851488%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1577415270,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7607475275e1e68f63c1ee9-22851488',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    'mst_siteconf' => 0,
    't_base' => 0,
    'base' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e1e68f647c7c8_13491910',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e1e68f647c7c8_13491910')) {function content_5e1e68f647c7c8_13491910($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="company">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title" class="b_sh">
		<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/company/top.jpg" alt="会社概要"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">会社概要<span class="sub">Company</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
				<li>用途のご紹介</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4">会社概要</h2>
			<div class="pos_ac mb50"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/company/image1.jpg" alt="会社概要"></div>
			<table class="tbl_1">
				<tbody>
					<tr>
						<th>会社名</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['company']);?>
</td>
					</tr>
					<tr>
						<th>所在地</th>
						<td>
							<?php  $_smarty_tpl->tpl_vars["base"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["base"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_base']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["base"]->key => $_smarty_tpl->tpl_vars["base"]->value) {
$_smarty_tpl->tpl_vars["base"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["base"]->key;
?>
							<dl>
								<dt>【<?php echo $_smarty_tpl->tpl_vars['base']->value['name'];?>
】</dt>
								<dd>
									〒<?php echo $_smarty_tpl->tpl_vars['base']->value['zip'];?>
　<?php echo $_smarty_tpl->tpl_vars['base']->value['address1'];?>
<?php echo $_smarty_tpl->tpl_vars['base']->value['address2'];?>
<br>
									<?php if ($_smarty_tpl->tpl_vars['base']->value['tel']!=null) {?>TEL:<?php echo $_smarty_tpl->tpl_vars['base']->value['tel'];?>
<br><?php }?>
									<?php if ($_smarty_tpl->tpl_vars['base']->value['fax']!=null) {?>FAX:<?php echo $_smarty_tpl->tpl_vars['base']->value['fax'];?>
<br /><?php }?>
									<?php if ($_smarty_tpl->tpl_vars['base']->value['map']!=null) {?><a href="<?php echo $_smarty_tpl->tpl_vars['base']->value['map'];?>
" target="_blank" class="map"><i class="fas fa-map-marker-alt"></i>地図を表示</a><?php }?>
								</dd>
							</dl>
							<?php } ?>
						</td>
					</tr>
					<tr>
						<th>創業</th>
						<td>昭和61年1月</td>
					</tr>
					<?php if ($_smarty_tpl->tpl_vars['mst_siteconf']->value['capital']!=null) {?>
					<tr>
						<th>資本金</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['capital']);?>
</td>
					</tr>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['mst_siteconf']->value['product']!=null) {?>
					<tr>
						<th>営業品目</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['product']);?>
</td>
					</tr>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['mst_siteconf']->value['factory']!=null) {?>
					<tr>
						<th>工場</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['factory']);?>
</td>
					</tr>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['mst_siteconf']->value['employees']!=null) {?>
					<tr>
						<th>従業員数</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['employees']);?>
</td>
					</tr>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['mst_siteconf']->value['bank']!=null) {?>
					<tr>
						<th>取引銀行</th>
						<td><?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['bank']);?>
</td>
					</tr>
					<?php }?>
				</tbody>
			</table>
		</div>
	</section>
	<section>
		<div class="wrapper center">
			<h2 class="hl_4">沿革</h2>
			<table class="tbl_1">
				<tbody>
					<tr>
						<th>昭和61年</th>
						<td>ドレンシー製造所として創業開始。</td>
					</tr>
					<tr>
						<th>平成9年</th>
						<td>ドレンシー株式会社に法人化、事業を継承。</td>
					</tr>
					<tr>
						<th>平成10年</th>
						<td>上海事務所設立</td>
					</tr>
					<tr>
						<th>平成11年</th>
						<td>大連多連保鮮剤有限公司開設</td>
					</tr>
					<tr>
						<th>平成14年</th>
						<td>多連喜（上海）国際貿易有限公司開設</td>
					</tr>
					<tr>
						<th>平成17年</th>
						<td>多連喜精細化工（平湖）有限公司工場新設</td>
					</tr>
					<tr>
						<th>平成21年</th>
						<td>上海新多連喜貿易有限公司開設</td>
					</tr>
					<tr>
						<th>平成●年</th>
						<td>寄島工場新設</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
