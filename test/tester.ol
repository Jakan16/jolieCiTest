include "runtime.iol"
include "console.iol"
include "../testinterface.iol"

outputPort Test {
  Location: "socket://localhost:8000/"
  Protocol: http
  Interfaces: testInterface
}

main
{
  hello@Test({ msg = "hello" }) ( response )

  if( response.msg != "world!" ) {
    println@Console( "expected world!" )()
    halt@Runtime( {status = 1} )( )
  }


  hello@Test({ msg = "bye" }) ( response )

  if( response.msg == "world!" ) {
    println@Console( "expected anythin but world!" )()
    halt@Runtime( {status = 2} )( )
  }

}
