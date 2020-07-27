DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
    username TEXT NOT NULL PRIMARY KEY,
    password TEXT NOT NULL,
    creationdate DATE NOT NULL
);

INSERT INTO users (username, password, creationdate) VALUES ('Michelle', 'test_pw1', TO_DATE('12/24/2012', 'MM/DD/YYYY'));	
INSERT INTO users (username, password, creationdate) VALUES ('Jasmine', 'test_pw2', TO_DATE('12/24/2012', 'MM/DD/YYYY'));

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    author TEXT NOT NULL PRIMARY KEY,
    content TEXT NOT NULL,
    creationdate DATE NOT NULL,
    FOREIGN KEY (author) REFERENCES users(username)
);

INSERT INTO posts (author, content, creationdate) VALUES ('Michelle', 'test_post_1', TO_DATE('12/24/2012', 'MM/DD/YYYY'));
INSERT INTO posts (author, content, creationdate) VALUES ('Jasmine', 'test_post_2', TO_DATE('12/24/2012', 'MM/DD/YYYY'));
