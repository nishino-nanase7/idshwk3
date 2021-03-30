# idshwk3
Homework III
• Make a repository with name idshwk3
• Add a script file test.zeek to your project
• Deadline : April 9th 11:00
• Detection Requirement
• check http sessions and if a source IP is related to three different user-agents or
more
• output “xxx.xxx.xxx.xxx is a proxy” where xxx.xxx.xxx.xxx is the source IP
•You Need
• a global variable to store the relationship of sourceIP to user-agent
• write a event which can return you the http header user_agent information
• you may need to study the datatype of Table, Set, String,
• to_lower(str) return a lowercase version string of the original one
• you may use print to output the alert
