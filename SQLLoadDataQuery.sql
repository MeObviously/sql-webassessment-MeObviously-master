		-- Remove all of existing data in table
		TRUNCATE TABLE [dbo].[tblLostProp];
		
		-- Reload new data 
		INSERT INTO [dbo].[tblLostProp] ([Item], [Brand], [Colour], [Size], [Named], [Name]) 
		VALUES 
		('T-Shirt',		'Animas',				'Red',			'L',		1,  'B. Adams'			),
		('Socks',		'Nixe',					'White',		'M10',		0,  ''					),
		('Sweatshirt',  'Community Wearing',	'Grey',			'M',		1,  'Rene Smith'		),
		('Cap',			'Fax',					'Black',		'M',		1,  'Brendon Wilkins'	),
		('Shoes',		'ASOXS',				'Orange',		'M11.5',	0,  ''					),
		('Hoodie',		'Gab',					'Maroon',		'L',		1,  'Chris H.'			),
		('Socks',		'Kelvin Clean',			'Black',		'M9.5',		1,  'Greg Larkin'		),
		('Watch',		'Catio',				'Gunmetal',		'L',		0,  ''					),
		('Jeans',		'Veli',					'Navy Blue',	'M',		1,  'F. Wagner'			),
		('Shorts',		'Nike',					'Black',		'XL',		1,  'R. Jameson'		)

		-- Check new data inserted correctly
		SELECT * FROM [dbo].[tblLostProp];