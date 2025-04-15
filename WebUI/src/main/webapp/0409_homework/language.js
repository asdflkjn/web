window.onload=function(){	
	 var tbl = document.getElementById('tbl');
	 tbl.onclick = function(evt){ 
		 	alert('OK');
			var price = evt.target.getAttribute('data-price');
			
	}

	/*var items = document.getElementsByClassName('item');
		for(var i=0; i<items.length; i++){
			items[i].onclick= fucntion(){
				var price = this.getAttribute('data-price');
			}
			
		}*/

}