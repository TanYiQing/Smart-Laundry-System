# Smart Laundry System

## 1.0 Introduction

Smart Laundry System is a new system that will be developed based on the requirements listed and defined in this document. This documents will describe what the main functions of this system are, how is this system going to perform and the expected outcome of this system. It will be a guideline for developer to follow in order to achieve expected outcomes. 
 

## 1.1 Purpose
This document is conducted with a purpose to describe the functional and non-functional requirements for Smart Laundry System which focus to be a mobile application. This document will ensure the requirements of this project is well analysed, detailed and centralised. With the requirements that is well analysed, it will help the developer to develop this project in the right way. Besides, it will also help developer to easy trace back if there is any changes in the future. 


## 1.2 Scope
This document will covers requirements list, use case model, use case specifications, sequence diagram, activity diagram, and class diagram. This system is a mobile application which targeted user group laundry owner and any potential customer that will use laundry. This application will mainly focus on nine function, which included Sign Up, Login, Logout, Manage Laundry, Manage Order, Track Order, Manage Payment, Manage Error, and Manage User Profile.


## 1.3  Definitions, Acronyms and Abbreviations 
1. SLS – Smart Laundry System. 
2. Visual Studio Code – The source-code editor that will be mainly used in development of this mobile application.  
3. Flutter – An open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase. 
4. Android Studio – Official integrated development environment (IDE) built on JetBrains’ IntelliJ IDEA software and designed for Android development. 
5.  Dart – Programming language developed by Google which is designed for client development for mobile apps. 
6. PHP – Open source scripting language for backend performance of this system. 
7. Billplz – Payment gateway platform to pay and get paid. 


## 2.0 General Description
## 2.1 System Functions
The functions of the Smart Laundry System mobile application are: 
1. Users can sign up to the Smart Laundry System. 
2. Users can login to the Smart Laundry System. 
3. Users can logout from Smart Laundry System. 
4. Laundry owner can manage laundry. 
5. Customer can place order and laundry owner can receive order. 
6. Customer can make payment through online and laundry owner can receive the payment. 
7. Customer can track order status and laundry owner can update order status. 
8. Customer can report error and laundry owner can receive error reported. 
9. Users can manage user profile. 


## 2.2 User
The users of this system are:
Customer – The person who will make reservation on laundry machine through this system. 
Laundry owner – The person who own laundry shop and provide laundry machine to be use by customer. 
Admin – The person who will maintain and regulate this system.
 

## 2.3 General Constraints
The general constraints of this system are: 
1. System will need admin and support team to regulate and maintain stability. 
2. System need internet connection to function. 
3. System need server to connect within customers and laundry owners. 
4. System need database to store data. 
5. System will need a smartphone as a platform to function. 
 

## 2.4 Assumptions and Dependencies
## 2.4.1 Assumptions
1. Users of this system have a smartphone.
2. Users understand English language.

## 2.4.2 Dependencies
1. System will need internet connection to function.
2. The payment function will connect with the payment gateway from third party API. 


## 3.0 Requirements
## 3.1 Functional Requirements
The functional requirements for the Smart Laundry System consist of nine major requirements namely “Sign Up”, “Login”, “Logout”, “Manage Laundry”, “Manage Order”, “Track Order”, “Manage Payment”, “Manage Error”, and “Manage User Profile” as rendered in Table 1. The priority of the requirements are indicated by: 

M - Mandatory
O - Optional
D - Desirable

|**No**|**Requirements ID** |**Requirement Description**                                                                                    |**Priority**|
| :--- | :----------------- | :------------------------------------------------------------------------------------------------------------ | :--------- |
|      |**SLS_01**          |**Sign Up**                                                                                                    |            |
|   1  |SLS_01_01           |User sign up their account.                                                                                    | M          |
|   2  |SLS_01_02           |Users can choose account type (Laundry Owner or Customers) to be sign up.                                      | M          |
|   3  |SLS_01_03           |Users need to input personal details (First Name and Last name), email, and password to register an account.   | M          |
|      |**SLS_02**          |**Login**                                                                                                      |            |
|   4  |SLS_02_01           |User can login with their account.                                                                             | M          |
|   5  |SLS_02_02           |User can login and redirect to management page if they are laundry owner.                                      | M          |
|   6  |SLS_02_03           |Users can reset password.                                                                                      | M          |
|      |**SLS_03**          |**Logout**                                                                                                     |            |
|   7  |SLS_03_01           |Users can logout their account.                                                                                | M          |
|      |**SLS_04**          |**Manage Laundry**                                                                                             |            |
|   8  |SLS_04_01           |Laundry owner can select quantity and type of machines.                                                        | M          |
|   9  |SLS_04_02           |Laundry owner manage to overview on occupied level of machines.                                                | M          |
|   10 |SLS_04_03           |Laundry owner can generate business report.                                                                    | O          |
|   11 |SLS_04_04           |Laundry owner can add laundry shop.                                                                            | O          |
|      |**SLS_05**          |**Manage Order**                                                                                               |            |
|   12 |SLS_05_01           |Customer can make reservation on machines.                                                                     | M          |
|   13 |SLS_05_02           |Customer can check for laundry shop occupied level.                                                            | M          |
|   14 |SLS_05_03           |Customer can order for runner to deliver their clothes.                                                        | D          |
|   15 |SLS_05_04           |Customer can choose pick up time to collect their clothes.                                                     | D          |
|   16 |SLS_05_05           |Customer will receive notification when clothes is done washing.                                               | M          |
|   17 |SLS_05_06           |Laundry owner will be notified when there is an order.                                                         | D          |
|   18 |SLS_05_07           |Laundry owner can cancel customer’s reservation.                                                               | O          |
|   19 |SLS_05_08           |Customer can search for laundry shop.                                                                          | O          |
|      |**SLS_06**          |**Track Order**                                                                                                |            |
|   20 |SLS_06_01           |Customer can make reservation on machines.                                                                     | O          |
|   21 |SLS_06_02           |Customer can check for laundry shop occupied level.                                                            | O          |
|      |**SLS_07**          |**Manage Payment**                                                                                             |            |
|   22 |SLS_07_01           |Customer can make payment online.                                                                              | M          |
|   23 |SLS_07_02           |Laundry owner can check wallet balance.                                                                        | M          |
|   24 |SLS_07_03           |Laundry owner can receive payment online.                                                                      | M          |
|      |**SLS_08**          |**Manage Error**                                                                                               |            |
|   25 |SLS_08_01           |Customer can report on error machines.                                                                         | D          |
|   26 |SLS_08_02           |Laundry owner can get report on error machines.                                                                | D          |
|      |**SLS_09**          |**Manage User Profile**                                                                                        |            |
|   27 |SLS_09_01           |Users are able to update personal information.                                                                 | D          |
|   28 |SLS_09_02           |Users can update their password.                                                                               | D          |
|   29 |SLS_09_03           |Customer are able to overview order history.                                                                   | D          |

<h5 align="center">Table 1: The Functional Requirements Definition</h5>

 
 ## 3.2 Non-Functional Requirements
The non-functional requirements for the Smart Laundry System consist of four major requirements namely “Security”, “Reliability”, “Usability”, and “Scalability” as rendered in Table The priority of the requirements are indicated by: 

M - Mandatory
O - Optional
D - Desirable

|**No**|**Requirements ID** |**Requirement Description**                                                                                    |**Priority**|
| :--- | :----------------- | :------------------------------------------------------------------------------------------------------------ | :--------- |
|      |**SLS_10**          |**Security**                                                                                                   |            |
|   1  |SLS_10_01           |Laundry owner and customer can only log in with the correct username and password.                             | M          |
|   2  |SLS_10_02           |Payment is manage by payment gateway to enhance secureness.                                                    | M          |
|      |**SLS_11**          |**Reliability**                                                                                                |            |
|   3  |SLS_11_01           |The system should defect at a rate shall be no more than 1 failure per 1000 hours of operation.                | M          |
|      |**SLS_12**          |**Usability**                                                                                                  |            |
|   4  |SLS_12_01           |System is easy to use and not complicated to function.                                                         | M          |
|      |**SLS_13**          |**Scalability**                                                                                                |            |
|   5  |SLS_13_01           |System will not crash even if many users use it at the same time which can hold up to 1000 users per time.     | M          |

<h5 align="center">Table 2: The Non-Functional Requirements Definition</h5>
