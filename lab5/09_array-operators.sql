SELECT 
    ARRAY[1, 2, 3] @> ARRAY[2] AS contains_element,
    ARRAY['A', 'B', 'C'] && ARRAY['C', 'D'] AS arrays_overlap
FROM accounts;