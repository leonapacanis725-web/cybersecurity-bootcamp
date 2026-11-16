# Science & Cybersecurity Investigation Report

## Project Overview
This investigation applies the scientific method to simulated SSH login activity.

## 1. Observation
The sample log contains:
- 4 failed login attempts
- 1 successful login
- 3 failed attempts from 203.0.113.50
- 1 failed attempt from 198.51.100.12

## 2. Question
Why did one IP address generate multiple failed login attempts?

## 3. Hypothesis
Repeated failed attempts from one source may indicate automated password guessing.

## 4. Testing
Used Linux commands to:
- Count failed and successful logins.
- Extract and count source IP addresses.
- Identify usernames targeted by failed attempts.

## 5. Analysis
The address 203.0.113.50 made three failed attempts against admin, root, and guest.

The address 198.51.100.12 made one failed attempt against user.

A successful login for analyst came from 192.0.2.25.

## 6. Conclusion
The repeated attempts from 203.0.113.50 are consistent with suspicious login activity and warrant further investigation.

However, the available sample does not prove an attack or establish that the attempts were automated.

## Data Limitations
All log entries are simulated. The IP addresses belong to documentation ranges and do not identify real attackers.

## Skills Demonstrated
- Linux log analysis
- grep, awk, sort, and uniq
- IP address investigation
- Evidence-based reasoning
- Scientific method applied to cybersecurity
