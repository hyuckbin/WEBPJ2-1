# JSP CRUD 웹 애플리케이션 (Mock Data)

이 프로젝트는 JSP, Servlet, Maven, Docker를 사용하여 기본적인 CRUD(Create, Read, Update, Delete) 기능을 Mock Data로 구현한 웹 애플리케 B(Bootstrap 5)가 적용되어 있습니다.

##  배포 주소

* **배포 URL:** `webpj2-1-production.up.railway.app`

##  실행 화면


### 0. 회원가입 폼 (form.html)

<img width="857" height="903" alt="image" src="https://github.com/user-attachments/assets/381fa63c-5faa-4c7d-a873-0cef722ebc33" />

<img width="891" height="604" alt="image" src="https://github.com/user-attachments/assets/04fa5e1d-393d-4a9b-b5d4-7c00f54b3b0d" />

### 1. 게시판 목록 (list.jsp)

<img width="1724" height="441" alt="image" src="https://github.com/user-attachments/assets/5e690da8-5782-46d1-ab7a-d36326c53fe5" />


### 2. 새 글 작성 (write.jsp)

<img width="1545" height="637" alt="image" src="https://github.com/user-attachments/assets/95673184-fd6b-4e06-a3e0-24dc7d24f5ab" />


<img width="1059" height="425" alt="image" src="https://github.com/user-attachments/assets/9278c683-c593-49bc-900c-3f663b383c64" />


### 3. 상세 보기 (view.jsp)

<img width="1096" height="498" alt="image" src="https://github.com/user-attachments/assets/cdc201bf-6cf8-4c00-b17f-f471ad0af1ad" />

### 4. 수정 (edit.jsp)

<img width="911" height="778" alt="image" src="https://github.com/user-attachments/assets/27ce71c6-34eb-471e-88d3-3dad3bf6847f" />

<img width="951" height="401" alt="image" src="https://github.com/user-attachments/assets/d02e6089-71f5-475b-9716-7f61908bfd63" />

### 4. 삭제 (delete_ok.jsp)

<img width="931" height="313" alt="image" src="https://github.com/user-attachments/assets/7f1d122e-caa4-4803-8a21-4dbff869fe50" />


---

## 주요 기능

* **JSP Form 처리:** `form.html`과 `form_ok.jsp`를 이용한 데이터 전송 및 수신 (항목 5개 이상)
* **게시판 CRUD (Mock Data):**
    * **Create:** 새 글 작성 폼 (`write.jsp`) 및 처리 (`write_ok.jsp`)
    * **Read:** 게시글 목록 보기 (`list.jsp`) 및 상세 보기 (`view.jsp`)
    * **Update:** 게시글 수정 폼 (`edit.jsp`) 및 처리 (`edit_ok.jsp`)
    * **Delete:** 게시글 삭제 처리 (`delete_ok.jsp`)
* **UI:** Bootstrap 5를 적용하여 반응형 웹 디자인 구현

---

## 사용 기술 스택

* **Backend:** Java 17, JSP, Servlet (`javax.servlet` 4.0 - Tomcat 9 호환)
* **Frontend:** HTML5, Bootstrap 5
* **Database:** MariaDB (Docker로 로컬 실행)
* **Build:** Apache Maven
* **Deployment:** Docker, Railway (또는 Render)
* **Server:** Apache Tomcat 9.0

---

## 프로젝트 구조 및 배포

이 프로젝트는 배포 환경(Tomcat 9)과의 호환성을 위해 `javax` (Java EE 8) 스펙을 따릅니다.
