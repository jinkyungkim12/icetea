checkNull = function(obj, value) {
    if (value == "" || value == null) {
        obj.focus();
        return false;
    } else {
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




// position(select). name. pass 1 2 . company. creatorNickname. dob. gender. 
// telcompany. phone. phone2.  emailInsert/ emailDomain/ 
// address. addressDetail. addr3
// mobileNY emailNY personalInfo 


//postion
position_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

// name
name_V = function(obj, value, message, hide) {
    const re = /^[ㄱ-ㅎ가-힣a-zA-z]{1,10}$/g;
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if (!(re.test($.trim($(obj).val())))) {
        $(hide).text('양식에 맞게 작성하시오')
        hide.parent().addClass('error')
        $(hide).show()
        return false;
    } else if(!(($.trim($(obj).val()).length > 1) && ($.trim($(obj).val()).length < 10))) {
        $(hide).text('2~10자 사이의 이름을 작성하시오')
        hide.parent().addClass('error')
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}

// 비밀번호
password_V = function(obj, value, message, hide) {
	const re = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/g;
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if (re.test($.trim($(obj).val()))) {
		hide.parent().addClass('error')
        $(hide).text("최소 8자, 하나 이상의 대문자, 소문자, 숫자 및 하나의 특수 문자 입력하시오")
        $(hide).show()
        return false;
	} else if(!(($.trim($(obj).val()).length > 7))) {
        $(hide).text('8자 이상의 비밀번호를 작성하시오')
        hide.parent().addClass('error')
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}

password2_V = function(obj, value, message, hide) {
	const re = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/g;
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if ((re.test($.trim($(obj).val())))) {
		hide.parent().addClass('error')
        $(hide).text("최소 8자, 하나 이상의 대문자, 소문자, 숫자 및 하나의 특수 문자 입력하시오")
        $(hide).show()
        return false;
	} else if(!(($.trim($(obj).val()) === $.trim($('#password').val())))) {
        $(hide).text('비밀번호가 일치하지 않습니다.')
        hide.parent().addClass('error')
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}

// 생년월일
dob_V = function(obj, value, message, hide) {
    const re = /^[1-2]{1}[0-9]{3}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1}$/g;
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if (!(re.test($.trim($(obj).val())))) {
        hide.parent().addClass('error')
        $(hide).text("양식에 맞게 작성하세요")
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}

// 성별
gender_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

// 통신사
telCompany_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

// 전화번호
phone_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

// emailInsert

emailInsert_V = function(obj, value, message, hide) {
    const re =   /^[ㄱ-ㅎ가-힣a-zA-z]{1,10}$/g;
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if(!(($.trim($(obj).val()).length > 1) && ($.trim($(obj).val()).length < 10))) {
        $(hide).text('4~20자 사이의 이메일ID를 작성하시오')
        hide.parent().addClass('error')
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}

//emailDomain_V

emailDomain_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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




// 주소
zipcode_V = function(obj, value, message, hide) {
    const re = /^[\d]{5}$/g;
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if (!(re.test($.trim($(obj).val())))) {
        hide.parent().addClass('error')
        $(hide).text("양식에 맞게 작성하세요")
        $(hide).show()
        return false;
    } else if(!(($.trim($(obj).val()).length === 5))) {
        hide.parent().addClass('error')
        $(hide).text("5자리 우편번호를 입력하세요")
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}

address_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

addressDetail_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
        hide.parent().addClass('error')
        $(hide).text(message)
        $(hide).show()
        return false;
    } else if(!(($.trim($(obj).val()).length > 1) && ($.trim($(obj).val()).length < 10))) {
        $(hide).text('10자 사이의 상세주소를 작성하시오')
        hide.parent().addClass('error')
        $(hide).show()
        return false;
    } else {
        hide.parent().removeClass('error')
        hide.parent().addClass('success')
        $(hide).hide()
        return true;
    }
}


// 모바일동의
mobileNY_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

// 이메일동의
emailNY_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

// 개인정보동의
personalInfo_V = function(obj, value, message, hide) {
    if (!checkNull(obj, value)) {
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

