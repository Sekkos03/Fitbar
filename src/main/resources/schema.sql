DROP TABLE IF EXISTS meals;

CREATE TABLE meals (
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    name           VARCHAR(255)    NOT NULL,
    category       VARCHAR(50)     NOT NULL,
    price          DECIMAL(6,2)    NOT NULL,
    description    TEXT,
    allergies      VARCHAR(255),
    image_path     VARCHAR(255),
    nutrition_info TEXT
<<<<<<< HEAD
);
=======
<<<<<<< HEAD
);
=======
);
>>>>>>> 6f84a060 (Inital commit)
>>>>>>> 804ea3e5 (initial commit)
