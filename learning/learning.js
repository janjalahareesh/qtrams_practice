// this is addition method//
function addition() {

   let a=10;
   let b=20;
   let c=a+b;
    console.log(c);

}


let btn1 = document.querySelector("#btn1")

btn1 .addEventListener("click",function(){

    addition();
}) 

// this is substract method//
function substract() {

    let a=20;
    let b=10;
    let c= a-b;

    console.log(c)
}

let btn2 = document.querySelector("#btn2")

btn2 .addEventListener("click",function(){

    substract();
})


// this is multiply method //

function multiply(){

    let a=5;
    let b=8;
    let c= b-a
    console.log(c)
}

let btn3 = document.querySelector("#btn3")

btn3 .addEventListener("click",function(){

    multiply();
})


// this is division method //

function division(){

    let a= 10;
    let b= 5;
    let c= a/b;

    console.log(c)
}

let btn4 = document.querySelector("#btn4")

btn4 .addEventListener("click",function(){

    division();
})
