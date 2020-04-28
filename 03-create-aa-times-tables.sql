-- In this file, you will create some tables for the aa_times database

-- Set the role to the aa_times user so the tables will be owned by that user
SET ROLE aa_times;


-- The "people" table
-- | Column name | Type         | Constraints |
-- |-------------|--------------|-------------|
-- | id          | SERIAL       | PRIMARY KEY |
-- | first_name  | VARCHAR(50)  | NOT NULL    |
-- | last_name   | VARCHAR(50)  | NOT NULL    |
-- | email       | VARCHAR(100) | NOT NULL    |

create table people(
    id SERIAL,
    first_name VARCHAR(50)NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);



-- The "sections" table
-- | Column name | Type         | Constraints |
-- |-------------|--------------|-------------|
-- | id          | SERIAL       | PRIMARY KEY |
-- | name        | VARCHAR(150) | NOT NULL    |

CREATE TABLE sections(
    id SERIAL,
    name VARCHAR(150) NOT NULL,
    PRIMARY KEY(id)
);



-- The "stories" table
-- | Column name | Type    | Constraints                             |
-- |-------------|---------|-----------------------------------------|
-- | id          | SERIAL  | PRIMARY KEY                             |
-- | author_id   | INTEGER | FOREIGN KEY to people table, NOT NULL   |
-- | content     | TEXT    | NOT NULL                                |
-- | section_id  | INTEGER | FOREIGN KEY to sections table, NOT NULL |

create table stories(
    id SERIAL,
    author_id INTEGER not null,
    content text not null,
    section_id INTEGER not null,
    PRIMARY KEY(id),
    FOREIGN KEY(author_id) references people(id),
    FOREIGN KEY(section_id) references sections(id)
);
