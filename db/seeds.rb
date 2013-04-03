# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Nick")
User.create(name: "India")
User.create(name: "Ned")
User.create(name: "Eric")
User.create(name: "David")

Poll.create(creator_id: 1)
Poll.create(creator_id: 2)
Poll.create(creator_id: 3)
Poll.create(creator_id: 4)

Question.create(poll_id: 1, body: "What is your favorite car?")
Question.create(poll_id: 1, body: "What is your favorite racetrack?")
Question.create(poll_id: 2, body: "What is your favorite vegetable?")
Question.create(poll_id: 3, body: "What is your favorite animal?")

AllowedAnswer.create(question_id: 1, body: "Ford")
AllowedAnswer.create(question_id: 1, body: "Miata")

Response.create(respondent_id: 2, allowed_answer_id: 2)
Response.create(respondent_id: 3, allowed_answer_id: 1)
Response.create(respondent_id: 4, allowed_answer_id: 1)
Response.create(respondent_id: 5, allowed_answer_id: 1)

AllowedAnswer.create(question_id: 2, body: "TopGear")
AllowedAnswer.create(question_id: 2, body: "Indy500")

Response.create(respondent_id: 2, allowed_answer_id: 3)
Response.create(respondent_id: 3, allowed_answer_id: 3)
Response.create(respondent_id: 4, allowed_answer_id: 4)
Response.create(respondent_id: 5, allowed_answer_id: 4)

AllowedAnswer.create(question_id: 3, body: "Beets")
AllowedAnswer.create(question_id: 3, body: "Carrots")
AllowedAnswer.create(question_id: 3, body: "Zuchinis")

Response.create(respondent_id: 1, allowed_answer_id: 5)
Response.create(respondent_id: 3, allowed_answer_id: 6)
Response.create(respondent_id: 4, allowed_answer_id: 7)
Response.create(respondent_id: 5, allowed_answer_id: 5)

AllowedAnswer.create(question_id: 4, body: "Cats")
AllowedAnswer.create(question_id: 4, body: "Kittens")

Response.create(respondent_id: 1, allowed_answer_id: 9)
Response.create(respondent_id: 2, allowed_answer_id: 9)
Response.create(respondent_id: 4, allowed_answer_id: 8)
Response.create(respondent_id: 5, allowed_answer_id: 8)
