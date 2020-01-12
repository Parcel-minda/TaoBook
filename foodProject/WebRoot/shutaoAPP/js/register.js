


var lock = false;
// 手机注册事件
$('#handset').on('blur', function () {
	var tel = $(this).val();
	var login = $('#public_register');
	var reg = /^1\d{10}$/;
	var btn = $('#public_register');
	var test = $('.public .register .public_ipt > div');
	if (tel) {
		if (tel.match(reg)) {
			lock = true;
			login.prop('disabled', false);
			btn.css({ background: '#8AA6D0', });
			test.css({ display: 'none', })
		} else {
			lock = false;
			login.prop('disabled', true);
			btn.css({ background: 'red' });
			test.css({ display: 'block', })
		}
	} else {
		login.prop('disabled', true);
		btn.css({ background: '#8AA6D0', });
		test.css({ display: 'none', })
	}
})
// 密码事件
$('#register').on('keyup', '.qr_text', function () {
	var ipt_test1 = $('#ipt_test1').val(), ipt_test2 = $('#ipt_test2').val();
	var ipt_All = $('.qr_text').val();
	var login = $('#public_register');
	var reg = /^\w{6,12}$/;
	// 判断密码长度和格式
	$('.qr_text').on('blur', function () {
		if (ipt_All) {
			if (ipt_All.match(reg)) {
				$('.test_p').css({ display: 'none' });
			} else {
				$('.test_p').css({ display: 'block' });
			}
		} else {
			$('.test_p').css({ display: 'none' });
		}
	})
	// 判断密码是否一致
	if (ipt_test2) {
		if (ipt_test1 === ipt_test2 && lock) {
			login.prop('disabled', false);
			$('.register .public_p p').css({ display: 'none' })
			login.css({ background: '#8AA6D0' })
		} else {
			login.prop('disabled', true);
			login.css({ background: 'red' })
			$('.register .public_p p').css({ display: 'block' })
		}
	} else {
		$('.register .public_p p').css({ display: 'none' })
	}
})






