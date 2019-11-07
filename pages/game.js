import { loadDB } from "../lib/db"

console.log("I am in the backend")
const db = loadDB();
db.firestore().collection("games").get()
.then((snapshot) => {
  snapshot.forEach((doc) => {
    console.log(doc.id, '=>', doc.data());
  });
})
.catch((err) => {
  console.log('Error getting documents', err);
});

const Game = () => (
    <div>
        I am a game
    </div>
)

export default Game