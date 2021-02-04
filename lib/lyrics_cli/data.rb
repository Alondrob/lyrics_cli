require 'pry'
require_relative './genre.rb'
def music_data
  music_data = {

             "grunge":{
                       "Pearl Jam": [
                          "Once", "Even Flow", "Alive", "Why Go", "Black", "Jeremy", "Oceans", "Porch", "Garden", "Deep", "Release"
                          ],
                           
                       "Nirvana": [
                          "About a Girl", "All Apologies", "Come as You Are", "Heart Shaped Box", "In Bloom", "The Man Who Sold the World", "Rape Me", "Smells Like Teen Spirit", "Where Did You Sleep Last Night?", "You Know Youre Right"
                        ],

                        "Alice In Chains": [
                          "Man in the Box", "Them Bones", "Rooster", "Angry Chair", "Would?", "No Excuses", "I Stay Away", "Grind", "Heaven Beside You", "Again"
                        ]
                       }, #grunge ends

          "80's rock":{
                        "Bon Jovi": [
                          "You Give Love a Bad Name", "Its My Life", "Have a Nice Day", "Wanted Dead or Alive", "Bad Medicine", "We Werent Born to Follow", "Ill Be There for You", "Born to Be My Baby", "Blaze of Glory", "Bed Of Roses", "Lay Your Hands on Me", "Always", "Runaway"
                        ],
                           
                        "Guns N Roses": [
                          "Welcome to the Jungle", "Sweet Child o Mine", "Patience", "Paradise City", "Civil War", "Dont Cry", "November Rain", "Night Train", "Yesterdays", "Rocket Queen"
                        ],

                        "Motley Crue": [
                          "Shout at the Devil",	"Looks That Kill", "Dr. Feelgood", "Kickstart My Heart"
                        ],

                        "Journey": [
                          "Only the Young", "Dont Stop Believin", "Wheel in the Sky", "Faithfully", "Lights", "Open Arms"
                        ]

                      }, #80s rock ends

       "head bangers":{
                        "Metallica": [
                          "Battery", "Master of Puppets", "For Whom the Bell Tolls", "Fade to Black", "Creeping Death", "One", "Enter Sandman", "The Unforgiven", "Wherever I May Roam"
                        ],
                           
                       "Megadeth": [
                          "Sweating Bullets", "Peace Sells", "A Tout le Monde", "Hangar 18"
                        ],
                        
                        "Iron Maiden": [
                          "The Number of the Beast", "Run to the Hills", "Be Quick or Be Dead", "Wasted Years", "Hallowed Be Thy Name", "The Trooper"
                        ]
                     
                       }, #head bangers ends

    "that sweet piano":{
                        "Elton John": [
                          "Your Song", "Daniel", "Goodbye Yellow Brick Road", "Rocket Man", "Bennie and the Jets", "Dont Let the Sun Go Down on Me", "Levon'", "Tiny Dancer", "I Want Love"
                        ],
                           
                       "Billy Joel": [
                          "The Longest Time", "New York State of Mind", "Only the Good Die Young", "My Life", "We Didnt Start the Fire", "Uptown Girl", "Just the Way You Are", "Piano Man"
                        ],

                        "Ray Charles": [
                          "Unchain My Heart", "Georgia On My Mind", "Winter Wonderland", "Hit The Road Jack", "Drown In My Own Tears"
                        ],

                        "Stevie Wonder": [
                          "Overjoyed", "I Just Called to Say I Love You", "I Wish", "Sir Duke", "Higher Ground", "As", "Superstition"
                        ]

                       }, #sweet piano ends

    "best of classics":{
                        "Led Zeppelin": [
                          "Going to California", "Rock and Roll", "When the Levee Breaks", "Immigrant Song", "Good Times Bad Times", "Ramble On", "Kashmir", "Black Dog", "Stairway to Heaven", "Whole Lotta Love"
                        ],
                           
                       "Queen": [
                          "I Want It All", "Radio Ga Ga", "Another One Bites the Dust", "Stone Cold Crazy", "Crazy Little Thing Called Love", "We Are the Champions", "Tie Your Mother Down", "Killer Queen", "We Will Rock You", "Under Pressure","Bohemian Rhapsody"
                        ],

                        "Beatles": [
                          "While My Guitar Gently Weeps", "A Day in the Life", "I Want to Hold Your Hand", "Strawberry Fields Forever", "Yesterday", "In My Life", "Something", "Hey Jude", "Let It Be"
                        ],

                        "Eagles": [
                          "Life in the Fast Lane", "The Long Run", "Already Gone", "Desperado", "Heartache Tonight", "Take It to the Limit", "Take It Easy", "Hotel California"
                        ],

                        "The Rolling Stones": [
                          "Angie", "You Cant Always Get What You Want", "Tumbling Dice", "Wild Horses", "Satisfaction", "Paint It Black", "Sympathy for the Devil", "Gimme Shelter", "Beast Of Burden"
                        ]

                        }, #best of classics ends

    "guilty pleasures":{
                        "George Michael": [
                          "Faith", "Careless Whisper", "One More Try"
                        ],
                           
                        "Michael Jackson": [
                          "Billie Jean", "Thriller", "Man In The Mirror", "Dirty Diana"
                        ],

                         "Backstreet Boys": [
                          "Incomplete", "Shape Of My Heart", "Larger Than Life", "I Want It That Way" 
                        ],

                         "Prince": [
                          "Purple Rain", "Raspberry Beret", "Kiss", "Little Red Corvette"
                        ],

                         "Whitney Houston": [
                          "One Moment In Time", "The Greatest Love of All", "I Will Always Love You", "I Wanna Dance With Somebody"
                        ],

                          "Mariah Carey": [
                          "Always Be My Baby", "Fantasy", "Hero"
                        ],

                          "Celine Dion": [
                          "Because You Loved Me", "The Power of Love", "My Heart Will Go On", "All By Myself"
                        ],

                          "Britney Spears": [
                          "Lucky", "Stronger", "Sometimes", "Womanizer"
                        ]

                        } #guilty pleasures
                 
            }

 end

def genre_data

  genre_data = {

              "80's rock":"OHH SUNSET STRIP, THOSE WERE THE TIMES!!",
              "Best of classics":"You're an old school ha ?, let's test it !!",
              "Grunge":"Seattle's grey sky and some rainy mood !!",
              "Guilty pleasures":"We all got those guilty pleasures!",
              "Head bangers":"SHAKE YOUR HAIR AND DO SOME AIR GUITAR !!",
              "That sweet piano":"Just relax and listen to these sweet notes !!"
          }

end
