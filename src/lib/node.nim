import graphml



type
  GeometryObj* = object
    x*,y*,width*,height*: float

  FillObj* = object
    color*: string
    transparent*: bool

  BorderStyleObj* = object
    color*: string
    raised*: bool
    typ*: string
    width*: float

  NodeLabelObj* = object
    alignment*: string
    autoSizePolicy*: string
    fontFamily*: string
    fontSize*: int
    fontStyle*: string
    hasBackgroundColor*: bool
    hasLineColor*: bool
    height*: float
    horizontalTextPosition*: string
    iconTextGap*: int
    modelName*: string
    modelPosition*: string
    textColor*: string
    verticalTextPosition*: string
    visible*:bool
    width*:float
    x*,y*: float

  ShapeObj* = object
    typ*: string

  ShapeNodeObj* = object
    geometry*: GeometryObj
    fill*: FillObj
    borderStyle*: BorderStyleObj
    nodeLabel*: NodeLabelObj
    shape*: ShapeObj

  YnodeObj* = object of NodeObj
    shapenode*:ShapeNodeObj

proc newYnode*(id:string = ""; isLocator:bool = false):YnodeObj =
  result = YnodeObj(isLocator: false)
  if islocator:
    result = YnodeObj(isLocator: true)
  if id != "":
    result.setId(id)
  
proc newShapeNode*(): ShapeNodeObj =
  return ShapeNodeObj()

proc newGeometry*(x, y, width, height: float): GeometryObj =
  result = GeometryObj()
  result.x      = x
  result.y      = y
  result.width  = width
  result.height = height

proc newFill*(color:string = "#000000"; transparent: bool = false): FillObj =
  result = FillObj()
  result.color       = color
  result.transparent = transparent

proc newBorderStyle*( color:string = "#000000"; raised: bool = false,
                      typ:string = "line"; width:float = 1.0): BorderStyleObj =
  result = BorderStyleObj()
  result.color  = color
  result.raised = raised
  result.typ    = typ
  result.width  = width

proc newNodeLabel*(alignment:string ="center"; autoSizePolicy:string = "content";
        fontFamily:string = "Dialog"; fontSize:int = 12; fontStyle:string = "plain";
        hasBackgroundColor:bool = false; hasLineColor:bool = false;
        horizontalTextPosition:string = "center"; iconTextGap:int = 4;
        modelName:string = "free"; modelPosition:string = "anywhere";
        textColor:string = "#000000"; verticalTextPosition:string = "bottom";
        visible:bool = true;
        width:float = 50.0; height:float = 17.96875; 
        x:float = 13.0; y:float = 13.0): NodeLabelObj =
  result = NodeLabelObj()
  result.alignment              = alignment
  result.autoSizePolicy         = autoSizePolicy
  result.fontFamily             = fontFamily
  result.fontSize               = fontSize
  result.fontStyle              = fontStyle
  result.hasBackgroundColor     = hasBackgroundColor
  result.hasLineColor           = hasLineColor
  result.horizontalTextPosition = horizontalTextPosition
  result.iconTextGap            = iconTextGap
  result.modelName              = modelName
  result.modelPosition          = modelPosition
  result.textColor              = textColor
  result.verticalTextPosition   = verticalTextPosition
  result.visible                = visible
  result.width  = width
  result.height = height
  result.x      = x
  result.y      = y


proc newShape*(typ:string = "rectangle"): ShapeObj = 
  result = ShapeObj()
  result.typ = typ


#[
<node id="n0">
    <data key="d4"/>
    <data key="d5">
    <y:ShapeNode>
        <y:Geometry height="64.0" width="135.0" x="-44.0" y="-143.0"/>
        <y:Fill color="#FFCC00" transparent="false"/>
        <y:BorderStyle color="#000000" raised="false" type="line" width="1.0"/>
        <y:NodeLabel alignment="center" autoSizePolicy="content" fontFamily="Dialog" fontSize="12" 
        fontStyle="plain" hasBackgroundColor="false" hasLineColor="false" height="17.96875" 
        horizontalTextPosition="center" iconTextGap="4" modelName="free" modelPosition="anywhere" 
        textColor="#000000" verticalTextPosition="bottom" visible="true" 
        width="52.08203125" x="13.0" y="13.0">ejemplo</y:NodeLabel>
        <y:Shape type="rectangle"/>
    </y:ShapeNode>
    </data>
</node>
]#