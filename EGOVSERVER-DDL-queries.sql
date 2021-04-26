DROP TABLE IF EXISTS Language;
CREATE TABLE IF NOT EXISTS Language (
	LangID varchar(10) NOT NULL,
    LangName varchar(50) NOT NULL,
	PRIMARY KEY (LangID,)
);

-- --------------------------------------------------------


DROP TABLE IF EXISTS BooksEN;
CREATE TABLE IF NOT EXISTS BooksEN (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

	PRIMARY KEY (BookID)
);

-- --------------------------------------------------------


DROP TABLE IF EXISTS BooksFR;
CREATE TABLE IF NOT EXISTS BooksFR (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

    PRIMARY KEY (BookID)
);

-- --------------------------------------------------------



DROP TABLE IF EXISTS BooksDE;
CREATE TABLE IF NOT EXISTS BooksDE (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

    PRIMARY KEY (BookID)
);

-- --------------------------------------------------------



DROP TABLE IF EXISTS BooksIT;
CREATE TABLE IF NOT EXISTS BooksIT (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

    PRIMARY KEY (BookID)
);

-- --------------------------------------------------------



DROP TABLE IF EXISTS BooksPOR;
CREATE TABLE IF NOT EXISTS BooksPOR (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

    PRIMARY KEY (BookID)
);

-- --------------------------------------------------------



DROP TABLE IF EXISTS BooksRU;
CREATE TABLE IF NOT EXISTS BooksRU (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

    PRIMARY KEY (BookID)
);

-- --------------------------------------------------------



DROP TABLE IF EXISTS BooksSP;
CREATE TABLE IF NOT EXISTS BooksSP (
	BookID varchar(10) NOT NULL,
    LangID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    LangName varchar(10) NOT NULL,
    url varchar(60) NOT NULL,
    abstract varchar(50),
    FOREIGN KEY (LangID) REFERENCES Language(LangID),
    FOREIGN KEY (LangName) REFERENCES Language(LangName),

    PRIMARY KEY (BookID)
);

-- --------------------------------------------------------



DROP TABLE IF EXISTS BodyEN;
CREATE TABLE IF NOT EXISTS BodyEN (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksEN(BookID),
    FOREIGN KEY (Title) REFERENCES BooksEN(Title),

);


-- --------------------------------------------------------


DROP TABLE IF EXISTS BodyFR;
CREATE TABLE IF NOT EXISTS BodyFR (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksFR(BookID),
    FOREIGN KEY (Title) REFERENCES BooksFR(Title),

);


-- --------------------------------------------------------



DROP TABLE IF EXISTS BodyDE;
CREATE TABLE IF NOT EXISTS BodyDE (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksDE(BookID),
    FOREIGN KEY (Title) REFERENCES BooksDE(Title),

);


-- --------------------------------------------------------


DROP TABLE IF EXISTS BodyIT;
CREATE TABLE IF NOT EXISTS BodyIT (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksIT(BookID),
    FOREIGN KEY (Title) REFERENCES BooksIT(Title),

);


-- --------------------------------------------------------



DROP TABLE IF EXISTS BodyPOR;
CREATE TABLE IF NOT EXISTS BodyPOR (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksPOR(BookID),
    FOREIGN KEY (Title) REFERENCES BooksPOR(Title),

);


-- --------------------------------------------------------


DROP TABLE IF EXISTS BodyRU;
CREATE TABLE IF NOT EXISTS BodyRU (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksRU(BookID),
    FOREIGN KEY (Title) REFERENCES BookRU(Title),

);


-- --------------------------------------------------------



DROP TABLE IF EXISTS BodySP;
CREATE TABLE IF NOT EXISTS BodySP (
	BookID varchar(10) NOT NULL,
    Title varchar(50) NOT NULL,
    body_text varchar(300),
    body_html varchar(300),
    FOREIGN KEY (BookID) REFERENCES BooksSP(BookID),
    FOREIGN KEY (Title) REFERENCES BooksSP(Title),

);


