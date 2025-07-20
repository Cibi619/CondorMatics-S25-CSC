# PROG8830: Practical Lab 8 – Terraform Advanced Features
## Overview
- This project has all the advanced Terraform features used with loops, functions, and modular infrastructure.

## How to Run
- Install Terraform CLI.
- Clone this repo.
- Run terraform init, terraform plan, and terraform apply.

## Task 1: Loops
- Utilized the count parameter to provision three identical EC2 instances.
- Applied for_each to create security groups.
## Task 2: Functions
- Demonstrated string, numeric, collection, date/time, and networking functions.
## Task 3: Enhancements
- Refactored EC2 creation into a reusable module.
- Used dynamic expressions for better flexibility.
## Lessons Learned
- count is ideal for identical resources; for_each is better for unique configurations.
- Functions simplify logic and improve reusability in IaC.
## Author
- Cibi Sharan Cholarani