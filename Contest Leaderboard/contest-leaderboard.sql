SELECT hk.hacker_id,
       hk.name,
       Sum(maxscore) AS sumscore
FROM   (SELECT hacker_id,
               challenge_id,
               Max(score) AS maxscore
        FROM   submissions
        GROUP  BY hacker_id,
                  challenge_id) AS sm
       INNER JOIN hackers hk
              ON hk.hacker_id = sm.hacker_id
GROUP  BY hk.hacker_id,
          hk.name
HAVING sumscore != 0
ORDER  BY sumscore DESC,
          hk.hacker_id 