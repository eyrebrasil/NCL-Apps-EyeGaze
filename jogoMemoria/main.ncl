<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="aplTesteEffect" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<region id="rgVideo" top="15%" left="5%" width="90%" height="85%" zIndex = "0" />
			<region id="rgItem1" top="15%" left="7.5%" width="25%" height="25%"/>
			<region id="rgItem2" top="15%" left="37.5%" width="25%" height="25%"/>
			<region id="rgItem3" top="15%" left="67.5%" width="25%" height="25%"/>
			<region id="rgPergunta" top="2%" width="100%" height="10%"/>
			<region id="rgResultado" top="0%" left="0%"/>
		</regionBase>

		<descriptorBase>
			<descriptor id="dsVideo"  region="rgVideo" explicitDur="10s"/> 
			<descriptor id="dsItem1"  region="rgItem1" focusIndex="1"/>
			<descriptor id="dsItem2"  region="rgItem2" focusIndex="2"/>
			<descriptor id="dsItem3"  region="rgItem3" focusIndex="3"/>		
			<descriptor id="dsPergunta" region="rgPergunta"/>
			<descriptor id="dsResultado"  region="rgResultado" explicitDur="5s"/>	
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onEndStopStart">
				<simpleCondition role="onEnd" />
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded"/>
					<simpleAction role="start" max="unbounded"/>
				</compoundAction>
			</causalConnector>
			
			<causalConnector id="onBeginStop">
				<simpleCondition role="onBegin" />
				<simpleAction role="stop" max="unbounded"/>
			</causalConnector>

			<causalConnector id="onEndEyeGazeStart">
				<connectorParam name="user"/>
				<simpleCondition role="onEndEyeGaze" key="$user"/>
				<simpleAction role="start" max="unbounded"/>
			</causalConnector>
		
			<causalConnector id="onBeginEyeGazeSet">
					<connectorParam name="user"/>
					<connectorParam name="val"/>
					<simpleCondition role="onBeginEyeGaze" user="$user"/>
					<simpleAction role="set" value="$val" max="unbounded"/>
				</causalConnector>
		</connectorBase>
	</head>

	<body id="context">
  	
		<port id="pVideo" component="mainVideo" />
		<port id="pPergunta" component="pergunta1" />

		<media id="mainVideo" src="media/selva.png" descriptor="dsVideo"/>
		<media id="acertouVideo" src="media/acertou.png" descriptor="dsResultado"/>
		<media id="errouVideo" src="media/errou.png" descriptor="dsResultado"/>

		<media id="item1" src="media/elefante.png" descriptor="dsItem1"/>
		<media id="item2" src="media/onca.png" descriptor="dsItem2"/>
		<media id="item3" src="media/jacare.png" descriptor="dsItem3"/>

		<media id="pergunta1" src="pergunta1.lua" descriptor="dsPergunta" type="application/x-ginga-NCLua"/>
		<media id="pergunta2" src="pergunta2.lua" descriptor="dsPergunta" type="application/x-ginga-NCLua"/>

		<media id="settings" type="application/x-ginga-settings">
			<property name="service.currentFocus" value="1" />
		</media>


		<link xconnector="onEndStopStart">
			<bind role="onEnd" component="mainVideo"/>
			<bind role="stop" component="pergunta1"/>
			<bind role="start" component="pergunta2"/>
			<bind role="start" component="item1" />
			<bind role="start" component="item2" />
			<bind role="start" component="item3" />	
		</link>

		<link xconnector="onEndEyeGazeStart">
			<bind role="onEndEyeGaze" component="item1">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="start" component="errouVideo"/>			
		</link>

		<link xconnector="onEndEyeGazeStart">
			<bind role="onEndEyeGaze" component="item2">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="start" component="errouVideo"/>			
		</link>

		<link xconnector="onEndEyeGazeStart">
			<bind role="onEndEyeGaze" component="item3">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="start" component="acertouVideo"/>			
		</link>

		<link xconnector="onBeginStop">
			<bind role="onBegin" component="errouVideo"/>
			<bind role="stop" component="pergunta2"/>			
			<bind role="stop" component="item1"/>
			<bind role="stop" component="item2"/>
			<bind role="stop" component="item3"/>		
		</link>

		<link xconnector="onBeginStop">
			<bind role="onBegin" component="acertouVideo"/>
			<bind role="stop" component="pergunta2"/>			
			<bind role="stop" component="item1"/>
			<bind role="stop" component="item2"/>
			<bind role="stop" component="item3"/>		
		</link>


		<!--link para dar foco ao objeto fixado com o olhar -->
		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="item1">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="1"/>
			</bind>	
		</link>

		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="item2">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="2"/>
			</bind>	
		</link>

		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="item3">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="3"/>
			</bind>	
		</link>
			
	</body>
</ncl>

