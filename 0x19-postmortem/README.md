Incident Report: Web Stack Outage
Issue Summary:

Duration:

    • Start Time: February 15, 2024, 03:30 AM (EAT)
    • End Time: February 15, 2024, 05:45 AM (EAT)


Impact:

    • The outage affected our primary web application service.
    • Users experienced a complete service unavailability for approximately 2 hours.
    • Approximately 25% of users were affected, leading to a significant drop in user satisfaction and engagement.


Root Cause: The root cause of the outage was identified as a misconfiguration in the load balancer settings, leading to an improper distribution of traffic and subsequent server overload.


Timeline:
    
    • Detection Time:
        
        ◦ February 15, 2024, 03:30 AM (EAT)
    
    • Detection Method:
    
        ◦ An automated monitoring alert was triggered due to a sudden spike in server errors and a drop in response time.
    
    • Actions Taken:
    
        ◦ Investigated server logs to identify the source of errors.
        ◦ Assumed initially that the issue might be related to a recent deployment.
        ◦ Explored database performance, suspecting a bottleneck.
    
    • Misleading Paths:
    
        ◦ Initial assumption of a deployment issue led to unnecessary rollback attempts.
        ◦ Investigated database performance extensively, consuming valuable time.
    
    • Escalation
    
            ◦ Escalated the incident to the DevOps and Networking teams as the issue seemed to be infrastructure-related.
    
    • Resolution:
    
        ◦ Identified the misconfiguration in the load balancer settings.
        ◦ Adjusted the load balancer configuration to evenly distribute traffic.
        ◦ Monitored system stability before confirming the resolution.


Root Cause and Resolution:

    • Root Cause Explanation:
    
        ◦ The load balancer misconfiguration resulted in uneven distribution of traffic, causing some servers to be overwhelmed while others remained underutilized.
    • Resolution Details:
    
        ◦ Adjusted load balancer settings to evenly distribute traffic among all servers.
        ◦ Implemented additional monitoring to promptly detect and alert on load balancing issues.


Corrective and Preventative Measures:

    • Areas for Improvement:
    
        ◦ Enhance deployment testing procedures to catch potential configuration issues.
        ◦ Implement automated checks for load balancer configurations.
        ◦ Conduct regular load testing to ensure scalability.
    • Tasks to Address the Issue:
    
        ◦ Develop and implement a comprehensive deployment checklist.
        ◦ Automate load balancer configuration checks in the CI/CD pipeline.
        ◦ Schedule regular load tests as part of the continuous improvement process.


We understand the importance of maintaining a seamless user experience. The outlined measures aim to prevent similar incidents in the future, ensuring a robust and reliable web stack.
