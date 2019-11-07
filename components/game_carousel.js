import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import Link from "next/link";

const responsive = {
  every: {
    breakpoint: { max: 15000, min: 0 },
    items: 1
  }
};

const GameCarousel = (props) => {
  return (
  <div>
    <Carousel
      showDots={true}
      responsive={responsive}
      ssr={true}
      infinite={true}
      autoPlay={true}
      autoPlaySpeed={3000}
      draggable={false}
      containerClass="container"
      itemClass="item"
    >
    {props.names.map(({ name , image}) => (
      <Link href="/game/[id]" as={`/game/${name}`}>
      <div>
        <img src={image} />
        <p>{name}</p>
      </div>
      </Link>
    ))}
    </Carousel>
    <style jsx global>
      {`
        .item {
          text-align: center;
          user-drag: none;
          user-select: none;
          -moz-user-select: none;
          -webkit-user-drag: none;
          -webkit-user-select: none;
          -ms-user-select: none;
        }
        .item img{
          width:100%
        }
      `}
    </style>
  </div>
)};


export default GameCarousel;
