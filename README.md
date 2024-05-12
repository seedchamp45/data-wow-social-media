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
      curl -X post 'http://localhost:3000/posts'
      -H 'Authorization: Bearer {token}
      {
      	{ "post":{"title":"5","detail":"5"} }
      }
      ```
      
    - Update post
      ```
      curl -X put 'http://localhost:3000/posts/1'
      -H 'Authorization: Bearer {token}
      {
      	{ "post":{"title":"5","detail":"5"} }
      }
      ```

    - Delete post
      ```
      curl -X delete 'http://localhost:3000/posts/1'
      -H 'Authorization: Bearer {token}
      {
      	{ "post":{"title":"5","detail":"5"} }
      }
      ```
    - Read post
      ```
      curl -X get 'http://localhost:3000/posts'
      -H 'Authorization: Bearer {token}
      ```
        
- Login 
```
curl 'http://localhost:3000/users/sign_in' \
  --data-raw '{"user":{"email":"test@test.com","password":"123456"}}'
```
- Create User
```
curl 'http://localhost:3000/users' \
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
