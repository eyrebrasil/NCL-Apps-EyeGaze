<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="aplTesteEffect" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
 <head>
	<regionBase>
		<region height="100%" id="rgfullScreen" width="100%" zIndex="0">
			<region bottom="20%" height="20%" id="rgbtoSim" left="15%" width="30%" zIndex="1"/>
			<region bottom="20%" height="20%" id="rgbtoNao" right="15%" width="30%" zIndex="1"/>
			<region bottom="3%" height="45%" id="rgfundoMenu" right="2%" width="36%" zIndex="1"/>
			<region bottom="5%" height="10%" id="rgbto1" right="5%" width="30%" zIndex="2"/>
			<region bottom="16%" height="10%" id="rgbto2" right="5%" width="30%" zIndex="2"/>
			<region bottom="27%" height="10%" id="rgbto3" right="5%" width="30%" zIndex="2"/>
		</region>
   	</regionBase>

	<transitionBase>
		<transition dur="1s" id="fade" type="fade"/>
		<transition dur="0.5s" id="fadeFast" type="fade"/>
	</transitionBase>

	<descriptorBase>
		<descriptor id="fullScreen" region="rgfullScreen"/>
		<descriptor id="fundoMenu" region="rgfundoMenu" transIn="fade" transOut="fade">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
		<descriptor focusIndex="1" id="btoSim" region="rgbtoSim" transIn="fade" transOut="fade" moveRight="2"/>
		<descriptor focusIndex="2" id="btoNao" region="rgbtoNao" transIn="fade" transOut="fade" moveLeft="1"/>
		<descriptor focusIndex="3" id="bto1" region="rgbto1" transIn="fadeFast" transOut="fadeFast" moveUp="4">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
		<descriptor focusIndex="4" id="bto2" region="rgbto2" transIn="fadeFast" transOut="fadeFast" moveUp="5" moveDown="3">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
		<descriptor focusIndex="5" id="bto3" region="rgbto3" transIn="fadeFast" transOut="fadeFast" moveDown="4">
			<descriptorParam name="transparency" value="0.8"/>
		</descriptor>
	</descriptorBase>
	
	<connectorBase>
		<causalConnector id="onBeginStartDelay">
			<simpleCondition delay="45s" max="unbounded" role="onBegin"/>
			<simpleAction max="unbounded" role="start"/>
		</causalConnector>

		<causalConnector id="onBeginStart">
			<simpleCondition max="unbounded" role="onBegin"/>
			<simpleAction max="unbounded" role="start"/>
		</causalConnector>
	
		<causalConnector id="onSelectionStopStart">
			<connectorParam name="key"/>
			<simpleCondition role="onSelection" key="$key"/>
			<simpleAction role="stop" max="unbounded"/>
			<simpleAction role="start" max="unbounded"/>
		</causalConnector>

		<causalConnector id="onEndStart">
			<simpleCondition max="unbounded" role="onEnd"/>
			<simpleAction max="unbounded" role="start"/>
		</causalConnector>

	</connectorBase>
  </head>

  <body id="context">
  	
		<port id="pVideo" component="videoB3" />

		<media id="videoB3" src="videos/B3.mp4" descriptor="fullScreen">
			<area id="a1" begin="5s"/>
		</media>
		
		<!--Componentes do menu-->
		<media descriptor="fundoMenu" id="fundoMenuB3" src="imagens/menufundo.png"/>
		<!-- Botoes -->
		<media descriptor="bto2" id="botaoCentral" src="imagens/central.png"/>
		<media descriptor="bto1" id="botaoCopa" src="imagens/copa.png"/>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="videoB3" interface="a1" />
			<bind component="fundoMenuB3" role="start"/>
			<bind component="botaoCentral" role="start"/>
			<bind component="botaoCopa" role="start"/>
		</link>

		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="botaoCentral">
				<bindParam name="key" value="1"/>
			</bind>
			<bind role="stop" component="videoB3"/>
			<bind role="stop" component="botaoCentral"/>
			<bind role="stop" component="botaoCopa"/>
			<bind role="stop" component="fundoMenuB3"/>
			<bind role="start" component="C2"/>
		</link>

		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="botaoCopa">
				<bindParam name="key" value="2"/>
			</bind>
			<bind role="stop" component="videoB3"/>
			<bind role="stop" component="botaoCentral"/>
			<bind role="stop" component="botaoCopa"/>
			<bind role="stop" component="fundoMenuB3"/>
			<bind role="start" component="C3"/>
		</link>

		
		<!--Video central-->
		<media descriptor="fullScreen" id="C2" src="videos/C2.mp4">
			<area id="a2" begin="43s"/>
		</media>
		<!--Video copacabana-->
		<media descriptor="fullScreen" id="C3" src="videos/C3.mp4">
			<area id="a3" begin="28s"/>
		</media>

		<!--Menu com a segunda opcao-->
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="C2" interface="a2" />
			<bind component="fundoMenuB3" role="start"/>
			<bind component="botaoEstudantinaC2" role="start"/>
			<bind component="botaoJardimBotanicoC2" role="start"/>
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="C3" interface="a3" />
			<bind component="fundoMenuB3" role="start"/>
			<bind component="botaoEstudantinaC2" role="start"/>
			<bind component="botaoJardimBotanicoC2" role="start"/>
		</link>


		<!--Segunda opcao (Estudantina ou Jardim Botanico)-->
		<media descriptor="bto1" id="botaoEstudantinaC2" src="imagens/estudantina.png"/>
		<media descriptor="bto2" id="botaoJardimBotanicoC2" src="imagens/jardimbotanico.png"/>
		<media descriptor="fullScreen" id="E1" src="videos/E1.mp4"/>
		<media descriptor="fullScreen" id="E2" src="videos/E2.mp4"/>

		<!--Para o caso de C2 estar tocando-->
		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="botaoEstudantinaC2">
				<bindParam name="key" value="1"/>
			</bind>
			<bind role="stop" component="C2"/>
			<bind role="stop" component="C3"/>
			<bind role="stop" component="botaoEstudantinaC2"/>
			<bind role="stop" component="botaoJardimBotanicoC2"/>
			<bind role="stop" component="fundoMenuB3"/>
			<bind role="start" component="E1"/>
		</link>

		<!--Para o caso de C3 estar tocando-->
		<link xconnector="onSelectionStopStart">
			<bind role="onSelection" component="botaoJardimBotanicoC2">
				<bindParam name="key" value="2"/>
			</bind>
			<bind role="stop" component="C2"/>
			<bind role="stop" component="C3"/>
			<bind role="stop" component="botaoEstudantinaC2"/>
			<bind role="stop" component="botaoJardimBotanicoC2"/>
			<bind role="stop" component="fundoMenuB3"/>
			<bind role="start" component="E2"/>
		</link>

</body>
</ncl>

