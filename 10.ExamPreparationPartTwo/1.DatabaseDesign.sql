USE Accounting

CREATE TABLE Countries
(
    Id INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(10) NOT NULL
)

CREATE TABLE Addresses
(
    Id INT IDENTITY PRIMARY KEY,
    StreetName NVARCHAR(20) NOT NULL,
    StreetNumber INT,
    PostCode INT NOT NULL,
    City NVARCHAR(25) NOT NULL,
    CountryId INT NOT NULL FOREIGN KEY REFERENCES Countries(Id)
)

CREATE TABLE Vendors
(
    Id INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(25) NOT NULL,
    NumberVAT NVARCHAR(15) NOT NULL,
    AddressId INT NOT NULL FOREIGN KEY REFERENCES Addresses(Id)
)

CREATE TABLE Clients
(
    Id INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(25) NOT NULL,
    NumberVAT NVARCHAR(15) NOT NULL,
    AddressId INT NOT NULL FOREIGN KEY REFERENCES Addresses(Id)
)

CREATE TABLE Categories
(
    Id INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(10) NOT NULL
)

CREATE TABLE Products
(
    Id INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(35) NOT NULL,
    Price DECIMAL(18, 2) NOT NULL,
    CategoryId INT NOT NULL FOREIGN KEY REFERENCES Categories(Id),
    VendorId INT NOT NULL FOREIGN KEY REFERENCES Vendors(Id)
)

CREATE TABLE Invoices
(
    Id INT IDENTITY PRIMARY KEY,
    [Number] INT NOT NULL UNIQUE,
    IssueDate DATETIME2 NOT NULL,
    DueDate DATETIME2 NOT NULL,
    Amount DECIMAL(18, 2) NOT NULL,
    Currency NVARCHAR(5) NOT NULL,
    ClientId INT NOT NULL FOREIGN KEY REFERENCES Clients(Id)
)

CREATE TABLE ProductsClients
(
    ProductId INT NOT NULL,
    ClientId INT NOT NULL,
    PRIMARY KEY (ProductId, ClientId),
    FOREIGN KEY (ProductId) REFERENCES Products(Id),
    FOREIGN KEY (ClientId) REFERENCES Clients(Id)
)
