<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="aplTesteEffect" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
 <head>
	<regionBase>
		<region id="rg1" width="100%" height="100%" zIndex = "0" />
		<region id="rg2" top="15%" left="5%" width="25%" height="20%"/>
		<region id="rg3" top="15%" left="35%" width="25%" height="20%"/>
		<region id="rg4" top="15%" left="65%" width="25%" height="20%"/>
		<region id="rg5" left="15%" top="50%" width="60%" height="10%"/>
		<region id="rg6" top="65%" left="35%" width="15%" height="9%"/>
		<region id="rg7" top="65%" left="55%" width="15%" height="9%"/>
		<region id="rgPergunta" top="2%" width="100%" height="10%"/>
		
   	</regionBase>

	<descriptorBase>
	    <descriptor id="desc1"  region="rg1" explicitDur="5s"/> 
		<descriptor id="desc2"  region="rg2" />
		<descriptor id="desc3"  region="rg3" />
		<descriptor id="desc4"  region="rg4" />		
		<descriptor id="desc5"  region="rg5" />		
		<descriptor id="desc6"  region="rg6" />		
		<descriptor id="desc7"  region="rg7" />	
		<descriptor id="descPergunta" region="rgPergunta"/>		
	</descriptorBase>
	
	<connectorBase>

	<causalConnector id="onBeginStart">
		<simpleCondition role="onBegin" />
		<simpleAction role="start" max="unbounded"/>
	</causalConnector>

	<causalConnector id="onBeginNStart">
		<simpleCondition role="onBegin" max="unbounded" />
		<simpleAction role="start" max="unbounded"/>
	</causalConnector>

	<causalConnector id="onEndStop">
		<simpleCondition role="onEnd" />
		<simpleAction role="stop" max="unbounded"/>
	</causalConnector>
	
	<causalConnector id="onEndStart">
		<simpleCondition role="onEnd" />
		<simpleAction role="start" max="unbounded"/>
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

	<causalConnector id="onBeginSet">
		<connectorParam name="var"/>
		<simpleCondition role="onBegin"/>
		<simpleAction role="set" value="$var"/>
	</causalConnector>

	</connectorBase>
  </head>

  <body id="context">
  	
		<port id="pVideo" component="video1" />

		<media id="video1" src="media/img-principal.png" descriptor="desc1"/>
		
		<media id="item1" src="media/item1.png" descriptor="desc2">
			<property name="focusIndex" value="0"/>
			<property name="moveRight" value="1"/>
		</media>

		<media id="item2" src="media/item2.png" descriptor="desc3">
			<property name="focusIndex" value="1"/>
			<property name="moveLeft" value="0"/>
			<property name="moveRight" value="2"/>
		</media>

		<media id="item3" src="media/item3.png" descriptor="desc4">
			<property name="focusIndex" value="2"/>
			<property name="moveLeft" value="1"/>
		</media>
	
		<media id="sim" src="media/sim.png" descriptor="desc6"/>
		<media id="nao" src="media/nao.png" descriptor="desc7"/>		

		<media id="lua" src="script.lua" descriptor="desc5">
			<property name="i1" value="false"/>
			<property name="i2" value="false"/>
			<property name="i3" value="false"/>
			<property name="sim-btn"/>
			<property name="nao-btn"/>
		</media>

		<media id="pergunta" src="pergunta.lua" descriptor="descPergunta"/>

		<media id="settings" type="application/x-ginga-settings">
			<property name="service.currentFocus" value="0" />
		</media>

		<link xconnector="onEndStart">
			<bind role="onEnd" component="video1"/>
			<bind role="start" component="item1" />
			<bind role="start" component="item2" />
			<bind role="start" component="item3" />
			<bind role="start" component="lua"/>
			<bind role="start" component="pergunta"/>			
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

		<!--link xconnector="onBeginSet">
			<bind role="onBegin" component="sim"/>
			<bind role="set" component="settings" interface="service.currentFocus" >
				<bindParam name="var" value="3"/>
			</bind>			
		</link-->

		<link xconnector="onEndEyeGazeSet">
			<bind role="onEndEyeGaze" component="sim">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="sim-btn" >
				<bindParam name="var" value="true"/>
			</bind>			
		</link>

		<link xconnector="onEndEyeGazeSet">
			<bind role="onEndEyeGaze" component="nao">
				<bindParam name="user" value="all"/>
			</bind>
			<bind role="set" component="lua" interface="nao-btn" >
				<bindParam name="var" value="true"/>
			</bind>			
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="lua"/>
			<bind role="stop" component="context"/>
		</link>
			
</body>
</ncl>

