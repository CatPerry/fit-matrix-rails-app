# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quiz.create(name:"upperlowerabs", description:"What body part do you want to work: Upper, Lower, Abs, or Full?", option_1:"Upper Body", option_2:"Lower Body", option_3:"Abs", option_4:"Full Body")

Quiz.create(name:"begintadv", description:"Are you Beginner, Intermediate or Advanced?", option_1:"beginner", option_2:"intermediate", option_3:"advanced")

Quiz.create(name:"timer", description:"What timer style do you want today?", option_1:"EMOM (Every Minute on the Minute)", option_2:"HIIT/Tabata (High Intensity Interval Training)", option_3:"AMRAP (As Many Rounds As Possible)")
