window.onload = function(){	
  	//방법1
  	var items = document.querySelectorAll('.item');  		
	for(let i=0; i<items.length;i++){
		items[i].onclick = function(){					
			var price = this.getAttribute('data-price');
			alert(i + 'item click ok');
			alert('price :' + price);
		}
	}
		
	//방법2
	/*var tbl = document.querySelector('#tbl');
	tbl.onclick = function(evt){
		var price = evt.target.getAttribute('data-price');
		alert('ok');
		alert(price);
	}*/
	
	//방법3
	var items = document.querySelectorAll('#tbl .item');  
	
}
