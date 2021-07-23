<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="aplTesteEffect" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
 <head>
	<regionBase>
		<region id="rgfullScreen" height="100%" width="100%" zIndex="0">
			<region id="rgfundoMenu" bottom="3%" height="45%" right="2%" width="36%" zIndex="1"/>
			<region id="rgbto1" bottom="5%" height="10%" right="5%" width="30%" zIndex="2"/>
			<region id="rgbto2" bottom="16%" height="10%" right="5%" width="30%" zIndex="2"/>
		</region>
		<region id="rgfullScreen2" height="100%" width="100%" zIndex="1"/>
   	</regionBase>

	<transitionBase>
		<transition id="fade" dur="1s" type="fade"/>
		<transition id="fadeFast" dur="0.5s" type="fade"/>
	</transitionBase>

	<descriptorBase>
		<descriptor id="fullScreen" region="rgfullScreen" />
		<descriptor id="fullScreen2" region="rgfullScreen2"/>
		<descriptor id="fundoMenu" region="rgfundoMenu" transIn="fade" transOut="fade">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
		<descriptor id="bto1" region="rgbto1" transIn="fadeFast" transOut="fadeFast" focusIndex="1">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
		<descriptor id="bto2" region="rgbto2" transIn="fadeFast" transOut="fadeFast" focusIndex="2">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
	</descriptorBase>
	
	<connectorBase>
		<causalConnector id="onBeginStart">
			<simpleCondition role="onBegin" max="unbounded"/>
			<simpleAction role="start" max="unbounded"/>
		</causalConnector>

		<causalConnector id="onBeginEyeGazeSet">
			<connectorParam name="user"/>
			<connectorParam name="val"/>
			<simpleCondition role="onBeginEyeGaze" user="$user"/>
			<simpleAction role="set" value="$val" max="unbounded"/>
		</causalConnector>
	
		<causalConnector id="onEndEyeGazeStartStop">
			<connectorParam name="user"/>
			<simpleCondition role="onEndEyeGaze" key="$user"/>
			<compoundAction>
				<simpleAction role="start" max="unbounded"/>
				<simpleAction role="stop" max="unbounded"/>
			</compoundAction>
		</causalConnector>
	</connectorBase>
  </head>

  <body id="context">
  	
		<port id="pVideo" component="videoB3" />

		<!--Video de apresentação-->
		<media id="videoB3" src="videos/B3.mp4" descriptor="fullScreen">
			<area id="a1" begin="10s"/>
		</media>

		<!--Componentes do menu-->
		<media id="fundoMenuB3" descriptor="fundoMenu" src="imagens/menufundo.png"/>
		<media id="botaoCopa" descriptor="bto1" src="imagens/copa.png"/>
		<media id="botaoCentral" descriptor="bto2" src="imagens/central.png"/>

		<!--Video Central-->
		<media id="C2" descriptor="fullScreen2" src="videos/Central.mp4"/>

		<!--Video Copacabana-->
		<media id="C3" descriptor="fullScreen2" src="videos/C3.mp4"/>
		

		<!--Menu com as primeiras opções-->
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="videoB3" interface="a1" />
			<bind role="start" component="fundoMenuB3" />
			<bind role="start" component="botaoCentral" />
			<bind role="start" component="botaoCopa" />
		</link>

		<!--Se o usuário escolhe a opção Central-->
		<link xconnector="onEndEyeGazeStartStop">
			<bind role="onEndEyeGaze" component="botaoCentral">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="start" component="C2"/>
			<bind role="stop" component="videoB3"/>
			<bind role="stop" component="botaoCentral"/>
			<bind role="stop" component="botaoCopa"/>
			<bind role="stop" component="fundoMenuB3"/>
		</link>

		<!--Se o usuário escolhe a opção Copacabana-->
		<link xconnector="onEndEyeGazeStartStop">
			<bind role="onEndEyeGaze" component="botaoCopa">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="start" component="C3"/>
			<bind role="stop" component="videoB3"/>
			<bind role="stop" component="botaoCentral"/>
			<bind role="stop" component="botaoCopa"/>
			<bind role="stop" component="fundoMenuB3"/>
		</link>


		<!--link para dar foco ao objeto fixado com o olhar -->
		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="botaoCopa">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="1"/>
			</bind>	
		</link>

		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="botaoCentral">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="2"/>
			</bind>	
		</link>

</body>
</ncl>

