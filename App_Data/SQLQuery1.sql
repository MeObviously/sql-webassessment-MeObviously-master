	-- Remove all of existing data in table
		TRUNCATE TABLE [dbo].[tblLostProp];
		
		-- Reload new data 
		INSERT INTO [dbo].[tblLostProp] ([Item], [Brand], [Colour], [Size], [DateFound], [Named], [Name], [Phone]) 
		VALUES 
		('T-Shirt',		'Animas',				'Red',			'L',		'2019-12-14',			'Yes',		'B Adams',			'64-283-555-60'),
		('Socks',		'Nixe',					'White',		'M',		'2020-08-06',			'No',		'',					'64-275-554-16'),
		('Sweatshirt',  'Community Wearing',	'Grey',			'M',		'2020-11-01',			'Yes',		'Rene Smith',		'64-283-555-83'),
		('Cap',			'Fax',					'Black',		'M',		'2020-02-05',			'Yes',		'Brendon Wilkins',	'64-245-554-58'),
		('Shoes',		'ASOXS',				'Orange',		'M',		'2019-09-09',			'No',		'',					'64-283-555-11'),
		('Hoodie',		'Gab',					'Maroon',		'L',		'2020-07-21',			'Yes',		'Chris H',			'64-275-557-30'),
		('Socks',		'Kelvin Clean',			'Black',		'M9.5',		'2018-06-30',			'Yes',		'Greg Larkin',		'64-275-557-08'),
		('Watch',		'Catio',				'Gunmetal',		'L',		'2020-03-28',			'No',		'',					'64-275-553-55'),
		('Jeans',		'Veli',					'Navy Blue',	'M',		'2020-10-04',			'Yes',		'F Wagner',			'64-215-559-46'),
		('Shorts',		'Nixe',					'Black',		'XL',		'2020-05-17',			'Yes',		'R Jameson',		'64-275-556-24')

		-- Check new data inserted correctly
		SELECT * FROM [dbo].[tblLostProp];