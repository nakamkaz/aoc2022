package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func dlog(msg ...interface{}) {
	if os.Getenv("DEBUG") == "1" {
		log.Print(msg)
	}
}
func main() {
	var ecal int = 0
	var topc1, topc2, topc3 int = 0, 0, 0
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		line := stdin.Text()
		if len(line) == 0 {
			dlog("len of line", len(line))
			if topc1 <= ecal {
				topc3 = topc2
				topc2 = topc1
				topc1 = ecal
			} else if topc2 <= ecal {
				topc3 = topc2
				topc2 = ecal
			} else if topc3 <= ecal {
				topc3 = ecal
			}
			ecal = 0
			dlog("topc1 topc2 topc3", topc1, topc2, topc3)
		} else {
			lv, _ := strconv.Atoi(line)
			ecal = ecal + lv
			dlog("line: ", line)
		}
	}
	dlog("topc1 topc2 topc3", topc1, topc2, topc3)
	fmt.Println(topc1 + topc2 + topc3)
}
