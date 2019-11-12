type helloRequest: void {
  msg: string
}

type helloResponse: void {
  msg: string
}

interface mainInterface {
RequestResponse:
  hello( helloRequest ) ( helloResponse )
}
