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

### Installing
- Clone or fork this repository
- run `bundle install`

### Running Program
- In your Terminal, run `irb`
- `require './lib/bank'`
- Create account. Example `account = Bank.new`
- Deposit money. Example `account.deposit(50)`
- Withdraw money. Example `account.withdraw(10)`
- To check balance `account.balance`.
- To see statement `account.show_table`

### Other Features
- To see last deposit, `account.last_deposit`
- To see last withdraw, `account.last_withdraw`
- To view all deposits, `account.deposits`
- To view all withdraws, `account.withdraws`
- To quit, `quit`
