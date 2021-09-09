
DROP TABLE IF EXISTS `login_info`;
Create table login_info
(
	`user_name` varchar(100) default NULL,
  `password` varchar(100) default NULL
);


INSERT INTO login_info VALUES ("divyam123","123456");


DROP TABLE IF EXISTS `product`;

Create table product
(
	`prod_id` varchar(100) default NULL,
  `prod_name` varchar(100) default NULL,
  'prod_category' varchar(100) default NULL,
  'prod_price' int(11) default NULL
);

INSERT INTO product VALUES ("p1","I-Phone","Mobile","150000");

