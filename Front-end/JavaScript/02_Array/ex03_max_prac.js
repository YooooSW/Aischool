/*
(1) 주어진 데이터를 담은 배열을 생성
(2) 반복문을 통해 최댓값을 검색
(3) 알림팝업창 출력
*/

let numList = [23,54,78,13,44];

let max = numList[0];

for(let i=0; i<numList.length; i++){
    numList[i]>max && (max=numList[i]);
}

alert(`최댓값 >> ${max}`)