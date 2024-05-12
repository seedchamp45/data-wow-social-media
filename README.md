<p align="center">
  <img src="https://cdn-icons-png.flaticon.com/512/6295/6295417.png" width="100" />
</p>
<p align="center">
    <h1 align="center">DATA-WOW-SOCIAL-MEDIA</h1>
</p>

##  Quick Links

> - [ Overview](#-overview)
> - [ Features](#-features)
> - [ Getting Started](#-getting-started)
> - [ Contributing](#-contributing)
> - [ License](#-license)

---

##  Overview

Social Media (that allows users to post text) with Vuejs and Ruby API

---

##  Features

### Frontend
- Registration
- Login
- Create post
- View post
- Update post


### API
- CRUD Post
    - Create post
       ```
        curl 'http://localhost:3000/posts' \
  -H 'sec-ch-ua: "Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI4Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzE1NDg2NjE1LCJleHAiOjE3MTU0OTAyMTUsImp0aSI6IjA0NjM3ZWU1LTk5YTktNDYzNi04ODdiLWNjMGNjNDExZjFlYiJ9.KZlJ2661plIjwInc_zP4WsMZlC2a2i2b_D91BcHOKLc' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Referer: http://localhost:8080/' \
  -H 'sec-ch-ua-platform: "Android"' \
  --data-raw '{"post":{"title":"5","detail":"5"}}'
        
        
        ```
    - Update post
      ```
      curl 'http://localhost:3000/posts/1' \
  -H 'sec-ch-ua: "Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI4Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzE1NDg2NjE1LCJleHAiOjE3MTU0OTAyMTUsImp0aSI6IjA0NjM3ZWU1LTk5YTktNDYzNi04ODdiLWNjMGNjNDExZjFlYiJ9.KZlJ2661plIjwInc_zP4WsMZlC2a2i2b_D91BcHOKLc' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Referer: http://localhost:8080/' \
  -H 'sec-ch-ua-platform: "Android"' \
  --data-raw '{"put":{"title":"5","detail":"5"}}'
      
      
      ```
    - Delete post
    
    ```    
    
          curl 'http://localhost:3000/posts/1' \
  -H 'sec-ch-ua: "Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI4Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzE1NDg2NjE1LCJleHAiOjE3MTU0OTAyMTUsImp0aSI6IjA0NjM3ZWU1LTk5YTktNDYzNi04ODdiLWNjMGNjNDExZjFlYiJ9.KZlJ2661plIjwInc_zP4WsMZlC2a2i2b_D91BcHOKLc' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Referer: http://localhost:8080/' \
  -H 'sec-ch-ua-platform: "Android"' \
  --data-raw '{"delete": {}}'

    ```
    - Read post
    ```
    
    curl 'http://localhost:3000/posts' \
  -H 'sec-ch-ua: "Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Referer: http://localhost:8080/' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI4Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzE1NDg2NjE1LCJleHAiOjE3MTU0OTAyMTUsImp0aSI6IjA0NjM3ZWU1LTk5YTktNDYzNi04ODdiLWNjMGNjNDExZjFlYiJ9.KZlJ2661plIjwInc_zP4WsMZlC2a2i2b_D91BcHOKLc' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36' \
  -H 'sec-ch-ua-platform: "Android"'
    ```
        
- Login 
```
curl 'http://localhost:3000/users/sign_in' \
  -H 'sec-ch-ua: "Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Content-Type: application/json' \
  -H 'Referer: http://localhost:8080/' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36' \
  -H 'sec-ch-ua-platform: "Android"' \
  --data-raw '{"user":{"email":"test@test.com","password":"123456"}}'
```
- Create User
```
curl 'http://localhost:3000/users' \
  -H 'sec-ch-ua: "Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Content-Type: application/json' \
  -H 'Referer: http://localhost:8080/' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36' \
  -H 'sec-ch-ua-platform: "Android"' \
  --data-raw '{"user":{"email":"test20@test.com","password":"123456"}}'
```


## Database Integration
- user has many posts
- post belong to user


## Frontend

- VueJS


## Test
- how to run test
```
cd data-wow-social-media
rspec
```

## Getting started
### Backend 
```
cd data-wow-social-media
bundle i

## generate secret key for authentication
rake secret

## copy secret key
EDITOR=nano rails credentials:edit

## add user secret key following this format
devise:
  jwt_secret_key: {secret key}

rails s
it will start at port 3000
```

### Frontend
```
cd data-wow-social-media
npm i
npm serve
```
