function start() {
    var config = {
        apiKey: "AIzaSyCUWzSTzNtuqg4D2wExHMPNKP04hq7CWJg",
        authDomain: "elf01-31681.firebaseapp.com",
        databaseURL: "https://elf01-31681.firebaseio.com",
        storageBucket: "elf01-31681.appspot.com",
        messagingSenderId: "409236055680"
    };
    firebase.initializeApp(config);
}

function config() {
    // FirebaseUI config.
    var uiConfig = {
        'signInSuccessUrl': 'http://localhost:5000',
        'signInOptions': [
            // Leave the lines as is for the providers you want to offer your users.
            firebase.auth.GoogleAuthProvider.PROVIDER_ID,
            firebase.auth.FacebookAuthProvider.PROVIDER_ID,
            firebase.auth.TwitterAuthProvider.PROVIDER_ID,
            firebase.auth.GithubAuthProvider.PROVIDER_ID,
            firebase.auth.EmailAuthProvider.PROVIDER_ID
        ],
        // Terms of service url.
        'tosUrl': '<your-tos-url>',
    };

    // Initialize the FirebaseUI Widget using Firebase.
    var ui = new firebaseui.auth.AuthUI(firebase.auth());
    // The start method will wait until the DOM is loaded.
    ui.start('#firebaseui-auth-container', uiConfig);

}

initApp = function() {
    firebase.auth().onAuthStateChanged(function(user) {
        if (user) {
            // User is signed in.
            var displayName = user.displayName;
            var email = user.email;
            var emailVerified = user.emailVerified;
            var photoURL = user.photoURL;
            var uid = user.uid;
            var providerData = user.providerData;
            user.getToken().then(function(accessToken) {
                document.getElementById('sign-in-status').textContent = 'Signed in';
                document.getElementById('sign-in').textContent = 'Sign out';
                document.getElementById('account-details').textContent = JSON.stringify({
                    displayName: displayName,
                    email: email,
                    emailVerified: emailVerified,
                    photoURL: photoURL,
                    uid: uid,
                    accessToken: accessToken,
                    providerData: providerData
                }, null, '  ');
            });
        } else {
            // User is signed out.
            document.getElementById('sign-in-status').textContent = 'Signed out';
            document.getElementById('sign-in').textContent = 'Sign in';
            document.getElementById('account-details').textContent = 'null';
        }
    }, function(error) {
        console.log(error);
    });
};

//window.addEventListener('load', function() {
    //initApp();
//});

function login() {
    // grab the twitter auth provider
    var provider = new firebase.auth.TwitterAuthProvider();

    // do the login
    firebase.auth().signInWithPopup(provider).then(function(result) {

        // twitter token and secret you can use to contact the twitter api
        var token = result.credential.accessToken;
        var secret = result.credential.secret;

        // user info
        var user = result.user;

    }).catch(function(error) {

        // blah blah errors

    });
}

$(document).ready(function() {
    'use strict';
    $('table').addClass('table table-striped table-hover');

    $('#getPresidents').click(getPresidents);

    function getPresidents() {
        $.getJSON('/cgi-bin/get-presidents.py', function(presidents) {
            presidents.forEach(function(president) {
                $('#bar').append('<li>' + president[1] + ' ' + president[2] + '</li>');
            });
        })
    }

    $('.navbar-nav li.trigger-collapse a').click(function(event) {
        $('.navbar-collapse').collapse('hide');
    });
});
