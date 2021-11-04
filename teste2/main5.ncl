<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="appNclTcc" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>

		<regionBase>
			<region id="rgMain" left="0%" top="0%" width="27%" height="70%" />
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

		<media id="video" descriptor="dsMain" src="video/flamingo_jackson.mp4"/>

		<media id="img1" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img2" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img3" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img4" descriptor="dsHid" src="image/praia.jpg"/>
		<media id="img5" descriptor="dsHid" src="image/praia.jpg"/>


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
		
	</body>
</ncl>