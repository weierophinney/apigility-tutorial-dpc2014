# Walkthrough steps

Notes on what to do for each exercise when demoing.


# Exercise 1: Build a ping API

1. Turn on developer mode
2. Create new API called Todo
3. Create new RPC API called Ping, with endpoint /ping
4. Go to Editor and open PingController.php
5. Add:

        return array('ack' => date('Y-m-d H:i:s'));

# Demo before Exercise 2: Users

1. Admin UI: APIs -> Todo
2. REST Services -> Create New REST Service -> Code Connected
3. Name: Users
4. Edit:
    * "Entity Identifier Name" id to user_id
    * "Entity Class" to Bibliotheque\User\UserEntity
    * "Collection Class" to Bibliotheque\User\UserCollection
5. Update UserResourceFactory:
   
        $mapper = $services->get('Bibliotheque\User\UserMapper');
        return new UsersResource($mapper);

8. Update UsersResource:
    
    a. Add a constructor

            protected $mapper;
            public function __construct($mapper)
            {
                $this->mapper = $mapper;
            }

    b. Update fetchAll()
       
       return $this->mapper->fetchAll();
    
    c. Update fetch()
    
            return $this->mapper->fetch($id);

    d. Update create()
    
            $data = (array) $data;
            return $this->mapper->create($data['username'], $data['password'], $data['name']);



# Exercise 2: Books


1. Admin UI: Create new API -> Bookshelf
2. REST Services -> Create New REST Service -> Code Connected
3. Name: Bookshop
4. Edit:
    * "Entity Identifier Name" id to user_id
    * "Entity Class" to Bibliotheque\Book\BookEntity
    * "Collection Class" to Bibliotheque\Book\BookCollection
5. Update BookResourceFactory:
   
        $mapper = $services->get('Bibliotheque\Book\BookMapper');
        return new BooksResource($mapper);

8. Update UsersResource:
    
    a. Add a constructor

            protected $mapper;
            public function __construct($mapper)
            {
                $this->mapper = $mapper;
            }

    b. Update fetchAll()
       
       return $this->mapper->fetchAll();
    
    c. Update fetch()
    
            return $this->mapper->fetch($id);

    d. Update create()
    
            $data = (array) $data;
            return $this->mapper->create($data['title'], $data['author'], $data['isbn']);



# Exercise 3: Filtering and validation

1. Admin UI: User REST API -> Fields tab - click edit on blue bar
2. Create field: username
    
    a. Description: Username (their email address)
    b. Required: Yes
    c. Validation Failure message: Please provide a valid email address to use as the username.
    d. Add a Zend\Validator\EmailAddress validator
    d. Add a Zend\Validator\StringLength validator (max: 255)
    e. Press Save changes
    
3. Show in use - via Restful
    
4. ATTENDEES TO CREATE password and name too
5. Create field: password
6. Create field: name



# DOCUMENTATION

Show how it is filled in


# Authentication

1. Settings -> Authentication
2. Fill in details.
3. APIS -> Bookshelf -> Authorization
    Check the boxes for POST, PATCH, PUT & DELETE
   
   
## /books/borrowed

* New REST service
* Setup method
* Set up Authentication
   
   
   
   
   
   

