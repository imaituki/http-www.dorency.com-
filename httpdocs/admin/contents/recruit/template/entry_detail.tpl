<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{$_CONTENTS_NAME}｜管理画面</title>
<link href="{$_RENEWAL_DIR}/admin/common/css/bootstrap.min.css" rel="stylesheet">
<link href="{$_RENEWAL_DIR}/admin/common/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="{$_RENEWAL_DIR}/admin/common/css/animate.css" rel="stylesheet">
<link href="{$_RENEWAL_DIR}/admin/common/css/plugins/codemirror/codemirror.css" rel="stylesheet">
<link href="{$_RENEWAL_DIR}/admin/common/css/plugins/codemirror/ambiance.css" rel="stylesheet">
<link href="{$_RENEWAL_DIR}/admin/common/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<link href="{$_RENEWAL_DIR}/admin/common/css/style.css" rel="stylesheet">
<!-- FooTable -->
<link href="{$_RENEWAL_DIR}/admin/common/css/plugins/footable/footable.core.css" rel="stylesheet">
{include file=$template_javascript}
<script type="text/javascript" src="{$_RENEWAL_DIR}/admin/common/js/input.js"></script>
<script type="text/javascript" src="{$_RENEWAL_DIR}/admin/common/js/preview.js"></script>
<script src="{$_RENEWAL_DIR}/admin/common/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="{$_RENEWAL_DIR}/admin/common/js/plugins/datapicker/bootstrap-datepicker-import.js"></script>
<script type="text/javascript" src="{$_RENEWAL_DIR}/admin/common/js/ckeditor/ckeditor.js"></script>
</head>
<body class="fixed-sidebar no-skin-config">
<div id="wrapper">
	{include file=$template_secondary action="public" manage="recruit"}
	<div id="page-wrapper" class="gray-bg">
		{include file=$template_header}
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>エントリー確認</h2>
				<ol class="breadcrumb">
					<li><a href="{$_RENEWAL_DIR}/admin/">Home</a></li>
					<li><a href="./">{$_CONTENTS_NAME}</a></li>
					<li class="active"><strong>エントリー確認</strong></li>
				</ol>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>{$_CONTENTS_NAME}管理　確認 </h5>
						</div>
						<section>
							<div class="ibox">
								<div class="ibox-title">
									<h4>応募者情報</h4>
								</div>
								<div class="ibox-content">
									<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
										<tbody>
											<tr>
												<th width="120">募集職種</th>
												<td>
													{$t_recruit.recruitment}
												</td>
											</tr>
											<tr>
												<th width="120">お名前</th>
												<td>
													{$t_recruit_contact.name}
												</td>
											</tr>
											<tr>
												<th>フリガナ</th>
												<td>
													{$t_recruit_contact.ruby}
												</td>
											</tr>
											<tr>
												<th>ご住所</th>
												<td>
													〒{$t_recruit_contact.zip}<br>
													{html_select_ken selected=$t_recruit_contact.prefecture|default:"" pre=1}{$t_recruit_contact.address}
												</td>
											</tr>
											<tr>
												<th>電話番号</th>
												<td>
													{$t_recruit_contact.tel|default:"-"}
												</td>
											</tr>
											<tr>
												<th>メールアドレス</th>
												<td>
													{$t_recruit_contact.mail}
												</td>
											</tr>
											<tr>
												<th>自由項目</th>
												<td>
													{$t_recruit_contact.comment|nl2br}
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</section>
						<div class="pos_al">
							<a href="./entry_list.php?id={$t_recruit_contact.id_recruit}" class="btn btn-default">一覧へ戻る</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
