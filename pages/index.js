import React from "react";
import Head from "next/head";
import Nav from "../components/nav";
import GameCarousel from "../components/game_carousel";
import { loadDB } from "../lib/db";


const Home = (props) => (
  <div>
    <Head>
      <title>Home</title>
      <link rel="icon" href="/favicon.ico" />
    </Head>
    <Nav />
    <GameCarousel names={props.names} />
  </div>
);

Home.getInitialProps = async () => {
  const db = loadDB();
  const res = await db
    .firestore()
    .collection("games")
    .get();
  var names = [];
  res.forEach(doc => {
    const docName = doc.get("Name")
    names.push({name: docName, key: docName})
  });
  return { names: names };
};

export default Home;
