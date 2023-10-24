-
CREATE TABLE Metropolitan_City (
 		 Pin_Code INTEGER PRIMARY KEY,
  		City_Name TEXT NOT NULL,
  		State TEXT NOT NULL
);
CREATE TABLE GRE (
  		G_ID INTEGER PRIMARY KEY,
 	 	G_Score INTEGER NOT NULL,
  		Analytical INTEGER NOT NULL,
  		Verbal INTEGER NOT NULL,
  		Quantitative INTEGER NOT NULL,
  		GTest_Date DATE NOT NULL
);
CREATE TABLE Course_Offering (
  		Course_ID INTEGER PRIMARY KEY,
  		Course_Name TEXT NOT NULL,
  		Course_Cutoff INTEGER NOT NULL
);
CREATE TABLE Parent_Guardian (
  P_AadharNo INTEGER PRIMARY KEY,
  P_Name TEXT NOT NULL,
  P_Address TEXT NOT NULL,
  P_Annual_Income INTEGER NOT NULL,
  P_PhoneNo TEXT NOT NULL
);
CREATE TABLE IVY_League (
  		College_Code INTEGER PRIMARY KEY,
 		 College_Name TEXT NOT NULL,
  		Cut_Off INTEGER NOT NULL,
  		Acceptance_Rate REAL NOT NULL,
  		IPin_Code INTEGER REFERENCES Metropolitan_City(Pin_Code),
  		I_Address TEXT NOT NULL
);
CREATE TABLE Student (
  S_Aadhar_No INTEGER PRIMARY KEY,
  S_Name TEXT NOT NULL,
  F_Name TEXT NOT NULL,
  L_Name TEXT NOT NULL,
  Test_Date DATE NOT NULL,
  App_Status TEXT NOT NULL,
  S_DOB DATE NOT NULL,
  Age INTEGER NOT NULL,
  S_Address TEXT NOT NULL,
  S_Phone_No TEXT NOT NULL,
  S_Email TEXT NOT NULL,
  G_ID INTEGER REFERENCES GRE(G_ID),
  MPin_Code INTEGER REFERENCES Metropolitan_City(Pin_Code),
  College_Code INTEGER REFERENCES IVY_League(College_Code),
  Course_ID INTEGER REFERENCES Course_Offering(Course_ID),
  P_AadharNo INTEGER REFERENCES Parent/Guardian(P_AadharNo)
);
Insert Values:-
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (400008, 'Mumbai', 'Maharashtra');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (110001, 'Delhi', 'New Delhi');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (700001, 'Kolkata', 'West Bengal');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (600008, 'Chennai', 'Tamil Nadu');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (560002, 'Bangalore', 'Karnataka');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (500001, 'Hyderabad', 'Telangana');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (380006, 'Ahmedabad', 'Gujarat');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (411002, 'Pune', 'Maharashtra');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (395002, 'Surat', 'Gujarat');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (641001, 'Coimbatore', 'Tamil Nadu');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (273001, 'Gorakhpur', 'Uttar Pradesh');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (302006, 'Jaipur', 'Rajasthan');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (208001, 'Kanpur', 'Uttar Pradesh');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (342001, 'Jodhpur', 'Rajasthan');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (673001, 'Kozhikode', 'Kerala');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (625001, 'Madurai', 'Tamil Nadu');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (440002, 'Nagpur', 'Maharashtra');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (800008, 'Patna', 'Bihar');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (492001, 'Raipur', 'Chattisgarh');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (636001, 'Salem', 'Tamil Nadu');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (695001, 'Thiruvananthapuram ', 'Kerala');
INSERT INTO Metropolitan_City (Pin_Code, City_Name, State)VALUES (530001, 'Visakhapatnam', 'Andhra Pradesh');

INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(41, 324, 3.5, 4.0, 4.0, '2022-10-01');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(22, 312, 3.0, 3.5, 3.5, '2019-10-02');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(23, 296, 2.5, 3.0, 3.0, '2021-01-03');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(24, 330, 3.5, 4.0, 4.0, '2022-02-01');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(25, 328, 3.0, 3.5, 3.5, '2020-06-02');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(26, 323, 2.5, 3.0, 3.0, '2021-04-03');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(27, 320, 3.5, 4.0, 4.0, '2022-01-01');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(28, 305, 3.0, 3.5, 3.5, '2020-01-02');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(29, 324, 3.5, 4.0, 4.0, '2022-03-01');
INSERT INTO GRE(G_ID, G_Score, Analytical, Verbal, Quantitative, GTest_Date)VALUES(30, 312, 3.0, 3.5, 3.5, '2021-08-04');

INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (10, 'Anthropology',302, 1);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (11, 'Biology',322, 2);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (12, 'Computer Science ',325, 3);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (13, 'Ecconomics',305, 4);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (14, 'English',323, 5);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (15, 'History',328, 6);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (16, 'Mathematics',329 , 7);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (17, 'Philosophy',317, 8);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (18, 'Political Science',302, 1);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (19, 'Psychology',302, 1);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (20, 'Anthropology',322, 2);
INSERT INTO Course_Offering (Course_ID, Course_Name, Course_Cutoff, College_Code)
VALUES (21, 'Biology',328, 6);

insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(923456781234, 'Prakash', '14-A Main Road,Mumbai', 800000, 9810337596);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(156432984567, 'Kumaran', '20C next Road,Kolkata', 1200000, 7236237596);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(298347561235, 'Satya', 'Park Road,Mumbai', 600000, 9012933836);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(456723456789, 'Satish', ' rome Bazar,Chennai', 700000, 9569093221);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(827623476154, 'Tanmay', 'Back Road,Hyderabad', 1100000, 9810366596);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(123556587889, 'Dinesh', 'New friends colony,Delhi', 1400000,6330337596);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(323489782225, 'Rahul', 'om appartments,Banglore', 900000, 8876337596);
insert into Parent_Guardian(P_AadharNo, P_Name, P_Address, P_Annual_Income, P_PhoneNo)values(987645321654, 'Himanshu', 'vasant vihar,Delhi', 800000, 9866337596);
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (6, 'Cornell University', 302, 10.3, 14853, 'Ithaca, New York');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (7, 'Dartmouth College', 322, 8.7, 03755, 'Hanover, New Hampshire');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (8, 'University of Pennsylvania', 325, 8.4, 19104, 'Philadelphia');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (9, 'Brown University', 305, 7.2, 02912, 'Providence, Rhode Island');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (10, 'Columbia University', 323, 5.5, 10027, 'New York City');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (11, 'Harvard University', 328, 4.6, 02138, 'Cambridge, Massachusetts');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (12, 'Princeton University', 329, 5.5, 08544, 'Princeton, New Jersey');
INSERT INTO IVY_League (College_Code, College_Name, Cut_Off, Acceptance_Rate, IPin_Code, I_Address)VALUES (13, 'Yale University', 317, 6.3, 06520, 'New Haven, Connecticut');

INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (1111111111111, 'Peter Bennet', 'Peter', 'Bennet', '2022-02-02', 'Accepted', '2002-06-01', 20, '14-A Main Road,Mumbai', 1234567890, 'peterbennet@email.com', 44, 400008, 1, 21, 923456781234);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (123456789175,'Salard Jean','Salard','Jean','2022-07-02' ,'Accepted','2000-01-01',22,'Back Road, Hyderabad ',5555551111, 'jean_salard@email.com',36,500001,7,15, 827623476154);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (135791113844,'Mike Brown','Mike','Brown','2020-05-02' ,'Pending','1999-01-01','20C next Road,Kolkata',5555553333 ,'mikebrown@email.com',47,700001,7,13 ,156432984567);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (234567890,'Rose Hughes','Rose','Hughes','2021-03-01' ,'Rejected','2000-01-01',21,'om appartments,Banglore',2345678901 ,'hughes_rose@email.com',23,560002,5,13 ,323489782225);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (345678901576,'Diego Cox','Diego','Cox','2022-03-03' ,'Pending','1999-11-01',23,'789 Eden Street',34567890, 'diego_cox99@email.com',45,700001,3,20, 789456123055);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (987654321673,'Le Bert Antoine','Le Bert','Antoine','2022-03-03' ,'Accepted','2001-01-01',23,'456 Park Eve',5555552222, 'lbantonio@email.com',45,400008,7,15, 789654321457);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (123456789068,'Mike Doe','Mike','Doe','2020-06-02' ,'Rejected','1998-07-14',24,'New friends colony,Delhi',5551234567 ,'mike.doe@email.com',25,110001,4,10 ,123556587889);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (2147483647,'John Smith','John','Smith','2022-10-01' ,'Accepted','2000-01-01',22,'Park Road,Mumbai',1234567890 ,'johnsmith@email.com',21,400008,1,10 ,298347561235);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (3456789012, 'Bob Johnson', 'Bob', 'Johnson', '2022-01-01', 'Pending', '1999-06-15', 23, ' rome Bazar,Chennai', 5553456789, 'bob.johnson@email.com', 43, 600008, 3, 12, 9569093221);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (5738492402, 'Nicholas Samuel', 'Nicholas', 'Samuel', '2022-10-01', 'Accepted', '1999-12-31', 22, 'Street 19c, near Mount Road', 1234567890, 'nicholass@email.com', 21, 560002, 5, 15, 111125211111);
INSERT INTO Student (S_Aadhar_No, S_Name, F_Name, L_Name, Test_Date, App_Status, S_DOB, Age, S_Address, S_Phone_No, S_Email, G_ID, MPin_Code, College_Code, Course_ID, P_AadharNo)VALUES (2345678901, 'Anne Smith', 'Anne', 'Smith', '2021-04-10', 'Rejected', '1997-12-31', 25, 'Road no.3,Shastri Nagar, Patna, Bihar', 5552345678, 'annesmith@email.com', 32, 800008, 2, 11, 827465022019)
