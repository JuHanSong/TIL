# 1. JSP_4Day

* client측 관련 기술(front end)
  * html, css ,js
  * css

* JavaScript 
  * 클라이언트측에서 먼저 조건 체크해서 웹서버의 작업을 분산 [글자길이, 패턴체크 등..]
  * 외부와의 통신 맵, 결제, 소셜로그인, 챗봇 등.. 우리의 웹서버에 없는 기능들을 제공하는 외부 서버와의 통신.

* Async Javascript Xml [ajax]

  * 비동기식 프로그래밍 : 동기가 필요하지 않고 월할때 페이지 넘김없이 서버통신하는 기술. 

  * JSON(Java Script Object Notation) 제이슨 

    * 자바스크립트에서 데이터 전달할 대상을 표기하는 방법.

    * key value 형태로 값을 넣어준다.

      ```json
      {money: 10000, id : park, company :good}
      ```
      
      ```xml
      <money> 10000</money>
      <id>
      	<last>park</last>
      	<first>song</first>
</id>
      <company>good</company>
      ```
      

* 브라우저가 Ram에 html의 문설르 읽어들일 때 tree 구조로 읽어들인다.
  *  tree 구조는 root가 있게 되고, 그 아래에 자식으로 다른 객체들을 붙이는 방식의 구조
  * 위 : 부모, 아래 : 자식
  * append() : 부모아래에 자식을 붙이라는 의미
  * empty() : 부모아래에 있는 자식을 다 지워라라는 의미

* Document Object Model Tree(DOM Tree)
* Object : 트리의 일부분을 본다. node(가지)