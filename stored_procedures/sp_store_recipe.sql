-------------------------------------
--- Create Recipe Store Procedure ---
-------------------------------------

--- Log
----- Created Procedure 2/4/2022
----- Added Out Parameter for Recipe ID, renamed Procedure 2/5/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_recipe`;
DELIMITER $$
CREATE PROCEDURE sp_store_recipe(
	IN recipeName        VARCHAR(100),
	IN recipeMethod      VARCHAR(100),
	IN recipeSrm         INT,
	IN recipeBatchSize   FLOAT,
	IN recipeRating      INT,
	IN recipeDescription VARCHAR(255),
	IN styleId           INT,
	IN imageId           INT,
	IN notesId           INT,
    INOUT recipeId       INT
)

BEGIN
	IF recipeID IS NULL THEN
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
		(recipeName,
		recipeMethod,
		recipeSrm,
		recipeBatchSize,
		recipeRating,
		recipeDescription,
		styleId,
		imageId,
		notesId);

		SET recipeId = LAST_INSERT_ID();

	ELSE
		UPDATE `brewify_db`.`recipe`
		SET
		recipe_name = COALESCE(recipeName, recipe_name),
		recipe_method = COALESCE(recipeMethod, recipe_method),
		recipe_srm = COALESCE(recipeSrm, recipe_srm),
		recipe_batch_size = COALESCE(recipeBatchSize, recipe_batch_size),
		recipe_rating = COALESCE(recipeRating, recipe_rating),
		recipe_description = COALESCE(recipeDescription, recipe_description),
		style_id = COALESCE(styleId, style_id),
		image_id = COALESCE(imageId, image_id),
		notes_id = COALESCE(notesId, notes_id)

		WHERE recipe_id = recipeId;

	END IF;
		
END$$
