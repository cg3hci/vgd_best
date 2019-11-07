import firebase from "@firebase/app";
import "@firebase/firestore";

export function loadDB() {
  try {
    var config = {
      apiKey: "AIzaSyDNc0YpfRQv3U-jNAXZdWA53JYbEo9ogVQ",
      authDomain: "vgd-best.firebaseapp.com",
      databaseURL: "https://vgd-best.firebaseio.com",
      projectId: "vgd-best",
      storageBucket: "vgd-best.appspot.com",
      messagingSenderId: "819791029076",
      appId: "1:819791029076:web:96344d892e938150279ec1",
      measurementId: "G-LTYG6M9SC0"
    };
    firebase.initializeApp(config);
  } catch (err) {
    // we skip the "already exists" message which is
    // not an actual error when we're hot-reloading
    if (!/already exists/.test(err.message)) {
      console.error("Firebase initialization error", err.stack);
    }
  }

  return firebase;
}
