include "console.iol"
include "../interfaces/MainInterface.iol"

execution{ concurrent }

inputPort PortName {
  Location: "socket://localhost:8000/"
  Protocol: http
  Interfaces: mainInterface
}

main
{
  hello( in ) ( out ){
    if( in.msg == "hello" ) {
      out.msg = "world!"
    }else {
      out.msg = "?"
    }
  }
}
