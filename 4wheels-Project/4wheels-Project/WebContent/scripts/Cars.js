
var carMap = {
		Abarth : ["BMW", "Mercedes", "VW", "Audi"],
		AC : ["Nissan", "Honda", "Toyota","Hyndai"]
};

function findModel(value){
//	alert("Hi " + value);
	document.getElementById("_312").disabled=false;
	
	var cars = carMap[value];
	var mySelect = document.getElementById("_312");
	mySelect.innerHTML = "";

	for (var i = 0; i < cars.length; i++) {
		var option = document.createElement("option");
		option.value = cars[i];
		option.text = cars[i];
		mySelect.appendChild(option);
	}
}