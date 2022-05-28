-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 28, 2022 lúc 04:01 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `SDLC`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Genre`
--

CREATE TABLE `Genre` (
  `Genreid` int(11) NOT NULL,
  `Genrename` varchar(200) DEFAULT NULL,
  `Genredescription` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Genre`
--

INSERT INTO `Genre` (`Genreid`, `Genrename`, `Genredescription`) VALUES
(1, 'pop,young music', 'Young music is a musical phenomenon that appeared in the South in the early 1960s, influenced by contemporary music of Europe and America. Young music songs have youthful melodies, interference with contemporary world music, often played with electronic instruments. In the West, there is only classical music - light music - folk music, but there is no concept of young music'),
(3, 'pop,young music', 'Young music is a musical phenomenon that appeared in the South in the early 1960s, influenced by contemporary music of Europe and America. Young music songs have youthful melodies, interference with contemporary world music, often played with electronic instruments. In the West, there is only classical music - light music - folk music, but there is no concept of young music'),
(4, 'pop,young music', 'Young music is a musical phenomenon that appeared in the South in the early 1960s, influenced by contemporary music of Europe and America. Young music songs have youthful melodies, interference with contemporary world music, often played with electronic instruments. In the West, there is only classical music - light music - folk music, but there is no concept of young music');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `ordersid` int(11) NOT NULL,
  `ordersdate` varchar(100) DEFAULT NULL,
  `usersid` int(11) DEFAULT NULL,
  `Songid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singer`
--

CREATE TABLE `singer` (
  `singerid` int(11) NOT NULL,
  `singername` varchar(200) DEFAULT NULL,
  `singerdescription` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `singer`
--

INSERT INTO `singer` (`singerid`, `singername`, `singerdescription`) VALUES
(1, 'Đinh Dung', 'The songs that left a strong impression in people\'s hearts attracted millions of views such as General Quan, Ban Duyen, Son Hau,...'),
(2, NULL, 'Currently, Dinh Dung is achieving certain successes on his career path. The songs that left a strong impression in people\'s hearts attracted millions of views such as General Quan, Ban Duyen, Son Hau,...'),
(3, 'Justin Bieber', 'Justin Bieber\'s birth name is Justin Drew Bieber, born on March 1, 1994. He is a Canadian Pop/R&B singer.'),
(4, 'Lil Nas X', 'Lil Nas X real name is Montero Lamar Hill, born on April 9, 1999 in Atlanta, Georgia (USA). He is known when the hit \"Old Town Road\" broke the famous Billboard chart, achieved a huge stream of online platforms.'),
(5, 'Ed Sheeran', 'Edward Christopher \"Ed\" Sheeran (born 17 February 1991), better known by his stage name Ed Sheeran, is an English singer-songwriter. Ed was born in Hebden Bridge, Yorkshire and raised in Framlingham, Suffolk.'),
(6, 'Imagine Dragons', 'Imagine Dragons is an American indie rock group from Las Vegas consisting of 4 members with Dan Reynolds on vocals, Wayne Sermon on guitar, Ben McKee on bass and Daniel Platzman on drums. Their music has often been compared to The Killers and Arcade Fire, while the melody and lyrical content has often been described as positive and upbeat.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Song`
--

CREATE TABLE `Song` (
  `Songid` int(11) NOT NULL,
  `Songname` varchar(200) DEFAULT NULL,
  `Songdescription` varchar(400) DEFAULT NULL,
  `Songprice` varchar(100) DEFAULT NULL,
  `songimg` varchar(100) DEFAULT NULL,
  `Songaudio` varchar(100) DEFAULT NULL,
  `Genreid` int(11) DEFAULT NULL,
  `singerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Song`
--

INSERT INTO `Song` (`Songid`, `Songname`, `Songdescription`, `Songprice`, `songimg`, `Songaudio`, `Genreid`, `singerid`) VALUES
(3, 'Stay', 'I do the same thing I told you that I never would\r\nI told you I\'d change, even when I knew I never could\r\nI know that I can’t find nobody else as good as you\r\nI need you to stay, need you to stay, hey (Oh)', '15$', 'stay.jpg', 'Stay.mp3', 3, 3),
(4, 'Industry Baby', '(D-D-Daytrip took it to ten, hey)\r\nBaby back, ayy, couple racks, ayy\r\nCouple Grammys on him (Ah, ooh), couple plaques, ayy\r\nThat\'s a fact, ayy (Ah, ooh), throw it back, ayy\r\nThrow it back, ayy (Ah, ooh)\r\n\r\nAnd this one is for the champions (Ah, ooh)\r\nI ain\'t lost since I\'ve began, yeah (Ah, ooh)\r\nFunny how you said it was the end, yeah (Ah, ooh)\r\nThen I went, did it again, yeah (Ah, ooh)', '15$', 'baby.jpg', 'Industry Baby.mp3', 4, 4),
(6, 'Enemy (From The Series Arcane League Of Legends)', 'Look out for yourself\r\nI wake up to the sounds of the silence that allows\r\nFor my mind to run around, with my ear up to the ground\r\nI\'m searching to behold the stories that are told\r\nWhen my back is to the world that was smiling when I turned\r\nTell you you\'re the greatest\r\nBut once you turn, they hate us\r\nOh, the misery\r\nEverybody wants to be my enemy\r\n', '15$', 'ene.jpg', 'Enemy (From The Series Arcane League Of Legends).mp3', 3, 6),
(7, 'The Joker And The Queen', 'How was I to know? It\'s a crazy thing\r\nI showed you my hand and you still let me win\r\nAnd who was I to say that this was meant to be?\r\nThe road that was broken brought us together\r\nAnd I know you could fall for a thousand kings\r\nAnd hearts that would give you a diamond ring\r\nWhen I fold, you see the best in me\r\nThe joker and the queen\r\n', '15$', 'joker.jpg', 'The Joker And The Queen.mp3', 3, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `usersid` int(11) NOT NULL,
  `usersname` varchar(200) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`usersid`, `usersname`, `PASSWORD`) VALUES
(1, 'mai', '122'),
(4, 'ui', '123'),
(5, 'mai', '66666666'),
(7, 'tyty', '123'),
(123456, 'f', 'f');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`Genreid`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordersid`),
  ADD KEY `usersid` (`usersid`),
  ADD KEY `Songid` (`Songid`);

--
-- Chỉ mục cho bảng `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`singerid`);

--
-- Chỉ mục cho bảng `Song`
--
ALTER TABLE `Song`
  ADD PRIMARY KEY (`Songid`),
  ADD KEY `singerid` (`singerid`),
  ADD KEY `Genreid` (`Genreid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Genre`
--
ALTER TABLE `Genre`
  MODIFY `Genreid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `ordersid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `singer`
--
ALTER TABLE `singer`
  MODIFY `singerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `Song`
--
ALTER TABLE `Song`
  MODIFY `Songid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `usersid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123457;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Songid`) REFERENCES `Song` (`Songid`);

--
-- Các ràng buộc cho bảng `Song`
--
ALTER TABLE `Song`
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`singerid`) REFERENCES `singer` (`singerid`),
  ADD CONSTRAINT `song_ibfk_3` FOREIGN KEY (`Genreid`) REFERENCES `Genre` (`Genreid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
