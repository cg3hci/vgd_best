import { useRouter } from "next/router";
import { loadDB } from "../../lib/db";
import Nav from "../../components/nav";

export default function Game(props) {
  const router = useRouter();
  const authors = props.authors;
  const description = props.description;
  const image = props.image;
  return authors ? (
    <div>
      <Nav />
      <div className="imageContainer">
        <img src={image} />
      </div>
      <h1>Game name: </h1>
      <p>{router.query.name}</p>
      <h2>Authors:</h2>
      <ul>
        {authors.map(({ name, key }) => (
          <li key={key}>{name}</li>
        ))}
      </ul>
      <h2>Description:</h2>
      {description}
      <style jsx>
        {`
        @media only screen and (max-width: 1500px){
          .imageContainer img {
            width:auto;
            height:30vw;
          }
        }
        @media only screen and (min-width: 1500px)
          .imageContainer img {
            width:40vw;
            height:auto;
          }
          .imageContainer {
            text-align: center;
          }
        `}
      </style>
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
  var image;
  var description;
  res.forEach(game => {
    image = game.get("PromoImage");
    authors = game.get("Authors");
    description = game.get("Description");
    authors = authors.map(author => {
      return {
        name: author,
        key: author
      };
    });
  });
  return { authors: authors, image: image, description: description };
};
