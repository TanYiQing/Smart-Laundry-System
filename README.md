# final_year_project

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

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

|  No  | Requirements ID |  Requirement Description                                                                                      |  Priority  |
| :--- | :-------------- | :------------------------------------------------------------------------------------------------------------ | :--------- |
|      |SLS_01           |User sign up their account.                                                                                    |            |
|   1  |SLS_01_01        |User sign up their account.                                                                                    | M          |
|   2  |SLS_01_02        |Users can choose account type (Laundry Owner or Customers) to be sign up.                                      | M          |
|   3  |SLS_01_03        |Users need to input personal details (First Name and Last name), email, and password to register an account.   | M |
 
 
