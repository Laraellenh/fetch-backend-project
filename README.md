Hello Fetch Hiring Team,

When you clone this repo, first use command bundle i to get the dependencies working
Next, use command rails s to start the server
head to localhost:3000 to check if your server is running
in a new terminal type the following commands
rails db:create
rails db:migrate db:seed
this will give you some intial seed data so you have a few payers, users, and transactions, band  you are able to create your own (read on)
To create transactions, you may either use Postman or another fetch program, or you can create transactions (and users/payers) in the rails console. To enter rails console, open a new terminal in your directory and type command rails c

your routes:
localhost:3000/users/:id will give you the specified user acccount in the specified format for example, if you want to see t first user's account you would go to http://localhost:3000/users/1


To see all the payers, go to 
http://localhost:3000/payers/
or visit http://localhost:3000/payers/:id to visit a specific payer, for example http://localhost:3000/payers/1 would take you to the first Payer account

To see the transactions visit http://localhost:3000/transactions/
or for specific transactions http://localhost:3000/transactions/:id
