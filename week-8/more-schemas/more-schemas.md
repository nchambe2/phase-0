#One-to-One schema design
The following diagram models a one-to-one relationship between two tables.  Each person only has one social security number, and each social security number is only associated with one person. While you could include the social security number in the person table it's best to split it into it's own table for two reasons. One being that you will run into cases where a person doesn't have a social security number. When you do the field will have a null value. In order to avoid that you have a second table that will only list social security numbers for those individuals that have them. Secondly, it's additional information about the person that you commonly won't utilize very often. To reduce lookup time when queries are performed it's best to keep that information seperate.
![One-to-One relationship](release_one_schema.png)

#Many-to-Many schema design
![Many-to-Many relationship](more_to_more_schema.png)

#Reflection
What is a one-to-one database?
A one-to-one database models a single relationship between two entities.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You would create a one-to-one database if some of your information can be viewed as supplementary. Which would then result in some rows having null values. To avoid this situation you could move the supplementary information into it's own table. Additionaly, if you have information that you want to store, but it's not commonly used in the app you could then move that information into it's own table. That would then decrease the amount of look up time that occurs when querying the database.

What is a many-to-many database?
A many-to-many database models a relationship where two entities may contain multiple of the other entity.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
You would use a many-to-many database when one or more rows in one table is associated with one or more rows in another table.

What is confusing about database schemas? What makes sense?
The hardest part has been identifying table's relationships with each other, and then modeling those relationships. I can imagine how hairy that can get in the real world.