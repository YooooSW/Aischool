/*
(1) 두 개의 수를 입력 받는다.
(2) 입력 받은 두 수의 합을 구하는 함수를 생성한다.
(3) 결과값을 알림팝업창의 형태로 출력한다.
*/

let num1 = Number(prompt('첫번째 정수 입력'));
let num2 = Number(prompt('두번째 정수 입력'));

const addNum = (num1,num2) => num1+num2;

alert(addNum(num1,num2));


