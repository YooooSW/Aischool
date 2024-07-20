// 배열에 저장된 데이터를 반복문으로 출력

// (1) for문
let nameList = ['승완', '재훈', '희은', '지호', '보름'];
for(let i=0; i<nameList.length; i++){
    console.log(nameList[i]);
}

// (2) for-of문
let foodList = ['삼겹살', '샌드위치', '닭'];
for(let item of foodList){
    console.log(item);
}

// (3) forEach문
let subList = ['JavaScript', 'Java', 'DB'];
subList.forEach((item, index) =>{
    console.log(index, item);
})

