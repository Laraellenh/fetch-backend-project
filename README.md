# README
MVP
Users have points

Users see their balance

transaction contains: payer, point: integer, timestamp

user has many points through payees

user has many payees
payees have many points 
payees have many users through points

users>-----jointable----------------<payees
name        integer                 name
            t.references payee
            t.refences user


methods:
oldest points spent first based on timestamps
points must be >=0

routes
add transaction routes (get) {"payer" : "name", points: #, timestamp: "" } has payee points, timestamp

spend points routes with
post {"points": #}

response expeected
[{"payer" : "name", "points" : -100}]

points balance subtracts the posted amount from transaction from the balance