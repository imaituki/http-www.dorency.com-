<?php /* Smarty version Smarty-3.1.18, created on 2020-01-17 12:Jan:th
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2232943385e2125f0e50472-64029600%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1579159372,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2232943385e2125f0e50472-64029600',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    't_product_parts' => 0,
    'key' => 0,
    'OptionExample' => 0,
    'product_parts' => 0,
    'parts' => 0,
    'template_product_foot' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e2125f0ee7e76_34990646',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e2125f0ee7e76_34990646')) {function content_5e2125f0ee7e76_34990646($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/js/boxer/jquery.fs.boxer.css">
<script src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/js/boxer/jquery.fs.boxer.js"></script>
<script type="text/javascript">

$(function(){
	$(".boxer").boxer();

	 var _ua = (function(u){
      return {
        Tablet:(u.indexOf("windows") != -1 && u.indexOf("touch") != -1 && u.indexOf("tablet pc") == -1)
          || u.indexOf("ipad") != -1
          || (u.indexOf("android") != -1 && u.indexOf("mobile") == -1)
          || (u.indexOf("firefox") != -1 && u.indexOf("tablet") != -1)
          || u.indexOf("kindle") != -1
          || u.indexOf("silk") != -1
          || u.indexOf("playbook") != -1,
        Mobile:(u.indexOf("windows") != -1 && u.indexOf("phone") != -1)
          || u.indexOf("iphone") != -1
          || u.indexOf("ipod") != -1
          || (u.indexOf("android") != -1 && u.indexOf("mobile") != -1)
          || (u.indexOf("firefox") != -1 && u.indexOf("mobile") != -1)
          || u.indexOf("blackberry") != -1
      }
    })(window.navigator.userAgent.toLowerCase());

	 if(_ua.Mobile){
 		write ("<style>.boxer-content { height: 500px; }</style>");
    }

});

</script>

<style>
	body:not(.ipad):not(.iphone):not(.android) #boxer { min-height: 1500px !important; }
</style>

</head>
<body id="way">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title" class="b_sh">
		<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/product/top.jpg" alt="鮮度保持剤"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">用途のご紹介<span class="sub">Introduction of application</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div class="life">
		<div id="pankuzu">
			<div class="center">
				<ul>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
					<li>用途のご紹介</li>
				</ul>
			</div>
		</div>
		<section>
			<div class="center living wrapper">
				<h2 class="hl_6 pos_ac fw_bold mb30">暮らしのいろんなところにキーピット</h2>
				<p class="pos_ac mb30">さまざまな、食品の「安全」「おいしさ」を守っています。<br>この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミ</p>
				<div class="button _type_2"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/">キーピットについて<i class="arrow_cg"></i></a></div>
			</div>
		</section>
	</div>
	<section>
		<div class="center wrapper-b illust_unit">
			<p class="pos_ac">数字をクリックするとポップアップ画面が表示されます。</p>
			<div class="illust pos_re">
				<img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/way/map.jpg" alt="">
				<ul class="list">
					<li><a href="popup_1.php" class="boxer"><div class="maru">1</div></a></li>
					<li><a href="popup_2.php" class="boxer"><div class="maru">2</div></a></li>
					<li><a href="popup_3.php" class="boxer"><div class="maru">3</div></a></li>
					<li><a href="popup_4.php" class="boxer"><div class="maru">4</div></a></li>
					<li><a href="popup_5.php" class="boxer"><div class="maru">5</div></a></li>
					<li><a href="popup_6.php" class="boxer"><div class="maru">6</div></a></li>
					<li><a href="popup_7.php" class="boxer"><div class="maru">7</div></a></li>
					<li><a href="popup_8.php" class="boxer"><div class="maru">8</div></a></li>
				</ul>
			</div>
		</div>
	</section>
	<section class="bg_1">
			<div data-aos="fade-up" data-aos-once="true">
				<div class="center wrapper">
					<div class="row list item_list">
						<?php  $_smarty_tpl->tpl_vars["product_parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_parts"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_product_parts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product_parts"]->key => $_smarty_tpl->tpl_vars["product_parts"]->value) {
$_smarty_tpl->tpl_vars["product_parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["product_parts"]->key;
?>
						<div class="col-xs-4 unit height-1 mb30">
							<a href="popup_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
.php" class="boxer">
								<div class="image col-xs-4">
									<div class="img_sq">
										<img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/way/item_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
.jpg" alt="<?php echo $_smarty_tpl->tpl_vars['OptionExample']->value[$_smarty_tpl->tpl_vars['key']->value];?>
">
									</div>
								</div>
								<div class="text col-xs-8">
									<h3 class="title"><span class="num"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</span><span class="name"><?php echo $_smarty_tpl->tpl_vars['OptionExample']->value[$_smarty_tpl->tpl_vars['key']->value];?>
</span></h3>
									<p>【使用事例タイプ】</p>
									<?php  $_smarty_tpl->tpl_vars["parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["parts"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product_parts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars["parts"]->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars["parts"]->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars["parts"]->key => $_smarty_tpl->tpl_vars["parts"]->value) {
$_smarty_tpl->tpl_vars["parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["parts"]->iteration++;
 $_smarty_tpl->tpl_vars["parts"]->last = $_smarty_tpl->tpl_vars["parts"]->iteration === $_smarty_tpl->tpl_vars["parts"]->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["loopParts"]['last'] = $_smarty_tpl->tpl_vars["parts"]->last;
?>
									<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['parts']->value['type'];?>
<?php $_tmp1=ob_get_clean();?><?php if (!empty($_tmp1)) {?>
									<p class="cat<?php if (!$_smarty_tpl->getVariable('smarty')->value['foreach']['loopParts']['last']) {?> mb10<?php }?>">キーピット<?php echo $_smarty_tpl->tpl_vars['parts']->value['type'];?>
タイプ</p>
									<?php }?>
									<?php } ?>
								</div>
							</a>
						</div>
						<?php } ?>
						
					</div>
				</div>
			</div>
		</section>
	<section>
		<div class="center wrapper">
			<h2 class="hl_4">キーピットに関するお問い合わせ</h2>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_product_foot']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
