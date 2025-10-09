SELECT 
    ARRAY_LENGTH(ARRAY['KZT', 'USD', 'EUR'], 1) AS array_length,
    ARRAY_TO_STRING(ARRAY['KZT', 'USD', 'EUR'], ', ') AS formatted_array,
    ARRAY[1, 2, 3] || ARRAY[4, 5] AS concatenated_arrays
FROM accounts;