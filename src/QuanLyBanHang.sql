CREATE DATABASE QuanLyBanHang20;
USE QuanLyBanHang20;
CREATE TABLE Customer(
                         cID        INT NOT NULL  KEY AUTO_INCREMENT,
                         cName      VARCHAR(60) NOT NULL,
                         cAge       Int NOT NULL
);
CREATE TABLE OrrDer(
                       oID     INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
                       oDate   DATETIME      NOT NULL,
                       oTotalPrice INT       NOT NULL,
                       cID     INT           NOT NULL ,
                       FOREIGN KEY (cID) REFERENCES Customer (cID)
);
CREATE TABLE Product(
                        pID     INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        pName   VARCHAR(60) NOT NULL,
                        pPrice  INT         NOT NULL
);
CREATE TABLE OrderDetail(
                            odQty   INT         NOT NULL DEFAULT 1 CHECK ( odQty >= 1 ),
                            oID     INT         NOT NULL,
                            pID     INT         NOT NULL,
                            FOREIGN KEY (oID) REFERENCES OrrDer (oID),
                            FOREIGN KEY (pID) REFERENCES Product (pID)
);
