import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import Link from "next/link";

const responsive = {
  superLargeDesktop: {
    // the naming can be any, depends on you.
    breakpoint: { max: 4000, min: 3000 },
    items: 1
  },
  desktop: {
    breakpoint: { max: 3000, min: 1024 },
    items: 1
  },
  tablet: {
    breakpoint: { max: 1024, min: 464 },
    items: 1
  },
  mobile: {
    breakpoint: { max: 464, min: 0 },
    items: 1
  }
};

const placeholder = "https://via.placeholder.com/1000x500";

const GameCarousel = () => (
  <div>
    <Carousel
      showDots={true}
      responsive={responsive}
      ssr={true}
      infinite={true}
      autoPlay={true}
      autoPlaySpeed={3000}
      centerMode={true}
      draggable={false}
      containerClass="container"
    >
      <Link href="/game">
        <img className="slide_image" src={placeholder} />
      </Link>
      <Link href="/game">
        <img className="slide_image" src={placeholder} />
      </Link>
      <Link href="/game">
        <img className="slide_image" src={placeholder} />
      </Link>
      <Link href="/game">
        <img className="slide_image" src={placeholder} />
      </Link>
    </Carousel>
    <style jsx global>
      {`
        .container {
          width: width:100%;
        }
      `}
    </style>
    <style jsx>
      {`
        div {
          text-align: center;
        }
        .slide_image {
          width: 90%;
          user-drag: none;
          user-select: none;
          -moz-user-select: none;
          -webkit-user-drag: none;
          -webkit-user-select: none;
          -ms-user-select: none;
        }
      `}
    </style>
  </div>
);

export default GameCarousel;
