package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	//"strconv"
	"strings"
)
var (
	A,X int = 1, 1
	B,Y int = 2, 2
	C,Z int = 3, 3
	LOSE,DRAW,WIN int = 0, 3, 6
)

func xtov(a string) int {
	var rv int =0
	if a=="X" {
		rv=X
	}
	if a=="Y" {
		rv=Y
	}
	if a=="Z" {
		rv=Z
	}
	return rv
}
func calsc(op ,i string ) int {
	var rv int =0
	if  op == "A" && i =="X" {
		rv=DRAW
	}
	if  op == "A" && i =="Y" {
		rv=WIN
	}
	if  op == "A" && i =="Z" {
		rv=LOSE
	}
	if  op == "B" && i =="X" {
		rv=LOSE
	}
	if  op == "B" && i =="Y" {
		rv=DRAW
	}
	if  op == "B" && i =="Z" {
		rv=WIN
	}
	if  op == "C" && i =="X" {
		rv=WIN
	}
	if  op == "C" && i =="Y" {
		rv=LOSE
	}
	if  op == "C" && i =="Z" {
		rv=DRAW
	}
	return rv
}
func dlog(msg ...interface{}) {
	if os.Getenv("DEBUG") == "1" {
		log.Print(msg)
	}
}

func main() {
	var  score int = 0
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		line := stdin.Text()
		lv := strings.Split(line," ")  
		opsh,mysh := lv[0],lv[1]
		dlog(opsh,mysh)
		score += calsc(opsh,mysh)+xtov(mysh)
	}
	fmt.Println(score)
}
