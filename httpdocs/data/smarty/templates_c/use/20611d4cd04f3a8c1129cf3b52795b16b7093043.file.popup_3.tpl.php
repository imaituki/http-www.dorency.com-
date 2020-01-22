<?php /* Smarty version Smarty-3.1.18, created on 2020-01-22 21:Jan:nd
         compiled from "./popup_3.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7197169785e283ee328bf27-42704706%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '20611d4cd04f3a8c1129cf3b52795b16b7093043' => 
    array (
      0 => './popup_3.tpl',
      1 => 1579134106,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7197169785e283ee328bf27-42704706',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    't_product' => 0,
    'category' => 0,
    't_product_category' => 0,
    'product' => 0,
    'product_parts' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e283ee33114f0_37972035',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e283ee33114f0_37972035')) {function content_5e283ee33114f0_37972035($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css" type="text/css" />

<style type="text/css">
<!--
	/*html  { width:900px;  }*/
-->
</style>

</head>
<body>
<div id="iframe" class="popup">
	<div id="base">
		<section>
			<div class="center2 wrapper">
				<div class="item">
					<h2 class="hl_1"><span>3</span>ドーナッツ</h2>
					<div class="pos_ac"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/way/item3.jpg" alt="ドーナッツ"></div>
					<h2 class="hl_4">効果/特徴</h2>
					<div class="row feature">
						<div class="col-xs-6 cg2">
							<p>カビの発生防止</p>
						</div>
						<div class="col-xs-6 cg2">
							<p>油脂の酸化防止</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section>
			<div class="wrapper bg_1">
				<div class="center2">
					<h2 class="hl_3"><span>使用されている製品</span></h2>
					<div class="row product">
						<?php  $_smarty_tpl->tpl_vars["product"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product"]->_loop = false;
 $_smarty_tpl->tpl_vars["category"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_product']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars["product"]->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["loopProduct"]['total'] = $_smarty_tpl->tpl_vars["product"]->total;
foreach ($_from as $_smarty_tpl->tpl_vars["product"]->key => $_smarty_tpl->tpl_vars["product"]->value) {
$_smarty_tpl->tpl_vars["product"]->_loop = true;
 $_smarty_tpl->tpl_vars["category"]->value = $_smarty_tpl->tpl_vars["product"]->key;
?>
						<div class="col-xs-6<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['loopProduct']['total']>=2) {?> height-1<?php }?>">
							<div class="bg_f">
								<p class="pos_ac mb20"><img src="<?php if (!empty($_smarty_tpl->tpl_vars['t_product_category']->value[$_smarty_tpl->tpl_vars['category']->value]['image1'])) {?>/common/photo/product_category/image1/m_<?php echo $_smarty_tpl->tpl_vars['t_product_category']->value[$_smarty_tpl->tpl_vars['category']->value]['image1'];?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/null_sq.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['t_product_category']->value[$_smarty_tpl->tpl_vars['category']->value]['name'];?>
"></p>
								<div class="pos_ac">
									<p class="type"><?php  $_smarty_tpl->tpl_vars["product_parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_parts"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars["product_parts"]->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars["product_parts"]->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars["product_parts"]->key => $_smarty_tpl->tpl_vars["product_parts"]->value) {
$_smarty_tpl->tpl_vars["product_parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["product_parts"]->iteration++;
 $_smarty_tpl->tpl_vars["product_parts"]->last = $_smarty_tpl->tpl_vars["product_parts"]->iteration === $_smarty_tpl->tpl_vars["product_parts"]->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["loopProductParts"]['last'] = $_smarty_tpl->tpl_vars["product_parts"]->last;
?><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/detail.php?id=<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
" onclick="window.parent.location.href='<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/detail.php?id=<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
'"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i>キーピット<?php echo $_smarty_tpl->tpl_vars['product_parts']->value['type'];?>
タイプ</a><?php if (!$_smarty_tpl->getVariable('smarty')->value['foreach']['loopProductParts']['last']) {?><br><?php }?><?php } ?></p>
								</div>
							</div>
						</div>
						<?php } ?>
						
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>
<?php }} ?>
