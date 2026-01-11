import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Get Inspired',
    Svg: require('@site/static/img/coverpage/pinterest.svg').default,
    description: (
      <>
        Use social sites and other platforms to be inspired
      </>
    ),
  },
  {
    title: 'Take Quick Notes',
    Svg: require('@site/static/img/coverpage/notion.svg').default,
    description: (
      <>
        Write quick notes during the day to review
      </>
    ),
  },
  {
    title: 'Store Info that Matters',
    Svg: require('@site/static/img/coverpage/github.svg').default,
    description: (
      <>
        Store key knowledge for long term reference
      </>
    ),
  },
];

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}


function Feature({ Svg, title, description, link }) {
  return (
    <div className={clsx("col col--4")}>
      <div className="text--center">
        <a
          href={link}
          target="_blank"
          rel="noopener noreferrer"
          style={{ position: 'relative', display: 'inline-block' }}
        >
          <Svg
            className={styles.featureSvg}
            role="img"
            style={{
              cursor: 'pointer',
              transition: 'transform 0.2s ease, filter 0.2s ease, box-shadow 0.2s ease',
              borderRadius: '12px',
              boxShadow: '0px 4px 8px rgba(0, 0, 0, 0.1)',
              willChange: 'transform', // Add hardware acceleration
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.filter = 'brightness(85%)';
              e.currentTarget.style.transform = 'scale(1.1)';
              e.currentTarget.style.boxShadow = '0px 6px 12px rgba(0, 0, 0, 0.2)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.filter = 'brightness(100%)';
              e.currentTarget.style.transform = 'scale(1)';
              e.currentTarget.style.boxShadow = '0px 4px 8px rgba(0, 0, 0, 0.1)';
            }}
          />
          <div
            style={{
              position: 'absolute',
              top: '50%',
              left: '50%',
              transform: 'translate(-50%, -50%)',
              color: '#FFFFFF',
              fontSize: '16px',
              fontWeight: '400',
              padding: '10px 20px',
              backgroundColor: 'rgba(0, 0, 0, 0.6)',
              borderRadius: '8px',
              opacity: '0',
              transition: 'opacity 0.15s ease-out',
            }}
            className="hover-overlay"
          >
            Click to Learn More
          </div>
        </a>
      </div>
      <div className="text--center padding-horiz--md">
        <h3 style={{ fontFamily: 'Arial, sans-serif', fontSize: '20px', fontWeight: 'bold' }}>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

