
var carMap = {
		Abarth : ["Any", "Grande Punto", "Punto Evo", "Other"],
		AC : ["Any"],
		Acura : ["Any","MDX","NSX","RL","RSX","TL","TSX","Other"],
		AlfaRomeo : ["Any","4C","8C","Alfa 145","Alfa 146","Alfa 147","Alfa 155",
		             "Alfa 156","Alfa 159","Alfa 164","Alfa 166","Alfa 33","Alfa 75",
		             "Alfa 90","Alfasud","Alfetta","Brera","Crosswagon","Giulia",
		             "Giulietta","GT","GTV","Junior","MiTo","Spider","Sprint","Other"],
		AstonMartin : ["Any","AR1","Cygnet","DB","DB11","DB7","DB9","DBS","Lagonda",
		               "Rapide","V12 Vantage","V8 Vantage","Vanquish","Virage","Other"],
		Audi : ["Any","100","200","80","90","A1","A2","A3","A4","A4 Allroad","A5","A6",
		        "A6 Allroad","A7","A8","Cabriolet","Coupé","Q1","Q3","Q5","Q7","QUATTRO",
		        "R8","RS2","RS3","RS4","RS5","RS6","RS7","RSQ3","S1","S2","S3","S4","S5",
		        "S6","S7","S8","SQ5","SQ7","TT","V8","Other"],
		BMW : ["Any","2002","840","850","i3","i8","M135","M2","M235","M3","M4","M5","M550",
		       "M6","114","116","118","120","123","125","130","135","1er M Coupé",
		       "214 Active Tourer","214 Gran Tourer","216","216 Gran Tourer","218",
		       "218 Active Tourer","218 Gran Tourer","220","220 Active Tourer","220 Gran Tourer",
		       "225","225 Active Tourer","228","315","316","318","318 Gran Turismo","320",
		       "320 Gran Turismo","323","324","325 Gran Turismo","328","328 Gran Turismo",
		       "330","330 Gran Turismo","335","335 Gran Turismo","340","418","418 Gran Coupé",
		       "420","420 Gran Coupé","425","428","428 Gran Coupé","430","430 Gran Coupé",
		       "435","435 Gran Coupé","440","440 Gran Coupé","518","520","520 Gran Turismo",
		       "523","524","525","528","530","530 Gran Turismo","535","535 Gran Turismo","540",
		       "545","550","550 Gran Turismo","628","630","633","635","640","640 Gran Coupé",
		       "650 Gran Coupé","725","728","730","732" ,"735" ,"740","745","750","760",
		       "X1","X3","X4","X5","X6","Z3","Z4","Z8","Other"]
};

function findModel(value){
// alert("Hi " + value);
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