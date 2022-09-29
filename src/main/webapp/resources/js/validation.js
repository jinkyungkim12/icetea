	
	checkNull = function(obj, value) {
	    if (value == "" || value == null) {
	        obj.focus();
	        return false;
	    } else {
	        return true;
	    }
	}
	
	checkNullWithoutFocus = function(value) {
	    if (value == "" || value == null) {
	        alert(message);
	        hide.parent().addClass('error')
	        $(hide).text(message)
	        $(hide).show()
	        return false;
	    } else {
	        hide.parent().removeClass('error')
	        hide.parent().addClass('success')
	        $(hide).hide()
	        return true;
	    }
	}
	
	const setError = (element, message) => {
	    const inputControl = element.parentElement;
	    const errorDisplay = inputControl.querySelector('.error');
	
	    errorDisplay.innerText = message;
	    inputControl.classList.add('error');
	    inputControl.classList.remove('success');
	};
	
	const setSuccess = element => {
	    const inputControl = element.parentElement;
	    const errorDisplay = inputControl.querySelector('.error');
	
	    errorDisplay.innerText = '';
	    inputControl.classList.add('success');
	    inputControl.classList.remove('error');
	};
	
	id_regex = function(obj, value, message, hide) {
	    const re = /^[A-Za-z가-힣]{1}[A-Za-z가-힣]{2,19}$/g;
	    if (!checkNull(obj, value) && !(re.test($.trim($(obj).val())))) {
	        hide.parent().addClass('error')
	        $(hide).text(message)
	        $(hide).show()
	        return false;
	    } else if(!(($.trim($(obj).val()).length > 2) && ($.trim($(obj).val()).length < 21))) {
	        $(hide).text('4~20자 사이의 아이디를 작성하시오')
	        hide.parent().addClass('error')
	        $(hide).show()
	        return false;
	    } else {
	        hide.parent().removeClass('error')
	        hide.parent().addClass('success')
	        $(hide).text("사용가능한 아이디 입니다.")
	        $(hide).show()
	        return true;
	    }
	}

