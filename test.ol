include "console.iol"
include "testinterface.iol"

execution{ concurrent }

inputPort PortName {
  Location: "socket://localhost:8000/"
  Protocol: http
  Interfaces: testInterface
}

main
{
  hello( in ) ( out ){
    if( in.msg == "hello" ) {
      out.msg = "world!!"
    }else {
      out.msg = "?"
    }
  }
}
