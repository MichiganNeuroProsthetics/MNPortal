/* schema sql file */
PRAGMA foreign_keys = ON;

/*  USERS TABLE     */
CREATE TABLE teams
(
    name PRIMARY KEY VARCHAR(20) NOT NULL,
    id VARCHAR(40) NOT NULL, 
    filename VARCHAR(64) NOT NULL, 
);

CREATE TABLE members
(
    fullname PRIMARY KEY VARCHAR(30) NOT NULL,
    id INTEGER AUTOINCREMENT,
    team VARCHAR(20) NOT NULL,
    officer INTEGER AS 0,

    FOREIGN KEY (id) REFERENCES teams(id) ON DELETE CASCADE
)

CREATE TABLE projects
(
    name VARCHAR(40) NOT NULL
    id INTEGER AUTOINCREMENT
)


CREATE TABLE posts
(
    postid INTEGER PRIMARY KEY AUTOINCREMENT,
    filename VARCHAR(64) NOT NULL, 
    owner VARCHAR(20) NOT NULL, 
    created DATETIME default CURRENT_TIMESTAMP,

	FOREIGN KEY (owner) REFERENCES users(username) ON DELETE CASCADE
);

