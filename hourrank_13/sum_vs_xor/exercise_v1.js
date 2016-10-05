/* ------- Loop solution, not efficient ------- */

function main() {
    var n = 100;
    var counter = 0;
    
    for (var x = 0; x <= n; x++) {
        if ((n + x) == (n ^ x)) {
            counter++;
        }
    }
    return console.log(counter);
}
