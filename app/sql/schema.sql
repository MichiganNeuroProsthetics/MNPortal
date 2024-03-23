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
    name VARCHAR(40) NOT NULL,
    id INTEGER AUTOINCREMENT,
    team VARCHAR(20) NOT NULL,

    FOREIGN KEY (team) REFERENCES teams(name)
)

CREATE TABLE documentation
(
    id INTEGER AUTOINCREMENT,
    filename VARCHAR(64) NOT NULL,
    type VARCHAR(30) NOT NULL,
    team VARCHAR(20) as "mnp",

    FOREIGN KEY (team) REFERENCES projects(team)
)
