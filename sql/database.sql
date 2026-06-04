
create database student_task_manager;

use student_task_manager;

-- create students table
create table students( 
	student_id int primary key auto_increment, 
	first_name varchar(100), 
	last_name varchar(100),
	gender varchar(20),
	mobile_number varchar(20),
	email varchar(100),
	course_name varchar(100),
	admission_date date
);

-- Insert sample data into students table

INSERT INTO students (
    first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
VALUES (
    'Anu',
    'Chorade',
    'Female',
    '8010389735',
    'test@test.com',
    'Python',
    CURDATE()
);

INSERT INTO students (
    first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
VALUES (
    'Pratiksha',
    'Chavan',
    'Female',
    '8890123412',
    'test@test.com',
    'Python',
    CURDATE()
);

INSERT INTO students (
    first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
VALUES (
    'pratik',
    'chavan',
    'male',
    '8010389000',
    'test@test.com',
    'Python',
    CURDATE()
);

INSERT INTO students (
    first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
VALUES (
    'sagar',
    'patil',
    'Male',
    '6798901232',
    'sagarpatil@gmail.com',
    'ML',
    CURDATE()
);
insert into students (
    first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
	admission_date
)
values (
    'Sahil',
    'Patil',
	'Male',
	'7809876545',
	'sahil@test.com',
	'Python',
	curdate()
);

insert into students (
     first_name,
     last_name,
	 gender,
     mobile_number,
     email,
     course_name,
     admission_date
)
values (
	' Rutuja',  
    'Chavan',
	'Female',
	'1345653298',
	'rutuja@test.com',
	'AI',
    curdate()
);

insert into students (
    first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
values (
    'Sakshi',
    'Jadhav',
    'Female',
    '8010389735',
	'sakshi@test.com',
    'DSA',
     curdate()
);

select * from students;


-- Retrieve data from students table


-- update students 
-- set 
-- gender = 'Female',
-- mobile_number = '1234456667',
-- email = 'smita@gmail.com',
-- course_name = 'machine learning',
-- admission_date = curdate()
-- where student_id = 2;

select * from students;

-- Create an attendance table
create table attendance
(
    attendance_id int primary key auto_increment,
    student_id int,
    attendance_date date,
    attendance_status varchar(20),
    foreign key (student_id)
    references students(student_id)
);

select * from attendance;


create table tasks
(
    task_id int primary key auto_increment,
    task_name varchar(200),
    task_description text,
    maximum_marks int
);

-- Insert sample data into tasks table
insert into tasks
(
    task_name,
    task_description,
    maximum_marks
)
values
(
    'DSA Assignment',
    'Basic DSA Practice',
    100
);
-- Create student_tasks table

create table student_tasks
(
    tasks_id int primary key auto_increment,
    student_id int,
    task_id int,
    obtained_marks int,
    submission_date date,
    foreign key (student_id)
    references students(student_id),
    foreign key (task_id)
    references tasks(task_id)
);
INSERT INTO student_tasks 
(
student_id, 
task_id, 
obtained_marks,
 submission_date
 )
VALUES 
(
1, 
2, 
85,
 '2026-06-03'
 );
 select * from tasks;

alter table student_tasks
add column submission_status varchar(50);

alter table student_tasks
add column remarks text;

select * from student_tasks;


-- Create users table
create table users
(
    user_id int primary key auto_increment,
    username varchar(100),
    password varchar(100),
    full_name varchar(200)
);

insert into users
(
    username,
    password,
    full_name
)
values
(
    'anu',
    '2321',
    'Anuradha chorade'
);

select * from users;

show tables;