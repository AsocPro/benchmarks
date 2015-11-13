package main
 
import "fmt"
import "os"
import "strconv"
 
func main() {

	var limit int = 999999
	if string, err := strconv.Atoi(os.Getenv("LIMIT")); err == nil {
		limit = string
	}
	var numbers = make([]int, limit+1)
	for count := 0; count <= limit ; count++ {
		numbers[count] = count
	}
	sum := 0
	for count := 0; count <= limit ; count++ {
		sum += numbers[count]
	}
	fmt.Println(sum)
}
