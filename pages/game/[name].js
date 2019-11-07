import { useRouter } from "next/router";
import { loadDB } from "../../lib/db";
import Nav from "../../components/nav";

export default function Game(props) {
  const router = useRouter();
  const authors = props.authors;
  return authors ? (
    <div>
      <Nav/>
      <h1>Game name: {router.query.name}</h1>
      <h2>Authors:</h2>
      <ul>
        {authors.map(({ name, key }) => (
          <li key={key}>{name}</li>
        ))}
      </ul>
    </div>
  ) : (
    <p>Game not found</p>
  );
}

Game.getInitialProps = async ({ query, item }) => {
  const db = loadDB();
  const res = await db
    .firestore()
    .collection("games")
    .where("Name", "==", query.name)
    .get();
  var authors;
  res.forEach(doc => {
    authors = doc.get("Authors");
    authors = authors.map(author => {
      return {
        name: author,
        key: author
      };
    });
  });
  return { authors: authors };
};
