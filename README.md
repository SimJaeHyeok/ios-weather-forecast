# 날씨 앱
![스크린샷 2023-12-22 오후 3.24.29](https://hackmd.io/_uploads/BJsGhozva.png)

## 팀원
|범|재혁|
|:--:|:--:|
|<img src="https://avatars.githubusercontent.com/u/118453865?v=4" width=200>|<img src="https://avatars.githubusercontent.com/u/142188004?v=4" width=200>|




## 구현사항
- 파싱한 JSON 데이터와 매핑할 모델 설계
- CodingKeys 프로토콜의 활용
- API 서버와 통신할 인스턴스 역할을 수행할 타입 구현
- 범용성과 재사용성, 유연성을 고려한 네트워킹 타입 구현
- 라이브러리 없이 URLSession을 활용하여 구현
- 네트워크의 통신이 없는 URLSession 테스트 코드 작성
- CoreLocation을 통해 현재 좌표 가져오기
- CoreLocation을 통해 주소 가져오기
- URLSession을 통해 API 호출
- 전달받은 JSON 데이터 파싱 및 모델에 매칭
- 컬렉션뷰 헤더 뷰의 활용
- 컬렉션 뷰 커스텀 셀 구현
- Refresh Control의 활용
- 컬렉션뷰 셀의 이미지 지연 로딩 문제 해결
- DateFormatter 등을 활용한 날짜표현
- UIAlertController를 통한 필드 입력받기

## 실행화면
![screen](https://hackmd.io/_uploads/BJAZf0kvT.gif)




## 프로젝트 구현 사항 
- URLSession
    - URLSessionProtocol을 통해 URLSession에서 사용하는 공통적인 메서드를 작성
    - NetworkSerViceable이라는 프로토콜을 생성하여 여러 데이터에 대해 처리가 가능하도록 Generic타입으로 작성
    - NetworkServiceProvider가 URLSession을 파라미터로 가지고 올 수 있게 제작을 하여 네트워크의 실제 통신이 없는 테스트 코드를 작성
- CoreLocation
    - CoreLocation을 활용해 사용자에게 위치 정보 제공 동의를 받아 사용자의 현재 위치를 기반으로 날씨 정보 제공
    - CoreLocation을 통해 받아온 위도, 경도 값을 CLGeocoder를 이용하여 해당 위치 지역 이름으로 변환하여 표시
- Collection View
    - Listconfiguration을 이용하기 위해 기존의 flowLayout을 사용한 collection View의 layout을 compositionalLayout으로 변경


## Trouble Shooting

- cell의 크기가 header와 비슷하여 크기를 줄이려는 시도를 했다. 
- cell내부의 스택뷰의 크기를 조절하여 cell의 크기를 줄이려 했다.
- 이미지의 크기를 view의 비율로 잡아서 줄이려 시도. view는 나오지만 consol창에constraint 오류가 출력되는 상황 발생
- 이유: cell에 요소를 추가 해야하는 경우에 cell의 content view에 추가를 해야하지만 cell의 에 추가를 했기 때문에 constraint오류가 발생
