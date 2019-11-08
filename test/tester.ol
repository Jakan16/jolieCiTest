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
    throw( unexpectedResult )
  }


  hello@Test({ msg = "bye" }) ( response )

  if( response.msg == "world!" ) {
    throw( unexpectedResult )
  }

}
