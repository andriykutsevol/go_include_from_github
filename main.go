package main

import (
	"fmt"
	"github.com/andriykutsevol/go_module_template"
	"github.com/andriykutsevol/go_include_from_github/justmylocalpackage"
)


func main(){
	fmt.Println("hello")
	fmt.Println(go_module_template.Hello("Bob"))
	justmylocalpackage.Justmylocalpackage_function()
}
