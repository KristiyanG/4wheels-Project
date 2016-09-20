<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
<link rel="stylesheet" href="../common-files/css/fonts-v3.css">
<link rel="stylesheet" href="../common-files/css/base-v4.css">
<link rel="stylesheet"
	href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
</head>

<body>

<form name="carSearchForm" action="../CarSearchServlet" method="POST">

	<div id="_682">
	<i id="_685"></i>
		<div id="_698" class="nm-label">
					<h3 id="_699">
						Exterior Color<br />
					</h3>
		</div>
	
		<div id="car_color_detailed_search">
				<div class="radio" id="_683">
					<label id="_684"> <input type="radio" name="car_color"
					value="yellow" />Yellow
					</label>
				</div>
				
				<div class="radio" id="_686">
					<label id="_687"> <input type="radio" name="car_color"
					value="brown" />Brown
					</label>
				</div>
				<div class="radio" id="_688">
					<label id="_689"> <input type="radio" name="car_color"
					value="other" />Other
					</label>
				</div>
				<div class="radio" id="_690">
					<label id="_691"> <input type="radio" name="car_color"
					value="silver" />Silver
					</label>
				</div>
				<div class="radio" id="_692">
					<label id="_693"> <input type="radio" name="car_color"
					value="orange" />Orange
					</label>
				</div>
				<div class="radio" id="_694">
					<label id="_695"> <input type="radio" name="car_color"
					value="beige" />Beige
					</label>
				</div>
				<div class="radio" id="_696">
					<label id="_697"> <input type="radio" name="car_color"
					value="red" />Red
					</label>
				</div>				
				<div class="radio" id="_700">
					<label id="_701"> <input type="radio" name="car_color"
					value="white" />White
					</label>
				</div>
				<div class="radio" id="_702">
					<label id="_703"> <input type="radio" name="car_color"
					value="grey" />Grey
					</label>
				</div>
				<div class="radio" id="_704">
					<label id="_705"> <input type="radio" name="car_color"
					value="green" />Green
					</label>
				</div>
				<div class="radio" id="_706">
					<label id="_707"> <input type="radio" name="car_color"
					value="blue" />Blue
					</label>
				</div>
				<div class="radio" id="_708">
					<label id="_709"> <input type="radio" name="car_color"
					value="black" />Black
					</label>
			</div>
		</div>
		<div id="_710">
			<svg id="_711"> <line id="_712" x1="0" x2="957" y1="" y2="0" />
			</svg>
		</div>

		<div id="_713" class="nm-label">
			<h3 id="_714">
				Make, Model, Version<br />
			</h3>
		</div>

		<div id="_717" class="nm-label">
			<h3 id="_718">
				Model<br />
			</h3>
		</div>

		<select id="_719" name="to_km" class="btn-group">
			<option disabled="disabled" selected value="200000">to</option>
			<option value = "10000">10 000km</option>
			<option value = "20000">20 000km</option>
			<option value = "30000">30 000km</option>
			<option value = "40000">40 000km</option>
			<option value = "50000">50 000km</option>
			<option value = "60000">60 000km</option>
			<option value = "70000">70 000km</option>
			<option value = "80000">80 000km</option>
			<option value = "90000">90 000km</option>
			<option value = "100000">100 000km</option>
			<option value = "110000">110 000km</option>
			<option value = "120000">120 000km</option>
			<option value = "130000">130 000km</option>
			<option value = "140000">140 000km</option>
			<option value = "150000">150 000km</option>
			<option value = "160000">160 000km</option>
			<option value = "170000">170 000km</option>
			<option value = "180000">180 000km</option>
			<option value = "190000">190 000km</option>
			<option value = "200000">200 000km</option>
		</select>


		<select id="_730" name="to_power">
			<option disabled="disabled" value="454" selected>to</option>
			<option value="34">34 PS</option>
			<option value="50">50 PS</option>
			<option value="60">60 PS</option>
			<option value="75">75 PS</option>
			<option value="90">90 PS</option>
			<option value="101">101 PS</option>
			<option value="118">118 PS</option>
			<option value="131">131 PS</option>
			<option value="150">150 PS</option>
			<option value="200">200 PS</option>
			<option value="252">252 PS</option>
			<option value="303">303 PS</option>
			<option value="358">358 PS</option>
			<option value="402">402 PS</option>
			<option value="454">454 PS</option>
		</select>

		<div id="_741" class="nm-label">
			<h3 id="_742">
				Make<br />
			</h3>
		</div>

		<div id="_743" class="nm-label">
			<a id="_744" href="#"> User Name<br />
			</a>
		</div>

		<select id="_745" name="from_power">
			<option value="0">from</option>
			<option value="34">34 PS</option>
			<option value="50">50 PS</option>
			<option value="60">60 PS</option>
			<option value="75">75 PS</option>
			<option value="90">90 PS</option>
			<option value="101">101 PS</option>
			<option value="118">118 PS</option>
			<option value="131">131 PS</option>
			<option value="150">150 PS</option>
			<option value="200">200 PS</option>
			<option value="252">252 PS</option>
			<option value="303">303 PS</option>
			<option value="358">358 PS</option>
			<option value="402">402 PS</option>
			<option value="454">454 PS</option>
		</select>

		<select id="_756" name="from_km"class="btn-group">
			<option selected value = "0">from</option>
			<option value = "10000">10 000km</option>
			<option value = "20000">20 000km</option>
			<option value = "30000">30 000km</option>
			<option value = "40000">40 000km</option>
			<option value = "50000">50 000km</option>
			<option value = "60000">60 000km</option>
			<option value = "70000">70 000km</option>
			<option value = "80000">80 000km</option>
			<option value = "90000">90 000km</option>
			<option value = "100000">100 000km</option>
			<option value = "110000">110 000km</option>
			<option value = "120000">120 000km</option>
			<option value = "130000">130 000km</option>
			<option value = "140000">140 000km</option>
			<option value = "150000">150 000km</option>
			<option value = "160000">160 000km</option>
			<option value = "170000">170 000km</option>
			<option value = "180000">180 000km</option>
			<option value = "190000">190 000km</option>
			<option value = "200000">200 000km</option>
		</select>

		<select id="_767" name="to_price" >
			<option disabled="disabled" value="90000" selected >to</option>
			<option value="500">500</option>
			<option value="1000">1000</option>
			<option value="1500">1500</option>
			<option value="2000">2000</option>
			<option value="2500">2500</option>
			<option value="3000">3000</option>
			<option value="3500">3500</option>
			<option value="4000">4000</option>
			<option value="4500">4500</option>
			<option value="5000">5000</option>
			<option value="6000">6000</option>
			<option value="7000">7000</option>
			<option value="8000">8000</option>
			<option value="9000">9000</option>
			<option value="10000">10000</option>
			<option value="11000">11000</option>
			<option value="12000">12000</option>
			<option value="13000">13000</option>
			<option value="14000">14000</option>
			<option value="15000">15000</option>
			<option value="17500">17500</option>
			<option value="20000">20000</option>
			<option value="22500">22500</option>
			<option value="25000">25000</option>
			<option value="27500">27500</option>
			<option value="30000">30000</option>
			<option value="35000">35000</option>
			<option value="40000">40000</option>
			<option value="45000">45000</option>
			<option value="50000">50000</option>
			<option value="55000">55000</option>
			<option value="60000">60000</option>
			<option value="70000">70000</option>
			<option value="80000">80000</option>
			<option value="90000">90000</option>
		</select>

		<select id="_778" name="to_year" class="btn-group">
			<option disabled="disabled" value="2000" selected>to</option>
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
		</select> 
		
		<select id="_792" name="Make" onchange="findModel(value)"
			data-param-rfpf="mke">
			<option>Any</option>
			<option value="Abarth">Abarth</option>
			<option value="AC">AC</option>
			<option value="Acura">Acura</option>
			<option value="AlfaRomeo">Alfa Romeo</option>
			<option value="AstonMartin">Aston Martin</option>
			<option value="Audi">Audi</option>
			<option value="3100">Bentley</option>
			<option value="BMW">BMW</option>
			<option value="4350">Bugatti</option>
			<option value="4400">Buick</option>
			<option value="4700">Cadillac</option>
			<option value="5600">Chevrolet</option>
			<option value="5700">Chrysler</option>
			<option value="5900">Citroën</option>
			<option value="6325">Corvette</option>
			<option value="6600">Dacia</option>
			<option value="6800">Daewoo</option>
			<option value="7000">Daihatsu</option>
			<option value="7700">Dodge</option>
			<option value="8600">Ferrari</option>
			<option value="8800">Fiat</option>
			<option value="9000">Ford</option>
			<option value="9900">GMC</option>
			<option value="11000">Honda</option>
			<option value="11050">Hummer</option>
			<option value="11600">Hyundai</option>
			<option value="11650">Infiniti</option>
			<option value="11900">Isuzu</option>
			<option value="12100">Iveco</option>
			<option value="12400">Jaguar</option>
			<option value="12600">Jeep</option>
			<option value="13200">Kia</option>
			<option value="14600">Lamborghini</option>
			<option value="14700">Lancia</option>
			<option value="14800">Land Rover</option>
			<option value="15200">Lexus</option>
			<option value="15900">Lotus</option>
			<option value="16600">Maserati</option>
			<option value="16700">Maybach</option>
			<option value="16800">Mazda</option>
			<option value="137">McLaren</option>
			<option value="17200">Mercedes-Benz</option>
			<option value="17300">MG</option>
			<option value="17500">MINI</option>
			<option value="17700">Mitsubishi</option>
			<option value="17900">Morgan</option>
			<option value="18700">Nissan</option>
			<option value="19000">Opel</option>
			<option value="149">Pagani</option>
			<option value="19300">Peugeot</option>
			<option value="20000">Pontiac</option>
			<option value="20100">Porsche</option>
			<option value="20700">Renault</option>
			<option value="21600">Rolls-Royce</option>
			<option value="21700">Rover</option>
			<option value="21800">Saab</option>
			<option value="22500">Seat</option>
			<option value="22900">Skoda</option>
			<option value="23500">Subaru</option>
			<option value="23600">Suzuki</option>
			<option value="135">Tesla</option>
			<option value="24100">Toyota</option>
			<option value="24500">TVR</option>
			<option value="25200">Volkswagen</option>
			<option value="25100">Volvo</option>
			<option value="1400">Other</option>
		</select>

		<div class="checkbox" id="_800">
			<label id="_801"> <input type="checkbox" name="esp" />ESP
			</label>
		</div>
		<div class="checkbox" id="_802">
			<label id="_803"> <input type="checkbox" name="keyless_entry"/>Keyless
				Entry
			</label>
		</div>

		<select id="_312" name="Model"
			class="form-control form-control--dropdown mmh-model-incl"
			data-param-rfpf="mde" disabled>
		</select>

		<select id="_815" name="from_price" >
			<option value="0" selected>from</option>
			<option value="500">500</option>
			<option value="1000">1000</option>
			<option value="1500">1500</option>
			<option value="2000">2000</option>
			<option value="2500">2500</option>
			<option value="3000">3000</option>
			<option value="3500">3500</option>
			<option value="4000">4000</option>
			<option value="4500">4500</option>
			<option value="5000">5000</option>
			<option value="6000">6000</option>
			<option value="7000">7000</option>
			<option value="8000">8000</option>
			<option value="9000">9000</option>
			<option value="10000">10000</option>
			<option value="11000">11000</option>
			<option value="12000">12000</option>
			<option value="13000">13000</option>
			<option value="14000">14000</option>
			<option value="15000">15000</option>
			<option value="17500">17500</option>
			<option value="20000">20000</option>
			<option value="22500">22500</option>
			<option value="25000">25000</option>
			<option value="27500">27500</option>
			<option value="30000">30000</option>
			<option value="35000">35000</option>
			<option value="40000">40000</option>
			<option value="45000">45000</option>
			<option value="50000">50000</option>
			<option value="55000">55000</option>
			<option value="60000">60000</option>
			<option value="70000">70000</option>
			<option value="80000">80000</option>
			<option value="90000">90000</option>
		</select>

		<div id="_827"></div>
		<div class="checkbox" id="_830">
			<label id="_831"> <input type="checkbox" name="head_up_display"/>Head-up
				display
			</label>
		</div>

		<select id="_834" name="from_year"class="btn-group">
			<option disabled="disabled" value ="0" selected>from</option>
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
		</select>

		<div class="checkbox" id="_845">
			<label id="_846"> <input type="checkbox" name="traction_control" />Traction
				control
			</label>
		</div>

		<div id="_849" class="nm-label">
			<h3 id="_850">
				Vehicle type <br />
			</h3>
		</div>
		<div id="transmision_detailed_search">
			<div class="radio" id="_851">
				<label id="_852"> <input type="radio" name="transmision"
				value="manual" checked />Manual
					gearbox
				</label>
			</div>
			<div class="radio" id="_832">
				<label id="_833"> <input type="radio"  name="transmision"
				value="SemiAutomatic" />Semi-automatic
				</label>
			</div>
			<div class="radio" id="_847">
				<label id="_848"> <input type="radio"  name="transmision"
				value="Automatic" />Automatic
					transmission
				</label>
			</div>
		</div>
		<div class="checkbox" id="_853">
			<label id="_854"> <input type="checkbox" name="electric_seat_adjustment"/>Electric
				seat adjustment
			</label>
		</div>

		<select id="_855" name="to_capacity">
			<option disabled="disabled" selected value="9000">to</option>
			<option value="1000">1,000 cm³</option>
			<option value="1200">1,200 cm³</option>
			<option value="1400">1,400 cm³</option>
			<option value="1600">1,600 cm³</option>
			<option value="1800">1,800 cm³</option>
			<option value="2000">2,000 cm³</option>
			<option value="2600">2,600 cm³</option>
			<option value="3000">3,000 cm³</option>
			<option value="5000">5,000 cm³</option>
			<option value="7500">7,500 cm³</option>
			<option value="8000">8,000 cm³</option>
			<option value="9000">9,000 cm³</option>
		</select>

		<select id="_869" name="from_capacity">
			<option value="0">from</option>
			<option value="1000">1,000 cm³</option>
			<option value="1200">1,200 cm³</option>
			<option value="1400">1,400 cm³</option>
			<option value="1600">1,600 cm³</option>
			<option value="1800">1,800 cm³</option>
			<option value="2000">2,000 cm³</option>
			<option value="2600">2,600 cm³</option>
			<option value="3000">3,000 cm³</option>
			<option value="5000">5,000 cm³</option>
			<option value="7500">7,500 cm³</option>
			<option value="8000">8,000 cm³</option>
			<option value="9000">9,000 cm³</option>
		</select>
		<div class="checkbox" id="_880">
			<label id="_881"> <input type="checkbox" name="navigation_system"/>Navigation
				system
			</label>
		</div>

		<div id="_882" class="nm-label">
			<h3 id="_883">
				Vehicle search <br />
			</h3>
		</div>
		<div class="checkbox" id="_884">
			<label id="_885"> <input type="checkbox" name="xenon" />Xenon
				headlights
			</label>
		</div>
		<div class="checkbox" id="_886">
			<label id="_887"> <input type="checkbox" name="adaptive_lighting" />Adaptive
				lighting
			</label>
		</div>

		<div id="_888" class="nm-label">
			<h3 id="_889">
				Kilometer<br />
			</h3>
		</div>

		<div class="checkbox" id="_893">
			<label id="_894"> <input type="checkbox" name="hands_free"/>Hands-free
				kit
			</label>
		</div>
		<div class="checkbox" id="_895">
			<label id="_896"> <input type="checkbox" name="ventilated_seats"/>Ventilated
				Seats
			</label>
		</div>

		<div id="_897" class="nm-label">
			<h3 id="_898">
				Price<br />
			</h3>
		</div>

		<div id="_899" class="nm-label">
			<h3 id="_900">
				Engine<br />
			</h3>
		</div>

		<div id="_901" class="nm-label">
			<h3 id="_902">
				Power (ps)<br />
			</h3>
		</div>
		<div class="checkbox" id="_903">
			<label id="_904"> <input type="checkbox" name="multifunction_steering_wheel"/>Multifunction
				steering wheel
			</label>
		</div>
		<div class="checkbox" id="_905" name="bluetooth">
			<label id="_906"> <input type="checkbox" />Bluetooth
			</label>
		</div>

		<div class="checkbox" id="_918" name="electronic_heated_seats">
			<label id="_919"> <input type="checkbox" />Electric
				heated seats
			</label>
		</div>


		<select id="_923" name="location">
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
			
		<div class="checkbox" id="_934">
			<label id="_935"> <input type="checkbox" name="adaptive_cruise_control"/>Adaptive
				Cruise Control
			</label>
		</div>
		<div class="checkbox" id="_936" >
			<label id="_937"> <input type="checkbox" name="metalic"/>Metalic
			</label>
		</div>

		<div id="_938" class="nm-label">
			<h3 id="_939">
				Location<br />
			</h3>
		</div>
		<div class="checkbox" id="_940">
			<label id="_941"> <input type="checkbox" name="rain_sensor" />Rain
				sensor
			</label>
		</div>
		<div class="checkbox" id="_942">
			<label id="_943"> <input type="checkbox" name="imobilizer" />Immobilizer
			</label>
		</div>

		<div id="_944" class="nm-label">
			<h3 id="_945">
				Cubic Capacity (in ccm) <br />
			</h3>
		</div>
		<div class="checkbox" id="_946">
			<label id="_947"> <input type="checkbox" name="electric_windows" />Electric
				windows
			</label>
		</div>
		<div class="checkbox" id="_948">
			<label id="_949"> <input type="checkbox" name="daytime_running_lights"/>Daytime
				running lights
			</label>
		</div>
		<div class="checkbox" id="_950">
			<label id="_951"> <input type="checkbox" name="collision_avoidance_system"/>Collision
				Avoidance System
			</label>
		</div>
		<div class="checkbox" id="_952">
			<label id="_953"> <input type="checkbox" name="self_steering_systems" />Self-steering
				systems
			</label>
		</div>


		<div class="checkbox" id="_957">
			<label id="_958"> <input type="checkbox" name="central_locking" />Central
				locking
			</label>
		</div>

		<div class="checkbox" id="_961">
			<label id="_962"> <input type="checkbox" name="mp3_interface" />MP3
				interface
			</label>
		</div>
		<div class="checkbox" id="_963">
			<label id="_964"> <input type="checkbox" name="four_wheel_drive" />Four
				wheel drive
			</label>
		</div>

		<div id="_965">
			<svg id="_966"> <line id="_967" x1="0" x2="957" y1="" y2="0" />
			</svg>
		</div>
		<div class="checkbox" id="_968">
			<label id="_969"> <input type="checkbox" name="light_sensor"/>Light
				sensor
			</label>
		</div>

		<div class="checkbox" id="_974">
			<label id="_975"> <input type="checkbox" name="led_headlights" />LED
				Headlights
			</label>
		</div>

		<div id="_976" class="nm-label">
			<h3 id="_977">
				Features<br />
			</h3>
		</div>
		<div class="checkbox" id="_978">
			<label id="_979"> <input type="checkbox" name="tuner_radio"/>Tuner/radio
			</label>
		</div>
		<div class="checkbox" id="_980">
			<label id="_981"> <input type="checkbox" name="camera"/>Camera
			</label>
		</div>
		<div class="checkbox" id="_982">
			<label id="_983"> <input type="checkbox" name="power_assisted_steering" />Power
				Assisted Steering
			</label>
		</div>
		<div class="checkbox" id="_984" >
			<label id="_985"> <input type="checkbox" name="auxiliary"/>Auxiliary
				heating
			</label>
		</div>
		<div class="checkbox" id="_986" >
			<label id="_987"> <input type="checkbox" name="sunroof" />Sunroof
			</label>
		</div>
		<div class="checkbox" id="_988">
			<label id="_989"> <input type="checkbox" name="on_board_computer" />On-board
				computer
			</label>
		</div>
		<div class="checkbox" id="_990" >
			<label id="_991"> <input type="checkbox" name="start_stop_system" />Start-stop
				system
			</label>
		</div>
		<div class="checkbox" id="_992">
			<label id="_993"> <input type="checkbox" name="electric_side_mirror"/>Electric
				side mirror
			</label>
		</div>
		<div class="checkbox" id="_994">
			<label id="_995"> <input type="checkbox" name="front_sensor"/>Front
			</label>
		</div>

		<div class="checkbox" id="_998">
			<label id="_999"> <input type="checkbox" name="abs" />ABS
			</label>
		</div>

		<div class="checkbox" id="_1002" >
			<label id="_1003"> <input type="checkbox" name="cruise_control"/>Cruise
				control
			</label>
		</div>

		<div id="_1004" class="nm-label">
			<h3 id="_1005">
				First registration (year)<br />
			</h3>
		</div>
		<div class="checkbox" id="_1006">
			<label id="_1007"> <input type="checkbox" name="rear_sensor" />Rear
			</label>
		</div>
		<div class="checkbox" id="_1008">
			<label id="_1009"> <input type="checkbox" name="lane_departure_warning_system"/>Lane
				Departure Warning System
			</label>
		</div>
		<div class="checkbox" id="_1010">
			<label id="_1011"> <input type="checkbox" name="more_airbags" />More
				Airbags
			</label>
		</div>
		<div class="checkbox" id="_1012">
			<label id="_1013"> <input type="checkbox" name="side_airbags"/>Side
				Airbags
			</label>
		</div>

		<div id="_1016" class="nm-label">
			<h3 id="_1017">
				Fuel Type <br />
			</h3>
		</div>
		<div class="checkbox" id="_1018">
			<label id="_1019"> <input type="checkbox" name="fog_lamp"/>Fog lamp
			</label>
		</div>

		<div id="_1020" class="nm-label">
			<h3 id="_1021">
				Transmision<br />
			</h3>
		</div>

		<div id="_1022" class="nm-label">
			<h3 id="_1023">
				Location<br />
			</h3>
		</div>

		<div id="_1024" class="nm-label">
			<h3 id="_1025">
				Interior features <br />
			</h3>
		</div>

		<div id="_1026" class="nm-label">
			<h1 id="_1027">
				Detailed Search<br />
			</h1>
		</div>

		<div id="_1028" class="nm-label">
			<h3 id="_1029">
				Airbags<br />
			</h3>
		</div>

		<div id="_1030" class="nm-label">
			<h3 id="_1031">
				Security<br />
			</h3>
		</div>
		<button id="_1032"
			data-pagelink="7e02f4d4-d097-de21-ed26-02790f32f2c3"
			class="btn btn-default">Find</button>

		<div class="checkbox" id="_1037">
			<label id="_1038"> <input type="checkbox" name="front_airbags" />Front
				Airbags
			</label>
		</div>

		<div id="_1041" class="nm-label">
			<h3 id="_1042">
				Parking sensors <br />
			</h3>
		</div>
		<div class="checkbox" id="_1043" >
			<label id="_1044"> <input type="checkbox" name="cd_player"/>CD
				player
			</label>
		</div>
		<div id="vehicle_type_detailed_search">
			<div class="radio" id="_1045">
				<label id="_1046"> <input type="radio" name="vehicle_type"
					value="cabriolet_roadster" />Cabriolet / Roadster
				</label>
			</div>
			<div class="radio" id="_1047">
				<label id="_1048"> <input type="radio" name="vehicle_type"
					value="sportsCar_coupe" />Sports Car / Coupe
				</label>
			</div>
			<div class="radio" id="_1049">
				<label id="_1050"> <input type="radio" name="vehicle_type"
					value="samllCar" />Small Car
				</label>
			</div>
			<div class="radio" id="_1051">
				<label id="_1052"> <input type="radio" checked name="vehicle_type" 
				value="saloon" />Saloon
				</label>
			</div>
			<div class="radio" id="_1053">
				<label id="_1054"> <input type="radio" name="vehicle_type"
					value="estate" />Estate
				</label>
			</div>
		</div>
		
		<div id="fuel_type_detailed_search">
			<div class="radio" id="_1055">
				<label id="_1056"> <input type="radio" name=fuel_type
				value="Petrol" checked/>Petrol
				</label>
			</div>
			<div class="radio" id="_1057">
				<label id="_1058"> <input type="radio" name=fuel_type
				value="Diesel"/>Diesel
				</label>
			</div>
			<div class="radio" id="_1059">
				<label id="_1060"> <input type="radio" name=fuel_type
				value="Natural Gas"/>Natural Gas
				</label>
			</div>
			<div class="radio" id="_1061">
				<label id="_1062"> <input type="radio" name=fuel_type
				value="Hybrid"/>Hybrid
				</label>
			</div>
			<div class="radio" id="_1063">
				<label id="_1064"> <input type="radio" name=fuel_type
				value="Electric"/>Electric
				</label>
			</div>
		</div>
		</form>
		<div id="_1065">
			<div id="_1066" data-pagelink="../pages/HomePageFindCar" class="nm-label">
				<span id="_1067"> Home<br />
				</span>
			</div>

			<div id="_1068" data-pagelink="0643bef3-8d19-a14a-5405-03ab8048f78e"
				class="nm-label">
				<span id="_1069"> Add Car<br />
				</span>
			</div>

			<div id="_1070" data-pagelink="53df4c96-963c-9ce0-edb9-83fdf279daf5"
				class="nm-label">
				<span id="_1071"> Add Service<br />
				</span>
			</div>

			<div id="_1072" data-pagelink="c9679362-2c21-98bd-2957-685f655fd083"
				class="nm-label">
				<span id="_1073"> My Cars<br />
				</span>
			</div>

			<div id="_1074" data-pagelink="399e5e5b-29f7-9aac-9852-3183820f47bf"
				class="nm-label">
				<a id="_1075" href="#"> My Services<br />
				</a>
			</div>

			<a id="_1076" data-pagelink="HomePageFindCar" class="navbar-brand"
				href="#">Log out</a>

		</div>
	</div>
	<script type="text/javascript" src="../common-files/js/require.min.js"
		data-main="../scripts/startup"></script>
	<script type="text/javascript" src="../scripts/Cars.js"></script>

</body>

</html>