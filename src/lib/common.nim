import graphml

proc newYfile*(): GraphMlObj =
  result = newGraphml()
  result["xmlns"]              = "http://graphml.graphdrawing.org/xmlns"
  result["xmlns:java"]         = "http://www.yworks.com/xml/yfiles-common/1.0/java"
  result["xmlns:xsi"]          = "http://www.w3.org/2001/XMLSchema-instance"
  result["xmlns:sys"]          = "http://www.yworks.com/xml/yfiles-common/markup/primitives/2.0"
  result["xmlns:x"]            = "http://www.yworks.com/xml/yfiles-common/markup/2.0"
  result["xmlns:y"]            = "http://www.yworks.com/xml/graphml"
  result["xmlns:yed"]          = "http://www.yworks.com/xml/yed/3"     
  result["xsi:schemaLocation"] = "http://graphml.graphdrawing.org/xmlns http://www.yworks.com/xml/schema/graphml/1.1/ygraphml.xsd"


# proc newShapeNode*():XmlNode =
#   return newXmlTree("y:ShapeNode", [], [].toXmlAttributes)

# proc newGeometry(height,width,x,y:float):XmlNode =
#   var attributes = @[("height", &"{height}"), ("width", &"{width}"),
#                      ("x",&"{x}"), ("y", &"{y}")
#                     ]
#   return newXmlTree("y:Geometry", [], attributes.toXmlAttributes)


# proc newBorderStyle(typ,color:string; width:float = 1.0, raised:bool = false):XmlNode =
#     var attributes = @[("type", typ), ("color", color), 
#                        ("width", &"{width}"), ("raised", $raised)]
#     #var r = "false"
#     #if width != 1.0:
#     return newXmlTree("y:BorderStyle", [], attributes.toXmlAttributes)

proc newLabelModel():XmlNode =
  return newXmlTree("y:LabelModel", [], [].toXmlAttributes)    