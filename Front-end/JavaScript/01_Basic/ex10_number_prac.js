/*
(1) 랜덤한 수를 하나 뽑아준다.
(2) 사용자로부터 숫자를 입력받아 조건에 따라 팝업창을 띄워준다.
    입력 > 랜덤 => '입력한 수보다 작은 수입니다.'
    입력 < 랜덤 => '입력한 수보다 큰 수입니다.'
    입력 = 랜덤 => '정답입니다. 축하합니다.'
*/

// console.log(Math.random()*100+1);

let randomNum = parseInt(Math.random()*100) + 1;

while (true) {
    let num = prompt("숫자를 입력하세요.");

    if (num === null) {
        alert('게임을 종료합니다.');
        break;
    }

    num = Number(num);

    if (num > randomNum) {
        alert('입력한 수보다 작은 수입니다.');
    } else if (num < randomNum) {
        alert('입력한 수보다 큰 수입니다.');
    } else {
        alert('정답입니다. 축하합니다.😎');
        break;
    }
}
