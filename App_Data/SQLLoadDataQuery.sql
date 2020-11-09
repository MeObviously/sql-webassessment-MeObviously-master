		-- Remove all of existing data in table
		TRUNCATE TABLE [dbo].[tblLostProp];
		
		-- Reload new data 
		INSERT INTO [dbo].[tblLostProp] ([Item], [Brand], [Colour], [Size], [Named], [Name]) 
		VALUES 
		('T-Shirt',		'Animas',				'Red',			'L',		'Yes',		'B Adams'			),
		('Socks',		'Nixe',					'White',		'M',		'No',		''					),
		('Sweatshirt',  'Community Wearing',	'Grey',			'M',		'Yes',		'Rene Smith'		),
		('Cap',			'Fax',					'Black',		'M',		'Yes',		'Brendon Wilkins'	),
		('Shoes',		'ASOXS',				'Orange',		'M',		'No',		''					),
		('Hoodie',		'Gab',					'Maroon',		'L',		'Yes',		'Chris H'			),
		('Socks',		'Kelvin Clean',			'Black',		'M9.5',		'Yes',		'Greg Larkin'		),
		('Watch',		'Catio',				'Gunmetal',		'L',		'No',		''					),
		('Jeans',		'Veli',					'Navy Blue',	'M',		'Yes',		'F Wagner'			),
		('Shorts',		'Nixe',					'Black',		'XL',		'Yes',		'R Jameson'		)

		-- Check new data inserted correctly
		SELECT * FROM [dbo].[tblLostProp];