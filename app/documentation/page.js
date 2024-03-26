import styles from "../style/page.module.css";
import Navbar from "@/components/navbar";
import Card from "@/components/card";

// have documentation as a drop down 
// can only click to different pages for documentation for relevant teams
// how should the documentation be displayed?? 
// can organize by subteam within that page 
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
