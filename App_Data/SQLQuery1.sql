	-- Remove all of existing data in table
		TRUNCATE TABLE [dbo].[tblLostProp];
		
		-- Reload new data 
		INSERT INTO [dbo].[tblLostProp] ([Item], [Brand], [Colour], [Size], [DateFound], [Named], [Name], [Phone]) 
		VALUES 
		('T-Shirt',		'Animas',				'Red',			'L',		'2019-12-14',			'Yes',		'B Adams',			'021-835-5560'),
		('Socks',		'Nixe',					'White',		'M',		'2020-08-06',			'No',		'',					'021-755-5416'),
		('Sweatshirt',  'Community Wearing',	'Grey',			'M',		'2020-11-01',			'Yes',		'Rene Smith',		'021-835-5583'),
		('Cap',			'Fax',					'Black',		'M',		'2020-02-05',			'Yes',		'Brendon Wilkins',	'021-455-5458'),
		('Shoes',		'ASOXS',				'Orange',		'M',		'2019-09-09',			'No',		'',					'021-2835-5511'),
		('Hoodie',		'Gab',					'Maroon',		'L',		'2020-07-21',			'Yes',		'Chris H',			'021-755-5730'),
		('Socks',		'Kelvin Clean',			'Black',		'M9.5',		'2018-06-30',			'Yes',		'Greg Larkin',		'021-755-5708'),
		('Watch',		'Catio',				'Gunmetal',		'L',		'2020-03-28',			'No',		'',					'021-755-5355'),
		('Jeans',		'Veli',					'Navy Blue',	'M',		'2020-10-04',			'Yes',		'F Wagner',			'021-155-5946'),
		('Shorts',		'Nixe',					'Black',		'XL',		'2020-05-17',			'Yes',		'R Jameson',		'021-755-5624')

		-- Check new data inserted correctly
		SELECT * FROM [dbo].[tblLostProp];