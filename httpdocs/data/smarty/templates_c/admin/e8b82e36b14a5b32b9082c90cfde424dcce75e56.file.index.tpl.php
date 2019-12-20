<?php /* Smarty version Smarty-3.1.18, created on 2019-12-20 17:03:24
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10824648175dedfbfc563198-46123602%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1576820782,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10824648175dedfbfc563198-46123602',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dedfbfc629d66_31313005',
  'variables' => 
  array (
    '_ADMIN' => 0,
    'template_javascript' => 0,
    'template_secondary' => 0,
    'template_header' => 0,
    '_CLIENT_NAME' => 0,
    'google' => 0,
    'sns' => 0,
    'server' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dedfbfc629d66_31313005')) {function content_5dedfbfc629d66_31313005($_smarty_tpl) {?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>管理画面</title>
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/font-awesome/css/font-awesome.css" rel="stylesheet">
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/animate.css" rel="stylesheet">
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/plugins/codemirror/codemirror.css" rel="stylesheet">
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/plugins/codemirror/ambiance.css" rel="stylesheet">
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/style.css" rel="stylesheet">
		<!-- FooTable -->
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/plugins/footable/footable.core.css" rel="stylesheet">
		<link href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
		<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.spline.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.resize.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.pie.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.symbol.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/flot/jquery.flot.time.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/jquery-ui/jquery-ui.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/easypiechart/jquery.easypiechart.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/sparkline/jquery.sparkline.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/common/js/plugins/footable/footable.all.min.js"></script>
		
			<!-- Page-Level Scripts -->
			<script>
				$(document).ready(function() {
					$('.footable').footable();
				});
			</script>
		
	</head>
	<body class="fixed-sidebar no-skin-config">
		<div id="wrapper">
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_secondary']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

			<div id="page-wrapper" class="gray-bg">
				<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

				<div class="wrapper wrapper-content">
					<?php if (!empty($_smarty_tpl->tpl_vars['_CLIENT_NAME']->value)) {?>
						<div class="alert alert-info" role="alert">
							<h3><?php echo $_smarty_tpl->tpl_vars['_CLIENT_NAME']->value;?>
</h3>
							<p><a href="/" target="_blank"><?php echo $_smarty_tpl->tpl_vars['_CLIENT_NAME']->value;?>
のページはこちらです</a></p>
						</div>
					<?php }?>
					<?php if (!empty($_smarty_tpl->tpl_vars['_ADMIN']->value['google'])) {?>
						<div class="alert alert-info" role="alert">
							<h3>Google (Googleアカウントへのログインが必要です)</h3>
							<?php  $_smarty_tpl->tpl_vars['google'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['google']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_ADMIN']->value['google']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['google']->key => $_smarty_tpl->tpl_vars['google']->value) {
$_smarty_tpl->tpl_vars['google']->_loop = true;
?>
								<p><?php echo $_smarty_tpl->tpl_vars['google']->value['title'];?>
: <a href="<?php echo $_smarty_tpl->tpl_vars['google']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['google']->value['url'];?>
</a></p>
							<?php } ?>
						</div>
					<?php }?>
					<?php if (!empty($_smarty_tpl->tpl_vars['_ADMIN']->value['sns'])) {?>
						<div class="alert alert-info" role="alert">
							<h3>SNS</h3>
							<?php  $_smarty_tpl->tpl_vars['sns'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['sns']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_ADMIN']->value['sns']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['sns']->key => $_smarty_tpl->tpl_vars['sns']->value) {
$_smarty_tpl->tpl_vars['sns']->_loop = true;
?>
								<p>
									<?php if (!empty($_smarty_tpl->tpl_vars['sns']->value['icon'])) {?><?php echo $_smarty_tpl->tpl_vars['sns']->value['icon'];?>
 <?php }?>
									<?php echo $_smarty_tpl->tpl_vars['sns']->value['title'];?>
:
									<a href="<?php echo $_smarty_tpl->tpl_vars['sns']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['sns']->value['url'];?>
</a>
								</p>
							<?php } ?>
						</div>
					<?php }?>
					<?php if (!empty($_smarty_tpl->tpl_vars['_ADMIN']->value['server'])) {?>
						<div class="alert alert-info" role="alert">
							<h3>サーバー会社連絡先</h3>
							<?php  $_smarty_tpl->tpl_vars['server'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['server']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_ADMIN']->value['server']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['server']->key => $_smarty_tpl->tpl_vars['server']->value) {
$_smarty_tpl->tpl_vars['server']->_loop = true;
?>
								<h4><?php echo $_smarty_tpl->tpl_vars['server']->value['title'];?>
</h4>
								<p>ホームページ: <a href="<?php echo $_smarty_tpl->tpl_vars['server']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['server']->value['url'];?>
</a></p>
								<?php if (!empty($_smarty_tpl->tpl_vars['server']->value['tel'])) {?><p>TEL: <?php echo $_smarty_tpl->tpl_vars['server']->value['tel'];?>
</p><?php }?>
							<?php } ?>
						</div>
					<?php }?>
					<div class="alert alert-info" role="alert">
						<h3>制作会社連絡先</h3>
						<h4>ウェブクリエイティブ株式会社</h4>
						<p>ホームページ: <a href="https://web3.co.jp/" target="_blank">https://web3.co.jp/</a></p>
						<p>TEL: 086-238-9802</p>
						<p>E-mail: <a href="mailto:office@web3.co.jp">office@web3.co.jp</a></p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<?php }} ?>
