-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 05, 2021 at 07:21 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwonyaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `no` int NOT NULL AUTO_INCREMENT,
  `id` varchar(300) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` varchar(300) NOT NULL,
  `genre` int NOT NULL,
  `artworkPath` varchar(500) NOT NULL,
  `tag` varchar(200) NOT NULL DEFAULT 'music',
  `description` varchar(500) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `totalsongplays` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`no`, `id`, `title`, `artist`, `genre`, `artworkPath`, `tag`, `description`, `datecreated`, `totalsongplays`) VALUES
(10, 'm_oth6043322978047104', 'Waa i Daba', 'martist604331f068d2fomi', 1, 'assets/images/podcastalbumartwork/POSTER WAIDABA-8.jpg', 'podcast', '', '2021-03-06 07:41:29', 0),
(11, 'm_al604472b802ee6148', 'AOL 256', 'martist6044724ed99a2cat', 7, 'assets/images/artwork/aol prof.jpg', 'music', '', '2021-03-07 06:29:12', 0),
(12, 'm_oth6044f4d60200c111', 'Refutories Season 1', 'martist6044f469917f1rom', 7, 'assets/images/podcastalbumartwork/logo.jpg', 'podcast', 'Stories from South Sudanese Refugees living and working in Uganda', '2021-03-07 15:44:22', 0),
(13, 'm_al604511971f17d130', 'Quincy', 'martist604511491b457qui', 2, 'assets/images/artwork/Muziiki.jpg', 'music', '', '2021-03-07 17:47:03', 0),
(14, 'm_al60451b0b4b794161', 'Twere', 'martist60451ad3ea997tob', 1, 'assets/images/artwork/twere thumbnail.png', 'music', '', '2021-03-07 18:27:23', 0),
(15, 'm_oth60451f07ac0eb206', 'Every child can learn', 'martist60451e26940e2inf', 2, 'assets/images/podcastalbumartwork/every child can learn logo.jpg', 'podcast', '', '2021-03-07 18:44:23', 0),
(16, 'm_al6045255a0e9f3140', 'Akello', 'martist6044f454b39d2pin', 1, 'assets/images/artwork/FB_IMG_1605291889420.jpg', 'music', '', '2021-03-07 19:11:22', 0),
(17, 'm_al60452d246b554670', 'Pine Avenue All stars', 'martist60452cae695capin', 1, 'assets/images/artwork/logo.jpg', 'music', '', '2021-03-07 19:44:36', 0),
(18, 'm_al604625173450a149', 'Gods Love Album', 'martist604624d22c991sev', 3, 'assets/images/artwork/sevenseeds.png', 'music', 'We Recognize the needs of the youths and adults with their untapped potentials, aiming to address their spiritual, mental, academic and financial needs and the needs of their community while enabling them to overcome challenges faced in addressing such needs.', '2021-03-08 13:22:31', 0),
(21, 'm_al60464ce1392f1248', 'Love and Romance', 'martist60463ce19bb2daar', 7, 'assets/images/artwork/aron.jpg', 'music', '', '2021-03-08 16:12:18', 0),
(22, 'm_oth60471902c2707253', 'Ododo', 'martist604331f068d2fomi', 8, 'assets/images/podcastalbumartwork/ododo final .jpg', 'podcast', 'Ugandan folklore stories told by the fireplace. Narrated by our grannies who grew up listening to such stories. New episodes Friday. ', '2021-03-09 06:43:15', 0),
(23, 'm_al604893d3333d8591', 'Special Album', 'martist604624d22c991sev', 2, 'assets/images/artwork/special.png', 'music', 'Everyone Created has something special about them and Loved by God. ', '2021-03-10 09:39:31', 0),
(24, 'm_al604a35741cfef912', 'Afterflames 01', 'martist60472ab113e8fsmo', 7, 'assets/images/artwork/Smokie allan profile.jpg', 'music', '', '2021-03-11 15:21:24', 0),
(25, 'm_al604a78e1a50fe197', 'Best of Smokie Allan', 'martist60472ab113e8fsmo', 7, 'assets/images/artwork/smokie 2.jpeg', 'music', '', '2021-03-11 20:09:05', 0),
(27, 'm_al604b779ca4807734', 'Lo-Fi Beats', 'martist6034eae7abc77pka', 1, 'assets/images/artwork/lofibeats.png', 'music', 'Chill HipHop-Rap Lo-Fi Tracks to help you relax or study', '2021-03-12 14:15:56', 1),
(32, 'm_oth6058883f0d0c3131', 'Street Invasion', 'martist605886ea68be0dee', 38, 'assets/images/podcastalbumartwork/IMG_20210227_080631_674.jpg', 'dj', '', '2021-03-22 12:06:23', 0),
(34, 'm_al60593c6695665104', 'Feel The Bass', 'martist6034eae7abc77pka', 1, 'assets/images/artwork/music_20210323005502_02499.jpg', 'music', 'JazzMusicCollection', '2021-03-23 00:55:02', 6),
(36, 'm_al60599fe7a9537838', 'Feelings', 'martist60599f5fb8d74avi', 7, 'assets/images/artwork/music_20210323075935_00681.jpeg', 'music', 'DebutAlbumfromAvieUG', '2021-03-23 07:59:35', 0),
(37, 'm_al6059ae24f3a11170', 'Mich Radio', 'martist6059adcba692emic', 26, 'assets/images/podcastalbumartwork/dj_20210323090020_05141.jpg', 'dj', 'Bestnonstopmixes.', '2021-03-23 09:00:21', 0),
(38, 'm_al6059d49b6bf44414', 'Deed X Shay Talks ', 'martist6059d3966ef4cthe', 41, 'assets/images/podcastalbumartwork/podcast_20210323114427_01053.jpg', 'podcast', 'okello', '2021-03-23 11:44:27', 0),
(41, 'm_al6059e1732e642753', 'O', 'martist604fdfe93c1ccscr', 1, 'assets/images/artwork/music_20210323123915_07123.png', 'music', 'AslongasIcanremember,Ialwayswantedtomakeanalbum.Butwhatisthemotivationtocreatesomethingthattakesthatmucheffort?WithmusicandpoetryI’veneverreallyworriedaboutputtingmyselfoutthereasaperformer.Ifthegoalistoincreaseaestheticenjoymentoflife,thenIwasphysicallypresentfor100%ofmyownart’screation,regardlessofhowmanytweetsitgetsorhashtagspeopleaddtoitlater.(Mostofthereallygoodstuffjustvanishedintotheairrightthenandthere.)Nooneelsegetsthefrontseatforthefreestylesandboom-bapofmylifequitelikeIdo.Myplanwastom', '2021-03-23 12:39:15', 0),
(42, 'm_al605b3f50886af194', 'Kakwangala', 'martist605b3e8124f13ado', 7, 'assets/images/artwork/music_20210324133200_04418.jpeg', 'music', 'EnjoyacollectionofthehottestjamsfromthisAlbumtitledKakwangala', '2021-03-24 13:32:00', 0),
(43, 'm_al605b422e20958484', 'Tingaling', 'martist605b41c503467wil', 29, 'assets/images/artwork/music_20210324134414_09125.jpeg', 'music', 'BestvibesandbangersfromnewboyWilo', '2021-03-24 13:44:14', 0),
(44, 'm_al605c44b20d8a3895', 'DJ Maleek Series Vol 1', 'martist605c3f5739614mal', 1, 'assets/images/podcastalbumartwork/dj_20210325080714_09728.jpeg', 'dj', 'ThismixserieshasgenresmostlistenedtoinUganda', '2021-03-25 08:07:14', 0),
(45, 'm_al605c9c43cd811210', 'My Village Podcast', 'martist605c9a90e54e6pao', 45, 'assets/images/podcastalbumartwork/podcast_20210325142051_06080.jpg', 'podcast', 'In ‘OurRacetoTheFuture”, we introduce ‘MyVillagePodcast’ a series that tells entrepreneurial stories in our community. We hope to motivate innovators, startups and entrepreneurs on a similar journey by shining a light on the brave and resilient. The channel demystifies the myth in the uniqueness of challenges faced by businesses while engaging the youth to embrace the validity of their ideas centered around solving our biggest industry and community challenges.\n', '2021-03-25 14:20:51', 0),
(46, 'm_al605ccd36e7cd8691', 'Great Calling', 'martist605cca42c0240mak', 3, 'assets/images/artwork/music_20210325174942_04068.jpeg', 'music', 'MakerDaGona', '2021-03-25 17:49:42', 0),
(47, 'm_al605dad51321ba176', 'Mood', 'martist605dace950894vok', 7, 'assets/images/artwork/music_20210326094553_02701.jpg', 'music', 'Abunchoflovesongsthatcausegoosebumps.', '2021-03-26 09:45:53', 0),
(48, 'm_al605dc745e3100632', 'WanLuo', 'martist605dc64a8ae76lad', 33, 'assets/images/artwork/music_20210326113637_02131.JPG', 'music', 'ThelatestAlbumfromLadyZulu', '2021-03-26 11:36:37', 0),
(50, 'm_al605de2c262a7c614', 'Wek Aywe', 'martist605de1dc8ae84mil', 7, 'assets/images/artwork/music_20210326133354_07433.jpg', 'music', 'ThelatestAlbumfromMilo', '2021-03-26 13:33:54', 0),
(51, 'm_al605df120d9edd158', 'In Aye', 'martist605df0bdc53a0neo', 7, 'assets/images/artwork/music_20210326143512_00888.jpeg', 'music', 'Afro fusion and a blend of culture', '2021-03-26 14:35:12', 0),
(52, 'm_al6062db662bf06876', 'Inspiring Habbits', 'martist6062d2c0b8ca0sed', 2, 'assets/images/podcastalbumartwork/podcast_20210330080350_09376.png', 'podcast', 'Amazing Podcast to listen to during nights and times of peace and tranquility. ', '2021-03-30 08:03:50', 0),
(53, 'm_al6066635470d50602', 'Lumix Da Don ', 'martist606662b7e3168lum', 1, 'assets/images/artwork/music_20210402002036_01144.jpeg', 'music', 'Best hits from Lumix', '2021-04-02 00:20:36', 0),
(54, 'm_al606663aa60984180', 'Collaborations', 'martist606662b7e3168lum', 1, 'assets/images/artwork/music_20210402002202_01002.jpeg', 'music', 'Know for bringing new artists into the limelight, Lumix used features to help up and coming artists. Enjoy this selection of his best works', '2021-04-02 00:22:02', 0),
(55, 'm_al606c295181628169', 'Naa Adii', 'martist606c28ecf1a05qui', 7, 'assets/images/artwork/music_20210406092641_01461.jpg', 'music', 'A collection of Qee;s finest love songs', '2021-04-06 09:26:41', 0),
(56, 'm_al60705c70e74e9111', 'Born To Win', 'martist60705b2798c8ache', 29, 'assets/images/artwork/music_20210409135352_00569.jpeg', 'music', 'Best of Chemical Man', '2021-04-09 13:53:52', 0),
(57, 'm_al607065894fd3d192', 'Pe Igo Kora', 'martist6070624642747des', 7, 'assets/images/artwork/music_20210409143241_05806.jpg', 'music', 'Enjoy the best of Destiny Music', '2021-04-09 14:32:41', 0),
(58, 'm_al60743fa7a4e59754', 'CitybangerzMuzik', 'martist6054428d76bd5des', 7, 'assets/images/artwork/music_20210412124007_02053.jpg', 'music', 'Its a world of music', '2021-04-12 12:40:07', 0),
(59, 'm_al6076b933a9b3f164', 'Can', 'martist6076b8c42a1e2ali', 29, 'assets/images/artwork/music_20210414094315_08193.jpeg', 'music', 'Typical of Ali B Birdman', '2021-04-14 09:43:15', 0),
(60, 'm_al6076ba87ba187118', 'Langeta', 'martist6076b9e9c1893kay', 29, 'assets/images/artwork/music_20210414094855_09050.jpeg', 'music', 'More from the wallet boy', '2021-04-14 09:48:55', 0),
(61, 'm_al6076da8809483131', 'Gulu City', 'martist605df0bdc53a0neo', 7, 'assets/images/artwork/music_20210414120528_01074.jpg', 'music', 'The best of Gulu City from Okello', '2021-04-14 12:05:28', 0),
(62, 'm_al607708a0075ae255', 'Magnificent God', 'martist6077078bf1ab6mar', 3, 'assets/images/artwork/music_20210414152208_08636.jpg', 'music', 'This album contains songs in English, Luo and Kumam.', '2021-04-14 15:22:08', 0),
(63, 'm_al607c6ff6ed33c121', 'Hakuna Matata', 'martist60451ad3ea997tob', 1, 'assets/images/artwork/music_20210418174422_06200.JPG', 'music', 'The latest ', '2021-04-18 17:44:22', 0),
(65, 'm_al6084b4c4959a1119', 'Pitch It', 'martist6084b4300b3a5dan', 47, 'assets/images/podcastalbumartwork/podcast_20210425001604_02451.png', 'podcast', 'Pitch It is where crazy, world-changing ideas are shared, and where stories of success and motivation come to life. We sit down with founders, entrepreneurs, artists, and trailblazers to dive into how change is brought about in any industry, and in any part of the world. Pitch It is where flames are spread. Are you ready to catch fire and change the world?', '2021-04-25 00:16:04', 0),
(66, 'm_al609b545430154149', 'BreakThrough', 'martist609b53088ca79ahs', 29, 'assets/images/artwork/music_20210512040644_04788.PNG', 'music', 'New start, new Vibes and together we shall grow!', '2021-05-12 04:06:44', 0),
(72, 'm_al609f6c67e9e4f481', 'Kati', 'martist609f6bfabc99aedd', 29, 'assets/images/artwork/music_20210515063831_03844.jpg', 'music', 'The latest from Eddy Wizzy Music', '2021-05-15 06:38:31', 0),
(73, 'm_al60a61a0d77b30989', 'Best of Eddy Wizzy', 'martist609f6bfabc99aedd', 29, 'assets/images/artwork/music_20210520081301_06584.jpg', 'music', 'Best songs from the legendary artist Eddy Wizzy', '2021-05-20 08:13:01', 0),
(74, 'm_al60af75f46d25f288', 'Bob Narry Music ', 'martist60af7364c4b83nar', 29, 'assets/images/artwork/music_20210527103532_08298.jpg', 'music', 'This Album contain all Bob Narry Music  2021', '2021-05-27 10:35:32', 0),
(75, 'm_al60b23e37a91fa802', 'The Way You Prove It', 'martist60b23ce5b1c27pro', 14, 'assets/images/artwork/music_20210529131431_01799.jpg', 'music', 'Country music', '2021-05-29 13:14:31', 0),
(76, 'm_al60c2ecb50b3d8694', 'Inside Town Vibes', 'martist6059914230b57mwo', 57, 'assets/images/podcastalbumartwork/dj_20210611045517_04272.jpg', 'dj', 'Inside Town Vibes', '2021-06-11 04:55:17', 0),
(77, 'm_al60c2ece40d6c9139', 'Inside Town Vibes 2nd Edition', 'martist6059914230b57mwo', 57, 'assets/images/podcastalbumartwork/dj_20210611045604_01512.jpg', 'dj', 'Inside Town Vibes 2nd Edition', '2021-06-11 04:56:04', 0),
(78, 'm_al60c2ecfed761d671', 'Inside Town Vibes 3rd Edition', 'martist6059914230b57mwo', 57, 'assets/images/podcastalbumartwork/dj_20210611045630_00201.jpg', 'dj', 'Inside Town Vibes 3rd Edition', '2021-06-11 04:56:30', 0),
(79, 'm_al60c2ed365abbe146', ' Amapiano Inside Town Vibes', 'martist6059914230b57mwo', 57, 'assets/images/podcastalbumartwork/dj_20210611045726_09682.jpg', 'dj', ' Amapiano Inside Town Vibes', '2021-06-11 04:57:26', 0),
(80, 'm_al60c8af46e46cc809', 'Best of Hovets', 'martist60c8ab7856b35hov', 1, 'assets/images/artwork/music_20210615134646_07371.jpg', 'music', 'These hs some of the singles relesed by FineBou', '2021-06-15 13:46:46', 0),
(82, 'm_al60d30befb516c150', 'Beginner', 'martist60d30a7eaad72hok', 7, 'assets/images/artwork/music_20210623102447_05004.png', 'music', 'First Hits', '2021-06-23 10:24:47', 0),
(83, 'm_al60d9d16e3020e174', 'Mwonyaa Ads', 'martist6034eae7abc77pka', 1, 'assets/images/artwork/music_20210628134102_08340.png', 'ad', 'Contains all Ads for Mwonyaa', '2021-06-28 16:41:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `artistfollowing`
--

DROP TABLE IF EXISTS `artistfollowing`;
CREATE TABLE IF NOT EXISTS `artistfollowing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artistid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `datefollowed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artistfollowing`
--

INSERT INTO `artistfollowing` (`id`, `artistid`, `userid`, `datefollowed`) VALUES
(1, 'martist60af7364c4b83nar', 'mw60dcee54a514dpka', '2021-07-01 03:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `no` int NOT NULL AUTO_INCREMENT,
  `id` varchar(300) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profilephoto` varchar(300) NOT NULL,
  `coverimage` varchar(300) NOT NULL DEFAULT 'assets/images/profile-pics/artistbackground.png',
  `bio` varchar(500) NOT NULL,
  `genre` int NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdate` varchar(100) NOT NULL,
  `tag` varchar(200) NOT NULL DEFAULT 'music',
  `overalplays` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`no`, `id`, `name`, `email`, `password`, `profilephoto`, `coverimage`, `bio`, `genre`, `datecreated`, `lastupdate`, `tag`, `overalplays`) VALUES
(1, 'martist6034eae7abc77pka', 'Shine Ug', 'pkasemer@gmail.com', '12345678', 'assets/images/artistprofiles/afropop.jpg', 'assets/images/artistprofiles/adrian-korte-5gn2soeAc40-unsplash.jpg', ' welformed and educated in the music arts for hip hop and urban culture', 1, '2021-03-13 06:17:39', '', 'music', 7),
(3, 'martist6035465a12fd5fai', 'mercieMake', 'faisal@gmail.com', '12345678', 'assets/images/artistprofiles/vinyl.png', 'assets/images/artistprofiles/magic-pattern.jpeg', ' majer', 2, '2021-03-13 06:17:39', '', 'poem', 0),
(4, 'martist604325e209a93odu', 'Odur Jacob', 'odurjacob2@gmail.com', 'AnnaOdur12', 'assets/images/artistprofiles/jacob 2.jpg', 'assets/images/artistprofiles/naval discard.jpeg', 'Every week i hold conversations with Ugandan entrepreneurs, innovators and trailblazers to understand where the Ugandan Eco-system is headed. New Episodes every week. ', 2, '2021-03-13 06:17:39', '', 'podcast', 0),
(5, 'martist604331f068d2fomi', 'MC RUN', 'omiyosamuel@gmail.com', 'oyaigulu', 'assets/images/artistprofiles/POSTER WAIDABA-5.jpg', 'assets/images/artistprofiles/POSTER WAIDABA-8.jpg', ' Legendary Events MC and Radio Personality from Gulu Northern Uganda. I talk about Hiphop/Rap, culture.', 1, '2021-03-13 06:17:39', '', 'podcast', 0),
(6, 'martist6044724ed99a2cat', 'AOL 256', 'cathyhope17@gmail.com', 'Luosbest!', 'assets/images/artistprofiles/aol prof.jpg', 'assets/images/artistprofiles/cover123.jpg', ' ', 7, '2021-03-13 06:17:39', '', 'music', 0),
(7, 'martist6044f454b39d2pin', 'Beepee', 'pineavenue@mwonyaa.com', 'Bestlabel1', 'assets/images/artistprofiles/prof.jpg', 'assets/images/artistprofiles/cover1234.jpg', ' ', 7, '2021-03-13 06:17:39', '', 'music', 0),
(8, 'martist6044f469917f1rom', 'Refutories', 'romeo@mwonyaa.com', 'Refutories1', 'assets/images/artistprofiles/rflogo1.jpg', 'assets/images/artistprofiles/rtcover1.jpg', ' ', 7, '2021-03-13 06:17:39', '', 'podcast', 0),
(9, 'martist604511491b457qui', 'Quincy', 'quincy@mwonyaa.com', 'Hottestfemale1', 'assets/images/artistprofiles/Quincy thumbnail.JPG', 'assets/images/artistprofiles/Muziiki.jpg', ' ', 1, '2021-03-13 06:17:39', '', 'music', 0),
(10, 'martist60451ad3ea997tob', 'Toobi Smolz', 'tobi@mwonyaa.com', 'mrgulumega', 'assets/images/artistprofiles/IMG-20200921-WA0043.jpg', 'assets/images/artistprofiles/cover1.jpg', ' Hottest rapper out of Gulu signed to Pine Avenue Label', 1, '2021-03-13 06:17:39', '', 'music', 0),
(11, 'martist60451e26940e2inf', 'Backup Uganda', 'info@backuganda.org', 'Everychild02', 'assets/images/artistprofiles/backup uganda logo.jpg', 'assets/images/artistprofiles/backugandacover.png', ' At Backup Uganda, we are committed to promoting and providing individual attention for pupils and students in Uganda, particularly those who experience learning difficulties. We achieve this through capacity building of teachers, school administrators and parents, as well as through advocacy for children who have different learning needs.', 2, '2021-03-13 06:17:39', '', 'podcast', 0),
(12, 'martist60452cae695capin', 'Pine Avenue 5 Music Label', 'pineavenue@mwonya.com', 'Bestmusiclabel1', 'assets/images/artistprofiles/pine avenue 5 label.jpg', 'assets/images/artistprofiles/cover1234.jpg', 'Pine Avenue5 is a Label based in Gulu Town(Northern Uganda) with their offices at Plot 5, Jakeo Obunya Rd, Pece, Gulu', 7, '2021-03-13 06:17:39', '', 'music', 0),
(13, 'martist6045cc0f4cb71dan', 'Daniel Kawesa', 'danielkawesa8@gmail.com', 'dannylmafiki8', 'assets/images/artistprofiles/inbound5167195947892117231.jpg', 'assets/images/artistprofiles/inbound1279250664514181672.jpg', ' Daniel kawesa is a Male Ugandan music recording vocalist. ', 8, '2021-03-13 06:17:39', '', 'music', 0),
(14, 'martist604624d22c991sev', 'The Seven Seeds', 'sevenseeds@gmail.com', '12345678', 'assets/images/artistprofiles/download.png', 'assets/images/artistprofiles/ssscover.png', ' We Recognize the needs of the youths and adults with their untapped potentials, aiming to address their spiritual, mental, academic and financial needs and the needs of their community while enabling them to overcome challenges faced in addressing such needs.', 3, '2021-03-13 06:17:39', '', 'music', 0),
(15, 'martist60463ce19bb2daar', 'Mighty Aaron Otim', 'aaronotim@mwonyaa.com', 'mighty12', 'assets/images/artistprofiles/aaron.jpg', 'assets/images/artistprofiles/cover_gen.jpg', ' ', 7, '2021-03-13 06:17:39', '', 'music', 0),
(16, 'martist60472ab113e8fsmo', 'Smokie Allan', 'smokie@mwonyaa.com', 'Afterflames#1', 'assets/images/artistprofiles/Smokie allan profile.jpg', 'assets/images/artistprofiles/Smokie cover.jpg', 'Smokie Allan is a reggae dance hall artist from the biggest city in Northern Uganda, Gulu. Smokie Allan is known by his unique style of flow in most of his hit songs which comprises of luo language mixed with english and jamaican patios. He is also considered as a music legend back in his home for changing the trend of music from local to urban,something which earned him a lot of respect and admiration from the new generations of youthful African music lovers.', 7, '2021-03-13 06:17:39', '', 'music', 0),
(20, 'martist604f1b41dbb12mrr', 'Mr Berry Music', 'mrrberrymusic@gmail.com', '277463odongo', 'assets/images/artistprofiles/dsd fnl.png', 'assets/images/artistprofiles/DSC_0241.jpg', ' ', 29, '2021-03-15 08:30:57', '', 'music', 0),
(21, 'martist604f409b7182cton', 'Toni Eazi', 'tonieazi@gmail.com', 'mercy@10', 'assets/images/artistprofiles/C9AD4C10-EB0F-4D5B-81CE-49E19D3761E2L0001.jpeg', 'assets/images/artistprofiles/E156CAD3-8752-4D17-B511-C8B10A003F48L0001.jpeg', ' ', 41, '2021-03-15 11:10:19', '', 'podcast', 0),
(22, 'martist604fdfe93c1ccscr', 'Scribe', 'scribalculture@gmail.com', '3rdT1meIsACharm!', 'assets/images/artistprofiles/linz square.png', 'assets/images/artistprofiles/Scribal-Culture-Background2.png', ' Scribe is a technologist who grew up beatboxing and rhyming with his friends. Too little ego to be an emcee, too many words to be a poet. Making music and poetry at barbecues, in warehouses and cafe open mics, he rarely used mics. Eventually realizing that he may never find an accomplice to make music to accompany his lyrics Scribe decided start the (long) journey of learning production. In 2020 he traveled the world recording samples for his first album.', 1, '2021-03-15 22:30:01', '', 'music', 0),
(25, 'martist6054428d76bd5des', 'Rudo', 'desderiomondorudo@gmail.com', 'odurandrew', 'assets/images/artistprofiles/+256 701 195634 20210303_002729.jpg', 'assets/images/artistprofiles/IMG_20200714_205731_182.jpg', ' Music is ma everthing', 7, '2021-03-19 06:19:57', '', 'music', 0),
(26, 'martist605886ea68be0dee', 'Deejay Q', 'deeejayq@mwonyaa.com', 'deeejayq', 'assets/images/artistprofiles/IMG_20210227_080443_320.jpg', 'assets/images/artistprofiles/IMG_20210227_080631_674.jpg', ' ', 57, '2021-03-22 12:00:42', '', 'dj', 0),
(27, 'martist6059914230b57mwo', 'The Baluku Guy', 'balukuguy@gmail.com', 'eddymix', 'assets/images/artistprofiles/Inside Town Vibes 2nd Edition.jpg', 'assets/images/artistprofiles/erik-mclean-yiZW9OKHBR4-unsplash.jpg', ' Conical', 57, '2021-06-10 06:57:06', '', 'dj', 0),
(28, 'martist60599f5fb8d74avi', 'Avie UG ', 'avie@gmail.com', 'GulusBestDiva', 'assets/images/artistprofiles/Avie UG _profile_20210323075719_03479.jpeg', 'assets/images/artistprofiles/Avie UG _cover_20210323075719_03479.jpeg', ' ', 7, '2021-03-23 07:57:19', '', 'music', 0),
(29, 'martist6059adcba692emic', 'Deejay Mich', 'mich@mwonyaa.com', 'deejayHoima', 'assets/images/artistprofiles/Deejay Mich_profile_20210323085851_01646.jpg', 'assets/images/artistprofiles/Deejay Mich_cover_20210323085851_01646.jpg', ' Straight outta 256 Deejays', 57, '2021-03-23 08:58:51', '', 'dj', 0),
(30, 'martist6059d3966ef4cthe', 'Deed X Shay', 'theweekendvolunteer@gmail.com', 'scorpio19@Talks', 'assets/images/artistprofiles/Deed X Shay_profile_20210323114006_00872.jpg', 'assets/images/artistprofiles/Deed X Shay_cover_20210323114006_00872.jpg', 'Deed X Shay talking about ', 41, '2021-03-23 11:40:06', '', 'podcast', 0),
(31, 'martist605a5e20ec985obr', 'DJ Brash Brians', 'obrianinno@gmail.com', 'Shan2020', 'assets/images/artistprofiles/DJ Brash Brians_profile_20210323213112_05721.jpg', 'assets/images/artistprofiles/DJ Brash Brians_cover_20210323213112_05721.jpg', ' Disco Jockey from Lira city, Reggae , Caribeanist concentrate and Old School Classic.', 57, '2021-03-23 21:31:13', '', 'dj', 0),
(32, 'martist605b08da1d218gsi', 'Silky G', 'gsilky75@gmail.com', 'DozAgent45', 'assets/images/artistprofiles/MEDIA.jpg', 'assets/images/artistprofiles/Silky G_cover_20210324093938_05012.jpg', ' energetic trap, dancehall, afrobeat genius, CEO Mach Apoka Music, signed under Djos Management', 6, '2021-03-24 09:39:38', '', 'music', 0),
(33, 'martist605b3e8124f13ado', 'Adong Music', 'adongmusic@mwonyaa.com', 'adongmusic21', 'assets/images/artistprofiles/Adong Music_profile_20210324132833_00168.jpeg', 'assets/images/artistprofiles/Adong Music_cover_20210324132833_00168.jpeg', ' ', 7, '2021-03-24 13:28:33', '', 'music', 0),
(34, 'martist605b41c503467wil', 'Wilo Boy', 'wiloboy@gmail.com', 'wiloboy21', 'assets/images/artistprofiles/Wilo Boy_profile_20210324134229_00976.jpeg', 'assets/images/artistprofiles/Wilo Boy_cover_20210324134229_00976.jpeg', ' ', 29, '2021-03-24 13:42:29', '', 'music', 0),
(35, 'martist605c3f5739614mal', 'Deejay Maleek', 'maleek@mwonyaa.com', 'maleektalentboy2019', 'assets/images/artistprofiles/Deejay Maleek_profile_20210325074423_01306.jpeg', 'assets/images/artistprofiles/Deejay Maleek_cover_20210325074423_01306.png', ' ', 57, '2021-03-25 07:44:23', '', 'dj', 0),
(36, 'martist605c9a90e54e6pao', 'The Innovation Village', 'paowiny@innovationvillage.co.ug', 'annabelle2016', 'assets/images/artistprofiles/The Innovation Village_profile_20210325141336_03776.png', 'assets/images/artistprofiles/The Innovation Village_cover_20210325141336_03776.jpg', ' \r\n\r\nEveryday, we deliberately devise avenues to leverage innovation,  entrepreneurship and technology to deliver  lasting solutions to challenges in the world\r\n\r\nThe goal is to create a destination that grows companies that matter and are centered around solving the biggest industry and community challenges. \r\n\r\nBasically, we are a convergence of Network, Talent, Capital and Physical Assets leading Uganda and the region into industry 4.0.\r\n\r\nWe are the home to Uganda’s most connected community ', 45, '2021-03-25 14:13:36', '', 'podcast', 0),
(37, 'martist605cae0f2f9ecjoe', 'Joe Emrold Qute Eyezz', 'joeemrold2010@gmail.com', 'tyres22', 'assets/images/artistprofiles/Joe Emrold Qute Eyezz_profile_20210325153647_03605.jpg', 'assets/images/artistprofiles/Joe Emrold Qute Eyezz_cover_20210325153647_03605.jpg', ' RnB artist from Northern Uganda', 5, '2021-03-25 15:36:47', '', 'music', 0),
(38, 'martist605cca42c0240mak', 'Maker Da Gona ', 'makerdagona@mwonyaa.com', 'maker123456', 'assets/images/artistprofiles/Maker Da Gona _profile_20210325173706_02638.jpeg', 'assets/images/artistprofiles/Maker Da Gona _cover_20210325173706_02638.jpeg', ' Maker Da Gona', 3, '2021-03-25 17:37:06', '', 'music', 0),
(39, 'martist605dace950894vok', 'Vokz Mentor', 'vokzmentor@mwonyaa.com', 'vokzmentor21', 'assets/images/artistprofiles/Vokz Mentor_profile_20210326094409_08776.jpg', 'assets/images/artistprofiles/Vokz Mentor_cover_20210326094409_08776.jpg', ' Vokz Mentor is a multi talented artist who can do dancehall, afro-pop and afro-beats. He has had success in the past with his single titled mood which shook the nothern uganda airwaves.', 7, '2021-03-26 09:44:09', '', 'music', 0),
(40, 'martist605dc64a8ae76lad', 'Lady Zulu', 'ladyzulu@mwonyaa.com', 'ladyzulu21', 'assets/images/artistprofiles/Lady Zulu_profile_20210326113226_02447.JPG', 'assets/images/artistprofiles/Lady Zulu_cover_20210326113226_02447.jpg', ' Lady Zulu is a strong \"lakubukubu\" artist hailing from Gulu Nothern Uganda.\r\nShe has enjoyed a lot of prowess in the industry because of her style. ', 33, '2021-03-26 11:32:26', '', 'music', 0),
(41, 'martist605de1dc8ae84mil', 'Milo Vybez', 'milovybez@mwonyaa.com', 'milovybez21', 'assets/images/artistprofiles/Milo Vybez_profile_20210326133004_09473.jpg', 'assets/images/artistprofiles/Milo Vybez_cover_20210326133004_09473.JPG', ' Milo Vybez is a prominent artist that has hit the Nothern Uganda airwaves since his hit song Love and Affection back in 2019.\r\nHe has still been living up to expectations by delivering some tasty music to date. ', 7, '2021-03-26 13:30:04', '', 'music', 0),
(42, 'martist605df0bdc53a0neo', 'Neo Okello', 'neookello@mwonyaa.com', 'neookello21', 'assets/images/artistprofiles/Neo Okello_profile_20210326143333_07527.jpg', 'assets/images/artistprofiles/Neo Okello_cover_20210326143333_07527.JPG', ' Neo Okello is an Acoli artist from Lacekocot based in the USA and an engineer by proffesion.\r\nHe first hit the airwaves in 2020 with his jam Anyim and followed up with some massive tracks.', 7, '2021-03-26 14:33:33', '', 'music', 0),
(43, 'martist605e040a7e2f6ben', 'Benjamin Spartos', 'benjaminspartos@gmail.com', 'Audaces1#', 'assets/images/artistprofiles/Benjamin Spartos_profile_20210326155554_03758.jpg', 'assets/images/artistprofiles/Benjamin Spartos_cover_20210326155554_03758.jpg', ' Benjamin Spartos is a an artist currently based in Gulu, Uganda who believes in the power who believes in the power of music in positive living.\r\nHe envisions a healthy community united by love which is achieved by nurturing that love in the heart of humanity through positive music.\r\n He is passionate about mental health issues and community development. ', 8, '2021-03-26 15:55:54', '', 'music', 0),
(44, 'martist6062d2c0b8ca0sed', 'Sedrick Otolo', 'sedricksedu2@gmail.com', 'Krista316', 'assets/images/artistprofiles/Sedrick Otolo_profile_20210330072656_06044.JPG', 'assets/images/artistprofiles/Sedrick Otolo_cover_20210330072656_06044.jpg', ' Sedrick Otolo is a Software Engineer, Author and very enthusiastic about inspiring different categories of people in fields of personality and Technology.', 2, '2021-03-30 07:26:56', '', 'podcast', 0),
(45, 'martist60638f0e425a6ago', 'Opio Dickens Agona', 'agonadickens@gmail.com', 'sama@dick1', 'assets/images/artistprofiles/Opio Dickens Agona_profile_20210330205022_05146.jpg', 'assets/images/artistprofiles/Opio Dickens Agona_cover_20210330205022_05146.jpg', ' Challenger of the status Quo', 3, '2021-03-30 20:50:22', '', 'poem', 0),
(46, 'martist606662b7e3168lum', 'Lumix', 'lumix@mwonyaa.com', 'Rapicon12', 'assets/images/artistprofiles/Lumix_profile_20210402001759_00472.jpeg', 'assets/images/artistprofiles/Lumix_cover_20210402001759_00472.jpg', 'Considered the pioneer of Hiphop music from Northern Uganda. Lumix had a long career that span many years before it was cut short in 2015 after an illness. ', 1, '2021-04-02 00:17:59', '', 'music', 0),
(47, 'martist606c28ecf1a05qui', 'Quin Gee', 'quingee@mwonyaa.com', 'quingee21', 'assets/images/artistprofiles/Quin Gee_profile_20210406092500_04892.jpg', 'assets/images/artistprofiles/Quin Gee_cover_20210406092500_04892.jpg', ' Quin Gee is a fast rising West Nile artist that has hit the waves with her genre of music. The love tunes she pulls out are amazing and worth a look at', 7, '2021-04-06 09:25:01', '', 'music', 0),
(48, 'martist606c8ea991a58wes', 'Wesley', 'wesleyartist5@gmail.com', 'sherinah5', 'assets/images/artistprofiles/Wesley_profile_20210406163905_01978.jpg', 'assets/images/artistprofiles/Wesley_cover_20210406163905_01978.jpg', ' Northern Uganda Based Artist', 5, '2021-04-06 16:39:05', '', 'music', 0),
(49, 'martist60705b2798c8ache', 'Chemical Man', 'chemicalman@mwonyaa.com', 'chemicalman21', 'assets/images/artistprofiles/Chemical Man_profile_20210409134823_07946.jpeg', 'assets/images/artistprofiles/Chemical Man_cover_20210409134823_07946.jpeg', 'Chemical Man is one of the most consistent artists in Lango Sub Region with tones of hits that have been on the airwaves. ', 29, '2021-04-09 13:48:23', '', 'music', 0),
(50, 'martist6070624642747des', 'Destiny Music', 'destinymusic@mwonyaa.com', 'destinymusic21', 'assets/images/artistprofiles/Destiny Music_profile_20210409141846_05630.jpg', 'assets/images/artistprofiles/Destiny Music_cover_20210409141846_05630.jpg', ' Destiney Music based in Gulu got her prominent rise when she bagged the \"kodi pa oting lok\" hit back in 2018 when the song featured as the theme track of the Acholi Team at the Fufa Drum tournament. She has not ceased since then dropping more songs till date.', 7, '2021-04-09 14:18:46', '', 'music', 0),
(51, 'martist607318fe8deadlak', 'OldBreed', 'lakristol1822@gmail.com', 'Shanixslava1', 'assets/images/artistprofiles/Old_breed _profile_20210411154254_04595.jpg', 'assets/images/artistprofiles/Old_breed _cover_20210411154254_04595.jpg', 'An insight into patient perspective and the facts that surround the most common health complaints in northern Uganda. Yoto kom nama acel, ki teko pa Rubanga kuc bino I paci wa. ', 43, '2021-04-11 15:42:54', '', 'podcast', 0),
(53, 'martist60746a5661500aga', 'A-gatha Rachael Akullu', 'agatharachael4@gmail.com', 'rainmaker', 'assets/images/artistprofiles/A-gatha Rachael Akullu_profile_20210412154214_02873.jpg', 'assets/images/artistprofiles/A-gatha Rachael Akullu_cover_20210412154214_02873.jpg', ' Poet, playwright, novelist, actress, songwriter, artist ?', 8, '2021-04-12 15:42:14', '', 'poem', 0),
(54, 'martist6076b8c42a1e2ali', 'Ali B Birdman', 'alibbirdman@mwonyaa.com', 'alibbirdman21', 'assets/images/artistprofiles/Ali B Birdman_profile_20210414094124_06265.jpeg', 'assets/images/artistprofiles/Ali B Birdman_cover_20210414094124_06265.jpeg', ' ', 29, '2021-04-14 09:41:24', '', 'music', 0),
(55, 'martist6076b9e9c1893kay', 'Kay Wallet', 'kaywallet@mwonyaa.com', 'kaywallet21', 'assets/images/artistprofiles/Kay Wallet_profile_20210414094617_07455.jpeg', 'assets/images/artistprofiles/Kay Wallet_cover_20210414094617_07455.jpeg', ' Kay is a rising star in the West Nile Music fraternity.', 29, '2021-04-14 09:46:17', '', 'music', 0),
(56, 'martist6077078bf1ab6mar', 'Ako Mar', 'markopiny@gmail.com', 'Ako 1993', 'assets/images/artistprofiles/Ako Mar_profile_20210414151731_04657.jpg', 'assets/images/artistprofiles/Ako Mar_cover_20210414151731_04657.jpg', ' Ako Mar is a gospel artiste from Eastern Uganda. I love to worship God spread His gospel through music.', 3, '2021-04-14 15:17:32', '', 'music', 0),
(57, 'martist6084b4300b3a5dan', 'Daniel Bracken', 'danielcbracken@gmail.com', 'NeverBackDown14', 'assets/images/artistprofiles/Daniel Bracken_profile_20210425001336_02787.jpg', 'assets/images/artistprofiles/Daniel Bracken_cover_20210425001336_02787.png', ' Pitch It is where crazy, world-changing ideas are shared, and where stories of success and motivation come to life. We sit down with founders, entrepreneurs, artists, and trailblazers to dive into how change is brought about in any industry, and in any part of the world. Pitch It is where flames are spread. Are you ready to catch fire and change the world?', 47, '2021-04-25 00:13:36', '', 'podcast', 0),
(58, 'martist609b53088ca79ahs', 'Ah-Star Ranks ug ', 'ahstarranks@gmail.com', 'Perfect256', 'assets/images/artistprofiles/Ah-Star Ranks ug _profile_20210512040112_04111.PNG', 'assets/images/artistprofiles/Ah-Star Ranks ug _cover_20210512040112_04111.jpeg', ' A young talented boy in the land of milk and honey', 29, '2021-05-12 04:01:12', '', 'music', 0),
(59, 'martist609f6bfabc99aedd', 'Eddy Wizzy ', 'eddywizzy@mwonyaa.com', 'eddywizzy21', 'assets/images/artistprofiles/Eddy Wizzy _profile_20210515063642_08665.jpg', 'assets/images/artistprofiles/Eddy Wizzy _cover_20210515063642_08665.jpg', ' Eddy has been one of the most consistent and talented artists through out the years he has made music for our ears.\r\nHis songs never disappoint.', 29, '2021-05-15 06:36:42', '', 'music', 0),
(60, 'martist60af7364c4b83nar', 'Bob Narry', 'narry1bob@gmail.com', 'bob%narry@1988', 'assets/images/artistprofiles/Bob Narry_profile_20210527102436_05135.jpg', 'assets/images/artistprofiles/Bob Narry_cover_20210527102436_05135.PNG', ' Bob Narry is a Recording Artist from Uganda, East Africa, Africa. He does Afro and RnB  Music in English, Kiswahili, Luganda and Luo', 29, '2021-05-27 10:24:36', '', 'music', 0),
(61, 'martist60b0c1bf5bcd1chr', 'Profesa Maros', 'chrispusonyango2@gmail.com', 'Patoranking', 'assets/images/artistprofiles/Profesa Maros_profile_20210528101111_08854.jpg', 'assets/images/artistprofiles/Profesa Maros_cover_20210528101111_08854.png', 'Atine Ceaser also know by his stage name Profesa Maros. Born in Kole on the 29 September 1987 ,He is know for songs like Lukwago, music time ,Prayer of a citizen ,med Mac and currently Cente Pe .he has scooped several awards like Hipipo Music Awards since 2011 up to 2020 including lango entertainment Award. Emerging as artist of the year 2020 and his song Prayer of a citizen being song of the year .He is currently signed under manager prince and he is the manager of hot soup Entertainment Lira', 29, '2021-05-28 10:11:11', '', 'music', 0),
(62, 'martist60b23ce5b1c27pro', 'Prof. Jack Bell', 'profjackbell@yahoo.com', 'profjackbell@mwonyaa.com', 'assets/images/artistprofiles/Prof. Jack Bell_profile_20210529130853_00452.jpg', 'assets/images/artistprofiles/Prof. Jack Bell_cover_20210529130853_00452.jpg', ' Prof. Jack Bell is an African country, R &B and Soul musician and professionally a Medical Microbiologist from the pearl of Africa (Uganda).\r\nThe king of country music in Africa Prof Jack Bell has made several changes in the music of Africa as a junior artist.', 14, '2021-05-29 13:08:53', '', 'music', 0),
(63, 'martist60c8ab7856b35hov', 'Hovets FineBoy', 'hovets@gmil.com', 'hovets', 'assets/images/artistprofiles/Hovets FineBoy_profile_20210615133032_06181.jpg', 'assets/images/artistprofiles/Hovets FineBoy_cover_20210615133032_06181.jpg', 'Hovets is a luo boy with great content ready to work out and make Northern Uganda shine', 1, '2021-06-15 13:30:32', '', 'music', 0),
(64, 'martist60d30a7eaad72hok', 'OFTEN', 'hokwirmoki@gmail.com', 'mosesvans', 'assets/images/artistprofiles/OFTEN_profile_20210623101838_01055.png', 'assets/images/artistprofiles/OFTEN_cover_20210623101838_01055.png', ' Luo_finest', 7, '2021-06-23 10:18:38', '', 'music', 0);

-- --------------------------------------------------------

--
-- Table structure for table `curatedplaylist`
--

DROP TABLE IF EXISTS `curatedplaylist`;
CREATE TABLE IF NOT EXISTS `curatedplaylist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `pagename` varchar(300) NOT NULL,
  `coverart` varchar(300) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expirystate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `curatedplaylist`
--

INSERT INTO `curatedplaylist` (`id`, `title`, `pagename`, `coverart`, `datecreated`, `expirystate`) VALUES
(1, 'Recently Played Songs', 'recentlyplayed', 'assets/images/artwork/music_20210324133200_04418.jpeg', '2021-04-09 12:10:39', 0),
(2, 'Songs you might Like', 'recommendations', 'assets/images/artistprofiles/Quincy thumbnail.JPG', '2021-04-09 12:10:39', 0),
(3, 'Weekly top 10 songs', 'weeklytopsongs', 'assets/images/artistprofiles/prof.jpg', '2021-04-09 12:10:39', 0),
(4, 'Most Played Songs', 'mostplayedsongs', 'assets/images/artistprofiles/+256 701 195634 20210303_002729.jpg', '2021-04-09 12:10:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `frequency`
--

DROP TABLE IF EXISTS `frequency`;
CREATE TABLE IF NOT EXISTS `frequency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(300) NOT NULL,
  `songid` int NOT NULL,
  `tag` varchar(100) NOT NULL,
  `playsmonth` int NOT NULL DEFAULT '0',
  `plays` int NOT NULL DEFAULT '0',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_user` (`userid`(250)),
  KEY `FK_songs` (`songid`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frequency`
--

INSERT INTO `frequency` (`id`, `userid`, `songid`, `tag`, `playsmonth`, `plays`, `dateAdded`) VALUES
(1, 'mw60dc2d19ea716tyg', 138, 'music', 1, 1, '2021-06-30 13:31:55'),
(2, 'mw60dc2d19ea716tyg', 309, 'music', 1, 1, '2021-06-30 13:32:11'),
(3, 'mw60dc7b8b40c8cpka', 309, 'music', 1, 1, '2021-06-30 14:11:41'),
(4, 'mw60dc7b8b40c8cpka', 313, 'music', 1, 1, '2021-06-30 14:11:59'),
(5, 'mw60dc7b8b40c8cpka', 311, 'music', 1, 1, '2021-06-30 14:12:03'),
(6, 'mw60dcee54a514dpka', 309, 'music', 33, 33, '2021-07-02 11:18:47'),
(7, 'mw60dcee54a514dpka', 302, 'music', 6, 6, '2021-07-02 08:40:29'),
(8, 'mw60dcee54a514dpka', 303, 'music', 3, 3, '2021-07-02 12:14:45'),
(9, 'mw60dcee54a514dpka', 113, 'music', 3, 3, '2021-07-02 10:54:05'),
(10, 'mw60dcee54a514dpka', 191, 'music', 5, 5, '2021-07-01 20:00:12'),
(11, 'mw60dcee54a514dpka', 299, 'music', 2, 2, '2021-07-02 10:53:57'),
(12, 'mw60dcee54a514dpka', 293, 'music', 1, 1, '2021-07-01 11:06:47'),
(13, 'mw60dcee54a514dpka', 204, 'music', 1, 1, '2021-07-01 11:10:59'),
(14, 'mw60dcee54a514dpka', 312, 'music', 28, 28, '2021-07-02 11:19:56'),
(15, 'mw60dcee54a514dpka', 311, 'music', 24, 24, '2021-07-02 11:19:56'),
(16, 'mw60dcee54a514dpka', 310, 'music', 26, 26, '2021-07-02 11:20:31'),
(17, 'mw60dcee54a514dpka', 313, 'music', 25, 25, '2021-07-02 11:19:57'),
(18, 'mw60dcee54a514dpka', 314, 'music', 27, 27, '2021-07-02 11:19:59'),
(19, 'mw60dcee54a514dpka', 305, 'music', 10, 10, '2021-07-02 12:13:42'),
(20, 'mw60dcee54a514dpka', 169, 'music', 5, 5, '2021-07-01 19:40:52'),
(21, 'mw60dcee54a514dpka', 159, 'music', 1, 1, '2021-07-01 11:36:51'),
(22, 'mw60dcee54a514dpka', 160, 'music', 1, 1, '2021-07-01 11:36:58'),
(23, 'mw60dcee54a514dpka', 161, 'music', 1, 1, '2021-07-01 11:36:59'),
(24, 'mw60dcee54a514dpka', 162, 'music', 3, 3, '2021-07-02 10:53:36'),
(25, 'mw60dcee54a514dpka', 163, 'music', 2, 2, '2021-07-02 10:53:35'),
(26, 'mw60dcee54a514dpka', 164, 'music', 2, 2, '2021-07-02 10:54:10'),
(27, 'mw60dcee54a514dpka', 165, 'music', 5, 5, '2021-07-02 10:58:35'),
(28, 'mw60dcee54a514dpka', 166, 'music', 2, 2, '2021-07-02 10:58:39'),
(29, 'mw60dcee54a514dpka', 167, 'music', 2, 2, '2021-07-02 10:54:02'),
(30, 'mw60dcee54a514dpka', 168, 'music', 1, 1, '2021-07-01 11:37:06'),
(31, 'mw60dcee54a514dpka', 170, 'music', 1, 1, '2021-07-01 11:37:08'),
(32, 'mw60dcee54a514dpka', 171, 'music', 3, 3, '2021-07-02 10:54:09'),
(33, 'mw60dcee54a514dpka', 172, 'music', 1, 1, '2021-07-01 11:37:10'),
(34, 'mw60dcee54a514dpka', 173, 'music', 1, 1, '2021-07-01 11:37:11'),
(35, 'mw60dcee54a514dpka', 174, 'music', 1, 1, '2021-07-01 11:37:15'),
(36, 'mw60dcee54a514dpka', 175, 'music', 1, 1, '2021-07-01 11:37:16'),
(37, 'mw60dcee54a514dpka', 176, 'music', 3, 3, '2021-07-02 10:54:03'),
(38, 'mw60dcee54a514dpka', 178, 'music', 3, 3, '2021-07-02 10:58:37'),
(39, 'mw60dcee54a514dpka', 179, 'music', 2, 2, '2021-07-02 10:54:16'),
(40, 'mw60dcee54a514dpka', 105, 'music', 3, 3, '2021-07-02 10:58:28'),
(41, 'mw60dcee54a514dpka', 106, 'music', 3, 3, '2021-07-02 10:57:05'),
(42, 'mw60dcee54a514dpka', 75, 'podcast', 3, 3, '2021-07-01 19:40:51'),
(43, 'mw60dcee54a514dpka', 74, 'podcast', 3, 3, '2021-07-02 10:53:53'),
(44, 'mw60dcee54a514dpka', 308, 'music', 7, 7, '2021-07-02 11:23:44'),
(45, 'mw60dcee54a514dpka', 304, 'music', 9, 9, '2021-07-02 08:38:29'),
(46, 'mw60dcee54a514dpka', 210, 'music', 12, 12, '2021-07-02 12:13:45'),
(47, 'mw60dcee54a514dpka', 216, 'music', 11, 11, '2021-07-02 10:08:05'),
(48, 'mw60dcee54a514dpka', 218, 'music', 4, 4, '2021-07-01 19:57:09'),
(49, 'mw60dcee54a514dpka', 268, 'music', 4, 4, '2021-07-01 19:57:08'),
(50, 'mw60dcee54a514dpka', 275, 'music', 4, 4, '2021-07-01 19:57:04'),
(51, 'mw60dcee54a514dpka', 286, 'music', 6, 6, '2021-07-02 12:14:44'),
(52, 'mw60dcee54a514dpka', 276, 'music', 3, 3, '2021-07-01 19:57:06'),
(53, 'mw60dcee54a514dpka', 287, 'music', 6, 6, '2021-07-02 12:13:44'),
(54, 'mw60dcee54a514dpka', 271, 'music', 7, 7, '2021-07-02 12:13:45'),
(55, 'mw60dcee54a514dpka', 208, 'music', 8, 8, '2021-07-02 09:57:47'),
(56, 'mw60dcee54a514dpka', 187, 'music', 4, 4, '2021-07-01 20:00:08'),
(57, 'mw60dcee54a514dpka', 211, 'music', 1, 1, '2021-07-01 17:07:55'),
(58, 'mw60dcee54a514dpka', 190, 'music', 5, 5, '2021-07-01 20:00:11'),
(59, 'mw60dcee54a514dpka', 270, 'music', 3, 3, '2021-07-02 08:40:33'),
(60, 'mw60dcee54a514dpka', 264, 'music', 5, 5, '2021-07-02 08:40:31'),
(61, 'mw60dcee54a514dpka', 282, 'music', 1, 1, '2021-07-01 17:08:01'),
(62, 'mw60dcee54a514dpka', 185, 'music', 7, 7, '2021-07-02 09:52:47'),
(63, 'mw60dcee54a514dpka', 186, 'music', 10, 10, '2021-07-01 20:00:07'),
(64, 'mw60dcee54a514dpka', 307, 'music', 6, 6, '2021-07-02 09:57:48'),
(65, 'mw60dcee54a514dpka', 138, 'music', 3, 3, '2021-07-01 19:57:08'),
(66, 'mw60dcee54a514dpka', 217, 'music', 3, 3, '2021-07-02 09:54:54'),
(67, 'mw60dcee54a514dpka', 274, 'music', 2, 2, '2021-07-01 18:24:57'),
(68, 'mw60dcee54a514dpka', 283, 'music', 4, 4, '2021-07-02 08:10:14'),
(69, 'mw60dcee54a514dpka', 280, 'music', 3, 3, '2021-07-02 08:40:30'),
(70, 'mw60dcee54a514dpka', 140, 'music', 1, 1, '2021-07-01 17:12:16'),
(71, 'mw60dcee54a514dpka', 269, 'music', 2, 2, '2021-07-01 19:57:07'),
(72, 'mw60dcee54a514dpka', 205, 'music', 3, 3, '2021-07-01 19:57:09'),
(73, 'mw60dcee54a514dpka', 184, 'music', 4, 4, '2021-07-01 20:00:07'),
(74, 'mw60dcee54a514dpka', 188, 'music', 7, 7, '2021-07-02 08:10:05'),
(75, 'mw60dcee54a514dpka', 183, 'music', 4, 4, '2021-07-01 20:05:54'),
(76, 'mw60dcee54a514dpka', 253, 'music', 6, 6, '2021-07-02 11:01:01'),
(77, 'mw60dcee54a514dpka', 83, 'music', 4, 4, '2021-07-02 10:54:07'),
(78, 'mw60dcee54a514dpka', 189, 'music', 5, 5, '2021-07-02 12:14:42'),
(79, 'mw60dcee54a514dpka', 272, 'music', 5, 5, '2021-07-02 08:40:27'),
(80, 'mw60dcee54a514dpka', 137, 'music', 5, 5, '2021-07-02 12:13:46'),
(81, 'mw60dcee54a514dpka', 289, 'music', 2, 2, '2021-07-02 12:14:43'),
(82, 'mw60dcee54a514dpka', 267, 'music', 1, 1, '2021-07-01 19:56:39'),
(83, 'mw60dcee54a514dpka', 206, 'music', 1, 1, '2021-07-01 19:56:43'),
(84, 'mw60dcee54a514dpka', 212, 'music', 2, 2, '2021-07-01 19:57:02'),
(85, 'mw60dcee54a514dpka', 214, 'music', 2, 2, '2021-07-01 19:57:06'),
(86, 'mw60dcee54a514dpka', 209, 'music', 1, 1, '2021-07-01 19:57:03'),
(87, 'mw60dcee54a514dpka', 281, 'music', 3, 3, '2021-07-01 20:01:15'),
(88, 'mw60dcee54a514dpka', 266, 'music', 2, 2, '2021-07-01 19:57:09'),
(89, 'mw60dcee54a514dpka', 285, 'music', 2, 2, '2021-07-01 20:01:23'),
(90, 'mw60dcee54a514dpka', 284, 'music', 2, 2, '2021-07-02 12:14:44'),
(91, 'mw60dcee54a514dpka', 181, 'music', 4, 4, '2021-07-02 09:57:32'),
(92, 'mw60dcee54a514dpka', 182, 'music', 3, 3, '2021-07-02 09:54:51'),
(93, 'mw60dcee54a514dpka', 306, 'music', 4, 4, '2021-07-02 08:18:51'),
(94, 'mw60dcee54a514dpka', 124, 'music', 1, 1, '2021-07-01 20:07:28'),
(95, 'mw60dcee54a514dpka', 315, 'music', 5, 5, '2021-07-02 10:51:27'),
(96, 'mw60dcee54a514dpka', 79, 'music', 1, 1, '2021-07-01 20:07:31'),
(97, 'mw60dcee54a514dpka', 316, 'music', 1, 1, '2021-07-01 20:07:32'),
(98, 'mw60dcee54a514dpka', 119, 'music', 6, 6, '2021-07-02 11:08:51'),
(99, 'mw60dcee54a514dpka', 145, 'music', 5, 5, '2021-07-02 11:09:31'),
(100, 'mw60dcee54a514dpka', 116, 'music', 7, 7, '2021-07-02 11:09:07'),
(101, 'mw60dcee54a514dpka', 98, 'music', 5, 5, '2021-07-02 10:58:34'),
(102, 'mw60dcee54a514dpka', 151, 'music', 1, 1, '2021-07-02 08:06:52'),
(103, 'mw60dcee54a514dpka', 262, 'music', 1, 1, '2021-07-02 08:06:53'),
(104, 'mw60dcee54a514dpka', 325, 'music', 2, 2, '2021-07-02 10:52:11'),
(105, 'mw60dcee54a514dpka', 324, 'music', 2, 2, '2021-07-02 10:52:10'),
(106, 'mw60dcee54a514dpka', 294, 'music', 2, 2, '2021-07-02 09:57:33'),
(107, 'mw60dcee54a514dpka', 265, 'music', 2, 2, '2021-07-02 08:10:13'),
(108, 'mw60dcee54a514dpka', 120, 'music', 5, 5, '2021-07-02 11:09:34'),
(109, 'mw60dcee54a514dpka', 117, 'music', 3, 3, '2021-07-02 11:08:54'),
(110, 'mw60dcee54a514dpka', 290, 'music', 3, 3, '2021-07-02 11:09:29'),
(111, 'mw60dcee54a514dpka', 220, 'music', 4, 4, '2021-07-02 11:09:29'),
(112, 'mw60dcee54a514dpka', 221, 'music', 4, 4, '2021-07-02 11:09:30'),
(113, 'mw60dcee54a514dpka', 146, 'music', 4, 4, '2021-07-02 11:08:55'),
(114, 'mw60dcee54a514dpka', 296, 'music', 4, 4, '2021-07-02 11:09:31'),
(115, 'mw60dcee54a514dpka', 223, 'music', 3, 3, '2021-07-02 11:08:59'),
(116, 'mw60dcee54a514dpka', 122, 'music', 4, 4, '2021-07-02 11:09:28'),
(117, 'mw60dcee54a514dpka', 118, 'music', 2, 2, '2021-07-02 11:06:52'),
(118, 'mw60dcee54a514dpka', 297, 'music', 3, 3, '2021-07-02 11:09:29'),
(119, 'mw60dcee54a514dpka', 219, 'music', 2, 2, '2021-07-02 11:09:30'),
(120, 'mw60dcee54a514dpka', 222, 'music', 1, 1, '2021-07-02 08:07:49'),
(121, 'mw60dcee54a514dpka', 215, 'music', 1, 1, '2021-07-02 08:40:32'),
(122, 'mw60dcee54a514dpka', 263, 'music', 1, 1, '2021-07-02 08:40:56'),
(123, 'mw60dcee54a514dpka', 147, 'music', 13, 13, '2021-07-02 09:49:11'),
(124, 'mw60dcee54a514dpka', 133, 'music', 8, 8, '2021-07-02 10:54:04'),
(125, 'mw60dcee54a514dpka', 148, 'music', 13, 13, '2021-07-02 09:49:12'),
(126, 'mw60dcee54a514dpka', 277, 'music', 13, 13, '2021-07-02 09:49:17'),
(127, 'mw60dcee54a514dpka', 326, 'music', 4, 4, '2021-07-02 10:54:16'),
(128, 'mw60dcee54a514dpka', 259, 'music', 1, 1, '2021-07-02 09:54:53'),
(129, 'mw60dcee54a514dpka', 322, 'music', 4, 4, '2021-07-02 10:53:45'),
(130, 'mw60dcee54a514dpka', 114, 'music', 3, 3, '2021-07-02 10:58:40'),
(131, 'mw60dcee54a514dpka', 200, 'music', 1, 1, '2021-07-02 09:54:57'),
(132, 'mw60dcee54a514dpka', 150, 'music', 2, 2, '2021-07-02 09:57:37'),
(133, 'mw60dcee54a514dpka', 109, 'music', 2, 2, '2021-07-02 10:58:42'),
(134, 'mw60dcee54a514dpka', 332, 'music', 3, 3, '2021-07-02 10:11:29'),
(135, 'mw60dcee54a514dpka', 135, 'music', 1, 1, '2021-07-02 10:08:03'),
(136, 'mw60dcee54a514dpka', 207, 'music', 1, 1, '2021-07-02 10:08:04'),
(137, 'mw60dcee54a514dpka', 85, 'music', 2, 2, '2021-07-02 10:25:59'),
(138, 'mw60dcee54a514dpka', 86, 'music', 3, 3, '2021-07-02 10:54:18'),
(139, 'mw60dcee54a514dpka', 89, 'music', 5, 5, '2021-07-02 10:58:36'),
(140, 'mw60dcee54a514dpka', 87, 'music', 2, 2, '2021-07-02 10:53:43'),
(141, 'mw60dcee54a514dpka', 84, 'music', 2, 2, '2021-07-02 10:26:50'),
(142, 'mw60dcee54a514dpka', 88, 'music', 2, 2, '2021-07-02 10:58:35'),
(143, 'mw60dcee54a514dpka', 91, 'music', 2, 2, '2021-07-02 10:58:37'),
(144, 'mw60dcee54a514dpka', 90, 'music', 1, 1, '2021-07-02 10:26:37'),
(145, 'mw60dcee54a514dpka', 321, 'music', 3, 3, '2021-07-02 12:18:03'),
(146, 'mw60dcee54a514dpka', 323, 'music', 4, 4, '2021-07-02 10:54:15'),
(147, 'mw60dcee54a514dpka', 112, 'music', 2, 2, '2021-07-02 10:58:42'),
(148, 'mw60dcee54a514dpka', 99, 'music', 1, 1, '2021-07-02 10:53:33'),
(149, 'mw60dcee54a514dpka', 93, 'music', 2, 2, '2021-07-02 10:54:01'),
(150, 'mw60dcee54a514dpka', 92, 'music', 3, 3, '2021-07-02 10:54:18'),
(151, 'mw60dcee54a514dpka', 95, 'music', 3, 3, '2021-07-02 11:01:15'),
(152, 'mw60dcee54a514dpka', 76, 'podcast', 2, 2, '2021-07-02 10:54:15'),
(153, 'mw60dcee54a514dpka', 107, 'music', 1, 1, '2021-07-02 10:53:49'),
(154, 'mw60dcee54a514dpka', 94, 'music', 1, 1, '2021-07-02 10:53:58'),
(155, 'mw60dcee54a514dpka', 97, 'music', 4, 4, '2021-07-02 10:58:38'),
(156, 'mw60dcee54a514dpka', 256, 'music', 5, 5, '2021-07-02 11:01:05'),
(157, 'mw60dcee54a514dpka', 254, 'music', 5, 5, '2021-07-02 11:01:03'),
(158, 'mw60dcee54a514dpka', 255, 'music', 5, 5, '2021-07-02 11:01:04'),
(159, 'mw60dcee54a514dpka', 111, 'music', 1, 1, '2021-07-02 10:55:06'),
(160, 'mw60dcee54a514dpka', 96, 'music', 1, 1, '2021-07-02 10:58:38'),
(161, 'mw60dcee54a514dpka', 127, 'music', 2, 2, '2021-07-02 11:06:45'),
(162, 'mw60dcee54a514dpka', 115, 'music', 1, 1, '2021-07-02 11:01:09'),
(163, 'mw60dcee54a514dpka', 292, 'music', 1, 1, '2021-07-02 11:09:31'),
(164, 'mw60e1f2339b747Bre', 181, 'music', 1, 1, '2021-07-06 09:05:19'),
(165, 'mw60e1f2339b747Bre', 323, 'music', 1, 1, '2021-07-06 09:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `followee` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `follower` varchar(300) NOT NULL,
  `followerName` varchar(300) NOT NULL,
  `datefollowed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `followee`, `username`, `follower`, `followerName`, `datefollowed`) VALUES
(1, '', '', 'mw603382d49906aPka', 'Pkasemer', '2021-03-10 12:10:21'),
(2, '', '', 'mw604115aa243cf121', '1217120639', '2021-03-10 12:10:26'),
(3, 'mw603382d49906aPka', 'pkasemer', 'mw603540ce5fbc8fai', 'faisal', '2021-04-12 07:58:47'),
(4, 'mw603382d49906aPka', 'pkasemer', 'mw6047d0c81dcadOke', 'OkelloBMAdaa', '2021-04-12 07:59:07'),
(5, 'mw603382d49906aPka', 'pkasemer', 'mw6048a2f3c5703Ame', 'AmericoInno', '2021-04-12 07:59:10'),
(6, 'mw603382d49906aPka', 'pkasemer', 'mw604b994d266e6Iam', 'Iamjaiksana', '2021-04-12 07:59:14'),
(7, 'mw603382d49906aPka', 'pkasemer', 'mw604bc41a7673fdai', 'daisy_ogaba', '2021-04-12 07:59:48'),
(8, 'mw603382d49906aPka', 'Pkasemer', 'mw604be4c41e4e7Vic', 'Vicent', '2021-04-12 08:00:09'),
(9, 'mw603382d49906aPka', 'Pkasemer', 'mw60730d56e5845Old', 'Old_breed', '2021-04-12 08:00:38'),
(10, 'mw603382d49906aPka', 'Pkasemer', 'mw60734def9438cSab', 'Sabrina', '2021-04-12 08:00:41'),
(11, 'mw603382d49906aPka', 'Pkasemer', 'mw607312496779dKkm', 'Kkmaurice', '2021-04-12 08:00:43'),
(37, 'mw603382d49906aPka', 'pkasemer', 'mw607872b7e1fffBri', 'Brianoop', '2021-04-15 18:22:34'),
(13, 'mw603382d49906aPka', 'Pkasemer', 'mw605df61eeab0dRod', 'Rodney', '2021-04-12 08:00:58'),
(14, 'mw603382d49906aPka', 'Pkasemer', 'mw605af3a86c687Fio', 'FionaAtimango', '2021-04-12 08:00:59'),
(15, 'mw603382d49906aPka', 'Pkasemer', 'mw605efd519b173Bal', 'Baluku', '2021-04-12 08:01:00'),
(16, 'mw603382d49906aPka', 'Pkasemer', 'mw605db28b784efINN', 'INNOCENT', '2021-04-12 08:01:06'),
(17, 'mw603382d49906aPka', 'Pkasemer', 'mw60606e64492dcgyl', 'gylbert', '2021-04-12 08:01:07'),
(18, 'mw603382d49906aPka', 'Pkasemer', 'mw6060f0184e5f6Ron', 'Rongum', '2021-04-12 08:01:07'),
(19, 'mw603382d49906aPka', 'Pkasemer', 'mw605f00bcf0d68Dja', 'Djaekob', '2021-04-12 08:01:08'),
(20, 'mw603382d49906aPka', 'Pkasemer', 'mw604111cfe8676Obo', 'Obote', '2021-04-12 08:01:16'),
(21, 'mw603382d49906aPka', 'Pkasemer', 'mw60431451b3c34mai', 'mainuploads', '2021-04-12 08:01:18'),
(22, 'mw603382d49906aPka', 'Pkasemer', 'mw6041ff60380e7jim', 'jimmyjones', '2021-04-12 08:01:18'),
(23, 'mw603382d49906aPka', 'Pkasemer', 'mw60470c6a04318Wam', 'Wamuyuperry', '2021-04-12 08:01:19'),
(24, 'mw603382d49906aPka', 'Pkasemer', 'mw60460e312f4ecmom', 'momomaureen', '2021-04-12 08:01:27'),
(25, 'mw603382d49906aPka', 'Pkasemer', 'mw60464b81de2e6sed', 'sedrickotolo', '2021-04-12 08:01:28'),
(26, 'mw603382d49906aPka', 'Pkasemer', 'mw60432c09e7d3dxyz', 'xyzmedia', '2021-04-12 08:01:29'),
(27, 'mw603382d49906aPka', 'pkasemer', 'mw604fad75afaa6Opo', 'OpokJaspher', '2021-04-12 08:01:34'),
(36, 'mw603382d49906aPka', 'pkasemer', 'mw6077b56763470Cra', 'CrazymindOriginal', '2021-04-15 08:22:01'),
(35, 'mw603382d49906aPka', 'Pkasemer', 'mw6076f681a2474cod', 'code_maestro', '2021-04-14 17:44:51'),
(32, 'mw603382d49906aPka', 'pkasemer', 'mw60639be56edcdMik', 'MikeDonalpha', '2021-04-14 13:00:46'),
(33, 'mw603382d49906aPka', 'pkasemer', 'mw60520be9cb94fjet', 'jetezra', '2021-04-14 13:01:00'),
(34, 'mw603382d49906aPka', 'pkasemer', 'mw607662f4c2cacSha', 'Shahwalter4', '2021-04-14 13:01:13'),
(38, 'mw603382d49906aPka', 'pkasemer', 'mw60770af4bb750opt', 'optimist4lyf', '2021-04-15 18:30:48'),
(39, '', '', 'mw60802929b1069wis', 'wise1234', '2021-04-23 12:42:40'),
(40, 'mw603382d49906aPka', 'pkasemer', 'mw6083791da09a5geo', 'geoge', '2021-04-24 06:00:16'),
(42, 'mw603382d49906aPka', 'pkasemer', 'mw607f1c93bc652mwo', 'mwonyaa', '2021-04-24 06:00:48'),
(43, 'mw603382d49906aPka', 'pkasemer', 'mw60802929b1069wis', 'wise1234', '2021-04-24 06:00:51'),
(44, 'mw603382d49906aPka', 'pkasemer', 'mw6053543fd0f6aMdi', 'Mdipak', '2021-04-24 06:01:03'),
(45, 'mw603382d49906aPka', 'Pkasemer', 'mw60843585b8994gka', 'gkangwanzi@gmail.com', '2021-04-25 21:59:15'),
(46, 'mw609aff401d898Mod', 'Modie', 'mw604be7f66ff12All', 'AllanPaul', '2021-05-11 22:12:24'),
(47, 'mw609aff401d898Mod', 'Modie', 'mw604be7f66ff12All', 'AllanPaul', '2021-05-11 22:12:26'),
(48, 'mw609aff401d898Mod', 'Modie', 'mw60753e78518a6Res', 'Resty', '2021-05-11 22:12:54'),
(49, 'mw609aff401d898Mod', 'Modie', 'mw609ab54c3de4aPau', 'Paulsoc', '2021-05-11 22:13:24'),
(50, 'mw609aff401d898Mod', 'Modie', 'mw609ab54c3de4aPau', 'Paulsoc', '2021-05-11 22:13:25'),
(51, 'mw609aff401d898Mod', 'Modie', 'mw609ab54c3de4aPau', 'Paulsoc', '2021-05-11 22:13:26'),
(52, 'mw609aff401d898Mod', 'Modie', 'mw607ec8a942ba9ern', 'ernestokot', '2021-05-11 22:13:38'),
(53, 'mw609aff401d898Mod', 'Modie', 'mw6075eaedc0939Phi', 'Philliam', '2021-05-11 22:13:50'),
(54, 'mw603382d49906aPka', 'Pkasemer', 'mw609aff401d898Mod', 'Modie', '2021-05-11 22:16:19'),
(55, 'mw603382d49906aPka', 'Pkasemer', 'mw60a51bf5092c0Mir', 'MirembeMiriam', '2021-05-23 09:58:31'),
(56, 'mw603382d49906aPka', 'Pkasemer', 'mw6098d89f73469ann', 'annahahabwe', '2021-05-26 17:05:21'),
(57, 'mw603382d49906aPka', 'Pkasemer', 'mw60b0d6af4628dgun', 'gunthernarrich@gmail.com', '2021-05-28 12:03:08'),
(58, 'mw60b0d6af4628dgun', 'gunthernarrich@gmail.com', 'mw603540ce5fbc8fai', 'faisal', '2021-05-28 12:34:14'),
(59, 'mw60ac08aa35c9aVib', 'Vibes', 'mw603382d49906aPka', 'Pkasemer', '2021-05-28 18:57:59'),
(60, 'mw60ac08aa35c9aVib', 'Vibes', 'mw603382d49906aPka', 'Pkasemer', '2021-05-28 18:57:59'),
(61, '', '', 'mw60ac08aa35c9aVib', 'Vibes', '2021-05-29 10:36:01'),
(62, '', '', 'mw60ac08aa35c9aVib', 'Vibes', '2021-05-29 10:36:05'),
(63, '', '', 'mw60ac08aa35c9aVib', 'Vibes', '2021-05-29 10:36:05'),
(64, 'mw60adf146a0369jan', 'janedr', 'mw603382d49906aPka', 'Pkasemer', '2021-05-30 14:34:10'),
(65, 'mw60adf146a0369jan', 'janedr', 'mw60b79dbb3de36oke', 'okemabrian', '2021-06-03 13:36:43'),
(66, 'mw60adf146a0369jan', 'janedr', 'mw603540ce5fbc8fai', 'faisal', '2021-06-03 13:40:46'),
(67, 'mw603382d49906aPka', 'Pkasemer', 'mw60adf146a0369jan', 'janedr', '2021-06-03 13:42:32'),
(68, 'mw603382d49906aPka', 'Pkasemer', 'mw60b79dbb3de36oke', 'okemabrian', '2021-06-04 23:42:49'),
(69, 'mw60ac08aa35c9aVib', 'Vibes', 'mw604111d077103Ton', 'ToniEazi', '2021-06-15 10:15:21'),
(70, 'mw60ccc130c96c8Bre', 'Brendahobote', 'mw603382d49906aPka', 'Pkasemer', '2021-06-18 15:59:37'),
(71, 'mw60ccc130c96c8Bre', 'Brendahobote', 'mw60adf146a0369jan', 'janedr', '2021-06-18 16:00:12'),
(72, 'mw603382d49906aPka', 'Pkasemer', 'mw60ccc130c96c8Bre', 'Brendahobote', '2021-06-19 18:18:07'),
(73, 'mw603382d49906aPka', 'Pkasemer', 'mw60d34c48c3e66192', '1926876778', '2021-06-23 15:17:20'),
(74, 'mw603382d49906aPka', 'Pkasemer', 'mw60d360b418cbe139', '1394351672', '2021-06-23 17:01:49'),
(75, '', '', 'mw60d371e2ccfb3119', '119193051', '2021-06-23 18:42:19'),
(76, '', '', 'mw60d4bbc60cb7b116', '11685790', '2021-06-25 06:48:51'),
(77, 'mw60d8bc3d545adpka', 'pkasemer', 'mw60d8bb6714289527', '527834157', '2021-06-27 18:00:39'),
(78, 'mw60d8bc3d545adpka', 'pkasemer', 'mw60d8bbb0a99f0108', '1087485731', '2021-06-27 18:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tag` varchar(300) NOT NULL DEFAULT 'music',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `tag`) VALUES
(1, 'Hiphop or Rap', 'music'),
(2, 'Education', 'music'),
(3, 'Christian and Gospel', 'music'),
(4, 'Pop', 'music'),
(5, 'RnB', 'music'),
(6, 'Trap', 'music'),
(7, 'Afro pop', 'music'),
(8, 'Contemporary', 'music'),
(9, 'EDM (Electronic Dance Music', 'music'),
(10, 'Classical', 'music'),
(11, 'Childrens Music', 'music'),
(12, 'Comedy', 'music'),
(13, 'Commercial', 'music'),
(14, 'Country', 'music'),
(15, 'Techno', 'music'),
(16, 'French Pop', 'music'),
(17, 'Fitness and Workout', 'music'),
(18, 'Indie Pop', 'music'),
(19, 'Holiday Music', 'music'),
(20, 'Instrumental', 'music'),
(21, 'J-Pop', 'music'),
(22, 'Jazz', 'music'),
(23, 'Karaoke', 'music'),
(24, 'Metal', 'music'),
(25, 'Opera', 'music'),
(26, 'Reggae', 'music'),
(27, 'Motion Picture Soundtrack', 'music'),
(28, 'Accapella', 'music'),
(29, 'Afro-Beat', 'music'),
(30, 'Lingala', 'music'),
(31, 'Okeme or Lukeme', 'music'),
(32, 'Ikoce', 'music'),
(33, 'Lakubukubu', 'music'),
(34, 'Bongo Flavor', 'music'),
(35, 'Rock', 'music'),
(36, 'History', 'other'),
(37, 'Religious', 'other'),
(38, 'Audio Dramas', 'other'),
(39, 'Sports', 'other'),
(40, 'Comedy Casts', 'other'),
(41, 'Society and Culture', 'other'),
(42, 'Feminist', 'other'),
(43, 'Health', 'other'),
(44, 'Advice and Self-Help', 'other'),
(45, 'Business', 'other'),
(46, 'Personal Journal', 'other'),
(47, 'Interview Cast', 'other'),
(48, 'Environment or Science', 'other'),
(49, 'Technology', 'other'),
(50, 'Crime', 'other'),
(51, 'Kids and Families', 'other'),
(52, 'Law', 'other'),
(53, 'Pop Culture', 'other'),
(54, 'Philosophy', 'other'),
(55, 'Games and Hobbies', 'other'),
(56, 'Engineering', 'other'),
(57, 'Mix Tapes', 'music'),
(58, 'Mixtape', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `likedsongs`
--

DROP TABLE IF EXISTS `likedsongs`;
CREATE TABLE IF NOT EXISTS `likedsongs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `songId` int NOT NULL,
  `artistId` varchar(300) NOT NULL,
  `songorder` int NOT NULL,
  `userID` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedsongs`
--

INSERT INTO `likedsongs` (`id`, `songId`, `artistId`, `songorder`, `userID`) VALUES
(1, 107, 'martist6044f454b39d2pin', 1, 'mw603382d49906aPka'),
(2, 111, 'martist6044f454b39d2pin', 2, 'mw603382d49906aPka'),
(3, 81, 'martist6044724ed99a2cat', 3, 'mw603382d49906aPka'),
(4, 78, 'martist6044724ed99a2cat', 4, 'mw603382d49906aPka'),
(5, 79, 'martist6044724ed99a2cat', 5, 'mw603382d49906aPka'),
(6, 83, 'martist604511491b457qui', 6, 'mw603382d49906aPka'),
(7, 86, 'martist604511491b457qui', 7, 'mw603382d49906aPka'),
(8, 127, 'martist604624d22c991sev', 8, 'mw603382d49906aPka'),
(9, 118, 'martist604624d22c991sev', 9, 'mw603382d49906aPka'),
(10, 81, 'martist6044724ed99a2cat', 1, 'mw6049f37582ae0178'),
(11, 81, 'martist6044724ed99a2cat', 2, 'mw6049f37582ae0178'),
(12, 81, 'martist6044724ed99a2cat', 3, 'mw6049f37582ae0178'),
(13, 129, 'martist60472ab113e8fsmo', 10, 'mw603382d49906aPka'),
(14, 88, 'martist604511491b457qui', 1, 'mw604b950034216179'),
(15, 139, 'martist60472ab113e8fsmo', 1, 'mw604c9088b7a5f593'),
(16, 134, 'martist60472ab113e8fsmo', 11, 'mw603382d49906aPka'),
(17, 129, 'martist60472ab113e8fsmo', 1, 'mw604f6f5237b2e107'),
(18, 102, 'martist60451e26940e2inf', 1, 'mw605223798c623554'),
(19, 114, 'martist60452cae695capin', 12, 'mw603382d49906aPka'),
(20, 154, 'martist6059adcba692emic', 1, 'mw6059b936d7370955'),
(21, 140, 'martist60472ab113e8fsmo', 1, 'mw605cd3d216f3b128'),
(22, 155, 'martist6059d3966ef4cthe', 1, 'mw605daf72d395f527'),
(23, 180, 'martist605b41c503467wil', 1, 'mw605dd6fd16ce4175'),
(24, 181, 'martist605b41c503467wil', 2, 'mw605dd6fd16ce4175'),
(25, 182, 'martist605b41c503467wil', 3, 'mw605dd6fd16ce4175'),
(26, 150, 'martist60599f5fb8d74avi', 4, 'mw605dd6fd16ce4175'),
(27, 212, 'martist605df0bdc53a0neo', 1, 'mw605de76a9fe75904'),
(28, 226, 'martist6062d2c0b8ca0sed', 1, 'mw60464b81de2e6sed'),
(29, 136, 'martist60472ab113e8fsmo', 1, 'mw60638ded8286a161'),
(30, 254, 'martist606662b7e3168lum', 1, 'mw6066712304ce3142'),
(31, 236, 'martist605c3f5739614mal', 1, 'mw60683ab58cf5d163'),
(32, 267, 'martist60705b2798c8ache', 1, 'mw60705d040b65e158'),
(33, 250, 'martist605c3f5739614mal', 1, 'mw6073f35def9c0111'),
(34, 123, 'martist60463ce19bb2daar', 2, 'mw6073f35def9c0111'),
(35, 124, 'martist60463ce19bb2daar', 3, 'mw6073f35def9c0111'),
(36, 287, 'martist605df0bdc53a0neo', 1, 'mw604111d077103Ton'),
(37, 289, 'martist605df0bdc53a0neo', 2, 'mw604111d077103Ton'),
(38, 253, 'martist606662b7e3168lum', 13, 'mw603382d49906aPka'),
(39, 301, 'martist6084b4300b3a5dan', 1, 'mw607e9f8df3d09Oke'),
(40, 301, 'martist6084b4300b3a5dan', 1, 'mw6076f681a2474cod'),
(41, 154, 'martist6059adcba692emic', 1, 'mw60772e555b741Eve'),
(42, 154, 'martist6059adcba692emic', 2, 'mw60772e555b741Eve'),
(43, 150, 'martist60599f5fb8d74avi', 2, 'mw607e9f8df3d09Oke'),
(44, 117, 'martist604624d22c991sev', 1, 'mw609aff401d898Mod'),
(45, 302, 'martist609b53088ca79ahs', 1, 'mw609cb6380f319Oke'),
(46, 152, 'martist60599f5fb8d74avi', 2, 'mw6076f681a2474cod'),
(47, 287, 'martist605df0bdc53a0neo', 3, 'mw6076f681a2474cod'),
(48, 305, 'martist609f6bfabc99aedd', 4, 'mw6076f681a2474cod'),
(49, 265, 'martist60705b2798c8ache', 5, 'mw6076f681a2474cod'),
(50, 271, 'martist6070624642747des', 14, 'mw603382d49906aPka'),
(51, 303, 'martist609b53088ca79ahs', 15, 'mw603382d49906aPka'),
(52, 303, 'martist609b53088ca79ahs', 16, 'mw603382d49906aPka'),
(53, 181, 'martist605b41c503467wil', 17, 'mw603382d49906aPka'),
(54, 181, 'martist605b41c503467wil', 18, 'mw603382d49906aPka'),
(55, 305, 'martist609f6bfabc99aedd', 19, 'mw603382d49906aPka'),
(56, 146, 'martist604624d22c991sev', 20, 'mw603382d49906aPka'),
(57, 211, 'martist605df0bdc53a0neo', 21, 'mw603382d49906aPka'),
(58, 225, 'martist6062d2c0b8ca0sed', 6, 'mw6076f681a2474cod'),
(59, 226, 'martist6062d2c0b8ca0sed', 7, 'mw6076f681a2474cod'),
(60, 310, 'martist60af7364c4b83nar', 1, 'mw60adf146a0369jan'),
(61, 314, 'martist60af7364c4b83nar', 22, 'mw603382d49906aPka'),
(62, 309, 'martist60af7364c4b83nar', 23, 'mw603382d49906aPka'),
(63, 312, 'martist60af7364c4b83nar', 24, 'mw603382d49906aPka'),
(64, 304, 'martist609f6bfabc99aedd', 1, 'mw60da519326b2fmer'),
(65, 306, 'martist609f6bfabc99aedd', 2, 'mw60da519326b2fmer'),
(66, 106, 'martist6044f454b39d2pin', 3, 'mw60da519326b2fmer'),
(67, 107, 'martist6044f454b39d2pin', 4, 'mw60da519326b2fmer'),
(68, 105, 'martist6044f454b39d2pin', 5, 'mw60da519326b2fmer'),
(69, 109, 'martist6044f454b39d2pin', 6, 'mw60da519326b2fmer'),
(70, 308, 'martist609f6bfabc99aedd', 1, 'mw60d8c4bd6f71fpka'),
(71, 309, 'martist60af7364c4b83nar', 1, ''),
(72, 309, 'martist60af7364c4b83nar', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
CREATE TABLE IF NOT EXISTS `playlists` (
  `no` int NOT NULL AUTO_INCREMENT,
  `id` varchar(300) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `ownerID` varchar(300) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(300) NOT NULL,
  `coverurl` varchar(300) NOT NULL DEFAULT 'assets/images/createdplaylist/mwonyaplaylist.png',
  `status` int NOT NULL DEFAULT '0',
  `featuredplaylist` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`no`, `id`, `name`, `owner`, `ownerID`, `dateCreated`, `description`, `coverurl`, `status`, `featuredplaylist`) VALUES
(3, 'mwPL6075d77684909mw607', 'The Podcasts', 'isophel', 'mw60743f591e2b3iso', '2021-04-13 17:40:06', '', 'assets/images/createdplaylist/mwonyaplaylist.png', 0, 'no'),
(4, 'mwPL6076dca3c9b3dmw604', 'Dance List', 'ToniEazi', 'mw604111d077103Ton', '2021-04-14 12:14:27', '', 'assets/images/createdplaylist/mwonyaplaylist.png', 0, 'no'),
(13, 'mwPL60a2adcdd358dmw608', 'BUNNY', 'Manuel', 'mw608bea21b74cbMan', '2021-05-17 17:54:21', '', 'assets/images/createdplaylist/mwonyaplaylist.png', 0, 'no'),
(14, 'mwPL60a43f1fdf2d6mw607', 'von neur artistes???', 'code_maestro', 'mw6076f681a2474cod', '2021-05-18 22:26:39', '', 'assets/images/createdplaylist/mwonyaplaylist.png', 2, 'yes'),
(16, 'mwPL60b044e27c5a0mw603', 'Eddy', 'Pkasemer', 'mw603382d49906aPka', '2021-05-28 01:18:26', 'More Fire Entertainment', 'assets/images/createdplaylist/Eddy_Wizzy_MixEddy_Wizzy_Mix_mw603382d49906aPka_playlist_20210528011826_04624.png', 1, 'yes'),
(18, 'mwPL60b0ac3c2fb02mw603', 'Bee Pee Mix', 'Pkasemer', 'mw603382d49906aPka', '2021-05-28 08:39:24', 'Bee Pee', 'assets/images/createdplaylist/Best_of_Bee_PeeBest_of_Bee_Pee_mw603382d49906aPka_playlist_20210528083924_00889.jpeg', 1, 'yes'),
(24, 'mwPL60b13b8b40164mw60a', 'Hard hitting ', 'Vibes', 'mw60ac08aa35c9aVib', '2021-05-28 18:50:51', 'Hard hitting bangers', 'assets/images/createdplaylist/Hard_hitting_Hard_hitting__mw60ac08aa35c9aVib_playlist_20210528185051_08078.jpg', 0, 'no'),
(26, 'mwPL60b3a23e1c00fmw60a', 'My Favs', 'janedr', 'mw60adf146a0369jan', '2021-05-30 14:33:34', 'Playlist by Dr Jane', 'assets/images/createdplaylist/My_FavsMy_Favs_mw60adf146a0369jan_playlist_20210530143334_09998.png', 0, 'no'),
(27, 'mwPL60b714f135d71mw607', '5AM Inspiration', 'code_maestro', 'mw6076f681a2474cod', '2021-06-02 05:19:45', 'podcasts for the strong', 'assets/images/createdplaylist/5AM_Inspiration5AM_Inspiration_mw6076f681a2474cod_playlist_20210602051945_04254.jpg', 2, 'yes'),
(28, 'mwPL60b8d95537e89mw60a', 'Jane Mix', 'janedr', 'mw60adf146a0369jan', '2021-06-03 13:29:57', 'Mix from Jan', 'assets/images/createdplaylist/Jane_MixJane_Mix_mw60adf146a0369jan_playlist_20210603132957_08496.jpg', 2, 'yes'),
(29, 'mwPL60ccc3a3ca93amw60c', 'Brenda Flow', 'Brendahobote', 'mw60ccc130c96c8Bre', '2021-06-18 16:02:43', 'My favourite wine down track', 'assets/images/createdplaylist/Brenda_FlowBrenda_Flow_mw60ccc130c96c8Bre_playlist_20210618160243_00216.png', 0, 'no'),
(30, 'mwPL60d442fa05656mw603', 'Neo Okello Mix', 'Pkasemer', 'mw603382d49906aPka', '2021-06-24 08:31:54', 'Top songs by Neo Okello and other artists in the same genre', 'assets/images/createdplaylist/Neo_Okello_MixNeo_Okello_Mix_mw603382d49906aPka_playlist_20210624083154_04637.png', 1, 'yes'),
(31, 'mwPL60d4453adcff0mw603', 'Bob Narrry Mix', 'Pkasemer', 'mw603382d49906aPka', '2021-06-24 08:41:30', 'Top Hit songs by Bob Narry', 'assets/images/createdplaylist/Bob_Narrry_MixBob_Narrry_Mix_mw603382d49906aPka_playlist_20210624084130_00969.png', 1, 'yes'),
(32, 'mwPL60d44728cba8fmw603', 'Adong Music Mix', 'Pkasemer', 'mw603382d49906aPka', '2021-06-24 08:49:44', 'Top Hits by Adong Music ', 'assets/images/createdplaylist/Adong_Music_MixAdong_Music_Mix_mw603382d49906aPka_playlist_20210624084944_08084.png', 1, 'yes'),
(33, 'mwPL60d81d2157565mw60d', 'hovets', '1159995241', 'mw60d81affba2d2115', '2021-06-27 06:39:29', 'mkke', 'assets/images/createdplaylist/hovetshovets_mw60d81affba2d2115_playlist_20210627063929_03778.png', 0, 'no'),
(37, 'mwPL60d8d776d7a55mw60d', 'jsljd', 'mercieMake', 'mw60d8ce3ab154amer', '2021-06-27 19:54:30', 'ksld', 'assets/images/createdplaylist/jsljdjsljd_mw60d8ce3ab154amer_playlist_20210627195430_01033.png', 0, 'no'),
(38, 'mwPL60da52dc5e13cmw60d', 'sss', 'mercieMaked', 'mw60da519326b2fmer', '2021-06-28 22:53:16', 'sss', 'assets/images/createdplaylist/ssssss_mw60da519326b2fmer_playlist_20210628225316_01407.png', 0, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

DROP TABLE IF EXISTS `playlistsongs`;
CREATE TABLE IF NOT EXISTS `playlistsongs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `songId` int NOT NULL,
  `playlistId` varchar(300) NOT NULL,
  `playlistOrder` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(17, 193, 'mwPL6075d77684909mw607', 1),
(18, 194, 'mwPL6075d77684909mw607', 2),
(19, 151, 'mwPL6076dca3c9b3dmw604', 1),
(21, 152, 'mwPL6076dca3c9b3dmw604', 3),
(22, 287, 'mwPL6076dca3c9b3dmw604', 4),
(24, 126, 'mwPL6076dca3c9b3dmw604', 6),
(25, 200, 'mwPL6076dca3c9b3dmw604', 7),
(46, 152, 'mwPL60a43f1fdf2d6mw607', 1),
(47, 304, 'mwPL60a43f1fdf2d6mw607', 2),
(49, 308, 'mwPL60b044e27c5a0mw603', 1),
(54, 111, 'mwPL60b0ac3c2fb02mw603', 1),
(55, 107, 'mwPL60b0ac3c2fb02mw603', 2),
(56, 105, 'mwPL60b0ac3c2fb02mw603', 3),
(57, 106, 'mwPL60b0ac3c2fb02mw603', 4),
(58, 109, 'mwPL60b0ac3c2fb02mw603', 5),
(59, 271, 'mwPL60b0ac3c2fb02mw603', 6),
(60, 114, 'mwPL60b0ac3c2fb02mw603', 7),
(61, 306, 'mwPL60b13b8b40164mw60a', 1),
(62, 184, 'mwPL60b0ac3c2fb02mw603', 8),
(63, 272, 'mwPL60b13b8b40164mw60a', 2),
(64, 138, 'mwPL60b13b8b40164mw60a', 3),
(65, 183, 'mwPL60b13b8b40164mw60a', 4),
(66, 304, 'mwPL60b044e27c5a0mw603', 2),
(67, 305, 'mwPL60b044e27c5a0mw603', 3),
(68, 307, 'mwPL60b044e27c5a0mw603', 4),
(69, 309, 'mwPL60b044e27c5a0mw603', 5),
(70, 312, 'mwPL60b044e27c5a0mw603', 6),
(71, 181, 'mwPL60b044e27c5a0mw603', 7),
(72, 182, 'mwPL60b044e27c5a0mw603', 8),
(73, 306, 'mwPL60b044e27c5a0mw603', 9),
(74, 310, 'mwPL60b3a23e1c00fmw60a', 1),
(75, 225, 'mwPL60b714f135d71mw607', 1),
(76, 309, 'mwPL60b8d95537e89mw60a', 1),
(77, 312, 'mwPL60b8d95537e89mw60a', 2),
(78, 314, 'mwPL60b8d95537e89mw60a', 3),
(79, 304, 'mwPL60ccc3a3ca93amw60c', 1),
(80, 307, 'mwPL60ccc3a3ca93amw60c', 2),
(81, 287, 'mwPL60d442fa05656mw603', 1),
(82, 208, 'mwPL60d442fa05656mw603', 2),
(83, 216, 'mwPL60d442fa05656mw603', 3),
(84, 210, 'mwPL60d442fa05656mw603', 4),
(85, 212, 'mwPL60d442fa05656mw603', 5),
(86, 309, 'mwPL60d4453adcff0mw603', 1),
(87, 312, 'mwPL60d4453adcff0mw603', 2),
(88, 310, 'mwPL60d4453adcff0mw603', 3),
(89, 311, 'mwPL60d4453adcff0mw603', 4),
(90, 313, 'mwPL60d4453adcff0mw603', 5),
(91, 211, 'mwPL60d442fa05656mw603', 6),
(92, 289, 'mwPL60d442fa05656mw603', 7),
(93, 185, 'mwPL60d44728cba8fmw603', 1),
(94, 183, 'mwPL60d44728cba8fmw603', 2),
(95, 184, 'mwPL60d44728cba8fmw603', 3),
(96, 191, 'mwPL60d44728cba8fmw603', 4),
(97, 188, 'mwPL60d44728cba8fmw603', 5),
(98, 186, 'mwPL60d44728cba8fmw603', 6);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` varchar(300) NOT NULL,
  `album` varchar(300) NOT NULL,
  `genre` int NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int NOT NULL,
  `plays` int NOT NULL,
  `weekplays` int NOT NULL DEFAULT '0',
  `lastplayed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(300) NOT NULL DEFAULT 'music',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `weekplays`, `lastplayed`, `tag`) VALUES
(74, '00 Waidaba New Season Intro', 'martist604331f068d2fomi', 'm_oth6043322978047104', 1, '00:36', 'assets/podcasts/00 Waidaba New Season Intro.mp3', 1, 25, 0, '2021-07-02 10:53:53', 'podcast'),
(75, '01 Waidaba episode industry', 'martist604331f068d2fomi', 'm_oth6043322978047104', 1, '09:01', 'assets/podcasts/01 Waidaba episode industry(1).mp3', 2, 31, 0, '2021-07-01 19:40:51', 'podcast'),
(76, '02 Waidaba Episode Purpose', 'martist604331f068d2fomi', 'm_oth6043322978047104', 1, '12:28', 'assets/podcasts/02 Waidaba Episode Purpose.mp3', 3, 11, 0, '2021-07-02 10:54:15', 'podcast'),
(77, 'Peloke', 'martist6044724ed99a2cat', 'm_al604472b802ee6148', 7, '03:27', 'assets/music/Peloke.mp3', 1, 38, 0, '2021-06-26 08:13:37', 'music'),
(78, 'One more night', 'martist6044724ed99a2cat', 'm_al604472b802ee6148', 7, '03:10', 'assets/music/One more night.mp3', 1, 14, 0, '2021-05-26 19:34:13', 'music'),
(79, 'Cwara Mara ', 'martist6044724ed99a2cat', 'm_al604472b802ee6148', 7, '02:43', 'assets/music/Cwara Mara .mp3', 2, 38, 0, '2021-07-02 10:46:13', 'music'),
(80, 'Welo', 'martist6044724ed99a2cat', 'm_al604472b802ee6148', 7, '03:44', 'assets/music/Welo.mp3', 3, 18, 0, '2021-07-02 11:29:52', 'music'),
(81, 'Aparo Ngo', 'martist6044724ed99a2cat', 'm_al604472b802ee6148', 7, '03:01', 'assets/music/Aparo Ngo.mp3', 4, 29, 0, '2021-06-30 14:24:18', 'music'),
(82, 'Corona PSA Juba Arabic Emma', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 2, '00:45', 'assets/podcasts/Corona PSA Juba Arabic Emma.mp3', 1, 16, 0, '2021-05-18 22:39:29', 'podcast'),
(83, 'Acel keken', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:26', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Acel keken.mp3', 1, 20, 0, '2021-07-02 10:54:07', 'music'),
(84, 'Me Ikuma', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:18', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Me Ikuma.mp3', 2, 22, 0, '2021-07-06 09:23:35', 'music'),
(85, 'Me Ikuma - Quincy PA5', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:18', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Me Ikuma - Quincy PA5.mp3', 3, 13, 0, '2021-07-02 10:25:59', 'music'),
(86, 'Musiki', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '02:57', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Musiki.mp3', 4, 19, 0, '2021-07-06 09:26:24', 'music'),
(87, 'Tami', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:03', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Tami.mp3', 5, 30, 0, '2021-07-06 09:17:50', 'music'),
(88, 'The way', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:29', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/The way.mp3', 6, 19, 0, '2021-07-02 10:58:34', 'music'),
(89, 'Tiimee', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:12', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Tiimee.mp3', 7, 14, 0, '2021-07-02 10:58:36', 'music'),
(90, 'Touch me ', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:11', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Touch me .mp3', 8, 9, 0, '2021-07-02 10:26:37', 'music'),
(91, 'Twerk', 'martist604511491b457qui', 'm_al604511971f17d130', 1, '03:21', 'https://d1d1i04hu392ot.cloudfront.net/assets/music/Twerk.mp3', 9, 12, 0, '2021-07-02 10:58:36', 'music'),
(92, 'Twere', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '03:39', 'assets/music/Twere.mp3', 1, 46, 0, '2021-07-02 10:54:18', 'music'),
(93, 'Min Obuje', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '04:24', 'assets/music/Min Obuje.mp3', 2, 10, 0, '2021-07-02 10:54:01', 'music'),
(94, 'Lak Matar ', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '03:01', 'assets/music/Lak Matar .mp3', 3, 24, 0, '2021-07-02 10:53:58', 'music'),
(95, 'Lak Matar', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '03:01', 'assets/music/Lak Matar.mp3', 4, 30, 0, '2021-07-06 09:19:11', 'music'),
(96, 'Imitongo', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '03:21', 'assets/music/Imitongo.mp3', 5, 8, 0, '2021-07-02 10:58:38', 'music'),
(97, 'Ikareni', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '03:06', 'assets/music/Ikareni.mp3', 6, 8, 0, '2021-07-02 10:58:38', 'music'),
(98, 'I dont play feat Black ', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '03:30', 'assets/music/I dont play feat Black .mp3', 7, 22, 0, '2021-07-02 11:29:30', 'music'),
(99, 'Amari Feat Quincy', 'martist60451ad3ea997tob', 'm_al60451b0b4b794161', 1, '04:24', 'assets/music/Amari Feat Quincy.mp3', 8, 10, 0, '2021-07-02 10:53:33', 'music'),
(100, 'Introduction to Learning Difficulties', 'martist60451e26940e2inf', 'm_oth60451f07ac0eb206', 2, '26:32', 'assets/podcasts/Introduction to Learning Difficulties.mp3', 1, 3, 0, '2021-03-26 08:35:21', 'podcast'),
(101, 'Dyscalculia', 'martist60451e26940e2inf', 'm_oth60451f07ac0eb206', 0, '31:45', 'assets/podcasts/Dyscalculia.mp3', 1, 0, 0, '2021-03-07 18:53:36', 'podcast'),
(102, 'Behavioural Difficulties', 'martist60451e26940e2inf', 'm_oth60451f07ac0eb206', 2, '29:45', 'assets/podcasts/Podcast_Episode 6.mp3', 2, 4, 0, '2021-03-17 15:46:44', 'podcast'),
(103, 'Autism', 'martist60451e26940e2inf', 'm_oth60451f07ac0eb206', 2, '31:44', 'assets/podcasts/Podcast_episode 5.mp3', 3, 1, 0, '2021-05-23 11:46:35', 'podcast'),
(104, 'ADD & ADHD', 'martist60451e26940e2inf', 'm_oth60451f07ac0eb206', 2, '26:31', 'assets/podcasts/ADD & ADHD.mp3', 4, 1, 0, '2021-05-23 12:12:48', 'podcast'),
(105, 'Tica', 'martist6044f454b39d2pin', 'm_al6045255a0e9f3140', 1, '03:07', 'https://d1d1i04hu392ot.cloudfront.net/Music/beepee/Tica%20-%20BeePee.mp3', 1, 129, 0, '2021-07-02 11:32:38', 'music'),
(106, 'Step ahead ', 'martist6044f454b39d2pin', 'm_al6045255a0e9f3140', 1, '03:22', 'https://d1d1i04hu392ot.cloudfront.net/Music/beepee/onestepahead.mp3', 2, 116, 0, '2021-07-02 10:57:05', 'music'),
(107, 'Par Pira', 'martist6044f454b39d2pin', 'm_al6045255a0e9f3140', 1, '03:32', 'https://d1d1i04hu392ot.cloudfront.net/Music/beepee/BEEPEE+-+PAR+PIRA(Official+PA5+4K+video+release).mp3', 3, 139, 0, '2021-07-02 12:52:58', 'music'),
(109, 'Mak Cinga', 'martist6044f454b39d2pin', 'm_al6045255a0e9f3140', 1, '03:44', 'https://d1d1i04hu392ot.cloudfront.net/Music/beepee/Mak+Cinga.mp3', 5, 63, 0, '2021-07-02 10:58:42', 'music'),
(111, 'Akello', 'martist6044f454b39d2pin', 'm_al6045255a0e9f3140', 1, '03:31', 'https://d1d1i04hu392ot.cloudfront.net/Music/beepee/Akello.mp3', 7, 269, 0, '2021-07-02 10:55:06', 'music'),
(112, 'That Gal is Mine', 'martist60452cae695capin', 'm_al60452d246b554670', 1, '03:55', 'assets/music/That Gal is Mine.mp3', 1, 23, 0, '2021-07-02 10:58:42', 'music'),
(113, 'Private dancer', 'martist60452cae695capin', 'm_al60452d246b554670', 1, '03:11', 'assets/music/Private dancer.mp3', 2, 35, 0, '2021-07-02 10:54:05', 'music'),
(114, 'Pickup ', 'martist60452cae695capin', 'm_al60452d246b554670', 1, '03:25', 'assets/music/Pickup .mp3', 3, 64, 0, '2021-07-02 10:58:40', 'music'),
(115, 'Nya Luo ', 'martist60452cae695capin', 'm_al60452d246b554670', 1, '02:52', 'assets/music/Nya Luo .mp3', 4, 30, 0, '2021-07-02 11:01:09', 'music'),
(116, 'Gods Love', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:35', 'assets/music/WhatsApp Audio 2021-01-20 at 11.08.10 AM.mp3', 1, 52, 0, '2021-07-02 11:33:42', 'music'),
(117, 'I Dont Deserve', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:57', 'assets/music/WhatsApp Audio 2021-01-20 at 11.09.13 AM.mp3', 2, 21, 0, '2021-07-02 11:08:54', 'music'),
(118, 'Strong Shield', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:37', 'assets/music/WhatsApp Audio 2021-01-20 at 11.09.14 AM.mp3', 3, 17, 0, '2021-07-02 11:06:52', 'music'),
(119, 'Strength', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:59', 'assets/music/WhatsApp Audio 2021-01-20 at 11.09.17 AM.mp3', 4, 40, 0, '2021-07-02 11:08:51', 'music'),
(120, 'Miss You', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:15', 'assets/music/WhatsApp Audio 2021-01-20 at 11.09.20 AM.mp3', 5, 30, 0, '2021-07-02 11:09:34', 'music'),
(122, 'Goodness', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:33', 'assets/music/WhatsApp Audio 2021-01-20 at 11.13.08 AM.mp3', 7, 35, 0, '2021-07-02 11:09:28', 'music'),
(123, 'Tugende mu church cover', 'martist60463ce19bb2daar', 'm_al60464ce1392f1248', 7, '00:32', 'assets/music/Tugende-Mu-church-key-c-cover-by-Mighty.mp3', 1, 26, 0, '2021-06-27 21:35:29', 'music'),
(124, 'Tami  ', 'martist60463ce19bb2daar', 'm_al60464ce1392f1248', 7, '03:19', 'assets/music/Tami  .mp3', 2, 20, 0, '2021-07-02 11:29:59', 'music'),
(125, 'Everything about you', 'martist60463ce19bb2daar', 'm_al60464ce1392f1248', 7, '03:27', 'assets/music/Everything about you.mp3', 3, 15, 0, '2021-06-26 13:43:34', 'music'),
(126, 'Lets do it again', 'martist60463ce19bb2daar', 'm_al60464ce1392f1248', 7, '03:03', 'assets/music/Lets-do-it-again.mp3', 4, 19, 0, '2021-06-28 20:09:54', 'music'),
(127, 'Special - Seven Seeds', 'martist604624d22c991sev', 'm_al604893d3333d8591', 1, '04:03', 'assets/music/Special - Seven Seeds.mp3', 1, 23, 0, '2021-07-02 11:06:45', 'music'),
(128, 'Nyaluo ', 'martist60472ab113e8fsmo', 'm_al604a35741cfef912', 7, '01:37', 'assets/music/Nyaluo .mp3', 1, 34, 0, '2021-07-02 12:53:18', 'music'),
(129, 'No cry', 'martist60472ab113e8fsmo', 'm_al604a35741cfef912', 7, '04:36', 'assets/music/No cry.mp3', 2, 39, 0, '2021-06-30 16:01:40', 'music'),
(131, 'Love you', 'martist60472ab113e8fsmo', 'm_al604a35741cfef912', 7, '03:07', 'assets/music/Love you.mp3', 4, 38, 0, '2021-07-01 11:44:09', 'music'),
(132, 'Lapal Cwinya', 'martist60472ab113e8fsmo', 'm_al604a35741cfef912', 7, '00:16', 'assets/music/Lapal Cwinya.mp3', 5, 27, 0, '2021-06-30 16:13:12', 'music'),
(133, 'Lofi Study and Chill Beats', 'martist6034eae7abc77pka', 'm_al604b779ca4807734', 1, '1:26', 'http://d1d1i04hu392ot.cloudfront.net/Music/pkasemer/Chill+Lo-fi+Hip-Hop+Beats+FREE+Lofi+Hip+Hop+Chillhop+Music+Mix+GEMN.mp3', 1, 48, 1, '2021-07-22 11:19:02', 'music'),
(134, 'Muyaye', 'martist60472ab113e8fsmo', 'm_al604a78e1a50fe197', 26, '05:28', 'assets/music/Muyaye-Allan-Smokie.mp3', 1, 60, 0, '2021-06-28 22:29:12', 'music'),
(135, 'I Plead Feat Cameroon', 'martist60472ab113e8fsmo', 'm_al604a78e1a50fe197', 26, '04:21', 'assets/music/I-PLEAD-BY-ALLAN-SMOKIE-Ft-CAMEROON-LOUD_1_.mp3', 2, 23, 0, '2021-07-02 10:08:03', 'music'),
(136, 'Zaga-Zaga', 'martist60472ab113e8fsmo', 'm_al604a78e1a50fe197', 7, '04:12', 'assets/music/Zaga-Zaga.mp3', 3, 26, 0, '2021-06-28 22:28:53', 'music'),
(137, 'Nguvu', 'martist60472ab113e8fsmo', 'm_al604a78e1a50fe197', 29, '04:09', 'assets/music/Nguvu.mp3', 4, 39, 0, '2021-07-02 12:13:46', 'music'),
(138, 'Loving Feat Twisky Fingers ', 'martist60472ab113e8fsmo', 'm_al604a78e1a50fe197', 29, '03:25', 'assets/music/Loving-Feat-Twisky-Fingers-.mp3', 5, 40, 0, '2021-07-01 19:57:08', 'music'),
(139, 'Twac Twac', 'martist60472ab113e8fsmo', 'm_al604a78e1a50fe197', 26, '03:36', 'assets/music/Twac-Twac-.mp3', 6, 19, 0, '2021-06-26 08:39:43', 'music'),
(140, 'Madamse', 'martist60472ab113e8fsmo', 'm_al604a35741cfef912', 29, '03:55', 'assets/music/madamse-Smokie-Allan.mp3', 6, 12, 0, '2021-07-01 17:12:16', 'music'),
(142, 'Bed keda _ by Rudo ft ODO & Delighter ( prod. Macjosh_Elis )', 'martist6054428d76bd5des', 'm_al60743fa7a4e59754', 7, '03:12', 'assets/music/Bed keda _ by Rudo ft ODO & Delighter ( prod. Macjosh_Elis ).mp3', 1, 121, 0, '2021-07-02 12:53:14', 'music'),
(145, 'We All Human - The Seven Seeds', 'martist604624d22c991sev', 'm_al604893d3333d8591', 3, '04:42', 'assets/music/we are all human- The seven seeds ft. baby Jona', 2, 11, 0, '2021-07-02 11:09:31', 'music'),
(146, 'Teko - The seven seeds', 'martist604624d22c991sev', 'm_al604625173450a149', 3, '03:10', 'assets/music/Teko - The seven seeds', 8, 14, 0, '2021-07-02 11:08:55', 'music'),
(147, 'The Main Squeeze - No Diggity (Blackstreet)', 'martist6034eae7abc77pka', 'm_al60593c6695665104', 22, '04:48', 'assets/music/The Main Squeeze - No Diggity (Blackstreet).mp3', 1, 91, 2, '2021-07-22 12:51:08', 'music'),
(148, 'Grover Washington Jr - Just the two of us', 'martist6034eae7abc77pka', 'm_al60593c6695665104', 22, '03:57', 'assets/music/Grover Washington Jr - Just the two of us.mp3', 2, 48, 2, '2021-07-22 12:56:02', 'music'),
(150, 'Pingo', 'martist60599f5fb8d74avi', 'm_al60599fe7a9537838', 7, '03:28', 'assets/music/PINGO BY AVIE.mp3', 1, 51, 0, '2021-07-06 09:30:31', 'music'),
(151, 'Go Down Low', 'martist60599f5fb8d74avi', 'm_al60599fe7a9537838', 7, '03:07', 'assets/music/Go Down Low-AVIE UG.mp3', 2, 68, 0, '2021-07-02 08:06:52', 'music'),
(152, 'Feelings', 'martist60599f5fb8d74avi', 'm_al60599fe7a9537838', 7, '03:16', 'assets/music/Feelings-Avie UG.mp3', 3, 102, 0, '2021-06-30 13:34:40', 'music'),
(153, 'Acoli', 'martist60599f5fb8d74avi', 'm_al60599fe7a9537838', 7, '03:15', 'assets/music/Acoli - Avie Ug-1.mp3', 4, 32, 0, '2021-07-06 09:30:33', 'music'),
(154, 'MichRadio1', 'martist6059adcba692emic', 'm_al6059ae24f3a11170', 38, '12:36', 'assets/djmixes/DjMichRedioT.mp3', 1, 19, 0, '2021-06-01 14:03:24', 'dj'),
(155, 'Trailer', 'martist6059d3966ef4cthe', 'm_al6059d49b6bf44414', 41, '00:53', 'assets/podcasts/Trailer-.mp3', 1, 8, 0, '2021-04-13 17:41:48', 'podcast'),
(156, 'Alcohol and The Mind', 'martist6059d3966ef4cthe', 'm_al6059d49b6bf44414', 41, '20:24', 'assets/podcasts/Alcohol-and-The-Mind.mp3', 2, 17, 0, '2021-05-15 07:03:55', 'podcast'),
(157, 'Crushed', 'martist6059d3966ef4cthe', 'm_al6059d49b6bf44414', 41, '20:50', 'assets/podcasts/Crushed.mp3', 3, 0, 0, '2021-03-23 12:17:26', 'podcast'),
(158, 'A united Africa', 'martist6059d3966ef4cthe', 'm_al6059d49b6bf44414', 41, '23:53', 'assets/podcasts/A-United-Africa_-.mp3', 4, 4, 0, '2021-03-26 10:18:01', 'podcast'),
(159, 'Audible Math', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '05:33', 'assets/music/Audible Math.mp3', 1, 16, 0, '2021-07-02 11:30:29', 'music'),
(160, 'Breathing Chemistry', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '04:32', 'assets/music/Breathing Chemistry.mp3', 2, 4, 0, '2021-07-01 11:36:58', 'music'),
(161, 'Butterflies', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:55', 'assets/music/Butterflies.mp3', 3, 10, 0, '2021-07-01 11:36:59', 'music'),
(162, 'Else When', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '05:26', 'assets/music/Else When.mp3', 4, 8, 0, '2021-07-02 10:53:36', 'music'),
(163, 'Geek Out', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:53', 'assets/music/Geek Out.mp3', 5, 10, 0, '2021-07-02 10:53:35', 'music'),
(164, 'Half a Lion', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:36', 'assets/music/Half a Lion.mp3', 6, 8, 0, '2021-07-02 10:54:10', 'music'),
(165, 'Hope is a Bridge', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '04:53', 'assets/music/Hope is a Bridge.mp3', 7, 18, 0, '2021-07-02 10:58:35', 'music'),
(166, 'Interstellar Vacation', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '01:59', 'assets/music/Interstellar Vacation.mp3', 8, 9, 0, '2021-07-02 11:30:44', 'music'),
(167, 'Lengua Libre', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '05:33', 'assets/music/Lengua Libre.mp3', 9, 9, 0, '2021-07-02 10:54:02', 'music'),
(168, 'Marketplace', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '05:31', 'assets/music/Marketplace.mp3', 10, 5, 0, '2021-07-01 11:37:06', 'music'),
(169, 'Never Too Late', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:35', 'assets/music/Never Too Late.mp3', 11, 23, 0, '2021-07-06 09:19:59', 'music'),
(170, 'Past Thoughts Future Poems', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '06:24', 'assets/music/Past Thoughts Future Poems.mp3', 12, 12, 0, '2021-07-02 10:44:28', 'music'),
(171, 'Scuffed Leather Boots', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '04:03', 'assets/music/Scuffed Leather Boots.mp3', 13, 12, 0, '2021-07-02 10:54:09', 'music'),
(172, 'Shit Talker Extraordinaire', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:47', 'assets/music/Shit Talker Extraordinaire.mp3', 14, 11, 0, '2021-07-01 17:01:31', 'music'),
(173, 'Some Growl', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:01', 'assets/music/Some Growl.mp3', 15, 17, 0, '2021-07-01 11:42:57', 'music'),
(174, 'Spaceship Goddess Theory', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '04:32', 'assets/music/Spaceship Goddess Theory.mp3', 16, 13, 0, '2021-07-02 12:52:48', 'music'),
(175, 'Stay Honest', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:42', 'assets/music/Stay Honest.mp3', 17, 5, 0, '2021-07-01 11:37:16', 'music'),
(176, 'Young Ganesh', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:15', 'assets/music/Young Ganesh.mp3', 18, 7, 0, '2021-07-02 10:54:03', 'music'),
(177, 'Your Point Of View', 'martist6059d3966ef4cthe', 'm_al6059d49b6bf44414', 41, '00:00', 'assets/podcasts/Your Point Of View.mp3', 5, 0, 0, '2021-03-23 12:48:44', 'podcast'),
(178, 'Kids Living', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '03:13', 'assets/music/Kids Living.mp3', 19, 12, 0, '2021-07-02 12:53:17', 'music'),
(179, 'I Do Not Know How I Got Here But It Is Beautiful', 'martist604fdfe93c1ccscr', 'm_al6059e1732e642753', 1, '02:34', 'assets/music/I Do Not Know How I Got Here But It Is Beautiful.mp3', 20, 9, 0, '2021-07-02 10:54:16', 'music'),
(180, 'Tingaling', 'martist605b41c503467wil', 'm_al605b422e20958484', 7, '03:38', 'assets/music/Wilo Boy - Tingaling.mp3', 1, 31, 0, '2021-07-06 09:30:49', 'music'),
(181, 'Balance ft Karole Kasita', 'martist605b41c503467wil', 'm_al605b422e20958484', 7, '02:56', 'assets/music/Karol Kasiita - BALANCE Rmx ft Wilo Boy(1).mp3', 2, 124, 0, '2021-07-06 09:05:19', 'music'),
(182, 'Entanglement', 'martist605b41c503467wil', 'm_al605b422e20958484', 7, '03:22', 'assets/music/Entanglement - Wilo Boy.mp3', 3, 37, 0, '2021-07-02 09:54:51', 'music'),
(183, 'Dyewor', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 7, '03:26', 'assets/music/Dyewor.mp3', 1, 82, 0, '2021-07-02 11:29:58', 'music'),
(184, 'Adegi', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 7, '03:29', 'assets/music/Adegi.mp3', 2, 63, 0, '2021-07-06 09:30:27', 'music'),
(185, 'Wangmuye', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '02:38', 'assets/music/Wangmuye.mp3', 3, 92, 0, '2021-07-02 09:52:47', 'music'),
(186, 'Nonstop', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '02:44', 'assets/music/Nonstop.mp3', 4, 62, 0, '2021-07-01 20:00:07', 'music'),
(187, 'Yata', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '03:19', 'assets/music/Yata.mp3', 5, 45, 0, '2021-07-01 20:00:08', 'music'),
(188, 'Itye-ikwona', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '03:06', 'assets/music/Itye-ikwona.mp3', 6, 61, 0, '2021-07-02 08:10:05', 'music'),
(189, 'Nyuk Nyuk', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '03:04', 'assets/music/Nyuk Nyuk.mp3', 7, 25, 0, '2021-07-02 12:14:42', 'music'),
(190, 'Give it to me', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '03:01', 'assets/music/Give it to me.mp3', 8, 18, 0, '2021-07-01 20:00:11', 'music'),
(191, 'Kakwangala ', 'martist605b3e8124f13ado', 'm_al605b3f50886af194', 29, '03:24', 'assets/music/Kakwangala .mp3', 9, 60, 0, '2021-07-02 12:53:57', 'music'),
(193, 'Episode 1 - Ugandan Teacher Selling Maize to Make Ends Meet', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '14:15', 'assets/podcasts/Episode 1 - Ugandan Teacher Selling Maize to Make Ends Meet.mp3', 1, 26, 0, '2021-05-27 09:04:26', 'podcast'),
(194, 'Episode 2 - Monetising your talent', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '09:59', 'assets/podcasts/Episode 2 - Monetising your talent.mp3', 2, 7, 0, '2021-05-27 09:04:43', 'podcast'),
(195, 'Episode 3 - From the Courtroom to the Wood Workshop', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '16:37', 'assets/podcasts/Episode 3 - From the Courtroom to the Wood Workshop.mp3', 3, 2, 0, '2021-03-27 20:42:57', 'podcast'),
(196, 'Episode 4 - A Day at MoTIV', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '07:11', 'assets/podcasts/Episode 4 - A Day at MoTIV.mp3', 4, 6, 0, '2021-05-27 09:05:12', 'podcast'),
(198, 'Episode 5 - Ghetto Dreams', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '15:13', 'assets/podcasts/Episode 5 - Ghetto Dreams.mp3', 6, 3, 0, '2021-05-23 10:55:59', 'podcast'),
(199, 'Bed My Bae ', 'martist605dace950894vok', 'm_al605dad51321ba176', 7, '02:50', 'assets/music/BedMyBae - VokMentorFtKata-2.mp3', 1, 43, 0, '2021-06-28 22:30:58', 'music'),
(200, 'Mood', 'martist605dace950894vok', 'm_al605dad51321ba176', 7, '03:18', 'assets/music/Mood - VokzftKata.mp3', 2, 27, 0, '2021-07-02 09:54:57', 'music'),
(201, 'Moka Tami', 'martist605dc64a8ae76lad', 'm_al605dc745e3100632', 33, '03:07', 'assets/music/Moka Tami...By..Lady Zulu..mp3.mp3.mp3', 1, 13, 0, '2021-06-30 16:30:12', 'music'),
(202, 'Tam Mi Nono', 'martist605dc64a8ae76lad', 'm_al605dc745e3100632', 33, '04:59', 'assets/music/Tam Me Nono By Lady Zulu.mp3', 2, 6, 0, '2021-06-30 16:17:04', 'music'),
(203, 'Too Twon Layak', 'martist605dc64a8ae76lad', 'm_al605dc745e3100632', 33, '05:42', 'assets/music/Too Twon Layak By Lady zulu fn.mp3', 3, 4, 0, '2021-06-28 21:29:53', 'music'),
(204, 'Wan Luo', 'martist605dc64a8ae76lad', 'm_al605dc745e3100632', 33, '04:04', 'assets/music/Wan Luo By Lady Zulu.(Mastered).mp3', 4, 3, 0, '2021-07-01 11:10:59', 'music'),
(205, 'Pe Obed Me Yweka Ni', 'martist605de1dc8ae84mil', 'm_al605de2c262a7c614', 29, '03:00', 'assets/music/Pe Obed Me Yweka Ni.mp3', 1, 28, 0, '2021-07-01 19:57:09', 'music'),
(206, 'Wek Aywe', 'martist605de1dc8ae84mil', 'm_al605de2c262a7c614', 29, '03:10', 'assets/music/Wek Aywe.mp3', 2, 12, 0, '2021-07-02 10:44:29', 'music'),
(207, 'Anyim', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:31', 'assets/music/Neo Okello - Anyim.mp3', 1, 12, 0, '2021-07-02 12:40:04', 'music'),
(208, 'Bang Raa', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:36', 'assets/music/Neo Okello - Bang Raa Ft. Rama Preacher.mp3', 2, 57, 0, '2021-07-02 09:57:47', 'music'),
(209, 'Cawa Oromo', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:49', 'assets/music/Neo Okello - Cawa Oromo.mp3', 3, 31, 0, '2021-07-01 19:57:03', 'music'),
(210, 'If you love me', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:43', 'assets/music/Neo Okello - If you love me Ft. PatoLoverBoy.mp3', 4, 64, 0, '2021-07-02 12:52:47', 'music'),
(211, 'In Aye', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:06', 'assets/music/Neo Okello - In Aye.mp3 2.mp3', 5, 32, 0, '2021-07-01 17:07:55', 'music'),
(212, 'Mara Ki Cana', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '02:52', 'assets/music/Neo Okello - Mara Ki Cana.mp3', 6, 43, 0, '2021-07-01 19:57:02', 'music'),
(213, 'Pe Mita', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '02:46', 'assets/music/Neo Okello - Pe Mita [Leng Leng Pa Lala].mp3', 7, 17, 0, '2021-06-29 10:33:37', 'music'),
(214, 'Queen Na', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:30', 'assets/music/Neo Okello - Queen Na.mp3', 8, 21, 0, '2021-07-02 12:35:31', 'music'),
(215, 'Wek Angee', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '05:14', 'assets/music/Neo Okello - Wek Angee.mp3', 9, 13, 0, '2021-07-02 08:40:32', 'music'),
(216, 'Wee Yoo', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:08', 'assets/music/Neo Okello Ft. Lil Nicha - Wee Yoo - Neo.mp3', 10, 62, 0, '2021-07-02 12:25:14', 'music'),
(217, 'Lakalatwe', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '02:41', 'assets/music/Neo-Okello-Ft.-RakasLakalatwe-Official-L.mp3', 11, 9, 0, '2021-07-02 09:54:54', 'music'),
(218, 'Wang Oo', 'martist605df0bdc53a0neo', 'm_al605df120d9edd158', 29, '03:51', 'assets/music/Wang OO by Neo Okello.mp3', 12, 13, 0, '2021-07-01 19:57:09', 'music'),
(219, 'AMEN - Dagona x Melissa (Prod)', 'martist605cca42c0240mak', 'm_al605ccd36e7cd8691', 3, '02:46', 'assets/music/AMEN - Dagona x Melissa (Prod).mp3', 1, 13, 0, '2021-07-02 11:09:30', 'music'),
(220, 'Victory', 'martist605cca42c0240mak', 'm_al605ccd36e7cd8691', 3, '02:30', 'assets/music/Victory.mp3', 2, 16, 0, '2021-07-02 11:09:29', 'music'),
(221, 'TU-ES-LE-MIEN-BY-B4C-kasu-_MAKER-DAGONA', 'martist605cca42c0240mak', 'm_al605ccd36e7cd8691', 3, '00:40', 'assets/music/TU-ES-LE-MIEN-BY-B4C-kasu-_MAKER-DAGONA.mp3', 3, 14, 0, '2021-07-02 11:09:30', 'music'),
(222, 'Do it Again', 'martist605cca42c0240mak', 'm_al605ccd36e7cd8691', 3, '04:18', 'assets/music/Do it Again.mp3', 4, 6, 0, '2021-07-02 08:07:49', 'music'),
(223, 'Here I am', 'martist605cca42c0240mak', 'm_al605ccd36e7cd8691', 3, '03:03', 'assets/music/Here I am.mp3', 5, 10, 0, '2021-07-02 11:08:59', 'music'),
(225, 'Keep the Struggle - Sedrick Otolo', 'martist6062d2c0b8ca0sed', 'm_al6062db662bf06876', 46, '00:00', 'assets/podcasts/Keep the Struggle - Sedrick Otolo', 2, 23, 0, '2021-06-26 11:50:10', 'podcast'),
(226, 'Morality - Sedrick', 'martist6062d2c0b8ca0sed', 'm_al6062db662bf06876', 44, '00:00', 'assets/podcasts/Morality - Sedrick', 3, 17, 0, '2021-06-26 11:50:22', 'podcast'),
(227, 'Episode 6 - Recognising Opportunities', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '11:42', 'assets/podcasts/Episode 6 - Recognising Opportunities.mp3', 7, 0, 0, '2021-04-01 19:57:00', 'podcast'),
(228, 'Episode 7 -Rolex', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '09:40', 'assets/podcasts/Episode 7 -Rolex.mp3', 8, 2, 0, '2021-05-03 09:36:45', 'podcast'),
(229, 'Episode 8 -The beginning an Era- Kwizera', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '22:29', 'assets/podcasts/Episode 8 -The beginning an Era- Kwizera.mp3', 9, 0, 0, '2021-04-01 20:02:14', 'podcast'),
(230, 'Episode 10 -The Ghetto Dream Maker', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '27:49', 'assets/podcasts/Episode 10 -The Ghetto Dream Maker.mp3', 10, 0, 0, '2021-04-01 20:27:13', 'podcast'),
(231, 'Episode 11-Education 4 Humanity', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '27:36', 'assets/podcasts/Episode 11-Education 4 Humanity.mp3', 11, 3, 0, '2021-04-13 16:58:40', 'podcast'),
(232, 'Episode 12 -Vodo Art Society-Professionalising & Adding Value to Art', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '29:53', 'assets/podcasts/Episode 12 -Vodo Art Society-Professionalising & Adding Value to Art.mp3', 12, 1, 0, '2021-05-23 10:14:50', 'podcast'),
(233, 'Episode 13 Venture Building', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '29:11', 'assets/podcasts/Episode 13 Venture Building.mp3', 13, 0, 0, '2021-04-01 20:37:38', 'podcast'),
(234, 'Episode 14 tools to create', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '17:25', 'assets/podcasts/Episode 14 tools to create.mp3', 14, 0, 0, '2021-04-01 20:39:25', 'podcast'),
(235, 'Episode 15-Choose to Challenge', 'martist605c9a90e54e6pao', 'm_al605c9c43cd811210', 45, '29:02', 'assets/podcasts/Episode 15-Choose to Challenge.mp3', 15, 4, 0, '2021-05-23 10:44:47', 'podcast'),
(236, 'Reggea', 'martist605c3f5739614mal', 'm_al605c44b20d8a3895', 38, '37:47', 'assets/djmixes/ragga.mp3', 1, 22, 0, '2021-06-05 14:02:22', 'dj'),
(238, 'Corona Virus Updated', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '25:25', 'assets/podcasts/corona virus updated .mp3', 2, 2, 0, '2021-04-24 06:16:58', 'podcast'),
(239, 'Emmas first program', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '44:02', 'assets/podcasts/emma first program.mp3', 3, 0, 0, '2021-04-01 22:16:26', 'podcast'),
(240, 'Emma Program Shen Shen', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '51:57', 'assets/podcasts/emma program shen shen.mp3', 4, 0, 0, '2021-04-01 22:26:04', 'podcast'),
(241, 'Girls room Sharlote and Keisha', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '18:05', 'assets/podcasts/girls room sharlote and Keisha.mp3', 5, 2, 0, '2021-05-18 23:24:02', 'podcast'),
(242, 'Girls Room Ep 2 ', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '20:08', 'assets/podcasts/girls room episode 2.mp3', 6, 1, 0, '2021-05-18 23:02:19', 'podcast'),
(243, 'Girls Room Ep 3 ', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '21:02', 'assets/podcasts/girl room episode 3.mp3', 7, 1, 0, '2021-05-18 22:40:19', 'podcast'),
(244, 'Madafaka updated', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '19:49', 'assets/podcasts/madafaka updated.mp3', 8, 1, 0, '2021-05-19 03:57:35', 'podcast'),
(245, 'New Children Program', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '19:35', 'assets/podcasts/new children program.mp3', 9, 3, 0, '2021-05-18 23:42:10', 'podcast'),
(246, 'Pandemic memories', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '12:53', 'assets/podcasts/pandemic memoris.mp3', 10, 1, 0, '2021-05-19 00:01:48', 'podcast'),
(247, 'Self Esteem ', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '43:32', 'assets/podcasts/self esteem podcast.mp3', 11, 1, 0, '2021-04-11 20:09:30', 'podcast'),
(248, 'Womens Equality updated', 'martist6044f469917f1rom', 'm_oth6044f4d60200c111', 41, '16:55', 'assets/podcasts/women equality updated.mp3', 12, 1, 0, '2021-05-19 04:18:20', 'podcast'),
(249, 'Hiphop Rap', 'martist605c3f5739614mal', 'm_al605c44b20d8a3895', 38, '44:01', 'assets/djmixes/Hiphop Rap - DJ Maleek Series Vol.1 (hearthis.at).mp3', 3, 11, 0, '2021-06-05 14:02:49', 'dj'),
(250, 'Dancehall', 'martist605c3f5739614mal', 'm_al605c44b20d8a3895', 38, '47:44', 'assets/djmixes/Dancehall - DJ Maleek Series Vol.1 (hearthis.at).mp3', 4, 14, 0, '2021-06-05 14:02:35', 'dj'),
(251, 'AGUMA', 'martist605c3f5739614mal', 'm_al605c44b20d8a3895', 38, '50:46', 'assets/djmixes/AGUMA.mp3', 5, 3, 0, '2021-05-28 12:35:12', 'dj'),
(252, 'Chill', 'martist605c3f5739614mal', 'm_al605c44b20d8a3895', 38, '14:42', 'assets/djmixes/CHILL (hearthis.at).mp3', 6, 5, 0, '2021-05-18 13:34:45', 'dj'),
(253, 'Anyim Kela Koyo', 'martist606662b7e3168lum', 'm_al6066635470d50602', 1, '04:52', 'assets/music/Anyim Kela Koyo.mp3', 1, 50, 0, '2021-07-06 09:12:57', 'music'),
(254, 'Afuto', 'martist606662b7e3168lum', 'm_al6066635470d50602', 1, '03:57', 'assets/music/afuto_mix_by_lumix_da_don_mp3_1565.mp3', 2, 22, 0, '2021-07-02 11:01:03', 'music'),
(255, 'Can Obedo Omera', 'martist606662b7e3168lum', 'm_al6066635470d50602', 1, '03:42', 'assets/music/can_obedo_omera_by_lumix_mp3_1783.mp3', 3, 21, 0, '2021-07-02 11:01:04', 'music'),
(256, 'Ka rac ci rac', 'martist606662b7e3168lum', 'm_al6066635470d50602', 1, '01:50', 'assets/music/lumix_ka_rac_ci_rac_mp3_2004.mp3', 4, 19, 0, '2021-07-02 12:52:34', 'music'),
(257, 'Kongoa', 'martist606c28ecf1a05qui', 'm_al606c295181628169', 7, '02:34', 'assets/music/Kongoa - QuinG.mp3', 1, 14, 0, '2021-07-01 11:41:51', 'music'),
(258, 'Naa Adii', 'martist606c28ecf1a05qui', 'm_al606c295181628169', 7, '03:05', 'assets/music/Naa-adii-Quin-GeeMastered.mp3', 2, 14, 0, '2021-06-26 07:46:16', 'music'),
(259, 'Originality', 'martist606c28ecf1a05qui', 'm_al606c295181628169', 7, '03:07', 'assets/music/Originality - QueenG.mp3', 3, 16, 0, '2021-07-02 12:52:21', 'music'),
(260, 'Superman', 'martist606c28ecf1a05qui', 'm_al606c295181628169', 7, '03:02', 'assets/music/SuperMan - QueenGee.mp3', 4, 24, 0, '2021-06-30 19:04:48', 'music'),
(261, 'Supermarket', 'martist606c28ecf1a05qui', 'm_al606c295181628169', 7, '03:16', 'assets/music/SuperMarket - QueenG.mp3', 5, 24, 0, '2021-06-30 15:50:26', 'music'),
(262, 'Lok Pa Dano', 'martist60599f5fb8d74avi', 'm_al60599fe7a9537838', 7, '03:28', 'assets/music/Lok pa dano -  Avie ug.mp3', 5, 29, 0, '2021-07-02 08:06:53', 'music'),
(263, 'Akello', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '03:30', 'assets/music/Akello-Chemical man ft Dr F 2.mp3', 1, 32, 0, '2021-07-02 12:54:17', 'music'),
(264, 'Bed Acunyi Yom', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '03:19', 'assets/music/Bed acunyi yom_Chemical Man.mp3', 2, 15, 0, '2021-07-02 12:54:38', 'music'),
(265, 'Born To Win', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '02:41', 'assets/music/BORN TO WIN by Chemical Man.mp3', 3, 20, 0, '2021-07-02 12:54:18', 'music'),
(266, 'Magic', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '03:05', 'assets/music/CHEMICAL MAN x DRAINER - MAGIC(720p).mp3', 4, 9, 0, '2021-07-02 11:29:56', 'music'),
(267, 'Commando', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '02:47', 'assets/music/Commando_Chemical_Man(128k).mp3', 5, 14, 0, '2021-07-02 12:54:55', 'music'),
(268, 'Karimojong Lady', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '02:31', 'assets/music/kARIMOJONG LADY by Chemical man ft Heavy Treyz.mp3', 6, 43, 0, '2021-07-02 12:54:11', 'music'),
(269, 'Milele', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '03:20', 'assets/music/Milele-Chemical Man &Drainer Beats ( Prod By DRAINER BEATS).mp3', 7, 11, 0, '2021-07-02 12:40:06', 'music'),
(270, 'No Retreat No Surrender', 'martist60705b2798c8ache', 'm_al60705c70e74e9111', 29, '02:43', 'assets/music/NO RETREAT NO SURRENDER by Chemical man.mp3', 8, 12, 0, '2021-07-02 08:40:33', 'music'),
(271, 'Inspiration Remix ft_Kalifah_Aganaga', 'martist6070624642747des', 'm_al607065894fd3d192', 29, '03:02', 'assets/music/Destined_Destiny_ft_Kalifah_Aganaga--Inspiration_rmx(128k).mp3', 1, 67, 0, '2021-07-02 12:53:42', 'music'),
(272, 'Kodi Oting Lok', 'martist6070624642747des', 'm_al607065894fd3d192', 29, '04:16', 'assets/music/Destiney_-_Kodi_Oting-Lok(Official_Video)(128k).mp3', 2, 44, 0, '2021-07-02 12:25:19', 'music'),
(273, 'Get Down', 'martist6070624642747des', 'm_al607065894fd3d192', 29, '03:47', 'assets/music/Get_Down_by_Destined_Destiny(Official_High_Quality)(128k).mp3', 3, 24, 0, '2021-07-02 12:28:38', 'music'),
(274, 'Inspiration.', 'martist6070624642747des', 'm_al607065894fd3d192', 29, '03:49', 'assets/music/Inspiration_by_Destined_Destiny(Official_Audio)(128k).mp3', 4, 27, 0, '2021-07-01 18:24:57', 'music'),
(275, 'Money', 'martist6070624642747des', 'm_al607065894fd3d192', 29, '03:30', 'assets/music/MONEY_BY_DESTINY(128k).mp3', 5, 18, 0, '2021-07-01 19:57:04', 'music'),
(276, 'Wego Dong Wego', 'martist6070624642747des', 'm_al607065894fd3d192', 29, '06:40', 'assets/music/Wego_dong_wego_Destined_Destiny(Official_Audio_2020)(128k).mp3', 6, 15, 0, '2021-07-01 19:57:06', 'music'),
(277, 'Cordae - RNP (feat. Anderson .Paak) [Official Lyric Video]', 'martist6034eae7abc77pka', 'm_al60593c6695665104', 22, '02:56', 'assets/music/Cordae - RNP (feat. Anderson .Paak) [Official Lyric Video].mp3', 3, 46, 2, '2021-07-22 12:59:58', 'music'),
(279, 'Shakin Donk  by  _  ODO ft Rudo ( prod.Macjosh_Elis Muzik )', 'martist6054428d76bd5des', 'm_al60743fa7a4e59754', 7, '03:36', 'assets/music/Shakin Donk  by  _  ODO ft Rudo ( prod.Macjosh_Elis Muzik ).mp3', 1, 22, 0, '2021-06-30 13:45:08', 'music'),
(280, 'Can', 'martist6076b8c42a1e2ali', 'm_al6076b933a9b3f164', 29, '03:34', 'assets/music/Can - AliBBadman.mp3', 1, 19, 0, '2021-07-02 12:39:48', 'music'),
(281, 'Iloyu', 'martist6076b8c42a1e2ali', 'm_al6076b933a9b3f164', 29, '03:01', 'assets/music/Iloyu - AliBBadman.mp3', 2, 19, 0, '2021-07-01 20:01:15', 'music'),
(282, 'Inikani', 'martist6076b9e9c1893kay', 'm_al6076ba87ba187118', 29, '03:39', 'assets/music/Kay Wallet - Inikani.mp3', 1, 8, 0, '2021-07-01 17:08:01', 'music'),
(283, 'Sugar Mummy', 'martist6076b9e9c1893kay', 'm_al6076ba87ba187118', 29, '03:15', 'assets/music/Kay Wallet Ft Klint Iyz  - Sugar Mummy.mp3', 2, 18, 0, '2021-07-02 08:10:13', 'music'),
(284, 'Langeta', 'martist6076b9e9c1893kay', 'm_al6076ba87ba187118', 29, '03:06', 'assets/music/Kay Wallet - Langeta.mp3', 3, 21, 0, '2021-07-02 12:32:25', 'music'),
(285, 'Gwaka', 'martist6076b9e9c1893kay', 'm_al6076ba87ba187118', 29, '03:10', 'assets/music/Kay Wallet - Gwaka.mp3', 4, 8, 0, '2021-07-01 20:01:23', 'music'),
(286, 'Alemi', 'martist6076b9e9c1893kay', 'm_al6076ba87ba187118', 29, '04:34', 'assets/music/Kay Wallet,  Astro Lifa, Rappa Blutit  -  Alemi (Ameri).mp3', 5, 13, 0, '2021-07-02 12:14:44', 'music'),
(287, 'Temptation', 'martist605df0bdc53a0neo', 'm_al6076da8809483131', 29, '03:48', 'assets/music/Temptation - NEO Okello Ft. K Jeff & Peter Chris.mp3', 1, 69, 0, '2021-07-02 12:13:44', 'music'),
(289, 'Can - Neo Okello', 'martist605df0bdc53a0neo', 'm_al6076da8809483131', 29, '03:28', 'assets/music/Can - Neo Okello.mp3', 2, 22, 0, '2021-07-02 12:14:43', 'music'),
(290, 'Magnificient God - Ako Mar ft Harry D', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 3, '04:03', 'assets/music/Magnificient God - Ako Mar ft Harry D.mp3', 1, 20, 0, '2021-07-02 11:33:45', 'music'),
(291, 'FOR YOUR LOVE - TEAM SKY MUSIC', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 7, '04:00', 'assets/music/FOR YOUR LOVE - TEAM SKY MUSIC.mp3', 2, 6, 0, '2021-06-29 10:29:55', 'music'),
(292, 'GEN IKOM RWOT - AKO MAR', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 3, '05:46', 'assets/music/GEN IKOM RWOT - AKO MAR.mp3', 3, 11, 0, '2021-07-02 11:09:31', 'music'),
(293, 'cung_keda_yesu_mp3_77028', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 26, '04:11', 'assets/music/cung_keda_yesu_mp3_77028.mp3', 4, 9, 0, '2021-07-01 11:06:47', 'music'),
(294, 'SWILARO - AKO MAR', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 26, '04:35', 'assets/music/SWILARO - AKO MAR.mp3', 5, 7, 0, '2021-07-02 09:57:33', 'music'),
(295, 'ATIE KEDE GEN:YIN EN ITWERO - BLESSED SLYVIA & SOLO FT AKO MAR', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 3, '04:24', 'assets/music/ATIE KEDE GEN:YIN EN ITWERO - BLESSED SLYVIA & SOLO FT AKO MAR.mp3', 6, 3, 0, '2021-06-28 22:20:03', 'music'),
(296, 'Ameni okoa - Ako Mar', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 3, '03:54', 'assets/music/Ameni okoa - Ako Mar.mp3', 7, 11, 0, '2021-07-02 11:09:31', 'music'),
(297, 'YESU EN ALOO LWENY - AKO MAR.', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 3, '04:29', 'assets/music/YESU EN ALOO LWENY - AKO MAR..mp3', 8, 15, 0, '2021-07-02 11:09:29', 'music'),
(298, 'OPITUNU YEN - AKO MAR', 'martist6077078bf1ab6mar', 'm_al607708a0075ae255', 7, '06:00', 'assets/music/OPITUNU YEN - AKO MAR.mp3', 9, 5, 0, '2021-06-29 10:37:23', 'music'),
(299, 'Hakuna Matata', 'martist60451ad3ea997tob', 'm_al607c6ff6ed33c121', 1, '03:31', 'assets/music/Hakuna Matata_Toobi Smolz.mp3', 1, 24, 0, '2021-07-02 10:53:57', 'music'),
(301, 'a6fef55e416b2bede7310606cae49535', 'martist6084b4300b3a5dan', 'm_al6084b4c4959a1119', 47, '00:00', 'assets/podcasts/a6fef55e416b2bede7310606cae49535.m4a', 1, 34, 0, '2021-06-12 09:06:23', 'podcast'),
(302, 'Ah-Star-Ranks-Ug-Love-Yo', 'martist609b53088ca79ahs', 'm_al609b545430154149', 29, '03:01', 'assets/music/Ah-Star-Ranks-Ug-Love-Yo.mp3', 1, 20, 0, '2021-07-02 08:40:29', 'music'),
(303, 'Ah-Star-Ranks-Ug-Eiraka-Ryawe', 'martist609b53088ca79ahs', 'm_al609b545430154149', 29, '02:53', 'assets/music/Ah-Star-Ranks-Ug-Eiraka-Ryawe.mp3', 2, 9, 0, '2021-07-02 12:14:45', 'music'),
(304, 'Kati', 'martist609f6bfabc99aedd', 'm_al609f6c67e9e4f481', 29, '02:46', 'https://d1d1i04hu392ot.cloudfront.net/Music/eddywizzy/kati.mp3', 1, 179, 0, '2021-07-02 08:38:29', 'music'),
(305, 'Abedo tye', 'martist609f6bfabc99aedd', 'm_al609f6c67e9e4f481', 29, '03:18', 'https://d1d1i04hu392ot.cloudfront.net/Music/eddywizzy/abedotye.mp3', 2, 104, 0, '2021-07-02 12:53:37', 'music'),
(306, 'Kwiji Kwiji ', 'martist609f6bfabc99aedd', 'm_al609f6c67e9e4f481', 29, '03:33', 'https://d1d1i04hu392ot.cloudfront.net/Music/eddywizzy/Kwijikwiji.mp3', 3, 60, 0, '2021-07-02 08:18:51', 'music'),
(307, 'Zim Zim', 'martist609f6bfabc99aedd', 'm_al609f6c67e9e4f481', 29, '03:07', 'https://d1d1i04hu392ot.cloudfront.net/Music/eddywizzy/zimzim.mp3', 4, 58, 0, '2021-07-02 12:25:19', 'music'),
(308, 'Zim Zim', 'martist609f6bfabc99aedd', 'm_al60a61a0d77b30989', 29, '03:07', 'https://d1d1i04hu392ot.cloudfront.net/Music/eddywizzy/zimzim.mp3', 1, 79, 0, '2021-07-02 11:23:44', 'music'),
(309, 'Monalisa - Bob Nary & Spice Diana', 'martist60af7364c4b83nar', 'm_al60af75f46d25f288', 29, '03:09', 'assets/music/Monalisa - Bob Nary & Spice Diana', 1, 280, 0, '2021-07-04 16:51:32', 'music'),
(310, 'Nakuhitagi - Bob Nary', 'martist60af7364c4b83nar', 'm_al60af75f46d25f288', 29, '03:13', 'assets/music/Nakuhitagi - Bob Nary', 2, 145, 0, '2021-07-04 16:53:44', 'music'),
(311, 'Omukwano_ Bob Narry', 'martist60af7364c4b83nar', 'm_al60af75f46d25f288', 29, '03:30', 'assets/music/Omukwano guno - Bob Narry', 3, 149, 0, '2021-07-04 16:52:49', 'music'),
(312, 'Singa Gwe? by Bob Narry & Nina Roz ( Kaysam Kumapeesa )', 'martist60af7364c4b83nar', 'm_al60af75f46d25f288', 29, '03:08', 'assets/music/Singagwe.mp3', 4, 185, 0, '2021-07-04 16:52:36', 'music'),
(313, 'Somamu_ Bob Narry', 'martist60af7364c4b83nar', 'm_al60af75f46d25f288', 29, '03:17', 'assets/music/4 BOB NARRY_SOMAMU_[Official_HDTV]-1', 5, 86, 0, '2021-07-02 12:24:38', 'music'),
(314, 'Munjii By Bob Narry', 'martist60af7364c4b83nar', 'm_al60af75f46d25f288', 29, '03:30', 'assets/music/Munjii By Bob Narry', 6, 71, 0, '2021-07-02 12:53:41', 'music'),
(315, 'The Way You Prove It By Prof Jack Bell ', 'martist60b23ce5b1c27pro', 'm_al60b23e37a91fa802', 14, '04:17', 'assets/music/The Way You Prove It By Prof Jack Bell .mp3', 1, 9, 0, '2021-07-02 10:51:27', 'music'),
(316, 'myel kadingo by CBM (RUDO&ODO) FT DJ ANKO GUCCI', 'martist6054428d76bd5des', 'm_al60743fa7a4e59754', 7, '02:46', 'assets/music/myel kadingo by CBM (RUDO&ODO) FT DJ ANKO GUCCI.mp3', 2, 7, 0, '2021-07-01 20:07:32', 'music'),
(317, 'Inside Town Vibes 3rd Editioin', 'martist6059914230b57mwo', 'm_al60c2ecfed761d671', 57, '41:41', 'https://d1d1i04hu392ot.cloudfront.net/Balukuguy/Inside+Town+Vibes+3rdEditioin.mp3', 1, 3, 0, '2021-06-11 07:01:34', 'dj'),
(318, 'Inside Town Vibes 2nd Edition', 'martist6059914230b57mwo', 'm_al60c2ece40d6c9139', 57, '1:40:11', 'https://d1d1i04hu392ot.cloudfront.net/Balukuguy/Inside+Town+Vibes+2nd+Edition.mp3', 1, 4, 0, '2021-06-11 06:53:14', 'dj'),
(319, 'Inside Town Vibes (Amapiano)', 'martist6059914230b57mwo', 'm_al60c2ed365abbe146', 57, '39:21', 'https://d1d1i04hu392ot.cloudfront.net/Balukuguy/Inside+Town+Vibes+(Amapiano).mp3', 1, 17, 0, '2021-06-20 19:37:08', 'dj'),
(320, 'Inside Town Vibes TBG', 'martist6059914230b57mwo', 'm_al60c2ecb50b3d8694', 57, '1:32:47', 'https://d1d1i04hu392ot.cloudfront.net/Balukuguy/Inside+Town+Vibes.mp3', 1, 6, 0, '2021-06-11 07:04:46', 'dj'),
(321, 'Flexible- Hovets -Official (Prod. Governor)', 'martist60c8ab7856b35hov', 'm_al60c8af46e46cc809', 1, '03:12', 'assets/music/Flexible- Hovets -Official (Prod. Governor).mp3', 1, 18, 0, '2021-07-02 12:18:03', 'music'),
(322, 'Energy - Final -Official - Hovets  (Prod. Governor)', 'martist60c8ab7856b35hov', 'm_al60c8af46e46cc809', 1, '03:04', 'assets/music/Energy - Final -Official - Hovets  (Prod. Governor).mp3', 2, 13, 0, '2021-07-06 09:26:27', 'music'),
(323, 'zina mbaliga by Vismon_X_Hovets', 'martist60c8ab7856b35hov', 'm_al60c8af46e46cc809', 1, '03:26', 'assets/music/zina mbaliga by Vismon_X_Hovets.mp3', 3, 16, 0, '2021-07-06 09:09:15', 'music'),
(324, 'IDWK--Hovets---(Prod.Governor )', 'martist60c8ab7856b35hov', 'm_al60c8af46e46cc809', 1, '03:04', 'assets/music/IDWK--Hovets---(Prod.Governor ).mp3', 4, 10, 0, '2021-07-02 10:52:10', 'music'),
(325, 'IDWK--Hovets---(Prod.Governor ) 2', 'martist60c8ab7856b35hov', 'm_al60c8af46e46cc809', 1, '03:04', 'assets/music/IDWK--Hovets---(Prod.Governor ) 2.mp3', 5, 9, 0, '2021-07-02 10:52:11', 'music'),
(326, 'Bend low  by  Hovets & Vismon', 'martist60c8ab7856b35hov', 'm_al60c8af46e46cc809', 1, '03:20', 'assets/music/Bend low  by  Hovets & Vismon.mp3', 6, 12, 0, '2021-07-02 11:34:00', 'music'),
(331, 'NUMBER ONE - B.I.G  X OFTEN (Prod', 'martist60d30a7eaad72hok', 'm_al60d30befb516c150', 7, '03:16', 'assets/music/NUMBER ONE - B.I.G  X OFTEN (Prod.GOVERNOR)', 1, 15, 0, '2021-07-02 21:11:46', 'music'),
(332, 'Feel de Vybz - Often', 'martist60d30a7eaad72hok', 'm_al60d30befb516c150', 7, '03:32', 'assets/music/Feel de Vybz - Often', 2, 9, 0, '2021-07-02 21:12:02', 'music'),
(333, 'PREY  - KIZZ & COSH', 'martist60d30a7eaad72hok', 'm_al60d30befb516c150', 7, '03:17', 'assets/music/PREY  - KIZZ & COSH', 3, 4, 0, '2021-07-02 12:53:16', 'music'),
(335, 'Premium Content', 'martist6034eae7abc77pka', 'm_al60d9d16e3020e174', 13, '00:14', 'assets/music/mwonyaafirstadd.mp3', 1, 7, 0, '2021-07-06 09:30:34', 'ad'),
(336, 'Uganda Wild Life Authority', 'martist6034eae7abc77pka', 'm_al60d9d16e3020e174', 13, '00:14', 'assets/music/ugandawildlifeauthority.mp3', 1, 6, 0, '2021-07-06 09:26:29', 'ad');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `no` int NOT NULL AUTO_INCREMENT,
  `id` varchar(300) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profilePic` varchar(500) NOT NULL DEFAULT 'assets/images/profile-pics/user.png',
  `songsplayed` int NOT NULL DEFAULT '0',
  `status` varchar(300) NOT NULL DEFAULT '00kasfa0016UazHafise',
  `mwRole` varchar(100) NOT NULL DEFAULT 'mwuser',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`no`, `id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`, `songsplayed`, `status`, `mwRole`) VALUES
(1, 'mw60dc7eed7372bpka', 'pkasemer', 'Patrick okello', '', 'Pkasemer@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2021-06-29 21:00:00', 'assets/images/profile-pics/user.png', 0, 'registered', 'mwuser'),
(2, 'mw60dcee54a514dpka', 'pkasemee', 'Patrick okello', '', 'Mm@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2021-06-29 21:00:00', 'assets/images/profile-pics/user.png', 680, 'registered', 'mwuser'),
(3, 'mw60e1f2339b747Bre', 'Brendah', 'Obote', '', 'Brendahobote@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2021-07-03 21:00:00', 'assets/images/profile-pics/user.png', 2, 'registered', 'mwuser');

-- --------------------------------------------------------

--
-- Table structure for table `webvisits`
--

DROP TABLE IF EXISTS `webvisits`;
CREATE TABLE IF NOT EXISTS `webvisits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipaddr` varchar(300) NOT NULL,
  `page` varchar(300) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webvisits`
--

INSERT INTO `webvisits` (`id`, `ipaddr`, `page`, `datecreated`) VALUES
(1, 'pk', 'josh', '2021-07-02 23:24:00'),
(2, 'pk', 'josh', '2021-07-02 23:29:01'),
(3, '::1', '/mwonyanew/browse', '2021-07-02 23:32:50'),
(4, '', '/mwonyanew/browse', '2021-07-02 23:34:22'),
(5, '()', '/mwonyanew/browse?&userLoggedIn=Guest', '2021-07-02 23:37:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
