import { ChevronDownIcon } from "@heroicons/react/outline";
import styles from "../styles/Navbar.module.css";
import { TransactionContext } from "../context/TransactionContext";
import { useContext } from "react";
import { shortenAddress } from "../utils/shortenAddress";

const Navbar = () => {
  const { connectWallet, currentAccount } = useContext(TransactionContext);

  return (
    <nav className={styles.navigationContainer}>
      <div className={styles.container}>
        <div className={styles.logoContainer}>
          <img
            className={styles.logoImage}
            src="https://logos-world.net/wp-content/uploads/2021/11/Venmo-Logo.png"
            alt="Venmo Logo"
          />
        </div>

        {currentAccount ? (
          <div className={styles.actionsContainer}>
            <p>
              Hello,{" "}
              <span className={styles.accentColor}>
                {shortenAddress(currentAccount)}
              </span>
              ! 👋
            </p>

            <ChevronDownIcon className={styles.arrowDownIcon} />
            <div className={styles.avatarContainer}>
              <img
                className={styles.avatarImage}
                src="https://avatars.githubusercontent.com/u/38469892?v=4"
                alt=""
              />
            </div>
          </div>
        ) : (
          <button className={styles.connectBtn} onClick={connectWallet}>
            Connect Wallet
          </button>
        )}
      </div>
    </nav>
  );
};

export default Navbar;
