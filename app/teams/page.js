import styles from "../style/page.module.css";
import Navbar from "@/components/navbar";
import Card from "@/components/card";

export default function Home() {
  
  // iterate through teams data returned in order to create "cards" for each team 
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
