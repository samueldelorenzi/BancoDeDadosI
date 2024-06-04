CALL GetAllProducts();

CALL GetProductById(3, @level);
SELECT @level;