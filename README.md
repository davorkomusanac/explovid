# explovid

Discuss with friends what you are watching

## Instagram for movies

Explovid is a mobile app made in Flutter where you can search for movies, tv shows and other users on the app. 
It is basically Instagram for movies and shows. 
You have your own profile page, notification feed, search page, and news feed where you can see what other people are watching and reviewing.

Firebase was used for backend, notably I used Firebase Auth, Cloud Firestore, Firebase Storage and Cloud Functions.
To fetch the movie, tv shows and actors data I connected to TMDB and used their API.

BLoC was used for design pattern (data, application and presentation layers) and together with Freezed (to reduce boilerplate) for state management.

The user can register in the app with email and password, Google Sign In or Apple Sign In. 

![](video.gif)
