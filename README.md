Hello Fetch Hiring Team,

thanks for this opportunity to apply for the backend intern to employee position. I live in the US (eastern timezone) and have fulltime availability. 

When you clone this repo, first use command `bundle i` to get the dependencies working
Next, use command `rails s` to start the server
head to localhost:3000 to check if your server is running
in a new terminal type the following commands
rails db:create
rails db:migrate db:seed
this will give you some intial seed data so you have a few payers, users, and transactions, band  you are able to create your own (read on)
To create transactions (and/or users/payers), you may either use Postman or another fetch program, or you can create transactions (and users/payers) in the rails console. To enter rails console, open a new terminal in your directory and type command `rails c`
to create a new transaction in rails console:
Transaction.create!(payer__id: _, user_id: _, points: -) 
please note the ! in the above command will throw an error if you did not enter the appropriate fields or if something is invalid
Use the pay and user id's (you can check these in the seed data or by typing commands into the rails console, for example if you type `User.first.` you will see the User's id, or if you type User.all you can see all users and select the id.

your routes:
localhost:3000/users/:id will give you the specified user acccount in the specified format for example, if you want to see the first user's account you would go to http://localhost:3000/users/1


To see all the payers, go to 
http://localhost:3000/payers/
or visit http://localhost:3000/payers/:id to visit a specific payer, for example http://localhost:3000/payers/1 would take you to the first Payer account

To see the transactions visit http://localhost:3000/transactions/
or for specific transactions http://localhost:3000/transactions/:id


