include "console.iol"

execution{ concurrent }

type helloRequest: void {
  msg: string
}

type helloResponse: void {
  msg: string
}

interface testInterface {
RequestResponse:
  hello( helloRequest ) ( helloResponse )
}

inputPort PortName {
  Location: "socket://localhost:8000/"
  Protocol: http
  Interfaces: testInterface
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
