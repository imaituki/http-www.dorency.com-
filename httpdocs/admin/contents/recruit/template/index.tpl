<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>管理画面</title>
<link href="/admin/common/css/bootstrap.min.css" rel="stylesheet">
<link href="/admin/common/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="/admin/common/css/animate.css" rel="stylesheet">
<link href="/admin/common/css/plugins/codemirror/codemirror.css" rel="stylesheet">
<link href="/admin/common/css/plugins/codemirror/ambiance.css" rel="stylesheet">
<link href="/admin/common/css/style.css" rel="stylesheet">
<!-- FooTable -->
<link href="/admin/common/css/plugins/footable/footable.core.css" rel="stylesheet">
<link href="/admin/common/css/plugins/blueimp/css/blueimp-gallery.min.css" rel="stylesheet">
{include file=$template_javascript}
<script src="/admin/common/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="/admin/common/js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>
<script src="/admin/common/js/plugins/datapicker/bootstrap-datepicker-import.js"></script>
<script src="/admin/common/js/list.js"></script>
</head>
<body class="fixed-sidebar no-skin-config">
<div id="wrapper">
	{include file=$template_secondary action="public" manage="recruit"}
	<div id="page-wrapper" class="gray-bg">
		{include file=$template_header}
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>{$_CONTENTS_NAME}</h2>
				<ol class="breadcrumb">
					<li><a href="/admin/">Home</a></li>
					<li class="active"><strong>{$_CONTENTS_NAME}</strong></li>
				</ol>
			</div>
			<div class="col-lg-2 m-b-xs pos_ar mt30">
				<a href="./new.php" class="btn btn-primary btn-s">新規登録</a>
			</div>
		</div>
		<div class="wrapper wrapper-content">
			<div class="ibox-content m-b-sm border-bottom">
				<div class="row">
					<form method="post" action="" id="formSearch" enctype="multipart/form-data">
						<div class="col-sm-4">
							<div class="form-group">
								<label class="control-label" for="search_employment">雇用形態</label>
								<div class="input-group">
									<select name="search_employment" class="form-control">
										<option value="">ーーーーー</option>
										{html_options options=$OptionEmployment selected=$_SESSION.admin.recruit.search.POST.search_employment|default:""}
									</select>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<label class="control-label" for="search_keyword">キーワード</label>
							<div class="input-group">
								<input type="text" id="search_keyword" name="search_keyword" value="{$_SESSION.admin.recruit.search.POST.search_keyword|default:""}" placeholder="キーワード" class="form-control">
								<span class="input-group-btn">
									<label class="control-label" for="search_keyword">&nbsp;</label>
									<button type="button" class="btn btn-m btn-primary btn_search"> 検索</button>
									<a href="javascript:void(0)" class="reset_btn btn_reset"{if $_SESSION.admin.recruit.search.POST.mode != "search"} style="display:none;"{/if}> リセット</a>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox">
						<p>▼更新日降順で表示されます。</p>
						<div class="ibox-content">
							<div id="msg"{if $message == NULL} style="display:none"{/if}{if $message.ng|default:"" != NULL} class="error mb20"{elseif $message.ok|default:"" != NULL} class="ok mb20"{/if}>{if $message.ng|default:"" != NULL}<i class="icon-attention"></i> {$message.ng}{elseif $message.ok|default:"" != NULL}<i class="icon-check"></i> {$message.ok}{/if}</div>
							<div id="searchList">
								{include file="./list.tpl"}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
