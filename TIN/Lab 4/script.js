var a = prompt("a:");
var b = prompt("b:");
var c = prompt("c:");

function zad1(a, b, c) {
    var pitagorejski = "trójkąt niepitagorejski";

    if (a*a == b*b + c*c){
        pitagorejski = "trójkąt pitagorejski"
    } else if (b*b == a*a + c*c){
        pitagorejski = "trójkąt pitagorejski"
    } else if (c*c == a*a + b*b){
        pitagorejski = "trójkąt pitagorejski"
    }

    console.log(pitagorejski);
}

function zad2(a, b, c) {
    for (let i = b; i > a; i--) {
        if (i % c == 0){
            console.log(i)
        }
    }
}



// console.log(zad1(a,b,c));
console.log(zad2(a,b,c));

