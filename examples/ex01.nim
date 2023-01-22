import yfiles


proc main =
  #var txt = processingInstruction
  var gml = newYfile()
  gml.addDefaultKeys()

  # Graph creation
  var graph = newGraphDirected("G") 

  # Nodes
  # Node1-----------
  var n0 = newYnode("n0")
  var data0Url = newData("d4") # setUrl
  var data0Description = newData("d5")   # setDescription

  var y0ShapeNode = newShapeNode()
  var y0Geometry = newGeometry(64.0, 135.0, -44.0, -143.0)
  var y0Fill = newFill(color = "#FFCC00")

  var y0BorderStyle = newBorderStyle()
  var y0NodeLabel = newNodeLabel("ejemplo")
  var y0LabelModel = newLabelModel()  
  var y0SmartNodeLabelModel = newSmartNodeLabelModel(4.0)
  var y0ModelParameter = newModelParameter()
  var y0SmartNodeLabelModelParameter = newSmartNodeLabelModelParameter()
  var y0Shape = newShape("rectangle")


  # y0LabelModel.add y0SmartNodeLabelModel
  # #y0NodeLabel.add y0LabelModel

  # y0ModelParameter.add y0SmartNodeLabelModelParameter
  # #y0NodeLabel.add y0ModelParameter
  # y0ShapeNode.add y0Geometry
  # y0ShapeNode.add y0Fill  
  # y0ShapeNode.add y0BorderStyle
  # y0ShapeNode.add y0NodeLabel
  # y0ShapeNode.add y0Shape
  # data0Description.add y0ShapeNode
  # n0.add data0Url
  # n0.add data0Description
  graph.add n0
  gml.add graph

# proc main2 =
#   #var txt = processingInstruction
#   var gml = newYfile()
#   gml.addDefaultKeys()

#   # Graph creation
#   var graph = newGraphDirected("G") 

#   # Nodes
#   # Node1-----------
#   var n0 = newYnode("n0")
#   var data0Url = newData("d4") # setUrl
#   var data0Description = newData("d5")   # setDescription

#   var y0ShapeNode = newShapeNode()
#   var y0Geometry = newGeometry(64.0, 135.0, -44.0, -143.0)
#   var y0Fill = newFill(color = "#FFCC00")

#   var y0BorderStyle = newBorderStyle()
#   var y0NodeLabel = newNodeLabel("ejemplo")
#   var y0LabelModel = newLabelModel()  
#   var y0SmartNodeLabelModel = newSmartNodeLabelModel(4.0)
#   var y0ModelParameter = newModelParameter()
#   var y0SmartNodeLabelModelParameter = newSmartNodeLabelModelParameter()
#   var y0Shape = newShape("rectangle")


#   y0LabelModel.add y0SmartNodeLabelModel
#   #y0NodeLabel.add y0LabelModel

#   y0ModelParameter.add y0SmartNodeLabelModelParameter
#   #y0NodeLabel.add y0ModelParameter
#   y0ShapeNode.add y0Geometry
#   y0ShapeNode.add y0Fill  
#   y0ShapeNode.add y0BorderStyle
#   y0ShapeNode.add y0NodeLabel
#   y0ShapeNode.add y0Shape
#   data0Description.add y0ShapeNode
#   n0.add data0Url
#   n0.add data0Description
#   graph.add n0
  
#   # Node 1-----
#   n0 = newNode("n1")
#   data0Url = newData("d4") # setUrl
#   data0Description = newData("d5")   # setDescription
#   y0ShapeNode = newShapeNode()
#   y0Geometry = newGeometry(64.0, 140.0, -46.5, -10.0)
#   y0Fill = newFill("#FFCC00")
#   y0BorderStyle = newBorderStyle("line", "#000000")
#   y0NodeLabel = newNodeLabel("Adiós\nMultilínea")
#   y0LabelModel = newLabelModel()
#   y0SmartNodeLabelModel = newSmartNodeLabelModel(4.0)
#   y0ModelParameter = newModelParameter()
#   y0SmartNodeLabelModelParameter = newSmartNodeLabelModelParameter()
#   y0Shape = newShape("rectangle")  

#   y0LabelModel.add y0SmartNodeLabelModel
#   #y0NodeLabel.add y0LabelModel

#   y0ModelParameter.add y0SmartNodeLabelModelParameter
#   #y0NodeLabel.add y0ModelParameter
#   y0ShapeNode.add y0Geometry
#   y0ShapeNode.add y0Fill  
#   y0ShapeNode.add y0BorderStyle
#   y0ShapeNode.add y0NodeLabel
#   y0ShapeNode.add y0Shape  
#   data0Description.add y0ShapeNode
#   n0.add data0Url
#   n0.add data0Description
#   graph.add n0

#   root.add graph

#   # Edge----
#   var e0 = newEdge("n0", "n1", "e0")
#   var dataDescription = newData("d8") # setDescription
#   var dataGraphics    = newData("d9")   # edgeGraphics 
#   var pl = newPolyLineEdge()
#   var path = newPath()
#   var lineStyle = newLineStyle()
#   var arrow = newArrows(target = "delta")
#   var edgeLabel = newEdgeLabel(value = "edge")
#   var labelModel = newLabelModel()
#   var smartEdgeLabelModel = newSmartEdgeLabelModel()
#   var modelParameter = newModelParameter() 
#   var smartEdgeLabelModelParameter = newSmartEdgeLabelModelParameter()
#   var preferredPlacementDescriptor = newPreferredPlacementDescriptor()
#   var bendStyle = newBendStyle()

#   labelModel.add smartEdgeLabelModel
#   edgeLabel.add labelModel
#   modelParameter.add smartEdgeLabelModelParameter
#   edgeLabel.add modelParameter
#   edgeLabel.add preferredPlacementDescriptor


#   pl.add path
#   pl.add lineStyle
#   pl.add arrow
#   pl.add edgeLabel
#   pl.add bendStyle

#   dataGraphics.add pl
#   e0.add dataDescription
#   e0.add dataGraphics 
#   graph.add e0

#   var dataResources = newData("d6")
#   var resources = newResources()
#   dataResources.add resources
#   root.add dataResources

#   "prueba.graphml".writeFile(txt & $root)

main()



#[
  #var txt = processingInstruction
  var gml = newYfile()
  gml.addDefaultKeys()

  # Graph creation
  var graph = newGraphDirected("G") 

  # Nodes
  # Node1-----------
  var n0 = newNode("n0")
  var data0Url = newData("d4") # setUrl
  var data0Description = newData("d5")   # setDescription
  var y0ShapeNode = newShapeNode()
  var y0Geometry = newGeometry(64.0, 135.0, -44.0, -143.0)
  var y0Fill = newFill("#FFCC00")
  
  var y0BorderStyle = newBorderStyle("line", "#000000")
  var y0NodeLabel = newNodeLabel("ejemplo")
  var y0LabelModel = newLabelModel()
  var y0SmartNodeLabelModel = newSmartNodeLabelModel(4.0)
  var y0ModelParameter = newModelParameter()
  var y0SmartNodeLabelModelParameter = newSmartNodeLabelModelParameter()
  var y0Shape = newShape("rectangle")


  y0LabelModel.add y0SmartNodeLabelModel
  #y0NodeLabel.add y0LabelModel

  y0ModelParameter.add y0SmartNodeLabelModelParameter
  #y0NodeLabel.add y0ModelParameter
  y0ShapeNode.add y0Geometry
  y0ShapeNode.add y0Fill  
  y0ShapeNode.add y0BorderStyle
  y0ShapeNode.add y0NodeLabel
  y0ShapeNode.add y0Shape
  data0Description.add y0ShapeNode
  n0.add data0Url
  n0.add data0Description
  graph.add n0
  
  # Node 1-----
  n0 = newNode("n1")
  data0Url = newData("d4") # setUrl
  data0Description = newData("d5")   # setDescription
  y0ShapeNode = newShapeNode()
  y0Geometry = newGeometry(64.0, 140.0, -46.5, -10.0)
  y0Fill = newFill("#FFCC00")
  y0BorderStyle = newBorderStyle("line", "#000000")
  y0NodeLabel = newNodeLabel("Adiós\nMultilínea")
  y0LabelModel = newLabelModel()
  y0SmartNodeLabelModel = newSmartNodeLabelModel(4.0)
  y0ModelParameter = newModelParameter()
  y0SmartNodeLabelModelParameter = newSmartNodeLabelModelParameter()
  y0Shape = newShape("rectangle")  

  y0LabelModel.add y0SmartNodeLabelModel
  #y0NodeLabel.add y0LabelModel

  y0ModelParameter.add y0SmartNodeLabelModelParameter
  #y0NodeLabel.add y0ModelParameter
  y0ShapeNode.add y0Geometry
  y0ShapeNode.add y0Fill  
  y0ShapeNode.add y0BorderStyle
  y0ShapeNode.add y0NodeLabel
  y0ShapeNode.add y0Shape  
  data0Description.add y0ShapeNode
  n0.add data0Url
  n0.add data0Description
  graph.add n0

  root.add graph

  # Edge----
  var e0 = newEdge("n0", "n1", "e0")
  var dataDescription = newData("d8") # setDescription
  var dataGraphics    = newData("d9")   # edgeGraphics 
  var pl = newPolyLineEdge()
  var path = newPath()
  var lineStyle = newLineStyle()
  var arrow = newArrows(target = "delta")
  var edgeLabel = newEdgeLabel(value = "edge")
  var labelModel = newLabelModel()
  var smartEdgeLabelModel = newSmartEdgeLabelModel()
  var modelParameter = newModelParameter() 
  var smartEdgeLabelModelParameter = newSmartEdgeLabelModelParameter()
  var preferredPlacementDescriptor = newPreferredPlacementDescriptor()
  var bendStyle = newBendStyle()

  labelModel.add smartEdgeLabelModel
  edgeLabel.add labelModel
  modelParameter.add smartEdgeLabelModelParameter
  edgeLabel.add modelParameter
  edgeLabel.add preferredPlacementDescriptor


  pl.add path
  pl.add lineStyle
  pl.add arrow
  pl.add edgeLabel
  pl.add bendStyle

  dataGraphics.add pl
  e0.add dataDescription
  e0.add dataGraphics 
  graph.add e0

  var dataResources = newData("d6")
  var resources = newResources()
  dataResources.add resources
  root.add dataResources

  "prueba.graphml".writeFile(txt & $root)
]#