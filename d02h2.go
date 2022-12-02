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
	A, X            int = 1, 1
	B, Y            int = 2, 2
	C, Z            int = 3, 3
	LOSE, DRAW, WIN int = 0, 3, 6
)

func xtov(a string) int {
	var rv int = 0
	if a == "X" {
		rv = X
	}
	if a == "Y" {
		rv = Y
	}
	if a == "Z" {
		rv = Z
	}
	return rv
}
func calsc(op, i string) int {
	var rv int = 0
	if op == "A" && i == "X" {
		rv = LOSE + Z
	}
	if op == "A" && i == "Y" {
		rv = DRAW + X
	}
	if op == "A" && i == "Z" {
		rv = WIN + Y
	}
	if op == "B" && i == "X" {
		rv = LOSE + X
	}
	if op == "B" && i == "Y" {
		rv = DRAW + Y
	}
	if op == "B" && i == "Z" {
		rv = WIN + Z
	}
	if op == "C" && i == "X" {
		rv = LOSE + Y
	}
	if op == "C" && i == "Y" {
		rv = DRAW + Z
	}
	if op == "C" && i == "Z" {
		rv = WIN + X
	}
	return rv
}
func dlog(msg ...interface{}) {
	if os.Getenv("DEBUG") == "1" {
		log.Print(msg)
	}
}

func main() {
	var score int = 0
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		line := stdin.Text()
		lv := strings.Split(line, " ")
		opsh, mysh := lv[0], lv[1]
		dlog(opsh, mysh)
		score += calsc(opsh, mysh)
	}
	fmt.Println(score)
}
