SELECT products.id, products.name, 
unit_price as `list_price`,stock,photo_url,description,discount,isbn,publish_date,
-- unit_price * (100-discount)/100 as unit_price,
publishers.name AS publishers_name,auther_name  
FROM products 
    LEFT JOIN book_detail ON products.id = book_detail.product_id 
    LEFT JOIN publishers ON book_detail.publisher_id = publishers.id
WHERE products.id ="1";

SELECT products.id, products.name, 
unit_price as `list_price`,photo_url,description,discount,
auther_name  
FROM products 
    LEFT JOIN book_detail ON products.id = book_detail.product_id 
WHERE products.type ="product"