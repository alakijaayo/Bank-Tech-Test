# Bank Tech Test

## Project Description

The aim of this project is to build a tech test for a bank which allows a user to interact with their bank account, allowing the user to make deposits, withdraws and be able to view their whole statement which gives them a complete list of their debits, credits and total balance.  

## User Stories

Whilst working on the project, I came up with user stories as a good soundboard to figure out how I the account should work from a users standpoint and to also help flesh out how I would want my account interface to work. These were the initial user stories that were used:

- As a client, so I can see how much money I have, I would like to check my balance
- As a client, so I can save my money, I would like to make a deposit
- As a client, so I can get my money from my account, I would like to make a withdraw
- As a client, so I can know my monthly financial transactions, I would like to view a bank statement
- As a client, so that I know when transactions were made in my account, I would like to view a timestamp of transactions
- As a client, so that I know when I am about to go over my limit, I would like a warning informing me I have no available funds


## How to Use

- Clone or fork this repository
- In your Terminal, go to this folder and run `bundle install` to install all necessary gems to run the program
- In your Terminal, run `irb`
- For the program to run, you will need to put in `require './lib/bank'` and expect result to be true
- Once this result is true, you can set up a new Bank Account with whatever name you like. For example `Account = Bank.new`. PLEASE NOTE, you must set whatever you want your bank account to be to = Bank.new
- To make a deposit in your account, call deposit on your account, for example `Account.deposit(50)` In this case, 50 will be deposited into your account
- To make a withdraw in your account, call withdraw on your account, for example `Account.withdraw(10)`. In this case, 10 will be withdrawn from your account.
- To know the balance of your account, call balance on your account, for example `Account.balance`.
- To see a full statement of your deposits and withdraws from your account, call show table on your account, for example  `Account.show_table`. This will print out for you a full statement of your bank account.
- To quit irb, type `quit`
