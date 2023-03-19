# 2주차 - 포커 게임

## 2-1 게임보드 만들기

### Check List

- [x] 포커게임 앱 프로젝트 저장소를 Fork 후 로컬에 Clone
- [x] IOS 프로젝트 APP 템플릿으로 “PokerGameApp” 프로젝트 생성
- [x] .gitingnore 추가
- [x] readme 프로젝트 설명 수정
- [x] 앱 기본 설정 StatusBar 을 LightContent 로 보이도록 설정
- [x] ViewController 클래스에서 self.view 배경을 이미지 패턴으로 변경 후 이미지 파일을 Assets에 추가
- [x] 카드 뒷면 이미지 파일 Assets.xcassets 에 추가
- [x] ViewController 클래스에서 코드로 7개 UIImageView를 생성하고 추가해서 카드 뒷면을 보여준다. \*StackView를 사용하지 말고 직접 UIImageView를 7개 생성해야 한다. 화면 크기를 구해서 균등하게 7등분해서 이미지를 표시해야 하며 카드 가로와 세로 비율은 1:1.27로 지정한다

### 학습 List

### 실행 화면 캡쳐

<img width="466" src="https://velog.velcdn.com/images/harimrim/post/eb420b92-d4e5-4526-828b-4ddec70bff6e/image.png">

- [ ] StackView
- [ ] StatusBar
- [ ] UIImageView
- [ ] Assets

## 2-2 카드 클래스 구현하기

- [x] 객체지향 프로그래밍 방식에 충실하게 카드 Class를 생성한다
  - 속성으로 모양 4개 중에 하나, 숫자 1-13 중에 하나를 가질 수 있다
  - 모양이나 숫자도 데이터 구조로 표현한다. Class 혹은 Nested enum 타입도 괜찮다
  - 어떤 이유로 데이터 구조를 선택한지 주석으로 구체적인 설명을 남긴다
  - 카드 정보를 출력하기 위해서 문자열을 반환하는 함수를 구현한다
  - 문자열에서 1은 A로, 11은 J로, 12는 Q로, 13은 K로 출력한다
- [x] ViewController에서 특정한 카드 객체 인스턴스를 만들어서 콘솔에 출력한다
- [x] 데이터를 처리하는 코드와 출력하는 코드를 분리한다
