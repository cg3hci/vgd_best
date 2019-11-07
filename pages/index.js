import React from "react";
import Head from "next/head";
import Nav from "../components/nav";
import GameCarousel from "../components/game_carousel";


const Home = () => (
  <div>
    <Head>
      <title>Home</title>
      <link rel="icon" href="/favicon.ico" />
    </Head>
    <Nav />
    <GameCarousel />
  </div>
);

export default Home;
