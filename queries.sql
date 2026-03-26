/* 1. Join and Aggregate*/
/*List all job requisitions along with the number of candidates who have attended an interview for each job.*/
SELECT
    JR.JOB_TITLE                   AS JOB_TITLE,
    COUNT(DISTINCT I.CANDIDATE_ID) AS CANDIDATE_COUNT
FROM
    JOB_REQUISITION JR
    JOIN INTERVIEW I
    ON JR.ID = I.JOB_REQUISITION_ID
WHERE
    I.STATUS ='Completed'
GROUP BY
    JR.JOB_TITLE;

/* 2. Nested Query */
/*Find all candidates who have scored above the average evaluation score across all interviews.*/
SELECT
    C.NAME, MAX(E.SCORE) AS MAX_SCORE
FROM CANDIDATE  C
JOIN EVALUATION E ON C.ID = E.CANDIDATE_ID
GROUP BY C.ID, C.NAME
HAVING MAX(E.SCORE) > (
        SELECT AVG(SCORE) FROM EVALUATION
    );

/* 3. Correlated Query */
/*List candidates whose most recent interview status is “Rescheduled”.*/
SELECT
    C.NAME,
    I.UPDATED_AT
FROM
    CANDIDATE C
    JOIN INTERVIEW I
        ON C.ID = I.CANDIDATE_ID
WHERE
    I.STATUS = 'Rescheduled'
    AND I.UPDATED_AT = (
        SELECT
            MAX(I2.UPDATED_AT)
        FROM
            INTERVIEW I2
        WHERE
            I2.CANDIDATE_ID = C.ID
    );

/* 4. CASE WHEN + JOIN */
/*Show job requisitions with a calculated pipeline stage*/
SELECT
    JR.ID        AS JOB_REQUISITION_ID,
    JR.JOB_TITLE AS JOB_REQUISITION_TITLE,
    CASE
        WHEN OB.ID IS NOT NULL THEN
            'Onboarding'
        WHEN OFR.ID IS NOT NULL THEN
            'Offer Stage'
        WHEN IV.ID IS NOT NULL THEN
            'In Interview'
        ELSE
            'Sourcing'
    END          AS PIPELINE_STAGE
FROM
    JOB_REQUISITION JR
    LEFT JOIN INTERVIEW IV
    ON JR.ID = IV.JOB_REQUISITION_ID
    LEFT JOIN OFFER OFR
    ON JR.ID = OFR.JOB_REQUISITION_ID
    LEFT JOIN ONBOARDING OB
    ON OFR.ID = OB.OFFER_ID
GROUP BY
    JR.ID,
    JR.JOB_TITLE,
    OB.ID,
    OFR.ID,
    IV.ID;

/* 5. >= ALL */
/*Find candidates with the highest score overall*/
SELECT C.NAME, E.SCORE
FROM CANDIDATE  C JOIN EVALUATION E
ON C.ID = E.CANDIDATE_ID
WHERE E.SCORE >= ALL (
        SELECT SCORE FROM EVALUATION
    );

/* 6. > ANY */
/* Candidates scoring higher than any candidate evaluated last week */
SELECT C.NAME, E.SCORE
FROM CANDIDATE C JOIN EVALUATION E
ON C.ID = E.CANDIDATE_ID
WHERE E.SCORE > ANY (
        SELECT SCORE FROM EVALUATION
        WHERE EVALUATED_AT >= CURDATE() - INTERVAL 7 DAY
    );

/* 7. EXISTS */
/* Find panel members who have interviewed at least 3 candidates  */
SELECT
    PM.NAME
FROM
    PANEL_MEMBER    PM
WHERE
    EXISTS (
        SELECT
            1
        FROM
            INTERVIEW_PANEL IP
        WHERE
            IP.PANEL_MEMBER_ID = PM.ID
        GROUP BY
            IP.PANEL_MEMBER_ID
        HAVING
            COUNT(DISTINCT IP.INTERVIEW_ID) > 3
    );

/* 8. View */
/* Create a view combining candidate and interview to show: candidate_name, interview_date, status. */
CREATE VIEW CANDIDATE_INTERVIEW_VIEW AS
    SELECT
        C.NAME       AS CANDIDATE_NAME,
        I.UPDATED_AT,
        I.STATUS
    FROM
        CANDIDATE C
        LEFT JOIN INTERVIEW I
        ON C.ID = I.CANDIDATE_ID;

SELECT
    *
FROM
    CANDIDATE_INTERVIEW_VIEW;

/* 9. CTE*/
/* Using a CTE, calculate the average score per recruiter and then select only recruiters whose average score is above 3.4.*/
WITH AVG_SCORE_PER_RECRUITER AS (
    SELECT
        SA.RECRUITER_ID,
        R.NAME          AS RECRUITER_NAME,
        AVG(E.SCORE)    AS AVG_SCORE
    FROM
        SOURCING_ACTIVITY SA
        JOIN EVALUATION E
        ON SA.CANDIDATE_ID = E.CANDIDATE_ID
        JOIN RECRUITER R
        ON SA.RECRUITER_ID = R.ID
    GROUP BY
        SA.RECRUITER_ID,
        R.NAME
)
SELECT
    RECRUITER_ID,
    RECRUITER_NAME,
    AVG_SCORE
FROM
    AVG_SCORE_PER_RECRUITER
WHERE
    AVG_SCORE > 3.4;

/* 10. Candidates Who were sourced but never Interviewed*/
/* MySQL version of Except*/
SELECT DISTINCT
    S.CANDIDATE_ID, C.NAME
FROM
    SOURCING_ACTIVITY S, CANDIDATE C
WHERE S.CANDIDATE_ID = C.ID
AND    S.CANDIDATE_ID NOT IN (
        SELECT
            CANDIDATE_ID
        FROM
            INTERVIEW
    )
    order by c.name;

/* 11. Candidates Who Took an External Test AND Attended an Interview*/
/* MySQL Version of Intersect*/
SELECT
    DISTINCT ET.CANDIDATE_ID
FROM
    EXTERNAL_TEST ET
    INNER JOIN INTERVIEW I
    ON ET.CANDIDATE_ID = I.CANDIDATE_ID;

/* 12. Jobs That Have Offers OR Interviews (Any Stage)*/
SELECT
    JOB_REQUISITION_ID
FROM
    INTERVIEW
UNION
SELECT
    JOB_REQUISITION_ID
FROM
    OFFER;