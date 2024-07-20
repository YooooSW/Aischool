/* 
변수 : 데이터를 담을 공간
let num = 3;
let => 변수 선언 키워드
num => 변수 이름
3 => 변수에 할당된 값

변수 선언 키워드
var : 재선언o 재할당o
let : 재선언x 재할당o
const : 재선언x 재할당x
재선언 : 같은 변수 이름으로 다시 변수를 선언하는 것
재할당 : 선언된 변수에 다시 값을 할당하는 것
*/

/* 
(1) 사용자로부터 이름을 입력받는다.
(2) 입력 받아온 이름을 공간에 넣어준다.
(3) 공간에 담아준 이름을 형태에 맞춰
    콘솔창으로 출력해준다.
*/
let userName = prompt('이름을 입력하세요.');

console.log('어서오세요');
console.log(userName+'님 환영합니다.😊');

const userClass = 'Spring';
// console.log(userClass+'반의'+userName+'님입니다.');

/* 
Template Literals(템플릿 리터럴)
: 표현식/문자열 삽입, 여러 줄 문자열 등 다양한 기능을 제공
  `(백틱) => 1 왼쪽 물결과 함께 있는 기호
*/
console.log(`환영합니다!
    ${userClass}반의 ${userName}님입니다.`);