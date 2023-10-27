CREATE TABLE `Employee` (
	`Employee_id` INT NOT NULL,
	`user_name` varchar(30) NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`position` varchar(15) NOT NULL,
	`employment_date` DATE NOT NULL,
	`rate` FLOAT NOT NULL,
	`bonus` FLOAT,
	`branch_id` INT NOT NULL,
	`manager_id` INT NOT NULL,
	PRIMARY KEY (`Employee_id`)
);

CREATE TABLE `Branch` (
	`Branch_id` INT NOT NULL,
	`Branch_name` varchar NOT NULL,
	`city` varchar NOT NULL,
	`street` varchar NOT NULL,
	`building_number` INT NOT NULL,
	PRIMARY KEY (`Branch_id`)
);

CREATE TABLE `Orders` (
	`orders_id` INT NOT NULL,
	`employee_id` INT NOT NULL,
	`transaction_type` INT NOT NULL,
	`order_date` DATE NOT NULL,
	`customer_id` INT NOT NULL,
	`order_status` INT NOT NULL,
	`selected_car` INT NOT NULL,
	`car_id` INT NOT NULL,
	PRIMARY KEY (`orders_id`)
);

CREATE TABLE `Car` (
	`Car_id` INT NOT NULL,
	`Brand` varchar NOT NULL,
	`Model` varchar NOT NULL,
	`Year` DATE NOT NULL,
	`Price` FLOAT NOT NULL,
	`Body_type` varchar NOT NULL,
	`Engine_type` varchar NOT NULL,
	`VIN_code` varchar NOT NULL,
	`color` varchar NOT NULL,
	PRIMARY KEY (`Car_id`)
);

CREATE TABLE `Customer` (
	`customer_id` INT NOT NULL,
	`first_name` varchar NOT NULL,
	`last_name` varchar NOT NULL,
	`phone_number` INT NOT NULL,
	`email` varchar NOT NULL,
	`adress` varchar NOT NULL,
	`gender` varchar NOT NULL,
	`birth_date` DATE NOT NULL,
	PRIMARY KEY (`customer_id`)
);

ALTER TABLE `Employee` ADD CONSTRAINT `Employee_fk0` FOREIGN KEY (`branch_id`) REFERENCES `Branch`(`Branch_id`);

ALTER TABLE `Employee` ADD CONSTRAINT `Employee_fk1` FOREIGN KEY (`manager_id`) REFERENCES `Employee`(`Employee_id`);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk0` FOREIGN KEY (`employee_id`) REFERENCES `Employee`(`Employee_id`);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk1` FOREIGN KEY (`customer_id`) REFERENCES `Customer`(`customer_id`);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk2` FOREIGN KEY (`car_id`) REFERENCES `Car`(`Car_id`);






