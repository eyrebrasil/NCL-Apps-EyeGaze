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
			<descriptor id="dsVideo"  region="rgVideo" explicitDur="5s"/> 
			<descriptor id="dsItem1"  region="rgItem1" />
			<descriptor id="dsItem2"  region="rgItem2" />
			<descriptor id="dsItem3"  region="rgItem3" />		
			<descriptor id="dsLua"  region="rgLua" />		
			<descriptor id="dsSim"  region="rgSim" />		
			<descriptor id="dsNao"  region="rgNao" />	
			<descriptor id="dsPergunta" region="rgPergunta"/>		
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded"/>
			</causalConnector>
			
			<causalConnector id="onEndStopStart">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded"/>
				<simpleAction role="start" max="unbounded"/>
			</causalConnector>

			<causalConnector id="onSelectionSetStart">
				<connectorParam name="var"/>
				<connectorParam name="key"/>
				<simpleCondition role="onSelection" key="$key"/>
				<simpleAction role="set" value="$var"/>
				<simpleAction role="start" max="unbounded"/>
			</causalConnector>

			<causalConnector id="onSelectionSet">
				<connectorParam name="var"/>
				<connectorParam name="key"/>
				<simpleCondition role="onSelection" key="$key"/>
				<simpleAction role="set" value="$var"/>
			</causalConnector>

			<causalConnector id="onSelectionSetStop">
				<connectorParam name="var"/>
				<connectorParam name="key"/>
				<simpleCondition role="onSelection" key="$key"/>
				<simpleAction role="set" value="$var"/>
				<simpleAction role="stop" max="unbounded"/>
			</causalConnector>
		</connectorBase>
	</head>
	<body id="context">
  	
		<port id="pVideo" component="video1" />
		<port id="pPergunta" component="pergunta1" />

		<media id="video1" src="media/Selva.png" descriptor="dsVideo"/>

		<media id="item1" src="media/elefante.png" descriptor="dsItem1">
			<property name="focusIndex" value="0"/>
			<property name="moveRight" value="1"/>
		</media>
		<media id="item2" src="media/onca.png" descriptor="dsItem2">
			<property name="focusIndex" value="1"/>
			<property name="moveLeft" value="0"/>
			<property name="moveRight" value="2"/>
		</media>
		<media id="item3" src="media/jacare.png" descriptor="dsItem3">
			<property name="focusIndex" value="2"/>
			<property name="moveLeft" value="1"/>
		</media>

		<media id="sim" src="media/sim.png" descriptor="dsSim"/>
		<media id="nao" src="media/nao.png" descriptor="dsNao"/>		

		<media id="lua" src="script2.lua" descriptor="dsLua" type="application/x-ginga-NCLua">
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
		<link xconnector="onSelectionSetStart">
			<bind role="onSelection" component="item1">
				<bindParam name="key" value="1"/>
			</bind>
			<bind role="set" component="lua" interface="i1" >
				<bindParam name="var" value="true"/>
			</bind>			
			<bind role="start" component="sim"/>
			<bind role="start" component="nao"/>				
		</link>

		<!--Seta no lua a midia selecionada-->
		<link xconnector="onSelectionSetStart">
			<bind role="onSelection" component="item2">
				<bindParam name="key" value="2"/>
			</bind>
			<bind role="set" component="lua" interface="i2" >
				<bindParam name="var" value="true"/>
			</bind>			
			<bind role="start" component="sim"/>
			<bind role="start" component="nao"/>				
		</link>

		<!--Seta no lua a midia selecionada-->
		<link xconnector="onSelectionSetStart">
			<bind role="onSelection" component="item3">
				<bindParam name="key" value="3"/>
			</bind>
			<bind role="set" component="lua" interface="i3" >
				<bindParam name="var" value="true"/>
			</bind>		
			<bind role="start" component="sim"/>
			<bind role="start" component="nao"/>					
		</link>

		<link xconnector="onSelectionSet">
			<bind role="onSelection" component="sim">
				<bindParam name="key" value="s"/>
			</bind>
			<bind role="set" component="lua" interface="sim-btn" >
				<bindParam name="var" value="true"/>
			</bind>			
		</link>

		<link xconnector="onSelectionSetStop">
			<bind role="onSelection" component="nao">
				<bindParam name="key" value="n"/>
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
			
	</body>
</ncl>

