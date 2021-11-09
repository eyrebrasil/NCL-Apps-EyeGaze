<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated by NCL Eclipse -->
<ncl id="appNclTcc" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>

		<regionBase>
			<region id="rgMain" left="0%" top="0%" width="30%" height="70%" />
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

		<media id="video" descriptor="dsMain" src="video/cat_cruise.mp4"/>

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
		
	</body>
</ncl>