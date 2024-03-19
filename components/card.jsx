import styles from '../app/card.module.css';
import Image from 'next/image';

const Card = () => {   
    return (
        <div className={styles.card}>
            <div className={styles.cardContent}>
                <div className={styles.cardTop}>
                    <span className={styles.cardTitle}>Card Title</span>
                    <p>Subteam</p>
                </div>
                <div className={styles.cardBottom}>
                    <p>Projects?</p>
                    <svg width="32" viewBox="0 -960 960 960" height="32" xmlns="http://www.w3.org/2000/svg"><path d="M226-160q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Zm254 0q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Zm254 0q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19ZM226-414q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Zm254 0q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Zm254 0q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19ZM226-668q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Zm254 0q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Zm254 0q-28 0-47-19t-19-47q0-28 19-47t47-19q28 0 47 19t19 47q0 28-19 47t-47 19Z"></path></svg>
                </div>
            </div>
            <div className={styles.cardImage}>
                <Image src="/cat.png" alt="cat" width={100} height={100} />
            </div>
        </div>
    )
}

export default Card;