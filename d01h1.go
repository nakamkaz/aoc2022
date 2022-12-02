package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func dout(msg ...interface{}) {
	if os.Getenv("DEBUG") == "1" {
		log.Print(msg)
	}
}
func main() {
	var ecal, maxcal int = 0, 0
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		line := stdin.Text()
		if len(line) == 0 {
			if maxcal <= ecal {
				maxcal = ecal
			}
			dout("length of line:", len(line))
			ecal = 0
		} else {
			lv, _ := strconv.Atoi(line)
			ecal = ecal + lv
			dout("line: ", line)
		}
	}
	fmt.Println(maxcal)
}
