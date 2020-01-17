<?php /* Smarty version Smarty-3.1.18, created on 2020-01-16 12:Jan:th
         compiled from "./finish.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14014355485e1fdc4ece65c7-91274149%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9d20fa539703757ca9b7b6f4a04d5b6b3d279589' => 
    array (
      0 => './finish.tpl',
      1 => 1579137860,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14014355485e1fdc4ece65c7-91274149',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    'arr_post' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e1fdc4ed391c5_22318236',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e1fdc4ed391c5_22318236')) {function content_5e1fdc4ed391c5_22318236($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="contact">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
	<div id="body">
		<div id="page_title">
			<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/top.jpg" alt="エントリー"></div>
			<div class="page_title_wrap common">
				<div class="center mincho cg5">
					<h2><span class="main">エントリー</span><span class="sub">Entry</span></h2>
				</div>
			</div>
		</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
				<li>エントリー</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			<h2 class="hl_1 mincho pos_ac">エントリーが完了しました</h2>
			<p class="mb20 pos_ac">ご入力いただいたメールアドレス<?php if (!empty($_smarty_tpl->tpl_vars['arr_post']->value['mail'])) {?>(<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['mail'];?>
)<?php }?>宛に、確認メールをお送りしておりますのでご確認ください。</p>
			<p class="mb20 pos_ac">
				しばらくたっても自動送信メールが届かない場合には、主に次の原因が考えられます。<br>
				「ご入力いただいたメールアドレスが間違っている」<br>
				「迷惑メール対策による受信メールの自動削除設定」<br>
				「メールボックスの容量オーバー（特にフリーメール）」<br>
				「メールの受信制限や拒否設定（特に携帯メール）」</p>
			<p class="mb20 pos_ac">メールアドレスの間違いや、ドメイン指定などの受信設定を今一度ご確認いただき、<br>
				送受信できる正しいメールアドレスを、メールまたはお電話にてご連絡くださいますようお願い申し上げます。</p>
			<p class="mb50 pos_ac">その他、何かご不明な点等ございましたら、お気軽にエントリーください。</p>
			<div class="button _type_2"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="arrow_cg2"></i>トップページに戻る</a></div>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
