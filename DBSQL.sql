-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 11 Ιουν 2026 στις 09:54:24
-- Έκδοση διακομιστή: 10.4.32-MariaDB
-- Έκδοση PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `mooooovies_db`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(7, 'Action'),
(5, 'Adventure'),
(6, 'Comedy'),
(4, 'Crime'),
(3, 'Drama'),
(1, 'Fantasy'),
(2, 'Superhero');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `releaseYear` int(11) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `posterUrl` text DEFAULT NULL,
  `backUrl` text DEFAULT NULL,
  `youtubeUrl` text DEFAULT NULL,
  `watchlist` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `movies`
--

INSERT INTO `movies` (`id`, `title`, `genre_id`, `description`, `releaseYear`, `duration`, `rating`, `posterUrl`, `backUrl`, `youtubeUrl`, `watchlist`) VALUES
(1, 'The Lord of the Rings: The Fellowship of the Ring', 1, 'A young hobbit begins a dangerous journey to destroy a powerful ring and protect Middle-earth from the rise of darkness.', 2001, '2h 58m', 8.9, 'https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg', 'https://image.tmdb.org/t/p/original/x2RS3uTcsJJ9IfjNPcgDmukoEcQ.jpg', 'https://www.youtube.com/embed/V75dMMIW2B4', 0),
(2, 'The Lord of the Rings: The Two Towers', 1, 'The fellowship is divided, but the mission continues as Middle-earth prepares for a growing war against the forces of evil.', 2002, '2h 59m', 8.8, 'https://image.tmdb.org/t/p/w500/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg', 'https://image.tmdb.org/t/p/original/kWYfW2Re0rUDE6IHhy4CRuKWeFr.jpg', 'https://www.youtube.com/embed/LbfMDwc4azU', 0),
(3, 'The Lord of the Rings: The Return of the King', 1, 'The final battle for Middle-earth begins while Frodo and Sam continue their journey toward Mount Doom.', 2003, '3h 21m', 9.0, 'https://image.tmdb.org/t/p/w500/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg', 'https://image.tmdb.org/t/p/original/lXhgCODAbBXL5buk9yEmTpOoOgR.jpg', 'https://www.youtube.com/embed/r5X-hFf6Bwo', 0),
(4, 'Spider-Man: Homecoming', 2, 'Peter Parker tries to balance high school life with his responsibilities as Spider-Man while facing a new threat.', 2017, '2h 13m', 7.4, 'https://image.tmdb.org/t/p/w500/c24sv2weTHPsmDa7jEMN0m2P3RT.jpg', 'https://image.tmdb.org/t/p/original/fn4n6uOYcB6Uh89nbNPoU2w80RV.jpg', 'https://www.youtube.com/embed/n9DwoQ7HWvI', 0),
(5, 'Avengers: Infinity War', 2, 'The Avengers and their allies must come together to stop Thanos before he collects all the Infinity Stones.', 2018, '2h 29m', 8.4, 'https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', 'https://image.tmdb.org/t/p/original/lmZFxXgJE3vgrciwuDib0N8CfQo.jpg', 'https://www.youtube.com/embed/6ZfuNTqbHE8', 0),
(6, 'Avengers: Endgame', 2, 'After a devastating defeat, the remaining Avengers attempt one final mission to restore what was lost.', 2019, '3h 1m', 8.4, 'https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg', 'https://image.tmdb.org/t/p/original/7RyHsO4yDXtBv1zUU3mTpHeQ0d5.jpg', 'https://www.youtube.com/embed/TcMBFSGVi1c', 0),
(7, 'Forrest Gump', 3, 'A kind-hearted man experiences major moments in American history while following his simple but powerful view of life.', 1994, '2h 22m', 8.8, 'https://image.tmdb.org/t/p/w500/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg', 'https://image.tmdb.org/t/p/original/3h1JZGDhZ8nzxdgvkxha0qBqi05.jpg', 'https://www.youtube.com/embed/bLvqoHBptjg', 0),
(8, 'Thor: Love and Thunder', 2, 'Thor begins a journey of self-discovery while facing a dangerous enemy who seeks to destroy the gods.', 2022, '1h 59m', 6.2, 'https://image.tmdb.org/t/p/w500/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg', 'https://image.tmdb.org/t/p/original/jsoz1HlxczSuTx0mDl2h0lxy36l.jpg', 'https://www.youtube.com/embed/Go8nTmfrQd8', 0),
(9, 'The Godfather', 4, 'The aging patriarch of a powerful crime family transfers control of his empire to his reluctant son.', 1972, '2h 55m', 9.2, 'https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg', 'https://image.tmdb.org/t/p/original/tmU7GeKVybMWFButWEGl2M4GeiP.jpg', 'https://www.youtube.com/embed/UaVTIH8mujA', 0),
(10, 'Jurassic Park', 5, 'A theme park filled with cloned dinosaurs becomes dangerous when its security systems fail.', 1993, '2h 7m', 8.2, 'https://image.tmdb.org/t/p/w500/oU7Oq2kFAAlGqbU4VoAE36g4hoI.jpg', NULL, 'https://www.youtube.com/embed/lc0UehYemQA', 0),
(11, 'Iron Man', 2, 'Billionaire inventor Tony Stark builds a powerful armored suit after being captured and becomes the hero known as Iron Man.', 2008, '2h 6m', 7.9, 'https://image.tmdb.org/t/p/w500/78lPtwv72eTNqFW9COBYI0dWDJa.jpg', 'https://image.tmdb.org/t/p/original/cyecB7godJ6kNHGONFjUyVN9OX5.jpg', 'https://www.youtube.com/embed/8ugaeA-nMTc', 0),
(12, 'Iron Man 2', 2, 'Tony Stark faces pressure from the government, new enemies, and his own failing health while trying to protect the Iron Man technology.', 2010, '2h 4m', 6.9, 'https://image.tmdb.org/t/p/w500/6WBeq4fCfn7AN0o21W9qNcRF2l9.jpg', NULL, 'https://www.youtube.com/embed/BoohRoVA9WQ', 0),
(13, 'Iron Man 3', 2, 'Tony Stark must rely on his intelligence and instincts when a powerful terrorist called the Mandarin destroys his personal world.', 2013, '2h 10m', 7.1, 'https://image.tmdb.org/t/p/w500/qhPtAc1TKbMPqNvcdXSOn9Bn7hZ.jpg', 'https://image.tmdb.org/t/p/original/iVped1djsF0tvGkvnHbzsE3ZPTF.jpg', 'https://www.youtube.com/embed/2CzoSeClcw0', 0),
(14, 'The Green Mile', 3, 'A prison guard working on death row forms a powerful bond with a gentle inmate who appears to possess a mysterious gift.', 1999, '3h 9m', 8.6, 'https://image.tmdb.org/t/p/w500/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg', 'https://image.tmdb.org/t/p/original/l6hQWH9eDksNJNiXWYRkWqikOdu.jpg', 'https://www.youtube.com/embed/Ki4haFrqSrw', 0),
(15, 'Scary Movie', 6, 'A group of teenagers are stalked by a masked killer in this comedy parody of famous horror movies.', 2000, '1h 28m', 6.3, 'https://image.tmdb.org/t/p/w500/lRQiJXETkCnVVurHmglNvMXrZOx.jpg', NULL, 'https://www.youtube.com/embed/SzpGYrrcJZw', 0),
(16, 'Bad Boys', 7, 'Two Miami detectives must protect a witness while investigating a major drug case involving stolen heroin.', 1995, '1h 59m', 6.8, 'https://image.tmdb.org/t/p/w500/x1ygBecKHfXX4M2kRhmFKWfWbJc.jpg', NULL, 'https://www.youtube.com/embed/OLYENHi4IIc', 0),
(17, 'Casino Royale', 7, 'James Bond earns his 00 status and enters a high-stakes poker game against a dangerous financier of terrorism.', 2006, '2h 24m', 8.0, 'https://image.tmdb.org/t/p/w500/lMrxYKKhd4lqRzwUHAy5gcx9PSO.jpg', NULL, 'https://www.youtube.com/embed/QakRrX0LpTU', 0),
(18, 'Mission: Impossible III', 7, 'Ethan Hunt is pulled back into action to face a ruthless arms dealer who threatens both his mission and his personal life.', 2006, '2h 6m', 6.9, 'https://image.tmdb.org/t/p/w500/vKGYCpmQyV9uHybWDzXuII8Los5.jpg', NULL, 'https://www.youtube.com/embed/4oVva0muTE8', 0),
(19, 'Mission: Impossible - Ghost Protocol', 7, 'After the IMF is shut down, Ethan Hunt and his team must operate without support to stop a global nuclear threat.', 2011, '2h 13m', 7.4, 'https://image.tmdb.org/t/p/w500/eRZTGx7GsiKqPch96k27LK005ZL.jpg', NULL, 'https://www.youtube.com/embed/HPB7fV7f_f8', 0),
(20, 'Mission: Impossible - Rogue Nation', 7, 'Ethan Hunt and his team face the Syndicate, a secret organization of rogue agents determined to destroy the IMF.', 2015, '2h 11m', 7.4, 'https://image.tmdb.org/t/p/w500/oUDKymEL932AeHyl4A4ee8zuBLF.jpg', 'https://image.tmdb.org/t/p/original/aw4FOsWr2FY373nKSxbpNi3fz4F.jpg', 'https://www.youtube.com/embed/gOW_azQbOjw', 0);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Ευρετήρια για πίνακα `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT για πίνακα `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
