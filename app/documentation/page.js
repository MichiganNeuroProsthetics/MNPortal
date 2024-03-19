import styles from "../page.module.css";
import Navbar from "@/components/navbar";
import Card from "@/components/card";

export default function Home() {
  return (
    <main className={styles.main}>
      <Navbar />
      <div className={styles.content}>
        <div className={styles.displaySection}>
          <p>Features</p>
          <h2>Team Projects</h2>
        </div>
      </div>
      <div className={styles.cardGrid}>
          <Card />
          <Card />
          <Card />
          <Card />
          <Card />
          <Card />
          <Card />
          <Card />
        </div>

        <footer className={styles.footer}></footer>
    </main>
  );
}
