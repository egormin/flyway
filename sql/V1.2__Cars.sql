create table XXX1(
    id INT(11) AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(100), 
    email VARCHAR(100), 
    password VARCHAR(100), 
    description VARCHAR(100), 
    register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
