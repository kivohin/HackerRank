function processData(input) {
	var e = input[input.length - 1];

	for (i = array.length - 1; i < input.length; i--) {
		if (array[i] < array[i - 1]) {
			array[i] = array[i - 1]
		};
	};
} 

var i, array;
array = [1, 3, 4, 2]

processData(array);

// process.stdin.resume();
// process.stdin.setEncoding("ascii");
// _input = "";

// process.stdin.on("data", function (input) {
//     _input += input;
// });

// process.stdin.on("end", function () {
//    processData(_input);
// });