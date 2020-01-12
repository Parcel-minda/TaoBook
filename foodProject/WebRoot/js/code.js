


// 手机注册事件
$('#handset').on('blur', function () {
	var tel = $(this).val();
	var reg = /^1\d{10}$/;
	var btn = $('#public_register');
	var test = $('.public .register .public_ipt > div');
	if (tel) {
		if (tel.match(reg)) {
			btn.css({ background: '#8AA6D0', });
			test.css({ display: 'none', })
		} else {
			btn.css({ background: 'red' });
			test.css({ display: 'block', })
		}
	}
})








