package main

import (
	"fmt"
	"net/http"
	"os"
)

func hello(w http.ResponseWriter, r *http.Request) {
	hostname, _ := os.Hostname()
	fmt.Fprintf(w, "I'm %s", hostname)
}

func main() {
	fmt.Printf("starting at :8000")
	http.HandleFunc("/", hello)
	fmt.Println(http.ListenAndServe("0.0.0.0:8000", nil))
}
