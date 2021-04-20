const functions = require("firebase-functions");

const admin = require('firebase-admin');
admin.initializeApp();

const db = admin.firestore();

exports.writeToUserNewsFeed = functions.firestore
    .document('posts/{userId}/user_posts/{postId}')
    .onCreate((snap, context) => {
        const postData = snap.data();
        const postUid = postData['post_uid'];
        const userUid = postData['user_uid'];
        const postCreationDate = postData['post_creation_date'];

        var docRef = db.collection('user_followers').doc("" + userUid).collection('followers');

        return docRef.get().then((querySnapshot) => {
            const promises = [];
            querySnapshot.forEach((doc) => {
                const followerUid = doc.get("uid");
                console.log("writing to user uid: " + followerUid);
                promises.push(
                    db.collection('user_news_feed')
                        .doc("" + followerUid)
                        .collection('feed')
                        .doc("" + postUid)
                        .set({
                            'post_uid': postUid,
                            'user_uid': userUid,
                            'post_creation_date': postCreationDate,
                        })
                );
            });            
            return Promise.all(promises);
        });
    });

