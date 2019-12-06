
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

		ck.find('.product_parts_office').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][office]');
			$(this).attr('id', 'product_parts_office_' + sirial);
			$(this).val([]);
		});

		ck.find('.product_parts_office_name').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][office_name]');
			$(this).attr('id', 'product_parts_office_name_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_director').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][director]');
			$(this).attr('id', 'product_parts_director_' + sirial);
			$(this).val([]);
		});

		ck.find('.product_parts_director_name').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][director_name]');
			$(this).attr('id', 'product_parts_director_name_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_zip').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][zip]');
			$(this).attr('id', 'product_parts_zip_' + sirial);
			$(this).val('');
		});

		ck.find('.ajax_zip').each(function () {
			$(this).attr('href', "javascript:AjaxZip3.zip2addr('detail[" + sirial + "][zip]','','detail[" + sirial + "][prefecture]','detail[" + sirial + "][address]');");
		});

		ck.find('.product_parts_prefecture').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][prefecture]');
			$(this).attr('id', 'product_parts_prefecture_' + sirial);
			$(this).val([]);
		});

		ck.find('.product_parts_address').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][address]');
			$(this).attr('id', 'product_parts_address_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_tel').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][tel]');
			$(this).attr('id', 'product_parts_tel_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_fax').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][fax]');
			$(this).attr('id', 'product_parts_fax_' + sirial);
			$(this).val('');
		});

		ck.find('.product_parts_map').each(function () {
			$(this).attr('name', 'detail[' + sirial + '][map]');
			$(this).attr('id', 'product_parts_map_' + sirial);
			$(this).val('');
		});

		$(ck).attr('id', 'product_parts' + sirial).attr('data-sirial', sirial).val('');
		$('.product_parts_loop:last').after(ck);

	});


});