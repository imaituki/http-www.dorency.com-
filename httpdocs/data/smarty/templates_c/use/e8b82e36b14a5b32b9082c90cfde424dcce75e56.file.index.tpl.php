<?php /* Smarty version Smarty-3.1.18, created on 2020-01-29 09:Jan:th
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20815322515e30cc66c79343-55987403%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1579698333,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20815322515e30cc66c79343-55987403',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    'OptionExample' => 0,
    'key' => 0,
    't_product_parts' => 0,
    'product_parts' => 0,
    'parts' => 0,
    'OptionExampleTag' => 0,
    'tag' => 0,
    't_product_category' => 0,
    'cat' => 0,
    'data' => 0,
    'template_contact' => 0,
    'template_product_foot' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e30cc66d8fd40_11982407',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e30cc66d8fd40_11982407')) {function content_5e30cc66d8fd40_11982407($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/js/colorbox/jquery.colorbox-min.js"></script>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/js/colorbox/colorbox.css">
<script>
$(function(){
	$('.colorbox').colorbox({inline:true, width:'95%', height:'95%'});
});
</script>
</head>
<body id="use">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/use/top.jpg" alt="用途のご紹介"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="mincho">用途のご紹介<span class="sub">Use</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
				<li>用途のご紹介</li>
			</ul>
		</div>
	</div>
	<div class="life">
		<section>
			<div class="wrapper center living">
				<h2 class="hl_6 pos_ac fw_bold mb30">暮らしのいろんなところにキーピット</h2>
				<p class="pos_ac-pc mb30">食品は酸素に触れると酸化し、品質が落ちてしまいます。これを防ぐために、包装容器の中を無酸素状態にするのが、脱酸素剤です。<br>
					脱酸素剤「キーピット」は、鮮度保持剤として、さまざまな食品の「安全」「おいしさ」を守っています。<br>
					対象になる食品の種類・用途に応じた、多機能な脱酸素剤も存在します。</p>
				<div class="pos_ac"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/" class="button _green2">キーピットについて<i class="arrow_cg"></i></a></div>
			</div>
		</section>
	</div>
	<section>
		<div class="wrapper-t center" id="use_illust">
			<div class="use_attention">数字をクリックするとポップアップ画面が表示されます。</div>
			<div class="illust">
				<img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/way/map.jpg" alt="脱酸素剤「キーピット」の用途">
				<ul>
<?php  $_smarty_tpl->tpl_vars["ex"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["ex"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['OptionExample']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["ex"]->key => $_smarty_tpl->tpl_vars["ex"]->value) {
$_smarty_tpl->tpl_vars["ex"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["ex"]->key;
?>
					<li class="menu<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"><a href="#use<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" class="colorbox"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</a></li>
<?php } ?>
				</ul>
			</div>
		</div>
	</section>
	<section>
		<div class="wrapper bg_greeno2">
			<div class="center">
				<div class="row list item_list">
<?php  $_smarty_tpl->tpl_vars["product_parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_parts"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_product_parts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product_parts"]->key => $_smarty_tpl->tpl_vars["product_parts"]->value) {
$_smarty_tpl->tpl_vars["product_parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["product_parts"]->key;
?>
					<div class="col-sm-4 col-xs-6">
						<div class="use_unit unit height-1">
							<a href="#use<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" class="colorbox">
								<div class="row">
									<div class="image col-xs-4">
										<div class="img_sq"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/way/item_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
.jpg" alt="<?php echo $_smarty_tpl->tpl_vars['OptionExample']->value[$_smarty_tpl->tpl_vars['key']->value];?>
"></div>
									</div>
									<div class="text col-xs-8">
										<h2 class="title"><span class="num"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</span><span class="name"><?php echo $_smarty_tpl->tpl_vars['OptionExample']->value[$_smarty_tpl->tpl_vars['key']->value];?>
</span></h2>
<?php if ($_smarty_tpl->tpl_vars['product_parts']->value) {?>
										<ul class="cat">
<?php  $_smarty_tpl->tpl_vars["parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["parts"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product_parts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["parts"]->key => $_smarty_tpl->tpl_vars["parts"]->value) {
$_smarty_tpl->tpl_vars["parts"]->_loop = true;
?>
										<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['parts']->value['type'];?>
<?php $_tmp1=ob_get_clean();?><?php if (!empty($_tmp1)) {?><li><?php echo $_smarty_tpl->tpl_vars['parts']->value['type'];?>
タイプ</li><?php }?>
<?php } ?>
										</ul>
<?php }?>
									</div>
								</div>
							</a>
						</div>
						<div style="display:none">
							<div id="use<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" class="use_popup">
								<div class="center2">
									<h3 class="title"><span class="num"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</span><?php echo $_smarty_tpl->tpl_vars['OptionExample']->value[$_smarty_tpl->tpl_vars['key']->value];?>
</h3>
									<div class="pos_ac"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/way/item<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
.jpg" alt="<?php echo $_smarty_tpl->tpl_vars['OptionExample']->value[$_smarty_tpl->tpl_vars['key']->value];?>
"></div>
									<h3 class="hl_4"><span>効果/特徴</span></h3>
									<div class="row mb50">
									<?php  $_smarty_tpl->tpl_vars["tag"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["tag"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['OptionExampleTag']->value[$_smarty_tpl->tpl_vars['key']->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars["tag"]->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars["tag"]->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars["tag"]->key => $_smarty_tpl->tpl_vars["tag"]->value) {
$_smarty_tpl->tpl_vars["tag"]->_loop = true;
 $_smarty_tpl->tpl_vars["tag"]->iteration++;
 $_smarty_tpl->tpl_vars["tag"]->last = $_smarty_tpl->tpl_vars["tag"]->iteration === $_smarty_tpl->tpl_vars["tag"]->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["loopTag"]['last'] = $_smarty_tpl->tpl_vars["tag"]->last;
?>
										<div class="col-xs-6"><span class="use_tag<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['loopTag']['last']==false) {?> mb10<?php }?>"><?php echo $_smarty_tpl->tpl_vars['tag']->value;?>
</span></div>
									<?php } ?>
									</div>
								</div>
								<?php if ($_smarty_tpl->tpl_vars['t_product_category']->value[$_smarty_tpl->tpl_vars['key']->value]) {?>
								<div class="bg_greeno2">
									<div class="center2">
										<h3 class="hl_3"><span>使用されている製品</span></h3>
										<div class="row">
											<?php  $_smarty_tpl->tpl_vars["cat"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["cat"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['t_product_category']->value[$_smarty_tpl->tpl_vars['key']->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["cat"]->key => $_smarty_tpl->tpl_vars["cat"]->value) {
$_smarty_tpl->tpl_vars["cat"]->_loop = true;
?>
											<div class="col-xs-4">
												<div class="use_cat_unit">
													<a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/detail.php?id=<?php echo $_smarty_tpl->tpl_vars['cat']->value['id_product_category'];?>
">
														<div class="photo"><img src="<?php if (!empty($_smarty_tpl->tpl_vars['cat']->value['image1'])) {?>/common/photo/product_category/image1/m_<?php echo $_smarty_tpl->tpl_vars['cat']->value['image1'];?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/null_sq.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['cat']->value['name'];?>
"></div>
														<div class="text">
															<h4><?php echo $_smarty_tpl->tpl_vars['cat']->value['name'];?>
</h4>
															<?php  $_smarty_tpl->tpl_vars["data"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["data"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cat']->value['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["data"]->key => $_smarty_tpl->tpl_vars["data"]->value) {
$_smarty_tpl->tpl_vars["data"]->_loop = true;
?><span><i class="fa fa-chevron-circle-right"></i><?php echo $_smarty_tpl->tpl_vars['data']->value['type'];?>
タイプ</span><?php } ?>
														</div>
													</a>
												</div>
											</div>
											<?php } ?>
										</div>
									</div>
								</div>
								<?php }?>
							</div>
						</div>
					</div>
<?php } ?>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="center wrapper-t">
			<h2 class="hl_4"><span>キーピットに関するお問い合わせ</span></h2>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_contact']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		</div>
	</section>
	<section>
		<div class="center wrapper">
			<h2 class="hl_4"><span>関連メニュー</span></h2>
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
