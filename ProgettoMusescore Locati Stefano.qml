import QtQuick 2.0
import QtQuick.Controls 2.2
import MuseScore 3.0

MuseScore {

       function convertTpc(value) {
            switch (value) {
                  case -1: return "Fbb"
                  case 0: return "Cbb"
                  case 1: return "Gbb"
                  case 2: return "Dbb"
                  case 3: return "Abb"
                  case 4: return "Ebb"
                  case 5: return "Bbb"
                  case 6: return "Fb"
                  case 7: return "Cb"
                  case 8: return "Gb"
                  case 9: return "Db"
                  case 10: return "Ab"
                  case 11: return "Eb"
                  case 12: return "Bb"
                  case 13: return "F"
                  case 14: return "C"
                  case 15: return "G"
                  case 16: return "D"
                  case 17: return "A"
                  case 18: return "E"
                  case 19: return "B"
                  case 20: return "F#"
                  case 21: return "C#"
                  case 22: return "G#"
                  case 23: return "D#"
                  case 24: return "A#"
                  case 25: return "E#"
                  case 26: return "B#"
                  case 27: return "Fx"
                  case 28: return "Cx"
                  case 29: return "Gx"
                  case 30: return "Dx"
                  case 31: return "Ax"
                  case 32: return "Ex"
                  case 33: return "Bx"
                  }
        }
        
        function zieverink(value) {
              switch(value) {
                  case "C": return "#c0d65c"
                  case "C#": return "#009f47"
                  case "D": return "#009890"
                  case "D#": return "#2a327f"
                  case "Eb": return "#2a327f"
                  case "E": return "#812c7c"
                  case "F": return "#c42b81"
                  case "F#": return "#6f254d"
                  case "G": return "#8e3028"
                  case "G#": return "#d82b2e"
                  case "A": return "#e78d37"
                  case "Bb": return "#efe89c"
                  case "B": return "#f6e95f"
              }
      }
      
      function belmont(value) {
              switch(value) {
                  case "C": return "#d82b2e"
                  case "C#": return "#db6335"
                  case "D": return "#e78d37"
                  case "D#": return "#ebc637"
                  case "Eb": return "#ebc637"
                  case "E": return "#f0e361"
                  case "F": return "#c0d65c"
                  case "F#": return "#009f47"
                  case "G": return "#00978f"
                  case "G#": return "#2a327f"
                  case "A": return "#993685"
                  case "Bb": return "#c13082"
                  case "B": return "#9f3057"
              }
      }
      
      function seemann(value) {
              switch(value) {
                  case "C": return "#712121"
                  case "C#": return "#d82d2e"
                  case "D": return "#e78d37"
                  case "D#": return "#f1cc5f"
                  case "Eb": return "#f1cc5f"
                  case "E": return "#f6e95f"
                  case "F": return "#009f47"
                  case "F#": return "#009890"
                  case "G": return "#2a327f"
                  case "G#": return "#812c7c"
                  case "A": return "#c42c82"
                  case "Bb": return "#64423f"
                  case "B": return "#141212"
              }
      }
      
      function vonhelmholtz(value) {
              switch(value) {
                  case "C": return "#f6e95f"
                  case "C#": return "#009f47"
                  case "D": return "#009890"
                  case "D#": return "#00769a"
                  case "Eb": return "#00769a"
                  case "E": return "#812c7c"
                  case "F": return "#c42c82"
                  case "F#": return "#952853"
                  case "G": return "#d82d2e"
                  case "G#": return "#be472d"
                  case "A": return "#bf5131"
                  case "Bb": return "#da4e30"
                  case "B": return "#e58937"
              }
      }
      
      function scriabin(value) {
              switch(value) {
                  case "C": return "#d82b2e"
                  case "C#": return "#c42c82"
                  case "D": return "#f6e95f"
                  case "D#": return "#646988"
                  case "Eb": return "#646988"
                  case "E": return "#006ba9"
                  case "F": return "#982c2a"
                  case "F#": return "#2a327f"
                  case "G": return "#e68d37"
                  case "G#": return "#812c7c"
                  case "A": return "#009f47"
                  case "Bb": return "#646989"
                  case "B": return "#006ba9"
              }
      }
      
      function castel(value) {
              switch(value) {
                  case "C": return "#2a327f"
                  case "C#": return "#009890"
                  case "D": return "#009f47"
                  case "D#": return "#659951"
                  case "Eb": return "#659951"
                  case "E": return "#f6e95f"
                  case "F": return "#f1cc5f"
                  case "F#": return "#e78d37"
                  case "G": return "#d82b2e"
                  case "G#": return "#982c2a"
                  case "A": return "#c42c82"
                  case "Bb": return "#5b327c"
                  case "B": return "#812c7c"
              }
      }
      
      function esegui(colors){
      var cursor = curScore.newCursor()
            var startStaff = 0
            var endStaff = curScore.nstaves - 1
            var startTick = 0
            var endTick
            var fullScore = true
            
            
            var cursor = curScore.newCursor()
            cursor.rewind(1) 
            
            if (cursor.segment) { 
                  startStaff = cursor.staffIdx
                  startTick = cursor.tick
                  cursor.rewind(2) 
                  if (cursor.tick != 0)
                        endTick = cursor.tick
                  else
                        endTick = curScore.lastSegment.tick + 1
                  endStaff = cursor.staffIdx
                  }
            else
                  endTick = curScore.lastSegment.tick + 1
                  
            for (var p = startStaff; p <= endStaff;p++) {
                  //console.log("\r\n\r\nPENTAGRAMMA " + (p+1))
                  for (var i = 0; i < 4; i++) {
                  cursor.staffIdx = p
                  cursor.voice = i
                  cursor.rewind(0)
                  
                  if (cursor.element == null)
                        continue
                        
                  while (cursor.tick < startTick)
                              cursor.next()
                              
                  var string = ""
                  var TPC = ""
                  var colore = ""
                  
                  
                  do {
                        var curElement = cursor.element
                        if (curElement.type == Element.CHORD) {
                              var numNote = curElement.notes.length
                              for (var k = 0; k < numNote; k++) {
                              
                              
                              TPC = convertTpc((curElement.notes[k].tpc %12) +12)
                              if (colors == "Zieverink"){
                              colore = zieverink(TPC)
                              }
                              if(colors == "Belmont"){
                              colore = belmont(TPC)
                              }
                              if(colors == "Seemann"){
                              colore = seemann(TPC)
                              }
                              if(colors == "vonhelmholtz"){
                              colore = vonhelmholtz(TPC)
                              }
                              if(colors == "Scriabin"){
                              colore = scriabin(TPC)
                              }
                              if(colors == "Castel"){
                              colore = castel(TPC)
                              }
                              if(colors == "nero"){
                              colore = "#000000"
                              }
                              string = TPC + " "
                              console.log(string, colore)
                              curElement.notes[k].color = colore;
                              
                              }
                        }  
                      }
                  while (cursor.next() && cursor.tick < endTick)
                  }
              }
      }
      
            
      menuPath: "Plugins.ProgettoMusescore"
      description: "Questo plugin consente di selezionare una tabella di corrispondenza tra pitch e color e colora le note di conseguneza"
      version: "1.0"
      pluginType: "dialog"
      width: 300
      height: 300
     
      property string colors: "nero"
       
       RadioButton {
            id: radioZieverink
            text: "Zieverink"
                 	
            anchors.leftMargin: 10       	
            anchors.topMargin: 10
            
            checked: false
            onClicked: {
                  colors = "Zieverink"
                  }
            }
            
            RadioButton {
            id: radioBelmont
            text: "Belmont"
            anchors.left: radioZieverink.left        	
            anchors.top: radioZieverink.bottom
            onClicked: {
                  colors = "Belmont"
                  }
            }
            
            RadioButton {
            id: radioSeemann
            text: "Seemann"
            anchors.left: radioBelmont.left        	
            anchors.top: radioBelmont.bottom
            
            onClicked: {
                  colors = "Seemann"
                  }
            }
            
            RadioButton {
            id: radiovonHelmholtz
            text: "von Helmoltz"
            anchors.left: radioSeemann.left        	
            //anchors.top: radioSeemann.bottom
            anchors.leftMargin: 150
            onClicked: {
                  colors = "vonhelmholtz"
                  }
            }
            
            RadioButton {
            id: radioScriabin
            text: "Scriabin"
            anchors.left: radiovonHelmholtz.left        	
            anchors.top: radiovonHelmholtz.bottom
            
            onClicked: {
                  colors = "Scriabin"
                  }
            }
            
            RadioButton {
            id: radioCastel
            text: "Castel"
            anchors.left: radioScriabin.left        	
            anchors.top: radioScriabin.bottom
            
            onClicked: {
                  colors = "Castel"
                  }
            }
            
            Button{
            id: buttonEsegui
            text: "Esegui"
            anchors.left: radioScriabin.left
            anchors.top: radioScriabin.bottom
            anchors.centerIn: parent
                        
            onClicked: {
                  if (colors != "nero"){
                        esegui(colors)
                        Qt.quit()
                  }
                  
	          }    	
            }
            
            Button{
            id: buttonRipristina
            text: "Ripristina"
            anchors.left: buttonEsegui.left
            anchors.top: buttonEsegui.bottom
            anchors.topMargin: 20
                        
            onClicked: {
                  colors = "nero"
                  esegui(colors)
                  Qt.quit()
	          }    	
            }
      
      
      onRun: {
            //esegui(colors)
            }
      }
