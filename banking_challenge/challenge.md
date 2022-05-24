# Banking Challenge

### Setup
- Create a new rails application and database
- Create a model for owner
- An owner has a name and address, and can have multiple credit cards
- Create a model for credit card
- A credit card has a number, an expiration date, and an owner

### Challenges
- Create three owners and save them in the database
- Create a credit card in the database for each owner
- Add two more credit cards to one of the owners

### Stretch Challenge
- Add a credit limit to each card
- Find the total credit extended to the owner with multiple credit cards

```jeremy.credit_cards.sum(:credit_limit)```

  ```
  CreditCard Sum (0.5ms)  SELECT SUM("credit_cards"."credit_limit") FROM "credit_cards" WHERE "credit_cards"."owner_id" = $1  [["owner_id", 1]]
=> 45000.0
```