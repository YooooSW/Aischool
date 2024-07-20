/*
(1) number : 정수, 실수 등 산술 연산이 가능한 자료형
(2) string : 문자열로 이루어진 자료형
(3) boolean : 참/거짓으로 표현되는 노리 형태의 자료형
(4) undefined : 값이 할당된 적이 없거나 존재하지 않는 속성일 때의 자료형
(5) null : 아무런 값을 나타내지 않을 때의 자료형
*/

let val1;
console.log('선언만',val1);
val1 = 'data';
console.log('할당후',val1);

let val2 = null;
console.log(val2);

/*
형변환
(1) 실수로 변환 : parseFloat(val)
(2) 정수로 변환 : parseInt(val)
(3) 숫자로 변환 : Number(val)
(4) 문자로 변환 : String(val)
*/

let val3 = '3.14';
let val4 = 5.12;
let val5 = '5';
let val6 = 100;

console.log(val3);
console.log('parseInt', parseInt(val3));
console.log('parseFloat', parseFloat(val3));
console.log('parseInt', parseInt(val4));
console.log('Number', Number(val3));
console.log('Number', Number(val5));
console.log('String', String(val4));
console.log('String', String(val6));


