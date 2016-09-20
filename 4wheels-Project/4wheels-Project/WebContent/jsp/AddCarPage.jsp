<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Car</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
<link rel="stylesheet" href="../common-files/css/fonts-v3.css">
<link rel="stylesheet" href="../common-files/css/base-v4.css">
<link rel="stylesheet"
	href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">

<style>
.ddl2 {
	top: 1800px;
	left: 30px;
	width: 220px;
	height: 35px;
}
</style>
<style>
.myform {
	top: 140px;
}
</style>
<%if(session.getAttribute("user")==null){
	response.sendRedirect("Login.jsp");
}%>

</head>
<body>
	<div id="_266">

		<div id="_267" class="nm-label">
			<h1 id="_268">
				Add Car<br />
			</h1>
		</div>

		<div id="_269">
			<svg id="_270"> <line id="_271" x1="0" x2="957" y1="" y2="0" />
			</svg>
		</div>
		<form id="add_car" name="AddCar" method="POST" action="../AddCarServlet" role="form" enctype="multipart/form-data">
		
			<div id="_272" class="nm-label">
				<h3 id="_273">
					Make<br />
				</h3>
			</div>

			<div id="_274" class="nm-label">
				<h3 id="_275">
					First registration<br />
				</h3>
			</div>

			<div id="_276" class="nm-label">
				<h3 id="_277">
					Fuel Type <br />
				</h3>
			</div>

			<div id="_278" class="nm-label">
				<h3 id="_279">
					Transmision<br />
				</h3>
			</div>

			<div id="_280" class="nm-label">
				<h3 id="_281">
					Location<br />
				</h3>
			</div>

			<div id="_282" class="nm-label">
				<h3 id="_283">
					Interior features <br />
				</h3>
			</div>

			<div id="_284" class="nm-label">
				<h3 id="_285">
					Security<br />
				</h3>
			</div>

			<div id="_286" class="nm-label">
				<h3 id="_287">
					Airbags<br />
				</h3>
			</div>

			<div id="_290" class="nm-label">
				<h3 id="_291">
					Cubic Capacity (in ccm) <br />
				</h3>
			</div>

			<div id="_292" class="nm-label">
				<h3 id="_293">
					Price<br />
				</h3>
			</div>

			<div id="_294" class="nm-label">
				<h3 id="_295">
					Power (ps)<br />
				</h3>
			</div>

			<div id="_296" class="nm-label">
				<h3 id="_297">
					Kilometer<br />
				</h3>
			</div>

			<input type="text" id="_298" name="Variant" placeholder="e.g. GTI"
				class="form-control" /> 
				
			<select id="_299" name="Make"
				onchange="findModel(value)"
				class="form-control form-control--dropdown mmh-make-incl"
				data-param-rfpf="mke">
				<option value="" selected="selected">Any</option>
				<option value="17200" class="pmak">Mercedes-Benz</option>
				<option value="25200" class="pmak">Volkswagen</option>
				<option value="3500" class="pmak">BMW</option>
				<option value="1900" class="pmak">Audi</option>
				<option disabled="disabled"></option>
				<option value="Abarth">Abarth</option>
				<option value="AC">AC</option>
				<option value="2">Acura</option>
				<option value="800">Aixam</option>
				<option value="900">Alfa Romeo</option>
				<option value="1100">ALPINA</option>
				<option value="121">Artega</option>
				<option value="1750">Asia Motors</option>
				<option value="1700">Aston Martin</option>
				<option value="1900">Audi</option>
				<option value="2000">Austin</option>
				<option value="1950">Austin Healey</option>
				<option value="3100">Bentley</option>
				<option value="3500">BMW</option>
				<option value="3850">Borgward</option>
				<option value="4025">Brilliance</option>
				<option value="4350">Bugatti</option>
				<option value="4400">Buick</option>
				<option value="4700">Cadillac</option>
				<option value="112">Casalini</option>
				<option value="5300">Caterham</option>
				<option value="83">Chatenet</option>
				<option value="5600">Chevrolet</option>
				<option value="5700">Chrysler</option>
				<option value="5900">Citroën</option>
				<option value="6200">Cobra</option>
				<option value="6325">Corvette</option>
				<option value="6600">Dacia</option>
				<option value="6800">Daewoo</option>
				<option value="7000">Daihatsu</option>
				<option value="7400">DeTomaso</option>
				<option value="7700">Dodge</option>
				<option value="255">Donkervoort</option>
				<option value="235">DS Automobiles</option>
				<option value="8600">Ferrari</option>
				<option value="8800">Fiat</option>
				<option value="172">Fisker</option>
				<option value="9000">Ford</option>
				<option value="205">GAC Gonow</option>
				<option value="204">Gemballa</option>
				<option value="9900">GMC</option>
				<option value="122">Grecav</option>
				<option value="186">Hamann</option>
				<option value="10850">Holden</option>
				<option value="11000">Honda</option>
				<option value="11050">Hummer</option>
				<option value="11600">Hyundai</option>
				<option value="11650">Infiniti</option>
				<option value="11900">Isuzu</option>
				<option value="12100">Iveco</option>
				<option value="12400">Jaguar</option>
				<option value="12600">Jeep</option>
				<option value="13200">Kia</option>
				<option value="13450">Koenigsegg</option>
				<option value="13900">KTM</option>
				<option value="14400">Lada</option>
				<option value="14600">Lamborghini</option>
				<option value="14700">Lancia</option>
				<option value="14800">Land Rover</option>
				<option value="14845">Landwind</option>
				<option value="15200">Lexus</option>
				<option value="15400">Ligier</option>
				<option value="15500">Lincoln</option>
				<option value="15900">Lotus</option>
				<option value="16200">Mahindra</option>
				<option value="16600">Maserati</option>
				<option value="16700">Maybach</option>
				<option value="16800">Mazda</option>
				<option value="137">McLaren</option>
				<option value="17200">Mercedes-Benz</option>
				<option value="17300">MG</option>
				<option value="30011">Microcar</option>
				<option value="17500">MINI</option>
				<option value="17700">Mitsubishi</option>
				<option value="17900">Morgan</option>
				<option value="18700">Nissan</option>
				<option value="18875">NSU</option>
				<option value="18975">Oldsmobile</option>
				<option value="19000">Opel</option>
				<option value="149">Pagani</option>
				<option value="19300">Peugeot</option>
				<option value="19600">Piaggio</option>
				<option value="19800">Plymouth</option>
				<option value="20000">Pontiac</option>
				<option value="20100">Porsche</option>
				<option value="20200">Proton</option>
				<option value="20700">Renault</option>
				<option value="21600">Rolls-Royce</option>
				<option value="21700">Rover</option>
				<option value="125">Ruf</option>
				<option value="21800">Saab</option>
				<option value="22000">Santana</option>
				<option value="22500">Seat</option>
				<option value="22900">Skoda</option>
				<option value="23000">Smart</option>
				<option value="188">speedART</option>
				<option value="100">Spyker</option>
				<option value="23100">Ssangyong</option>
				<option value="23500">Subaru</option>
				<option value="23600">Suzuki</option>
				<option value="23800">Talbot</option>
				<option value="23825">Tata</option>
				<option value="189">TECHART</option>
				<option value="135">Tesla</option>
				<option value="24100">Toyota</option>
				<option value="24200">Trabant</option>
				<option value="24400">Triumph</option>
				<option value="24500">TVR</option>
				<option value="25200">Volkswagen</option>
				<option value="25100">Volvo</option>
				<option value="25300">Wartburg</option>
				<option value="113">Westfield</option>
				<option value="25650">Wiesmann</option>
				<option value="1400">Other</option>
			</select>

			<div id="_310" class="nm-label">
				<h3 id="_311">
					Model<br />
				</h3>
			</div>

			<select id="_312" name="Model"
				class="form-control form-control--dropdown mmh-model-incl"
				data-param-rfpf="mde" disabled>
			</select>

			<div id="_323" class="nm-label">
				<h3 id="_324">
					Variant<br />
				</h3>
			</div>

			<i id="_325"></i>

			<div id="_326" class="nm-label">
				<a id="_327" href="#"> User Name<br />
				</a>
			</div>

			<div id="_328" class="nm-label">
				<h3 id="_329">
					Make, Model, Version<br />
				</h3>
			</div>

			<div id="_330" class="nm-label">
				<h3 id="_331">
					Vehicle type <br />
				</h3>
			</div>

			<div id="_332" class="nm-label">
				<h3 id="_333">
					Vehicle search <br />
				</h3>
			</div>

			<div id="_334" class="nm-label">
				<h3 id="_335">
					Engine<br />
				</h3>
			</div>

			<div id="_336" class="nm-label">
				<h3 id="_337">
					Location<br />
				</h3>
			</div>

			<div id="_338" class="nm-label">
				<h3 id="_339">
					Features<br />
				</h3>
			</div>

			<div id="_340">
				<svg id="_341"> <line id="_342" x1="0" x2="957" y1="" y2="0" />
				</svg>
			</div>

			<div id="_343">
				<svg id="_344"> <line id="_345" x1="0" x2="957" y1="" y2="0" />
				</svg>
			</div>

			<div id="_346">
				<svg id="_347"> <line id="_348" x1="0" x2="957" y1="" y2="0" />
				</svg>
			</div>

			<div id="_349">
				<svg id="_350"> <line id="_351" x1="0" x2="957" y1="" y2="0" />
				</svg>
			</div>

			<div id="_352">
				<svg id="_353"> <line id="_354" x1="0" x2="957" y1="" y2="0" />
				</svg>
			</div>

			<div id="_355">
				<svg id="_356"> <line id="_357" x1="0" x2="957" y1="" y2="0" />
				</svg>
			</div>
			<div id="_358">
				<div class="radio" id="_359">
					<label id="_360"> <input type="radio"
						name=vehicleType value="cabriolet_roadster"/>Cabriolet / Roadster
					</label>
				</div>
				<div class="radio" id="_361">
					<label id="_362"> <input type="radio"
						name=vehicleType value="sportsCar_coupe"/>Sports Car / Coupe
					</label>
				</div>
				<div class="radio" id="_363">
					<label id="_364"> <input type="radio"
						name=vehicleType value="samllCar"/>Small Car
					</label>
				</div>
				<div class="radio" id="_365">
					<label id="_366"> <input type="radio" checked
						name=vehicleType value="saloon" />Saloon
					</label>
				</div>
				<div class="radio" id="_367">
					<label id="_368"> <input type="radio"
						name=vehicleType value="estate"/>Estate
					</label>
				</div>
			</div>

			<select id="_369" name="year">
				<option selected disabled>year</option>
				<option value="2016">2016</option>
				<option value="2015">2015</option>
				<option value="2014">2014</option>
				<option value="2013">2013</option>
				<option value="2012">2012</option>
				<option value="2011">2011</option>
				<option value="2010">2010</option>
				<option value="2009">2009</option>
				<option value="2008">2008</option>
				<option value="2007">2007</option>
				<option value="2006">2006</option>
				<option value="2005">2005</option>
				<option value="2004">2004</option>
				<option value="2003">2003</option>
				<option value="2002">2002</option>
				<option value="2001">2001</option>
				<option value="2000">2000</option>
				<option value="1999">1999</option>
				<option value="1998">1998</option>
				<option value="1997">1997</option>
				<option value="1996">1996</option>
				<option value="1995">1995</option>
				<option value="1994">1994</option>
				<option value="1993">1993</option>
				<option value="1992">1992</option>
				<option value="1991">1991</option>
				<option value="1990">1990</option>
				<option value="1989">1989</option>
				<option value="1988">1988</option>
				<option value="1987">1987</option>
			</select> 
			<select id="_380" name="location">
				<option value="Sofia">Sofia</option>
				<option value="Blagoevgrad">Blagoevgrad</option>
				<option value="Burgas">Burgas</option>
				<option value="Dobrich">Dobrich</option>
				<option value="Gabrovo">Gabrovo</option>
				<option value="Haskovo">Haskovo</option>
				<option value="Kurdzhali">Kurdzhali</option>
				<option value="Kyustendil">Kyustendil</option>
				<option value="Lovech">Lovech</option>
				<option value="Montana">Montana</option>
				<option value="Pazardzhik">Pazardzhik</option>
				<option value="Pernik">Pernik</option>
				<option value="Pleven">Pleven</option>
				<option value="Plovdiv">Plovdiv</option>
				<option value="Razgrad">Razgrad</option>
				<option value="Ruse">Ruse</option>
				<option value="Shumen">Shumen</option>
				<option value="Silistra">Silistra</option>
				<option value="Sliven">Sliven</option>
				<option value="Smolyan">Smolyan</option>
				<option value="Sofiya-Grad">Sofia-Grad</option>
				<option value="Stara Zagora">Stara Zagora</option>
				<option value="Turgovishte">Turgovishte</option>
				<option value="Varna">Varna</option>
				<option value="Veliko Turnovo">Veliko Turnovo</option>
				<option value="Vidin">Vidin</option>
				<option value="Vratsa">Vratsa</option>
				<option value="Yambol">Yambol</option>
			</select>

			<div id="_402">
				<div class="radio" id="_403">
					<label id="_404"> <input type="radio"
						name=fuelType value="Petrol"/>Petrol
					</label>
				</div>
				<div class="radio" id="_405">
					<label id="_406"> <input type="radio"
						name=fuelType value="Diesel"/>Diesel
					</label>
				</div>
				<div class="radio" id="_407">
					<label id="_408"> <input type="radio"
						name=fuelType value="Natural Gas"/>Natural Gas
					</label>
				</div>
				<div class="radio" id="_409">
					<label id="_410"> <input type="radio" checked
						name=fuelType value="Hybrid"/>Hybrid
					</label>
				</div>
				<div class="radio" id="_411">
					<label id="_412"> <input type="radio"
						name=fuelType value="Electric"/>Electric
					</label>
				</div>
			</div>
			<div id="_402_2">
				<div class="radio" id="_413">
					<label id="_414"> <input type="radio" checked
						name=transmision value="Manual gearbox"/>Manual gearbox
					</label>
				</div>
				<div class="radio" id="_415">
					<label id="_416"> <input type="radio"
						name=transmision value="Automatic"/>Automatic
						transmission
					</label>
				</div>
				<div class="radio" id="_417">
					<label id="_418"> <input type="radio"
						name=transmision value="Semi-automatic"/>Semi-automatic
					</label>
				</div>
			</div>
			<div class="checkbox" id="_419">
				<label id="_420"> <input type="checkbox" name="auxiliaryHeating"/>Auxiliary
					heating
				</label>
			</div>
			<div class="checkbox" id="_421">
				<label id="_422"> <input type="checkbox" name="metalic" />Metalic
				</label>
			</div>
			<div class="checkbox" id="_423">
				<label id="_424"> <input type="checkbox" name="cruise_control" />Cruise control
				</label>
			</div>
			<div class="checkbox" id="_425">
				<label id="_426"> <input type="checkbox" name="sunroof"/>Sunroof
				</label>
			</div>
			<div class="checkbox" id="_427">
				<label id="_428"> <input type="checkbox" name="powerAssistedSteering"/>Power Assisted
					Steering
				</label>
			</div>
			<div class="checkbox" id="_429">
				<label id="_430"> <input type="checkbox" name="mp3Interface"/>MP3 interface
				</label>
			</div>
			<div class="checkbox" id="_431">
				<label id="_432"> <input type="checkbox" name="electricWindows" />Electric windows
				</label>
			</div>
			<div class="checkbox" id="_433">
				<label id="_434"> <input type="checkbox" name="bluetooth"/>Bluetooth
				</label>
			</div>
			<div class="checkbox" id="_435">
				<label id="_436"> <input type="checkbox" name="electricHeatedSeats"/>Electric heated
					seats
				</label>
			</div>
			<div class="checkbox" id="_437">
				<label id="_438"> <input type="checkbox" name="tuner_radio"/>Tuner/radio
				</label>
			</div>
			<div class="checkbox" id="_439">
				<label id="_440"> <input type="checkbox" name="on_boardComputer" />On-board
					computer
				</label>
			</div>
			<div class="checkbox" id="_441">
				<label id="_442"> <input type="checkbox" name="rainSensor" />Rain sensor
				</label>
			</div>
			<div class="checkbox" id="_443">
				<label id="_444"> <input type="checkbox" name="multifunction_steering_wheel"/>Multifunction
					steering wheel
				</label>
			</div>
			<div class="checkbox" id="_445">
				<label id="_446"> <input type="checkbox" name="hands_free_kit"/>Hands-free kit
				</label>
			</div>
			<div class="checkbox" id="_447">
				<label id="_448"> <input type="checkbox" name="cd_player"/>CD player
				</label>
			</div>
			<div class="checkbox" id="_449">
				<label id="_450"> <input type="checkbox" name="electric_seat_adjustment" />Electric seat
					adjustment
				</label>
			</div>
			<div class="checkbox" id="_451">
				<label id="_452"> <input type="checkbox" name="central_locking"/>Central locking
				</label>
			</div>
			<div class="checkbox" id="_453">
				<label id="_454"> <input type="checkbox" name="start_stop_system"/>Start-stop
					system
				</label>
			</div>
			<div class="checkbox" id="_455">
				<label id="_456"> <input type="checkbox" name="electric_side_mirror"/>Electric side
					mirror
				</label>
			</div>
			<div class="checkbox" id="_457">
				<label id="_458"> <input type="checkbox" name="ventilated_seats" />Ventilated Seats
				</label>
			</div>
			<div class="checkbox" id="_459">
				<label id="_460"> <input type="checkbox" name="navigation_system"/>Navigation
					system
				</label>
			</div>
			<div class="checkbox" id="_461">
				<label id="_462"> <input type="checkbox" name="head_up_display" />Head-up display
				</label>
			</div>
			<div class="checkbox" id="_463">
				<label id="_464"> <input type="checkbox" name="lane_departure_warning_system"/>Lane Departure
					Warning System
				</label>
			</div>
			<div class="checkbox" id="_465">
				<label id="_466"> <input type="checkbox" name="abs" />ABS
				</label>
			</div>
			<div class="checkbox" id="_467">
				<label id="_468"> <input type="checkbox" name="fog_lamp" />Fog lamp
				</label>
			</div>
			<div class="checkbox" id="_469">
				<label id="_470"> <input type="checkbox" name="led_headlights" />LED Headlights
				</label>
			</div>
			<div class="checkbox" id="_471">
				<label id="_472"> <input type="checkbox" name="four_wheel_drive" />Four wheel drive
				</label>
			</div>
			<div class="checkbox" id="_473">
				<label id="_474"> <input type="checkbox" name="adaptive_cruise_control" />Adaptive Cruise
					Control
				</label>
			</div>
			<div class="checkbox" id="_475">
				<label id="_476"> <input type="checkbox" name="daytime_running_lights" />Daytime running
					lights
				</label>
			</div>
			<div class="checkbox" id="_477">
				<label id="_478"> <input type="checkbox" name="collision_avoidance_system" />Collision
					Avoidance System
				</label>
			</div>
			<div class="checkbox" id="_479">
				<label id="_480"> <input type="checkbox" name="light_sensor"/>Light sensor
				</label>
			</div>
			<div class="checkbox" id="_481">
				<label id="_482"> <input type="checkbox" name="immobilizer" />Immobilizer
				</label>
			</div>
			<div class="checkbox" id="_483">
				<label id="_484"> <input type="checkbox" name="adaptive_lighting" />Adaptive
					lighting
				</label>
			</div>
			<div class="checkbox" id="_485">
				<label id="_486"> <input type="checkbox" name="front_airbags" />Front Airbags
				</label>
			</div>
			<div class="checkbox" id="_487">
				<label id="_488"> <input type="checkbox" name="side_airbags"/>Side Airbags
				</label>
			</div>
			<div class="checkbox" id="_489">
				<label id="_490"> <input type="checkbox" name="more_airbags"/>More Airbags
				</label>
			</div>

			<div id="_491" class="nm-label">
				<h3 id="_492">
					Parking sensors <br />
				</h3>
			</div>

			<div class="checkbox" id="_495">
				<label id="_496"> <input type="checkbox" name="rear_sensors" />Rear
				</label>
			</div>
			<div class="checkbox" id="_497">
				<label id="_498"> <input type="checkbox" name="front_sensors" />Front
				</label>
			</div>
			<div class="checkbox" id="_499">
				<label id="_500"> <input type="checkbox" name="camera" />Camera
				</label>
			</div>
			<div class="checkbox" id="_501">
				<label id="_502"> <input type="checkbox" name="self_steering_systems" />Self-steering
					systems
				</label>
			</div>
			<div class="checkbox" id="_503">
				<label id="_504"> <input type="checkbox" name="esp"/>ESP
				</label>
			</div>
			<div class="checkbox" id="_505">
				<label id="_506"> <input type="checkbox" name="xenon_headlights" />Xenon headlights
				</label>
			</div>
			<div class="checkbox" id="_507">
				<label id="_508"> <input type="checkbox" name="traction_control"/>Traction control
				</label>
			</div>
			<div class="checkbox" id="_509">
				<label id="_510"> <input type="checkbox" name="keyless_entry" />Keyless Entry
				</label>
			</div>


			<div id="_523" class="nm-label">
				<h3 id="_524">
					Exterior Color<br />
				</h3>
			</div>
			<div class="radio" id="_525">
				<label id="_526"> <input type="radio" checked name="color" value="black" />Black
				</label>
			</div>
			<div class="radio" id="_527">
				<label id="_528"> <input type="radio" name="color" value="grey" />Grey
				</label>
			</div>
			<div class="radio" id="_529">
				<label id="_530"> <input type="radio" name="color" value="white" />White
				</label>
			</div>
			<div class="radio" id="_531">
				<label id="_532"> <input type="radio" name="color" value="beige"/>Beige
				</label>
			</div>
			<div class="radio" id="_533">
				<label id="_534"> <input type="radio" name="color" value="silver" />Silver
				</label>
			</div>
			<div class="radio" id="_535">
				<label id="_536"> <input type="radio" name="color" value="brown" />Brown
				</label>
			</div>
			<div class="radio" id="_537">
				<label id="_538"> <input type="radio" name="color" value="green" />Green
				</label>
			</div>
			<div class="radio" id="_539">
				<label id="_540"> <input type="radio" name="color" value="blue" />Blue
				</label>
			</div>
			<div class="radio" id="_541">
				<label id="_542"> <input type="radio" name="color" value="red"/>Red
				</label>
			</div>
			<div class="radio" id="_543">
				<label id="_544"> <input type="radio" name="color" value="orange"/>Orange
				</label>
			</div>
			<div class="radio" id="_545">
				<label id="_546"> <input type="radio" name="color" value="other" />Other
				</label>
			</div>
			<div class="radio" id="_547">
				<label id="_548"> <input type="radio" name="color" value="yellow"/>Yellow
				</label>
			</div>
			<textarea id="_549" placeholder=" more information"></textarea>

			<button id="_550" data-pagelink="ViewCar" class="btn btn-default">
				Register</button>
			
			

				 <input class="ddl2" type="file" class="picture" name="carPhoto" 	placeholder="Profile pic"/> 
				 
			
	
		<div id="_562">

			<div id="_563" data-pagelink="HomePageFindCar" class="nm-label">
				<span id="_564"> Home<br />
				</span>
			</div>

			<div id="_565" data-pagelink="0643bef3-8d19-a14a-5405-03ab8048f78e"
				class="nm-label">
				<span id="_566"> Add Car<br />
				</span>
			</div>

			<div id="_567" data-pagelink="53df4c96-963c-9ce0-edb9-83fdf279daf5"
				class="nm-label">
				<span id="_568"> Add Service<br />
				</span>
			</div>

			<div id="_569" data-pagelink="c9679362-2c21-98bd-2957-685f655fd083"
				class="nm-label">
				<span id="_570"> My Cars<br />
				</span>
			</div>

			<div id="_571" data-pagelink="399e5e5b-29f7-9aac-9852-3183820f47bf"
				class="nm-label">
				<a id="_572" href="#"> My Service<br />
				</a>
			</div>
		</div>
		<button id="_573" data-pagelink="HomePageFindCar" class="btn btn-default">Logout</button>
		<input type="text" id="_574" placeholder="" class="form-control" name="kilometer"/> 
		<input type="text" id="_576" placeholder="" class="form-control" name="price" /> 
		<input type="text" id="_577" placeholder="" class="form-control" name="power"/>
	</div>
	</form>
	<script type="text/javascript" src="../common-files/js/require.min.js"
		data-main="../scripts/startup"></script>
	<script type="text/javascript" src="../scripts/Cars.js"></script>

</body>
</html>