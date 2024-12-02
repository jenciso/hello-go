package main

import (
	"fmt"
	"runtime"
)

func main() {

  fmt.Println("Hello: Version 114, Go")
	fmt.Println(runtime.GOOS, runtime.GOARCH)

}
