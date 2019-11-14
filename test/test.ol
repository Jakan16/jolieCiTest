include "runtime.iol"
include "console.iol"
include "../interfaces/MainInterface.iol"

outputPort Test {
  Location: "socket://localhost:8000/"
  Protocol: http
  Interfaces: mainInterface
}

main
{
  scope( test )
  {
    install( IOException =>
      println@Console( "Failed to connect" )()
      halt@Runtime( {status = 50} )( )
    )

    hello@Test({ msg = "hello" }) ( response )

    if( response.msg != "world!" ) {
      println@Console( "expected world!" )()
      halt@Runtime( {status = 1} )( )
    }


    hello@Test({ msg = "bye" }) ( response )

    if( response.msg == "world!" ) {
      println@Console( "expected anything but world!" )()
      halt@Runtime( {status = 2} )( )
    }
  }
}
