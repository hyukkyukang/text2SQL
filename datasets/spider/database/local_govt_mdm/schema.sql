PRAGMA foreign_keys = ON;

CREATE TABLE Customer_Master_Index (
master_customer_id INTEGER NOT NULL,
cmi_details VARCHAR(255),
PRIMARY KEY (master_customer_id)
);
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (1, 'Schmitt-Lang');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (2, 'Volkman, Mills and Ferry');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (3, 'Gusikowski PLC');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (4, 'Schmidt, Kertzmann and Lubowitz');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (5, 'Gottlieb, Becker and Wyman');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (6, 'Mayer-Hagenes');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (7, 'Streich-Morissette');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (8, 'Quigley-Paucek');
INSERT INTO `Customer_Master_Index` (`master_customer_id`, `cmi_details`) VALUES (9, 'Reynolds-McClure');

CREATE TABLE CMI_Cross_References (
cmi_cross_ref_id INTEGER NOT NULL,
master_customer_id INTEGER NOT NULL,
source_system_code CHAR(15) NOT NULL,
PRIMARY KEY (cmi_cross_ref_id),
FOREIGN KEY (master_customer_id) REFERENCES Customer_Master_Index (master_customer_id)

);
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (2, 4, 'Rent');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (4, 5, 'Parking');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (8, 1, 'Rent');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (41, 5, 'Benefits');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (48, 5, 'Benefits');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (49, 1, 'Business');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (59, 1, 'Rent');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (65, 9, 'Benefits');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (75, 5, 'Electoral');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (77, 4, 'Electoral');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (81, 9, 'Parking');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (83, 3, 'Benefits');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (95, 2, 'Business');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (99, 9, 'Business');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (100, 4, 'Rent');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (101, 2, 'Tax');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (102, 4, 'Tax');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (103, 9, 'Tax');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (104, 2, 'Tax');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (105, 2, 'Tax');
INSERT INTO `CMI_Cross_References` (`cmi_cross_ref_id`, `master_customer_id`, `source_system_code`) VALUES (106, 1, 'Tax');

CREATE TABLE Council_Tax (
council_tax_id INTEGER NOT NULL,
cmi_cross_ref_id INTEGER NOT NULL,
PRIMARY KEY (council_tax_id),
FOREIGN KEY (cmi_cross_ref_id) REFERENCES CMI_Cross_References (cmi_cross_ref_id)
);
CREATE TABLE Business_Rates (
business_rates_id INTEGER NOT NULL,
cmi_cross_ref_id INTEGER NOT NULL,
PRIMARY KEY (business_rates_id),
FOREIGN KEY (cmi_cross_ref_id) REFERENCES CMI_Cross_References (cmi_cross_ref_id)
);
CREATE TABLE Benefits_Overpayments (
council_tax_id INTEGER NOT NULL,
cmi_cross_ref_id INTEGER NOT NULL,
PRIMARY KEY (council_tax_id),
FOREIGN KEY (cmi_cross_ref_id) REFERENCES CMI_Cross_References (cmi_cross_ref_id)
);
CREATE TABLE Parking_Fines (
council_tax_id INTEGER NOT NULL,
cmi_cross_ref_id INTEGER NOT NULL,
PRIMARY KEY (council_tax_id),
FOREIGN KEY (cmi_cross_ref_id) REFERENCES CMI_Cross_References (cmi_cross_ref_id)
);
CREATE TABLE Rent_Arrears (
council_tax_id INTEGER NOT NULL,
cmi_cross_ref_id INTEGER NOT NULL,
PRIMARY KEY (council_tax_id),
FOREIGN KEY (cmi_cross_ref_id) REFERENCES CMI_Cross_References (cmi_cross_ref_id)
);
CREATE TABLE Electoral_Register (
electoral_register_id INTEGER NOT NULL,
cmi_cross_ref_id INTEGER NOT NULL,
PRIMARY KEY (electoral_register_id),
FOREIGN KEY (cmi_cross_ref_id) REFERENCES CMI_Cross_References (cmi_cross_ref_id)
);
INSERT INTO `Benefits_Overpayments` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (3, 65);
INSERT INTO `Benefits_Overpayments` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (7, 83);
INSERT INTO `Benefits_Overpayments` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (6, 41);
INSERT INTO `Benefits_Overpayments` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (8, 48);

INSERT INTO `Business_Rates` (`business_rates_id`, `cmi_cross_ref_id`) VALUES (5, 49);
INSERT INTO `Business_Rates` (`business_rates_id`, `cmi_cross_ref_id`) VALUES (2, 99);
INSERT INTO `Business_Rates` (`business_rates_id`, `cmi_cross_ref_id`) VALUES (8, 95);

INSERT INTO `Council_Tax` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (1, 101);
INSERT INTO `Council_Tax` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (7, 102);
INSERT INTO `Council_Tax` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (2, 103);
INSERT INTO `Council_Tax` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (3, 104);
INSERT INTO `Council_Tax` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (9, 105);
INSERT INTO `Council_Tax` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (8, 106);

INSERT INTO `Electoral_Register` (`electoral_register_id`, `cmi_cross_ref_id`) VALUES (3, 65);
INSERT INTO `Electoral_Register` (`electoral_register_id`, `cmi_cross_ref_id`) VALUES (7, 65);
INSERT INTO `Electoral_Register` (`electoral_register_id`, `cmi_cross_ref_id`) VALUES (8, 75);
INSERT INTO `Electoral_Register` (`electoral_register_id`, `cmi_cross_ref_id`) VALUES (2, 83);
INSERT INTO `Electoral_Register` (`electoral_register_id`, `cmi_cross_ref_id`) VALUES (6, 95);
INSERT INTO `Electoral_Register` (`electoral_register_id`, `cmi_cross_ref_id`) VALUES (4, 100);
INSERT INTO `Parking_Fines` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (9, 4);
INSERT INTO `Parking_Fines` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (10, 81);

INSERT INTO `Rent_Arrears` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (7, 2);
INSERT INTO `Rent_Arrears` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (2, 8);
INSERT INTO `Rent_Arrears` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (6, 59);
INSERT INTO `Rent_Arrears` (`council_tax_id`, `cmi_cross_ref_id`) VALUES (1, 100);
