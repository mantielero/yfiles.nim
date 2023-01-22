#[
nim c -r yfiles 
xmllint --c14n prueba.graphml > prueba2.graphml 
diff prueba1.graphml prueba2.graphml
]#

#import std/[xmltree]
#import xmltree2
import std/[strutils, strformat]
import graphml
import lib/[common, key, node]
export common, key, node
export graphml

# XmlHeader in the library
const processingInstruction = """<?xml version="1.0" encoding="UTF-8" standalone="no"?>
"""

proc `$`(b:bool):string =
  if b:
    return "true"
  return "false"





proc newFill(color:string;transparent:bool = false):XmlNode =
  var attributes = @[("color", color), ("transparent", $transparent)]

  return newXmlTree("y:Fill", [], attributes.toXmlAttributes)



proc newSmartNodeLabelModel(distance:float = 4.0):XmlNode =
  var attributes = @[("distance", &"{distance}")] 
  return newXmlTree("y:SmartNodeLabelModel", [], attributes.toXmlAttributes)  


proc newSmartNodeLabelModelParameter(
        labelRatioX:float = 0.0;
        labelRatioY:float = 0.0;
        nodeRatioX:float  = 0.0;
        nodeRatioY:float  = 0.0;
        offsetX:float     = 0.0;
        offsetY:float     = 0.0;
        upX:float         = 0.0;
        upY:float         = -1.0):XmlNode =
  var attributes = @[("labelRatioX", &"{labelRatioX}"),("labelRatioY", &"{labelRatioY}"),
  ("nodeRatioX", &"{nodeRatioX}"),("nodeRatioY", &"{nodeRatioY}"),
  ("offsetX", &"{offsetX}"),("offsetY", &"{offsetY}"),("upX", &"{upX}"),("upY", &"{upY}")
  ]    
  return newXmlTree("y:SmartNodeLabelModelParameter", [], attributes.toXmlAttributes)   


proc newModelParameter():XmlNode =
  return newXmlTree("y:ModelParameter", [], [].toXmlAttributes) 

proc newShape(`typ`:string = "rectangle"):XmlNode =
  var attributes = @[("type", typ)]
  return newXmlTree("y:Shape", [], attributes.toXmlAttributes)     


proc newNodeLabel(value:string; alignment:string = "center", 
                  autoSizePolicy:string = "content",
                  fontFamily:string = "Dialog"; fontSize:int = 12, fontStyle:string = "plain";
                  hasBackgroundColor:bool = false; 
                  hasLineColor:bool = false; 
                  horizontalTextPosition: string = "center";
                  iconTextGap:int = 4;
                  modelName:string = "free", # custom
                  modelPosition:string ="anywhere";
                  textColor:string = "#000000";
                  verticalTextPosition:string = "bottom";
                  visible:bool = true;
                  height:float = 17.96875;
                  width:float  = 52.08203125;
                  x: float = 13.0;
                  y:float = 13.0
                  ):XmlNode =
  var attributes = @[("alignment", alignment), ("autoSizePolicy", autoSizePolicy), 
        ("fontFamily", fontFamily), ("fontSize", &"{fontSize}"), ("fontStyle", fontStyle),
        ("hasBackgroundColor", $hasBackgroundColor), ("hasLineColor", $hasLineColor),
        ("horizontalTextPosition", horizontalTextPosition),
        ("iconTextGap", &"{iconTextGap}"), ("modelName", modelName), ("modelPosition", modelPosition),
        ("textColor", textColor), ("verticalTextPosition", verticalTextPosition),
        ("visible", $visible), 
        ("height", &"{height}"), ("width", &"{width}"),("x", &"{x}"),("y", &"{y}")
        ]
  var node = newXmlTree("y:NodeLabel", [], attributes.toXmlAttributes)
  if value != "":
    node.add newText(value)
  return node


proc newPolyLineEdge():XmlNode =
  return newXmlTree("y:PolyLineEdge", [], [].toXmlAttributes)   


proc newPath(sx:float = 0.0; sy:float = 32.0; tx:float = 0.0; ty:float = -32.0): XmlNode =
  var attributes = @[("sx", &"{sx}"), ("sy", &"{sy}"),("tx", &"{tx}"),("ty", &"{ty}")]
  return newXmlTree("y:Path", [], attributes.toXmlAttributes)


proc newLineStyle(color:string = "#000000"; typ:string = "line"; width:float = 1.0): XmlNode =
  var attributes = @[("color", color), ("type", typ),("width", &"{width}")]
  return newXmlTree("y:LineStyle", [], attributes.toXmlAttributes)


proc newArrows(source:string = "none"; target:string = "none"): XmlNode =
  var attributes = @[("source", source), ("target", target)]  
  return newXmlTree("y:Arrows", [], attributes.toXmlAttributes)

proc newEdgeLabel( value:string = "";
       alignment:string     = "center", 
       configuration:string = "AutoFlippingLabel",
       distance:float = 2.0,
       fontFamily:string = "Dialog", 
       fontSize:int = 12, 
       fontStyle:string = "plain", 
       hasBackgroundColor:bool = false, 
       hasLineColor:bool = false, 
       height:float = 17.96875, 
       horizontalTextPosition:string = "center", 
       iconTextGap:int = 4, 
       modelName:string = "custom", 
       preferredPlacement:string = "anywhere", 
       ratio:float = 0.5, 
       textColor:string = "#000000", 
       verticalTextPosition:string = "bottom", 
       visible:bool = true, 
       width:float = 34.0, 
       x:float = -47.0, 
       y:float = 29.015625): XmlNode =
  var attributes = @[("alignment", alignment), ("configuration", configuration),
        ("distance", &"{distance}"), ("fontFamily", fontFamily),("fontSize", &"{fontSize}"), 
        ("fontStyle", fontStyle),("hasBackgroundColor", $hasBackgroundColor), 
        ("hasLineColor", $hasLineColor),("height", &"{height}"), 
        ("horizontalTextPosition", horizontalTextPosition),("iconTextGap", &"{iconTextGap}"), 
        ("modelName", modelName),("preferredPlacement", preferredPlacement), 
        ("ratio", &"{ratio}"),("textColor", textColor), ("verticalTextPosition", verticalTextPosition),
        ("visible", $visible),("width", &"{width}"),("x", &"{x}"),("y", &"{y}")
        ]
  
  var node = newXmlTree("y:EdgeLabel", [], attributes.toXmlAttributes)
  if value != "":
    node.add newText(value)
  return node

proc newSmartEdgeLabelModel(
       autoRotationEnabled:bool = false; 
       defaultAngle:float = 0.0;
       defaultDistance:float = 10.0 ): XmlNode =
  var attributes = @[("autoRotationEnabled", $autoRotationEnabled), 
        ("defaultAngle", &"{defaultAngle}"),("defaultDistance", &"{defaultDistance}") ]
  return newXmlTree("y:SmartEdgeLabelModel", [], attributes.toXmlAttributes)  


proc newSmartEdgeLabelModelParameter(
       angle:float = 0.0; distance:float = 30.0; 
       distanceToCenter:bool = true; position:string = "right";
       ratio:float = 0.5; segment: int = 0 ): XmlNode =
  var attributes = @[("distanceToCenter", $distanceToCenter), 
        ("angle", &"{angle}"),("distance", &"{distance}"),
        ("position", position),
        ("ratio", &"{ratio}"),("segment", &"{segment}")  ]
  return newXmlTree("y:SmartEdgeLabelModelParameter", [], attributes.toXmlAttributes)  


proc newPreferredPlacementDescriptor(
       angle:float = 0.0; angleOffsetOnRightSide:int = 0;
       angleReference:string = "absolute"; 
       angleRotationOnRightSide:string = "co";
       distance:float = -1.0;
       frozen:bool = true; placement:string = "anywhere";
       side:string = "anywhere"; 
       sideReference:string = "relative_to_edge_flow"): XmlNode =
  
  var attributes = @[("angleReference", angleReference), 
        ("angle", &"{angle}"),("angleOffsetOnRightSide", &"{angleOffsetOnRightSide}"),
        ("angleRotationOnRightSide", angleRotationOnRightSide),
        ("distance", &"{distance}"),("frozen", $frozen),
        ("placement",placement), ("side", side), ("sideReference", sideReference)  ]
  return newXmlTree("y:PreferredPlacementDescriptor", [], attributes.toXmlAttributes)

proc newBendStyle(smoothed:bool = false ): XmlNode =
  var attributes = @[("smoothed", $smoothed) ]  
  return newXmlTree("y:BendStyle", [], attributes.toXmlAttributes)


proc newResources():XmlNode =
  return newXmlTree("y:Resources", [], [].toXmlAttributes)      

