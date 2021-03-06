<form id="inputForm" name="inputForm" class="form-horizontal" action="./preview.php?preview=1" method="post" enctype="multipart/form-data">
	<div class="ibox-content">
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">製品カテゴリ名</label>
			<div class="col-sm-9">
				{if $message.ng.name|default:"" != NULL}<p class="error">{$message.ng.name}</p>{/if}
				<input type="text" class="form-control" name="name" id="name" value="{$arr_post.name|default:""}" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">キャッチタイトル</label>
			<div class="col-sm-9">
				{if $message.ng.catchtitle|default:"" != NULL}<p class="error">{$message.ng.catchtitle}</p>{/if}
				<input  type="text" class="form-control" name="catchtitle" id="catchtitle" value="{$arr_post.catchtitle|default:""}" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">コメント</label>
			<div class="col-sm-9">
				{if $message.ng.comment|default:"" != NULL}<p class="error">{$message.ng.comment}</p>{/if}
				<textarea name="comment" id="comment" rows="7" class="form-control">{$arr_post.comment|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		{if $_ARR_IMAGE != NULL}
			{include file=$template_image path=$_IMAGEFULLPATH dir=$_CONTENTS_DIR prefix="s_"}
		{/if}
		{if $_ARR_FILE != NULL}
			{include file=$template_file path=$_IMAGEFULLPATH dir=$_CONTENTS_DIR}
		{/if}
		<div class="form-group">
			<label class="col-sm-2 control-label">表示／非表示</label>
			<div class="col-sm-6">
				{if $message.ng.display_flg|default:"" != NULL}<p class="error">{$message.ng.display_flg}</p>{/if}
				<div class="radio m-r-xs inline">
					{html_radios name="display_flg" values=1 selected=$arr_post.display_flg|default:"1" output="する"}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					{html_radios name="display_flg" values=0 selected=$arr_post.display_flg|default:"1" output="しない"}
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="button clearfix mb20">
			{if $mode == 'edit'}<input type="hidden" name="{$_CONTENTS_ID}" value="{$arr_post.$_CONTENTS_ID}" />{/if}
			<input type="hidden" name="_contents_dir" id="_contents_dir" value="{$_CONTENTS_DIR}" />
			<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="{$_CONTENTS_CONF_PATH}" />
			<div class="form-group">
				<div style="text-align:right;">
					<input type="button" class="btn btn-primary" value="この内容で登録" id="{if $mode == 'edit'}updateBtn{else}insertBtn{/if}" />
				</div>
			</div>
		</div>
	</div>
</form>
