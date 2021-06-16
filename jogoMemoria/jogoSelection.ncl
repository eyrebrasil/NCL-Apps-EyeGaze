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
			<descriptor id="dsVideo"  region="rgVideo" explicitDur="5s"/> 
			<descriptor id="dsItem1"  region="rgItem1" />
			<descriptor id="dsItem2"  region="rgItem2" />
			<descriptor id="dsItem3"  region="rgItem3" />					
			<descriptor id="dsPergunta" region="rgPergunta"/>	
			<descriptor id="dsResultado"  region="rgResultado" explicitDur="5s"/>	
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onEndStopStart">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded"/>
				<simpleAction role="start" max="unbounded"/>
			</causalConnector>

			<causalConnector id="onSelectionStopStart">
				<connectorParam name="key"/>
				<simpleCondition role="onSelection" key="$key"/>
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded"/>
					<simpleAction role="start" max="unbounded"/>
				</compoundAction>
			</causalConnector>
		</connectorBase>
	</head>
	<body id="context">
  	
		<port id="pVideo" component="mainVideo" />
		<port id="pPergunta" component="pergunta1" />

		<media id="mainVideo" src="media/selva.png" descriptor="dsVideo"/>
		<media id="acertouVideo" src="media/acertou.png" descriptor="dsResultado"/>
		<media id="errouVideo" src="media/errou.png" descriptor="dsResultado"/>

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

		<media id="pergunta1" src="pergunta1.lua" descriptor="dsPergunta" type="application/x-ginga-NCLua"/>
		<media id="pergunta2" src="pergunta2.lua" descriptor="dsPergunta" type="application/x-ginga-NCLua"/>

		<media id="settings" type="application/x-ginga-settings">
			<property name="service.currentFocus" value="0" />
		</media>


		<link xconnector="onEndStopStart">
			<bind role="onEnd" component="mainVideo"/>
			<bind role="stop" component="pergunta1"/>
			<bind role="start" component="pergunta2"/>	
			<bind role="start" component="item1" />
			<bind role="start" component="item2" />
			<bind role="start" component="item3" />
		</link>


		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="item1">
				<bindParam name="key" value="1"/>
			</bind>	
			<bind role="stop" component="pergunta2"/>			
			<bind role="stop" component="item1"/>
			<bind role="stop" component="item2"/>
			<bind role="stop" component="item3"/>
			<bind role="start" component="errouVideo"/>
		</link>

		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="item2">
				<bindParam name="key" value="2"/>
			</bind>	
			<bind role="stop" component="pergunta2"/>			
			<bind role="stop" component="item1"/>
			<bind role="stop" component="item2"/>
			<bind role="stop" component="item3"/>
			<bind role="start" component="errouVideo"/>
		</link>

		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="item3">
				<bindParam name="key" value="3"/>
			</bind>	
			<bind role="stop" component="pergunta2"/>			
			<bind role="stop" component="item1"/>
			<bind role="stop" component="item2"/>
			<bind role="stop" component="item3"/>
			<bind role="start" component="acertouVideo"/>
		</link>
			
	</body>
</ncl>

