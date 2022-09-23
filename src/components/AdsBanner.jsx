import styles from "../styles/AdsBanner.module.css";

function AdsBanner() {
  return (
    <div className={styles.container}>
      <div className={styles.bannerContent}>
        <div className={styles.bannerEmojis}>🚀 🧠 🧑‍💻</div>
        <h3 className={styles.bannerTitle}>Rokas Rudzianskas</h3>
        <p className={styles.bannerDescription}>
          Biggest Companies Are Powered by aspiring DEVELOPERS just like you 💪
        </p>

        <div className={styles.bannerCta}>
          <button className={styles.ctaButton} type="button">
            <img
              className={styles.ctaButtonImage}
              src="https://whattudu.com/wp-content/uploads/2017/06/app-store-logo.png"
              alt="Download on the App Store"
            />
          </button>

          <button className={styles.ctaButton} type="button">
            <img
              className={styles.ctaButtonImage}
              src="https://www.edsys.in/wp-content/uploads/Play-Store-Logo-2.png"
              alt="Get it on Google Play"
            />
          </button>
        </div>
      </div>

      <div className={styles.bannerImageContainer}>
        <img
          className={styles.bannerImage}
          src="/src/assets/ads-banner.jpeg"
          alt=""
        />
      </div>
    </div>
  );
}

export default AdsBanner;
