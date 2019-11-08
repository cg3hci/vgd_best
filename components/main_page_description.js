import { LoremIpsum } from "lorem-ipsum";

export default function MainPageDescription(props) {
  const lorem = new LoremIpsum({
    sentencesPerParagraph: {
      max: 8,
      min: 4
    },
    wordsPerSentence: {
      max: 16,
      min: 4
    }
  });
  return (
    <div className="outer">
      <div className="inner">
        <h1>VGD Best Projects</h1>
        <p>{lorem.generateParagraphs(7)}</p>
      </div>
        <style jsx>
          {`
            .outer{
                display: flex;
                justify-content: center;
            }
            .inner{
                text-align: center;
                max-width:1000px;
            }
          `}
        </style>
    </div>
  );
}
