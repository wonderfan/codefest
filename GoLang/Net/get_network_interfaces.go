package main

import "net"

func main() {
	// execute the Intefaces function and the returned result interface type array
	interfaces, err := net.Interfaces()
	if err != nil {
		panic(err)
	}

	for _, instance := range interfaces {
		println(instance.Name)
	}
}

