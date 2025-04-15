window.onload = function(){

		var frm = document.getElementById('frm');
		var inputs = document.querySelectorAll("input");
		
		frm.onsubmit = function(e){
			
			//고유의 이벤트 기능막기
			e.preventDefault();
			e.stopPropagation();
			
			//체크박스의 체크여부를 판단하고 싶어서
			var agree = frm.agree; //agree라는 이름으로 객체 생성
			//alert(agree.checked);
			if(!agree.checked){
				alert('반드시 약관을 확인하셔야 합니다');
				return; //함수를 벗어날거야.
			}
			
			//고유의 기능 막았으니까 다시 원래 기능(전송)
			frm.submit();
			
		}
	}