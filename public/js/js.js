window.onload=function(){

	amountFromCart();
	getInfoFromLocalstorage();

}


// функция которая добавляет в локалсторадж 1 пицу данного типа, по нажатии на кнопку заказать.
 //при этом запись начинается с pizza_ так как в localstorage могут быть различные данные, с разнвми ключами,
 // и это нам поможет делать выборку из локалсторадж именно наших лементов 
//функция получает параметр title, который берётся из базы данных
function addToCart(title){
	var item = window.localStorage.getItem('tea_'+ title);
	item = item * 1 + 1;
	window.localStorage.setItem('tea_'+ title, item);
//вызываем функции которые должны вызываться при вызове этой функции
	getNumberOfItemInCart();
	amountFromCart();
}

//пробегаем по localstorage и если в ключе по 0 индексу расположенна substring "pizza_" тогда прибавляем 
//к переменной cnt value этого ключа

function getNumberOfItemInCart(){
	var cnt = 0;

	for (var i=0; i < window.localStorage.length; i++ ){
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);
		if (key.indexOf('tea_')==0){
			cnt = cnt + value * 1;
		}
	}
	return cnt;
	
}

//помещаем данные полученные из метода getNumberOfItemInCart() в поле amountOfItem во view

function amountFromCart(){

	var amount = getNumberOfItemInCart();
	var field = document.getElementById('amountOfItem');
	field.innerHTML = amount;

}

function getInfoFromLocalstorage(){
var info = ''
	for (var i=0; i < window.localStorage.length; i++ ){
        var key = window.localStorage.key(i);
        var value = window.localStorage.getItem(key);
        if (key.indexOf('tea_')==0){
        	var infoFromLocalS = document.getElementById('fromLocalStorage');
            info += (key + '$' + value +'|');
            infoFromLocalS.value = info;
        }
    }

} 