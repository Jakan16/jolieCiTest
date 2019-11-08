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
