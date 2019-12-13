
$(function () {
	// 削除
	$(document).on('click', '.detail-trash', function () {
		if ($('.product_parts_loop').length > 1) {
			if (!confirm("削除処理を行ってよろしいですか？")) {
				return false;
			} else {
				$(this).parents().parents('.product_parts_loop').remove();
			}
		} else {
			alert("これ以上削除できません。");
		}
	});

	// 写真追加
	$(document).on('click', '.add_product_parts', function () {

		var sirials = new Array();
		var ck = $('.product_parts_loop:first').clone(true);

		// 要素数の取得
		$('.product_parts_loop').each(function (id) {
			sirials[id] = $(this).attr('data-sirial');
		});
		var sirial = Math.max.apply(null, sirials) + 1;

		ck.find('.product_parts_type').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][type]');
			$(this).attr('id', 'product_parts_type_' + sirial);
			$(this).val([]);
		});

		ck.find('.product_parts_feature').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][feature]');
			$(this).attr('id', 'product_parts_feature_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_days').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][days]');
			$(this).attr('id', 'product_parts_days_' + sirial);
			$(this).val([]);
		});

		ck.find('.product_parts_time').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][time]');
			$(this).attr('id', 'product_parts_time_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_use').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][use]');
			$(this).attr('id', 'product_parts_use_' + sirial);
			$(this).val('');
		});


		ck.find('.product_parts_necessary_time').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][necessary_time]');
			$(this).attr('id', 'product_parts_necessary_time_' + sirial);
			$(this).val('');
		});

		$(ck).attr('id', 'product_parts' + sirial).attr('data-sirial', sirial).val('');
		$('.product_parts_loop:last').after(ck);

	});


});
