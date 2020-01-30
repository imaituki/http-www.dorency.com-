<?php /* Smarty version Smarty-3.1.18, created on 2020-01-28 17:Jan:th
         compiled from "./index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7167129565e2fead09f0110-52355864%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8b82e36b14a5b32b9082c90cfde424dcce75e56' => 
    array (
      0 => './index.tpl',
      1 => 1579698909,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7167129565e2fead09f0110-52355864',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    'template_contact' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e2fead0a43276_15928276',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e2fead0a43276_15928276')) {function content_5e2fead0a43276_15928276($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="recruit">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title">
		<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/recruit/top.jpg" alt="採用情報"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">採用情報</h2>
					<p>食の安心・安全に直結する製品を扱う上で、食品メーカーの<br>
						ベストパートナーを目指しています。研究開発/製造/販売を<br>
						通じて社会に貢献できる活力にあふれた人材を求めています。</p>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu">
		<div class="center">
			<ul>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
				<li>採用情報</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center recruit">
			<div class="row">
				<div class="col-xs-6">
					<div class="box">
						<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/recruit/image1.jpg" alt="新卒採用"></div>
						<div class="blank">
							<div class="pos_ac name">新卒採用<span>Newgraduates</span></div>
							<div class="button _type_2"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/recruit/newcomer/">募集要項へ<i class="arrow_cg3"></i></a></div>
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="box">
						<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/recruit/image2.jpg" alt="キャリア採用"></div>
						<div class="blank">
							<div class="pos_ac name">キャリア採用<span>Middle Career</span></div>
							<div class="button _type_2"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/recruit/career/">募集要項へ<i class="arrow_cg3"></i></a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="wrapper center">
			<h2 class="hl_4"><span>採用に関するお問い合わせ</span></h2>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_contact']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
