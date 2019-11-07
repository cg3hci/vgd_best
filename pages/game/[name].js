import { useRouter } from "next/router";
import { loadDB } from "../../lib/db";
import { debug } from "util";

export default function Game(props) {
  const router = useRouter();
  const authors = props.authors;
  return (
    <div>
      <h1>{router.query.name}</h1>
      {authors.map(({ name }) => (
        <p>{name}</p>
      ))}
    </div>
  );
}

Game.getInitialProps = async ({ query }) => {
  console.log(`Da qui: ${query}`);
  console.log(query);
  console.log("^");
  const db = loadDB();

  const res = await db
    .firestore()
    .collection("games")
    .where("Name", "==", query.name)
    .get();
  var authors;
  res.forEach(doc => {
    authors = doc.data()["Authors"];
    console.log(authors);
    authors = authors.map(author => {
      return {
        name: author,
        key: author
      };
    });
    console.log(authors);
  });

  return { authors: authors }; // Needed to have SSR query name
};
