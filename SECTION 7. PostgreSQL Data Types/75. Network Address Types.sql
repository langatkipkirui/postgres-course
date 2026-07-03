-- 75. Network Address Types
/*
1. PostgreSQL offers data types to store IPv4, IPv6 and MAC adresses.

2. Network Address types 

	 Name			Storage size 			Notes
	 ----			------------			-----	
	 cidr			7 or 19 bytes			IPv4 and IPv6 networks 
	 inet			7 or 19 bytes 			IPv4 and IPv6 networks
	 macaddr		6 bytes					MAC addresses
	 macaddr8		8 bytes					MAC addresses (EUI-64 format)

	it is better to use these types instead of plain text types to store network 
	addresses, because these types offer input error checking and special operators
	and functions 


3. Special sorting mechanisms 
	When sorting inet or cidr data types, IPv4 addresses will always sort before 
	IPv6 adresses, including IPv4 addresses encapsulated or mapped to IPv6
	addresses
	
4. These types are bundled with indexing support and advanced functions and 
   operator support.

*/

-- 1. Lets create a sample table 
CREATE TABLE table_netaddr(
	id SERIAL PRIMARY KEY,
	ip INET
);

-- 2. Let's view the data on the table
SELECT * FROM table_netaddr

-- 3. Let's insert some ip address to the table
INSERT INTO table_netaddr(ip)
VALUES
('4.35.221.243'),
('4.152.207.125'),
('4.152.207.238'),
('4.249.111.162'),
('12.1.223.132'),
('12.8.192.60');

-- 4. Lets analyze entries for /24 networks ip adresses
-- set_masklen function : set netmask length for inet value
set_masklen(ip, 24)  --syntax

SELECT 
	ip,
	set_masklen (ip, 24) as inet_24
FROM table_netaddr

-- 5. Lets convert the inet to cidr type
SELECT 
	ip,
	set_masklen (ip, 24) as inet_24, 
	set_masklen (ip::cidr, 24) as cidr_24
FROM table_netaddr;

-- 6. We can also analyze other netowork like /27, /28 too.
SELECT 
	ip,
	set_masklen (ip, 24) as inet_24, 
	set_masklen (ip::cidr, 24) as cidr_24,
	set_masklen (ip::cidr, 27) as cidr_27,
	set_masklen (ip::cidr, 28) as cidr_28
FROM table_netaddr;












