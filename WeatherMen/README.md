# WEATHERMEN

---

## Why?

- 날씨에 관련된 앱이나 사이트들을 사용하는 데이터 소스에 따라 보여주는 정보에 차이가 있다. 1-2도 가량의 온도 차이, 비 내림 여부 및 강수 확률 간의 차이 등이 발생할 때가 있다. 하지만 유저들이 이러한 정보의 차이를 해소하기 위해 여러 정보 소스들을 찾아보는 것은 귀찮은 일이다. 앱을 통해 여러 데이터 소스들에서 가져오는 정보를 한 눈에 보여줌으로써 유저들로 하여금 더 다양한 날씨 정보를 바탕으로 생활 속에서 조금 더 빠르고 쉽게 정확한 결정을 내릴 수 있도록 돕고자 한다.
- ‘기상망명족'이라 불리는 유저들이 꽤 존재한다. 기상청의 정보를 불신하여 AccuWeather, Windy, YR 등 해외 날씨 앱들을 사용하는 유저들을 칭한다.
- 해외 API들을 포함하여 여러 API들을 통해 받아온 정보를 간략하게 보여주자.
- AppName은 ‘WeatherMen’으로 선정
  - 여러 개의 API들을 여러 명의 날씨 제공자들로 비유하여 복수 형태의 men 사용

---

## How and What?

- 어떤 API들을 사용할 것인가?
  - OpenWeatherMap
  - AccuWeather
  - 기상청
- 어떻게 API 정보들을 유연하게 가공해서 쓸 것인가?
- 어떻게 weather 정보들을 UI에 직관적이고 예쁘게 디자인할 것인가?

---

## MVP(Minimal Viable Product) Plan

- 첫 출시 API는 2개의 API 사용으로 한다. 차후 필요 시 API 정보 추가 예정.
- 현재 위치명 (좌표 → 현재 위치명)
- 현재 날씨 정보
  - 현재 날씨 상태명
  - 현재 날씨 상태 이미지
  - 현재 온도
  - 최고 온도 / 최저 온도
- 향후 12시간 날씨 예보
  - 날씨 상태 이미지
  - 온도
  - 강수 확률 (강수 확률 있을 시에만 표시)
- 일상생활에서 가장 영향을 많이 끼치는 정보는 온도 / 강수 여부 및 확률이기에 해당 정보를 중점으로 활용한다.
- 유저의 현재 위치 좌표를 기반으로 데이터를 가져와 현재 위치명, 현재 날씨 정보, 향후 12시간 날씨 예보(2개의 API에서 받아온 정보를 테이블뷰를 통해 보여주기)를 한 화면에 보여준다.
- 리로드 버튼을 통해 위치가 바뀌었을 때 새로운 좌표를 바탕으로 날씨 정보를 요청할 수 있다.

---

### v 1.0.0 (03/22/2022)

- Plan
  - 2개의 API를 사용하여 현재위치명, 현재날씨, 향후 12시간 날씨 예보를 보여준다.
  - OpenWeatherMap, AccuWeather 사용
  - 위치 변화 시 리로드 버튼으로 새로운 날씨 정보를 요청할 수 있다.
  - 앱아이콘 의뢰 등 Appstore 출시를 위한 작업들을 완수하여 배포까지 완료한다.
- Initial Project Settings
  - WeatherMen 프로젝트 생성 및 github repo 생성
    - Deployment Target → iOS 13.0 (-2 ~ -3)
    - Deployment Info - Status Bar Style - Light Content (상태 관련 바 흰색으로 표시 가능)
    - View Controller-Based Status Bar Appearance - NO (Info.plist)
    - Edit Scheme → App Language(System Language → Korean) / App Region (System Region → South Korea)
  - postman 설치 및 계정 생성
  - OpenWeatherMap API 계정 생성 / API 키 발급
- Initial UI Settings

  - Storyboard 활용
  - 첫 버전은 1개의 화면을 사용
    - 현재위치명 label
    - 현재날씨정보 표시용 table view
      - 날씨상태 image view
      - 날씨상태명 label
      - 최고 / 최저온도 label
      - 현재온도 label
    - 향후 12시간 날씨예보 표시용 table view
      - 날짜표시용 label
      - 시간표시용 label
      - 날씨상태 image view
      - 강수확률 label
      - 온도 label
  - 테이블뷰 데이터소스 구현
    - SummaryTableViewCell class (현재날씨 표시 셀 관리)
    - ForecastTableViewCell class (날씨예보 표시 셀 관리)
    - CurrentDestinationViewController class (현재화면 관리)
      - UITableViewDataSource 프로토콜 준수
  - 날씨상태 표시용 icon pack 다운 ([https://www.flaticon.com/packs/weather-162](https://www.flaticon.com/packs/weather-162))

- Weather Datasource 구현

  - WeatherDataSource class (날씨 API 네트워킹 관리)
  - 파싱용 model 생성
    - 현재날씨

- Distribution

---

## v 1.1.0

### Plan

- Alamofire를 활용하여 네트워킹 코드 관리
- UI 개선
  - 출처 버튼 삭제
  - 현재날씨 / 예보 간 구분이 어려움
  - 조금 더 직관적이고 예쁜 디자인은?
- 기상청 API 추가

---

## Features (for further development)

- 날씨 공유 기능
- 알림 기능 (비오기 30분 전 등)
- 알림 기능 (특정 시간대 현 날씨 상황 / 8시에 출근 준비하는 사람에게 앱을 켤 필요없이 간소화된 정보를 8시에 알림을 볼 수 있게 하는 등)
- 섭씨 / 화씨 변환

---

## Bugs (for further fixes)

- 앱을 켰을 때 가끔 리로드 버튼을 누르기 전에 테이블뷰는 자동으로 로딩되지 않는 문제 발생

---

## References

- 좌표 전환 mapbox API
  - [https://docs.mapbox.com/api/search/geocoding/](https://docs.mapbox.com/api/search/geocoding/)
- postman (api 테스트 툴)
  - [https://meetup.toast.com/posts/107](https://meetup.toast.com/posts/107)
  - api 수동으로 url이랑 json body 넣고 요청 날려볼 수 있음
  - mapbox api에 바로 때려봐라
- NetworkService (Alamofire)
  - endPoint: 부르고 싶은 request의 헤더, 바디, 메서드, 리턴 타입 등을 넣는 것이다. endPoint로 하는 이유는 깔끔하게 쓰려고. call에 endPoint만 넣으면 Alamofire에 헤더, 바디, 메서드 등을 세팅해주고, 정보를 빼낸다.
- RxSwift
  - RxSwift는 Observable의 개념이다. WeatherSearchVC라는 방송국에서 7번 전파를 수신하도록 설정할게라고 선언하는 것. 그러면 알겠어, 7번 관련 전파(데이터)가 내려오면 여기로 쏴줄게. 일종의 송출탑의 개념이다. 미리 이거에 관심이 있고, 여기에 변동사항이 생기면 나한테 알려달라는 것.
- 함수나 변수 어디서 쓰였는지 찾고자 하면 커서로 찍고 cmd+ctrl+shift+f
- MVVM

---
