			<form class="form-horizontal" action="./{if $mode == 'edit'}update{else}insert{/if}.php" method="post" enctype="multipart/form-data" id="inputForm">
				<div class="ibox-content">
					<div class="form-base required">
						<label class="col-sm-2 control-label">拠点名</label>
						<div class="col-sm-6">
							{if $message.ng.name|default:"" != NULL}<p class="error">{$message.ng.name}</p>{/if}
							<input type="text" class="form-control" name="name" id="name" value="{$arr_post.name|default:""}" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-base required">
						<label class="col-sm-2 control-label">郵便番号</label>
						<div class="col-sm-6">
							{if $message.ng.zip|default:"" != NULL}<p class="error">{$message.ng.zip}</p>{/if}
							<div style="display:flex; align-items: center;">
							<input type="text" class="form-control input-s" name="zip" id="zip" size="8" maxlength="8" value="{$arr_post.zip|default:""}" style="margin-right:5px;" />
							<a href="javascript:AjaxZip3.zip2addr('zip','','prefecture','address');">郵便番号から住所を表示する</a>
							</div>
							<p>※自動入力を使用される場合は半角数字を入力してください。</p>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-base required">
						<label class="col-sm-2 control-label">都道府県</label>
						<div class="col-sm-6">
							{if $message.ng.prefecture|default:"" != NULL}<p class="error">{$message.ng.prefecture}</p>{/if}
							{html_select_ken name="prefecture" class="form-control inline input-s" selected=$arr_post.prefecture|default:"0"}
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-base required">
						<label class="col-sm-2 control-label">市区郡町村</label>
						<div class="col-sm-6">
							{if $message.ng.address1|default:"" != NULL}<p class="error">{$message.ng.address1}</p>{/if}
							<input type="text" class="form-control" name="address1" id="address1"  size="60" value="{$arr_post.address1|default:""}" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-base required">
						<label class="col-sm-2 control-label">番地、町名、建物名</label>
						<div class="col-sm-6">
							{if $message.ng.address2|default:"" != NULL}<p class="error">{$message.ng.address2}</p>{/if}
							<input type="text" class="form-control" name="address2" id="address2"  size="60" value="{$arr_post.address2|default:""}" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					{if $_ARR_IMAGE != NULL}
						{include file=$template_image path=$_IMAGEFULLPATH dir=$_CONTENTS_DIR prefix="s_"}
					{/if}
					<div class="form-base">
						<label class="col-sm-2 control-label">表示／非表示</label>
						<div class="col-sm-6">
							{if $message.ng.display_flg|default:"" != NULL}<p class="error">{$message.ng.display_flg}</p>{/if}
							<div class="radio m-r-xs inline">
								{html_radios name="display_flg" values=1 selected=$arr_post.display_flg|default:"1" output="する"}&nbsp;&nbsp;
								{html_radios name="display_flg" values=0 selected=$arr_post.display_flg|default:"1" output="しない"}
							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					{if $mode == 'edit'}<input type="hidden" name="id_base" value="{$arr_post.id_base}" />{/if}
					<input type="hidden" name="_contents_dir" id="_contents_dir" value="{$_CONTENTS_DIR}" />
					<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="{$_CONTENTS_CONF_PATH}" />
					<div class="form-base">
						<div class="col-sm-10 col-sm-offset-2 pos_ar">
							<button class="btn btn-primary"  type="submit">この内容で登録</button>
						</div>
					</div>
				</div>
			</form>
