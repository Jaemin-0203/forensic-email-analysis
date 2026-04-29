-- Email Investigation Simulation

-- 1. Emails sent outside business hours
SELECT *
FROM sample_email_data
WHERE outside_business_hours = 'Yes';

-- 2. Emails with suspicious keywords
SELECT *
FROM sample_email_data
WHERE keyword_category IN ('payment', 'confidential', 'transfer');

-- 3. Count suspicious emails by sender
SELECT sender, COUNT(*) AS suspicious_email_count
FROM sample_email_data
WHERE keyword_category IN ('payment', 'confidential', 'transfer')
   OR outside_business_hours = 'Yes'
GROUP BY sender
ORDER BY suspicious_email_count DESC;

-- 4. Prioritize emails for review
SELECT
    email_id,
    sender,
    receiver,
    timestamp,
    subject,
    keyword_category,
    outside_business_hours,
    CASE
        WHEN keyword_category IN ('confidential', 'transfer') AND outside_business_hours = 'Yes'
            THEN 'High Priority'
        WHEN keyword_category IN ('payment', 'confidential', 'transfer')
            THEN 'Medium Priority'
        ELSE 'Low Priority'
    END AS review_priority
FROM sample_email_data
ORDER BY review_priority;
