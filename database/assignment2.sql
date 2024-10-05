INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    )

UPDATE public.account SET account_type = 'Admin' WHERE account_id = 1;  

DELETE FROM public.account WHERE account_id = 1;

UPDATE public.inventory SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior') WHERE inv_make = 'GM' AND inv_model = 'Hummer';

SELECT i.inv_make, i.inv_model, c.classification_name FROM public.classification c INNER JOIN public.inventory i ON c.classification_id = i.inv_id;

UPDATE public.inventory SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'), inv_thumbnail  = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');

