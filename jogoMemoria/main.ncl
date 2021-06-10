<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="aplTesteEffect" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<region id="rgVideo" top="15%" left="5%" width="90%" height="85%" zIndex = "0" />
			<region id="rgItem1" top="15%" left="7.5%" width="25%" height="25%"/>
			<region id="rgItem2" top="15%" left="37.5%" width="25%" height="25%"/>
			<region id="rgItem3" top="15%" left="67.5%" width="25%" height="25%"/>
			<region id="rgLua" top="50%" left="15%" width="60%" height="10%"/>
			<region id="rgSim" top="65%" left="27%" width="20%" height="20%"/>
			<region id="rgNao" top="65%" left="53%" width="20%" height="20%"/>
			<region id="rgPergunta" top="2%" width="100%" height="10%"/>
		</regionBase>

		<descriptorBase>
			<descriptor id="dsVideo"  region="rgVideo" explicitDur="10s"/> 
			<descriptor id="dsItem1"  region="rgItem1" focusIndex="1"/>
			<descriptor id="dsItem2"  region="rgItem2" focusIndex="2"/>
			<descriptor id="dsItem3"  region="rgItem3" focusIndex="3"/>		
			<descriptor id="dsLua"  region="rgLua" />		
			<descriptor id="dsSim"  region="rgSim" focusIndex="4"/>		
			<descriptor id="dsNao"  region="rgNao" focusIndex="5"/>	
			<descriptor id="dsPergunta" region="rgPergunta"/>		
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onEndStopStart">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded"/>
				<simpleAction role="start" max="unbounded"/>
			</causalConnector>

			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded"/>
			</causalConnector>
			
			<causalConnector id="onEndEyeGazeSetStart">
				<connectorParam name="var"/>
				<connectorParam name="user"/>
				<simpleCondition role="onEndEyeGaze" key="$user"/>
				<simpleAction role="set" value="$var"/>
				<simpleAction role="start" max="unbounded"/>
			</causalConnector>

			<causalConnector id="onEndEyeGazeSet">
				<connectorParam name="var"/>
				<connectorParam name="user"/>
				<simpleCondition role="onEndEyeGaze" key="$user"/>
				<simpleAction role="set" value="$var"/>
			</causalConnector>

			<causalConnector id="onEndEyeGazeSetStop">
				<connectorParam name="var"/>
				<connectorParam name="user"/>
				<simpleCondition role="onEndEyeGaze" key="$user"/>
				<simpleAction role="set" value="$var"/>
				<simpleAction role="stop" max="unbounded"/>
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
  	
		<port id="pVideo" component="video1" />
		<port id="pPergunta" component="pergunta1" />

		<media id="video1" src="media/Selva.png" descriptor="dsVideo"/>
		
		<media id="item1" src="media/elefante.png" descriptor="dsItem1"/>
		<media id="item2" src="media/onca.png" descriptor="dsItem2"/>
		<media id="item3" src="media/jacare.png" descriptor="dsItem3"/>
	
		<media id="sim" src="media/sim.png" descriptor="dsSim"/>
		<media id="nao" src="media/nao.png" descriptor="dsNao"/>		

		<media id="lua" src="script.lua" descriptor="dsLua" type="application/x-ginga-NCLua">
			<property name="i1" value="false"/>
			<property name="i2" value="false"/>
			<property name="i3" value="false"/>
			<property name="sim-btn"/>
			<property name="nao-btn"/>
		</media>

		<media id="pergunta1" src="pergunta1.lua" descriptor="dsPergunta" type="application/x-ginga-NCLua"/>
		<media id="pergunta2" src="pergunta2.lua" descriptor="dsPergunta" type="application/x-ginga-NCLua"/>

		<media id="settings" type="application/x-ginga-settings">
			<property name="service.currentFocus" value="0" />
		</media>


		<link xconnector="onEndStopStart">
			<bind role="onEnd" component="video1"/>
			<bind role="stop" component="pergunta1"/>
			<bind role="start" component="item1" />
			<bind role="start" component="item2" />
			<bind role="start" component="item3" />
			<bind role="start" component="lua"/>
			<bind role="start" component="pergunta2"/>			
		</link>

		<!--Seta no lua a midia selecionada-->
		<link xconnector="onEndEyeGazeSetStart">
			<bind role="onEndEyeGaze" component="item1">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="i1" >
				<bindParam name="var" value="true"/>
			</bind>			
			<bind role="start" component="sim"/>
			<bind role="start" component="nao"/>				
		</link>

		<!--Seta no lua a midia selecionada-->
		<link xconnector="onEndEyeGazeSetStart">
			<bind role="onEndEyeGaze" component="item2">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="i2" >
				<bindParam name="var" value="true"/>
			</bind>			
			<bind role="start" component="sim"/>
			<bind role="start" component="nao"/>				
		</link>

		<!--Seta no lua a midia selecionada-->
		<link xconnector="onEndEyeGazeSetStart">
			<bind role="onEndEyeGaze" component="item3">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="i3" >
				<bindParam name="var" value="true"/>
			</bind>		
			<bind role="start" component="sim"/>
			<bind role="start" component="nao"/>					
		</link>

		<link xconnector="onEndEyeGazeSet">
			<bind role="onEndEyeGaze" component="sim">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="sim-btn" >
				<bindParam name="var" value="true"/>
			</bind>			
		</link>

		<link xconnector="onEndEyeGazeSetStop">
			<bind role="onEndEyeGaze" component="nao">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="nao-btn" >
				<bindParam name="var" value="true"/>
			</bind>	
			<bind role="stop" component="sim"/>
			<bind role="stop" component="nao"/>			
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="lua"/>
			<bind role="stop" component="context"/>
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

		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="sim">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="4"/>
			</bind>	
		</link>

		<link xconnector="onBeginEyeGazeSet">
			<bind role="onBeginEyeGaze" component="nao">
				<bindParam name="user" value="all"/>				
			</bind>
			<bind role="set" component="__settings__" interface="service.currentFocus">
				<bindParam name="val" value="5"/>
			</bind>	
		</link>
			
	</body>
</ncl>

