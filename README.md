# Email Investigation Simulation

## Objective
This project simulates an email-based investigation to identify suspicious communication patterns using structured email data.

The goal is to demonstrate how data filtering, keyword search, timestamp review, and pattern analysis can support legal, compliance, and eDiscovery investigation workflows.

## Scenario
A company is reviewing email activity as part of an internal investigation. The analysis focuses on identifying unusual communication patterns, sensitive keywords, and activity outside normal business hours.

## Dataset
The sample dataset includes:
- Sender
- Receiver
- Timestamp
- Subject
- Keyword category
- Business-hours flag

## Analysis Approach
The investigation focuses on:

1. Keyword-based filtering  
2. After-hours activity review  
3. High-frequency sender analysis  
4. Suspicious subject pattern detection  
5. Summary reporting for downstream review

## Key Investigation Questions
- Which emails contain sensitive or suspicious keywords?
- Which users sent emails outside normal business hours?
- Are there repeated communication patterns that may require further review?
- Which records should be prioritized for attorney or compliance review?

## Tools Used
- CSV dataset
- SQL / Excel-based analysis
- GitHub documentation

## Findings
Initial simulated findings include:
- Several emails occurred outside normal business hours
- Certain subjects contained sensitive keywords such as "confidential," "payment," and "transfer"
- Specific senders showed repeated activity requiring further review

## Relevance to eDiscovery & Investigations
This project reflects core eDiscovery and investigation workflows, including:
- Data filtering
- Search term analysis
- Review prioritization
- Investigation documentation
- Preparation of data for downstream legal or compliance review
