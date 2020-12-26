# 1. SQL 구문

## 1) DESCRIBE = DESC 

* 테이블에 무슨 열이 있는지 확인. 

## 2) SELECT 

* 요구하는 데이터를 가져오는 구문. 
* 테이터베이스 내 테이블에서 원한느 정보를 추출

```
SELECT * FROM city  // city 테이블에 있는 전체 열 검색.
SELECT Name, Population FROM city // city 테이블의 Name, Population 열만 검색.
```

## 3)  WHERE

* 조회하는 결과에 특정한 조건으로 원하는 데이터만 보고 싶을 때 사용.
* SELECT 필드이름 FORM 테이블이름 WHERE조건식;

```
SELECT * FROM city WHERE Population >= 8000000; // city 테이블 중 Population 이 800만 이상.
SELECT * FROM city WHERE Population < 8000000 AND Population > 7000000;
// city 테이블 중 Population 이 800만 이상 700만 이하만 출력. (조건연산자, 관계연산자)
SELECT * FROM city WHERE CountryCode = 'KOR' AND Population >= 1000000;
// city 테이블 - ContryCode:KOR 이면서 Population> 100만 이상인 도시만 검색.
```

## 4) BETWEEN 

* 데이터가 숫자로 구성되어 있어 연속저인 값은 BETWEEN AND 사용가능.

  ```
  SELECT * FROM city WHERE Population BETWEEN 7000000 AND 8000000;
  // city 테이블 - Population 이 700만과 800만 사이의 값을 검색.
  ```

## 5) IN

* 이상적인 값의조건에서 IN 사용 가능.

```
SELECT * FROM city WHERE Name IN('Seoul','New York','Tokyo');
// city - Name 이 서울, 뉴욕, 도쿄 값 검색.
SELEXT * FROM city WHERE CountryCode IN('KOR','USA','JPN');
// city - CountryCode 가 KOR,USA,JPN 값을 검색함.

```

## 6) LIKE 

* 문자열의 내용 검색하기 위해서 LIKE 연산자 사용.
* 문자뒤에 %_ 무엇이든(%) 허용.
* 한 글자와 매치하기 위해서는 '_'사용.

```
SELECT * FROM city WHERE ContryCode LIKE 'KO_'
// city - ContryCode가 KO_ 문자 아무거나 와도 검색이 가능함.
SELECT * FROM city WHERE Name LIKE 'Tel %'
// city - Name 이 Tel로 시작하면 무엇이든 검색.
```

## 7) Sub Query

* 쿼리문 안에 또 쿼리문이 들어 있는것.
* 서브 쿼리의 결과가 둘 이상이 되면 에러 발생. 

```
SELECT * FROM city WHERE ContryCode = (SELECT ContryCode FROM city WHERE Name = 'Seoul');
// city - ContryCode 에서 Name = Seoul 인 ContryCode를 검색. (KOR)
```

### 1) ANY

* 서브쿼리의 여러개의 결과중 한 가지만 만족해도 가능.
* SOME은 ANY와 돌일한 의미로 사용.
* =ANY 구문은 IN과 동일한 의미

```
SELECT * FROM city WHERE Population > ANY (SELECT Population FROM city WHERE District = 'New York');
// city 테이블에서 District 가 'NewYork'의 Population 검색.
```

## 2) ALL

* 서브쿼리의 여러개의 결과를 모두 만족 시켜야함.

```
SELECT * FROM city WHERE Population > ANY (SELECT Population FROM city WHERE District = 'New York');
// city 테이블에서 District 가 'NewYork'의 Population 보다 큰 것을 모두 검색. 
```

## 8) ORDER BY

* 결과가 출력되는 순서를 조절하는 구문
* 기본적으로 오름차순 정렬
* 내림차순으로 정렬
  - 열 이름 뒤에 DESC 적어줄것

* ASC(오름차순)sms defult 이므로 생략 가능.

```
SELECT FROM city ORDER BY Population DESC
// city - Population 을 내림차순으로 정렬
SELECT FROM city ASC Population
// city - Population 을 오름차순으로 정렬
SELECY FROM city ORDER BY CountryCode ASC, Population DESC
// ContryCode = 오름차순, Population 내림차순으로 정렬

```

