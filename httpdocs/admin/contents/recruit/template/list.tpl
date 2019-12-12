			{include file=$template_pagenavi}
			<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
				<thead>
					<tr>
						<th>掲載期間</th>
						<th>雇用形態</th>
						<th>募集</th>
						<th>エントリー</th>
						<th class="photo">写真</th>
						<th class="showhide">表示</th>
						<th class="delete">削除</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$t_recruit item="recruit" name="loopRecruit"}
					<tr>
						<td>
							{if $recruit.display_indefinite == 0}
								{$recruit.display_start|date_format:"%Y/%m/%d"}<br />
								{$recruit.display_end|date_format:"%Y/%m/%d"}
							{else}
								無期限
							{/if}
						</td>
						<td>{$OptionEmployment[$recruit.employment]}</td>
						<td><a href="./edit.php?id={$recruit.id_recruit}">{$recruit.recruitment}</a></td>
						<td><a href="./entry_list.php?id={$recruit.id_recruit}">一覧</a></td>
						<td class="pos_al">
							<div class="lightBoxGallery">
								{foreach from=$_ARR_IMAGE item="file" name="file"}
									{if $recruit[$file.name]}
										<a href="{$_IMAGEFULLPATH}/recruit/{$file.name}/l_{$recruit[$file.name]}" title="{$file.comment|default:""}" data-gallery=""><img src="{$_IMAGEFULLPATH}/recruit/{$file.name}/s_{$recruit[$file.name]}" width="50" /></a>
									{/if}
								{/foreach}
							</div>
						</td>
						<td class="pos_ac">
							<div class="switch">
								<div class="onoffswitch">
									<input type="checkbox" value="1" class="onoffswitch-checkbox btn_display" id="display{$recruit.id_recruit}" data-id="{$recruit.id_recruit}"{if $recruit.display_flg == 1} checked{/if}>
									<label class="onoffswitch-label" for="display{$recruit.id_recruit}">
										<span class="onoffswitch-inner"></span>
										<span class="onoffswitch-switch"></span>
									</label>
								</div>
							</div>
						</td>
						<td class="pos_ac">
							<a href="javascript:void(0)" class="btn btn-danger btn_delete" data-id="{$recruit.id_recruit}">削除</a>
						</td>
					</tr>
					{foreachelse}
					<tr>
						<td colspan="6">{$_CONTENTS_NAME}は見つかりません。</td>
					</tr>
					{/foreach}
				</tbody>
				<tfoot>
					<tr>
						<td colspan="10"><ul class="pagination pull-right">
							</ul></td>
					</tr>
				</tfoot>
			</table>
			<div id="blueimp-gallery" class="blueimp-gallery">
				<div class="slides"></div>
				<h3 class="title"></h3>
				<a class="prev">‹</a>
				<a class="next">›</a>
				<a class="close">×</a>
				<a class="play-pause"></a>
				<ol class="indicator"></ol>
			</div>
			{include file=$template_pagenavi}
