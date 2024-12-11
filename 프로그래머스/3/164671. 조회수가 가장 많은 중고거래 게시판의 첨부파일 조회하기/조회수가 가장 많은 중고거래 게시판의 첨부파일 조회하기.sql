WITH RANK_DATA AS (
    SELECT 
        FILE_ID,
        CONCAT('/home/grep/src/' ,UGB.BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) AS FILE_PATH,
        RANK() OVER (ORDER BY UGB.VIEWS DESC) AS RANK_VIEWS
    FROM USED_GOODS_BOARD AS UGB 
    LEFT JOIN USED_GOODS_FILE AS UGF
    ON UGB.BOARD_ID = UGF.BOARD_ID 
)

SELECT
    FILE_PATH
FROM RANK_DATA
WHERE RANK_VIEWS = 1
ORDER BY FILE_ID DESC
    