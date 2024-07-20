// 배열 : 여러 변수를 하나의 묶음으로 다루는 구조

// (1) 배열 생성
let numList = [];
numList = [1,2,3];
console.log(numList);
let numList2 = [4,5,6];
console.log(numList2);

let numList3 = new Array(5);
console.log(numList3);
numList3 = [1,2,3,4,5,6,7];
console.log(numList3);

// (2) 배열 인덱스

let numList4 = [7,8,9];
console.log(numList4[0]);

const numList5 = [];
numList5[0] = 1;
numList5[1] = '가나다';
numList5[2] = true;

console.log(numList5);

// (3) 배열의 길이
console.log(numList5.length);