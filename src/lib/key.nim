import graphml


proc setYfilesType*(obj: var KeyObj; value:string ) =
  obj["yfiles.type"] = value


proc addDefaultKeys*(gml: var GraphMlObj) =
  # Port keys
  var key0 = newKey("d0")
  key0.setFor("port")
  key0.setYfilesType("portgraphics")
  gml.add key0

  var key1 = newKey("d1")
  key1.setFor("port")
  key1.setYfilesType("portgeometry")
  gml.add key1

  var key2 = newKey("d2")
  key2.setFor("port")
  key2.setYfilesType("portuserdata")
  gml.add key2


  # Node keys
  var key3 = newKey("d3")
  key3.setFor("node")
  key3.setNameType("url", "string")
  gml.add key3

  var key4 = newKey("d4")
  key4.setFor("node")
  key4.setNameType("description", "string")
  gml.add key4
 
  var key5 = newKey("d5")
  key5.setFor("node")
  key5.setYfilesType("nodegraphics")
  gml.add key5


  # Graphml keys 
  var key6 = newKey("d6")
  key6.setFor("graphml")
  key6.setYfilesType("resources")
  gml.add key5
 

  # Edge keys
  var key7 = newKey("d7")
  key7.setFor("edge")
  key7.setNameType("url", "string")
  gml.add key7

  var key8 = newKey("d8")
  key8.setFor("edge")
  key8.setNameType("description", "string")
  gml.add key8

  var key9 = newKey("d9")
  key9.setFor("edge")
  key9.setYfilesType("edgegraphics")
  gml.add key9
  