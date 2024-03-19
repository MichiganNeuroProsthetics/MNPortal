import Link from 'next/link';
import styles from '../app/navbar.module.css';

const Navbar = () => {
  return (
    <div className={styles['home-header']}>
      <nav className={styles['home-navbar']}>
        <span className={styles.logo}>MNPORTAL</span>

        <ul className={styles.navList}>
          <li className={styles.navItem}>
            <Link href="/" className= {styles.navLink}>
              Home
            </Link>
          </li>
          <li className={styles.navItem}>
            <Link href="/documentation" className={styles.navLink}>
              Documentation
            </Link>
          </li>
          <li className={styles.navItem}>
            <Link href="/teams" className={styles.navLink}>
              Teams
            </Link>
          </li>
        </ul>
      </nav>
    </div>
  );
};

export default Navbar;