/*
화살표 함수 : 함수 표현식 형태
             function 키워드 대신 =>
*/

// 함수 선언
const intro = () => {
    console.log(`Spring반에서 막내를 맡은 지호입니다. 😎`);
}

// 함수 호출
intro();

// 매개변수
const intro2 = (name) => {
    console.log(`Spring반에서 막내를 맡은 ${name}입니다. 😎`);
}
intro2('세영');



/*
매개변수 1개 => () 생략 가능
실행문 1개 => {} + return 생략 가능
*/

// 매개변수 + return문
const intro3 = name =>{
    `Spring반에서 막내를 맡은 ${name}입니다. 😎`;
}

intro3('영화');
console.log(intro3('영화'));
