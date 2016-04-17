Feature: WarrantOrganizerCore
	In order to facilitate my search of warranty proof and details
	As a buyer
	I want to save all my warranty proofs and attached details

Scenario: Register a new warranty
	Register a receipt and item details
	Given the following receipt located at "C:\Users\JIM\Pictures\Samsung\CLX-3180_20160417_21135507.jpg"
	And the attached product details
	| Brand   | Product name | Date of purchase | Warranty period |
	| Philips | SCF 356      | 2015-10-04       | 1 Year          |
	When I save them
	Then the saved product details are available for search

Scenario: Add new details to a saved product
	Add details on a save product
	Given the following save product
	| Brand   | Product Name | Date of purchase | Warranty period |
	| Philips | SCF 356      | 2015-10-04       | 1 Year          |
	And the following optional Description Chauffe biberon Avent
	When I update it
	Then the new optional details is available for search

Scenario: Search for a product by its name
	Given the following saved product
	| Brand   | Product Name | Date of purchase | Warranty period | Description           |
	| Philips | SCF 356      | 2015-10-04       | 1 Year          | Chauffe biberon Avent |
	When I search for Product name SCF 356
	Then the result should be
	| Brand   | Product Name | Date of purchase | Warranty period | Description           |
	| Philips | SCF 356      | 2015-10-04       | 1 Year          | Chauffe biberon Avent |