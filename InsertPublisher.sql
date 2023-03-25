USE [Library]
GO

INSERT INTO [dbo].[Publisher]
           ([name]
           ,[country_id]
           ,[city_id])
     VALUES
           ('Эксмо', 1, 1),
		   ('Аст', 1, 1),
		   ('Лань', 1, 2),
		   ('Издательский дом Лев', 1, 1),

		   ('Penguin Random House', 2, 11),
		   ('HarperCollins', 2, 11),
		   ('Oxford University Press', 2, 11),

		   ('Taschen', 3, 20),
		   ('BMG Rights Management', 3, 17),
		   ('Suhrkamp Verlag', 3, 17),

		   ('Hachette Book Group', 4, 24),
		   ('Macmillan Publishers', 4, 24),
		   ('Simon & Schuster', 4, 24),

		   ('Editorial Planeta', 5, 31),
		   ('Tusquets Editores', 5, 31),

		   ('De Agostini', 6, 35),
		   ('Casa Editrice Leo S. Olschki', 6, 35),

		   ('China International Publishing Group', 7, 40),
		   ('Foreign Languages Press', 7, 40),

		   ('Kadokawa Shoten', 8, 46),
		   ('Shueisha', 8, 46),

		   ('Тарусс', 9, 52),
		   ('Hachette', 9, 52),

		   ('Elsevier', 10, 58),
		   ('Koninklijke Brill', 10, 58),

		   ('International Masters Publishers', 11, 65),

		   ('', 12, ),
GO



