create database du1010;

use du1010;

CREATE TABLE posts (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	writer VARCHAR(100) NOT NULL,
	content TEXT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from posts;