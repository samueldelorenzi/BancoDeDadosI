DELIMITER $$

CREATE PROCEDURE GetAllProducts ()
BEGIN
	-- DECLARACAO DE VARS
    DECLARE totalSale DEC(10,2) DEFAULT 0.0;
    DECLARE x, y, total, qtd INT DEFAULT 0;
    -- -------------------------------------
    
    -- atribuicao de valores
    SET total = 10;
    
    -- valores de select para variavel
    SELECT COUNT(*)
    INTO qtd
    FROM produto;
    
    SELECT qtd;
    
    SELECT * FROM PRODUTO;
    
END$$

DELIMITER ;