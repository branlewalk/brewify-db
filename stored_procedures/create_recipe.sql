-------------------------------------
--- Create Recipe Store Procedure ---
-------------------------------------

--- Log
----- Created Procedure 2/4/2022

USE brewify_db;

DELIMITER $$

CREATE PROCEDURE CreateRecipe(
	IN recipeName        VARCHAR(100),
	IN recipeMethod      VARCHAR(100),
	IN recipeSrm         INT,
	IN recipeBatchSize   FLOAT,
	IN recipeRating      INT,
	IN recipeDescription VARCHAR(255),
	IN styleId           INT,
	IN imageId           INT,
	IN notesId           INT
)

BEGIN

	INSERT INTO `brewify_db`.`recipe`
	(`recipe_name`,
	`recipe_method`,
	`recipe_srm`,
	`recipe_batch_size`,
	`recipe_rating`,
	`recipe_description`,
	`style_id`,
	`image_id`,
	`notes_id`)
	VALUES
	(
	recipeName,
	recipeMethod,
	recipeSrm,
	recipeBatchSize,
	recipeRating,
	recipeDescription,
	styleId,
	imageId,
	notesId);
    
END