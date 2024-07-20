// 조건문 : 주어진 조건을 비교, 판단하여 결과를 얻는 구문

let coffeeMenu = '아메리카노';
// 조건이 참 또는 거짓일 때
// (조건) ? (참) : (거짓)
coffeeMenu == '아메리카노' 
? console.log('주문하신 음료 나왔습니다.') 
: console.log('잠시 기다려주세요.');
// 조건이 하나일 때
// (조건) && (실행문)
coffeeMenu == '수박주스' && console.log('이벤트 중인 메뉴입니다.');
coffeeMenu == '수박주스' || console.log('이벤트 중인 메뉴입니다.');

let num = 20;
if(num>10){
    // 참
    console.log('10보다 큰 수 입니다.');
}else{
    // 거짓
    console.log('10보다 작은 수 입니다.')
}
