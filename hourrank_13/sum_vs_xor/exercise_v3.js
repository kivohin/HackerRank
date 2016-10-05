/* ------- Pattern solution, most efficient ------- */

function main() {
    var n = 1000000000000;
    var counter = 0;
    binary = n.toString(2);

    if (n == 1 || n == 0) {
        return console.log(1);
    } else {
        array = binary.split("");
        array.forEach(function(number) {
            if (number == "0") {
                counter++;
            }
        })
        result = Math.pow(2, counter);
        return console.log(result);
    }
}

main();