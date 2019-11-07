import React from "react";
import Head from "next/head";
import Nav from "../components/nav";
import GameCarousel from "../components/game_carousel";
import { loadDB } from "../lib/db";

const Home = props => (
  <div>
    <Head>
      <title>Home</title>
      <link rel="icon" href="/favicon.ico" />
    </Head>
    <Nav />
    <GameCarousel names={props.games} />
  </div>
);

Home.getInitialProps = async () => {
  const db = loadDB();
  const res = await db
    .firestore()
    .collection("games")
    .get();
  var games = [];
  res.forEach(game => {
    const gameName = game.get("Name");
    const gameImage = game.get("PromoImage");
    games.push({ name: gameName, key: gameName, image: gameImage });
  });
  return { games: games };
};

export default Home;
