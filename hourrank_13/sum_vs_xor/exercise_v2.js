/* ------- Recursive solution, more efficient ------- */

function main() {
    var n = 1000;
    var counter = 0;
    
    function myXOR(x) {
        if (x > n) {
            return counter;
        } else if ((n + x) == (n ^ x)) {
            counter++;
        }
        return myXOR(x + 1);
    }
    myXOR(0);
    return console.log(counter);
}

main();
