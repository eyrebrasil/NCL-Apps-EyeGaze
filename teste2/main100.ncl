<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated by NCL Eclipse -->
<ncl id="appNclTcc" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>

		<regionBase>
			<region id="rgMain" left="0%" top="0%" width="30%" height="30%" />
			<region id="rgHid" left="90%" top="90%" width="10%" height="10%" />
		</regionBase>

		<descriptorBase>
			<descriptor id="dsMain" region="rgMain" explicitDur="10s">
				<descriptorParam name="soundLevel" value="25%" />
			</descriptor>
			<descriptor id="dsHid" region="rgHid" />
		</descriptorBase>

		<connectorBase>
			<causalConnector id="onEndEyeGaze_Stop">
				<connectorParam name="user"/>
				<simpleCondition role="onEndEyeGaze" user="$user"/>
				<simpleAction role="stop"/>
			</causalConnector>
		</connectorBase>

	</head>
	<body>

		<port id="pMain" component="video"/>

		<media id="video" descriptor="dsMain" src="video/pesadelo.mp4"/>

		<media id="img1" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img2" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img3" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img4" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img5" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img6" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img7" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img8" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img9" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img10" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img11" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img12" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img13" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img14" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img15" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img16" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img17" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img18" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img19" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img20" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img21" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img22" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img23" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img24" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img25" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img26" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img27" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img28" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img29" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img30" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img31" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img32" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img33" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img34" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img35" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img36" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img37" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img38" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img39" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img40" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img41" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img42" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img43" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img44" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img45" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img46" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img47" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img48" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img49" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img50" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img51" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img52" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img53" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img54" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img55" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img56" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img57" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img58" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img59" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img60" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img61" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img62" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img63" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img64" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img65" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img66" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img67" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img68" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img69" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img70" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img71" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img72" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img73" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img74" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img75" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img76" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img77" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img78" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img79" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img80" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img81" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img82" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img83" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img84" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img85" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img86" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img87" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img88" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img89" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img90" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img91" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img92" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img93" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img94" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img95" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img96" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img97" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img98" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img99" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img100" descriptor="dsHid" src="image/praia.jpg"/>

		

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img1">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img1"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img2">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img2"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img3">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img3"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img4">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img4"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img5">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img5"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img6">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img6"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img7">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img7"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img8">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img8"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img9">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img9"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img10">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img10"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img11">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img11"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img12">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img12"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img13">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img13"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img14">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img14"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img15">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img15"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img16">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img16"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img17">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img17"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img18">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img18"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img19">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img19"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img20">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img20"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img21">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img21"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img22">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img22"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img23">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img23"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img24">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img24"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img25">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img25"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img26">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img26"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img27">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img27"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img28">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img28"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img29">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img29"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img30">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img30"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img31">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img31"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img32">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img32"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img33">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img33"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img34">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img34"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img35">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img35"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img36">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img36"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img37">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img37"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img38">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img38"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img39">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img39"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img40">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img40"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img41">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img41"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img42">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img42"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img43">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img43"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img44">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img44"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img45">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img45"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img46">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img46"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img47">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img47"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img48">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img48"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img49">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img49"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img50">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img50"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img51">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img51"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img52">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img52"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img53">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img53"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img54">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img54"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img55">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img55"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img56">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img56"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img57">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img57"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img58">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img58"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img59">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img59"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img60">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img60"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img61">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img61"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img62">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img62"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img63">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img63"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img64">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img64"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img65">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img65"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img66">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img66"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img67">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img67"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img68">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img68"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img69">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img69"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img70">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img70"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img71">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img71"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img72">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img72"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img73">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img73"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img74">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img74"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img75">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img75"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img76">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img76"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img77">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img77"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img78">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img78"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img79">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img79"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img80">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img80"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img81">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img81"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img82">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img82"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img83">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img83"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img84">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img84"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img85">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img85"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img86">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img86"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img87">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img87"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img88">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img88"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img89">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img89"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img90">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img90"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img91">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img91"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img92">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img92"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img93">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img93"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img94">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img94"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img95">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img95"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img96">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img96"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img97">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img97"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img98">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img98"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img99">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img99"/>
		</link>

		<link xconnector="onEndEyeGaze_Stop">
			<bind role="onEndEyeGaze" component="img100">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="stop" component="img100"/>
		</link>
		
	</body>
</ncl>