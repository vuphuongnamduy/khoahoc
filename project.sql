-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2024 lúc 05:54 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `photo`, `name`) VALUES
(41, 0, '', 'FOREX'),
(42, 41, '', 'Ict Concepts'),
(43, 41, '', ' Smart Money Concept '),
(44, 41, '', 'Wyckoff'),
(45, 41, '', 'Sóng Elliott'),
(46, 0, '', 'CRPYTO'),
(47, 46, '', 'Relative Strength Indicator(RSI)'),
(48, 0, '', 'Chứng Khoáng'),
(49, 48, '', 'Price Action'),
(50, 46, '', 'Bull Bear Law'),
(51, 48, '', 'Pro Training Trọn Đời');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(19, 'namduy', 'namduy1320@gmail.com', '', '0971810030', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'namduy', 'huh@gmail.com', '', '0971810030', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `date`, `description`, `content`, `hot`, `photo`) VALUES
(33, 'Trading zone', '2024-12-02', '<p><strong>Trading Zone</strong> (V&ugrave;ng giao dịch) l&agrave; một kh&aacute;i niệm quan trọng trong ph&acirc;n t&iacute;ch Price Action v&agrave; giao dịch t&agrave;i ch&iacute;nh. Đ&acirc;y l&agrave; khu vực tr&ecirc;n biểu đồ gi&aacute; m&agrave; trader x&aacute;c định dựa tr&ecirc;n sự tập trung cao của h&agrave;nh động gi&aacute;, thường được sử dụng để đưa ra c&aacute;c quyết định giao dịch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img1.od-cdn.com/ImageType-400/1088-1/34A/BCF/0E/%7B34ABCF0E-7F99-40C9-8FC2-CF4C6F22AC1B%7DImg400.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<h3><strong>1. Trading Zone l&agrave; g&igrave;?</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Trading Zone</strong> l&agrave; v&ugrave;ng gi&aacute; m&agrave; tại đ&oacute; gi&aacute; c&oacute; xu hướng phản ứng mạnh (đảo chiều, dừng lại, hoặc tiếp tục xu hướng).</li>\r\n	<li>Được h&igrave;nh th&agrave;nh bởi c&aacute;c mức <strong>hỗ trợ</strong> v&agrave; <strong>kh&aacute;ng cự</strong>, hoặc c&aacute;c khu vực <strong>cung cầu</strong> m&agrave; trader quan s&aacute;t tr&ecirc;n biểu đồ.</li>\r\n	<li>Đ&acirc;y l&agrave; nơi trader kỳ vọng gi&aacute; sẽ tạo ra c&aacute;c cơ hội giao dịch tốt, như ph&aacute; vỡ (breakout), bật lại (reversal), hoặc tiếp tục xu hướng.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>2. C&aacute;ch x&aacute;c định Trading Zone</strong></h3>\r\n\r\n<h4><strong>Dựa tr&ecirc;n Hỗ trợ v&agrave; Kh&aacute;ng cự</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>Hỗ trợ</strong>: L&agrave; v&ugrave;ng gi&aacute; m&agrave; lực mua xuất hiện đủ mạnh để ngăn gi&aacute; giảm tiếp.</li>\r\n	<li><strong>Kh&aacute;ng cự</strong>: L&agrave; v&ugrave;ng gi&aacute; m&agrave; lực b&aacute;n xuất hiện đủ mạnh để ngăn gi&aacute; tăng tiếp.</li>\r\n	<li>C&aacute;ch vẽ: X&aacute;c định c&aacute;c đỉnh v&agrave; đ&aacute;y quan trọng tr&ecirc;n biểu đồ.</li>\r\n</ul>\r\n\r\n<h4><strong>Dựa tr&ecirc;n Cấu tr&uacute;c Thị Trường</strong></h4>\r\n\r\n<ul>\r\n	<li>T&igrave;m c&aacute;c v&ugrave;ng m&agrave; gi&aacute; dao động trong bi&ecirc;n độ hẹp (consolidation).</li>\r\n	<li>C&aacute;c v&ugrave;ng n&agrave;y thường l&agrave; điểm xuất ph&aacute;t cho một xu hướng lớn.</li>\r\n</ul>\r\n\r\n<h4><strong>Dựa tr&ecirc;n V&ugrave;ng Cung v&agrave; Cầu</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>V&ugrave;ng cung</strong>: L&agrave; khu vực m&agrave; lực b&aacute;n chiếm ưu thế, khiến gi&aacute; giảm mạnh.</li>\r\n	<li><strong>V&ugrave;ng cầu</strong>: L&agrave; khu vực m&agrave; lực mua chiếm ưu thế, khiến gi&aacute; tăng mạnh.</li>\r\n	<li>X&aacute;c định bằng c&aacute;ch t&igrave;m c&aacute;c v&ugrave;ng gi&aacute; c&oacute; nến lớn hoặc khoảng trống gi&aacute; (gap).</li>\r\n</ul>\r\n\r\n<h4><strong>Dựa tr&ecirc;n Khối Lượng Giao Dịch</strong></h4>\r\n\r\n<ul>\r\n	<li>Sử dụng c&ocirc;ng cụ như <strong>Volume Profile</strong> để t&igrave;m c&aacute;c v&ugrave;ng c&oacute; khối lượng giao dịch lớn, thường l&agrave; điểm quan trọng m&agrave; gi&aacute; c&oacute; thể quay lại kiểm tra.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>3. C&aacute;c loại Trading Zone</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Reversal Zone (V&ugrave;ng đảo chiều)</strong>:\r\n\r\n	<ul>\r\n		<li>Đ&acirc;y l&agrave; v&ugrave;ng m&agrave; gi&aacute; c&oacute; khả năng đảo chiều xu hướng.</li>\r\n		<li>Được x&aacute;c định bằng c&aacute;c mức hỗ trợ/kh&aacute;ng cự mạnh, hoặc v&ugrave;ng cung/cầu.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Breakout Zone (V&ugrave;ng ph&aacute; vỡ)</strong>:\r\n	<ul>\r\n		<li>L&agrave; khu vực m&agrave; gi&aacute; c&oacute; khả năng ph&aacute; vỡ để tiếp tục xu hướng.</li>\r\n		<li>X&aacute;c định bằng c&aacute;c v&ugrave;ng t&iacute;ch lũy gi&aacute; hẹp.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Neutral Zone (V&ugrave;ng trung lập)</strong>:\r\n	<ul>\r\n		<li>V&ugrave;ng m&agrave; gi&aacute; dao động trong bi&ecirc;n độ hẹp, kh&ocirc;ng r&otilde; xu hướng.</li>\r\n		<li>Thường được sử dụng để chờ t&iacute;n hiệu h&agrave;nh động.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>4. &Aacute;p dụng Trading Zone v&agrave;o giao dịch</strong></h3>\r\n\r\n<ol>\r\n	<li><strong>Ph&acirc;n t&iacute;ch biểu đồ</strong>:\r\n\r\n	<ul>\r\n		<li>Vẽ c&aacute;c v&ugrave;ng gi&aacute; quan trọng dựa tr&ecirc;n c&aacute;c phương ph&aacute;p ở tr&ecirc;n.</li>\r\n		<li>Đảm bảo v&ugrave;ng n&agrave;y xuất hiện ở c&aacute;c khung thời gian lớn để tăng độ tin cậy.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Chờ t&iacute;n hiệu</strong>:\r\n	<ul>\r\n		<li>T&igrave;m kiếm c&aacute;c m&ocirc; h&igrave;nh nến (Pin Bar, Engulfing, Doji, v.v.) hoặc c&aacute;c t&iacute;n hiệu x&aacute;c nhận kh&aacute;c.</li>\r\n		<li>Kiểm tra khối lượng giao dịch tại v&ugrave;ng n&agrave;y để x&aacute;c nhận sức mạnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Quyết định h&agrave;nh động</strong>:\r\n	<ul>\r\n		<li><strong>Mua tại v&ugrave;ng hỗ trợ</strong> hoặc <strong>b&aacute;n tại v&ugrave;ng kh&aacute;ng cự</strong>.</li>\r\n		<li><strong>Mua breakout</strong> khi gi&aacute; ph&aacute; vỡ v&ugrave;ng kh&aacute;ng cự mạnh, hoặc <strong>b&aacute;n breakout</strong> khi gi&aacute; ph&aacute; vỡ hỗ trợ.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Quản l&yacute; rủi ro</strong>:\r\n	<ul>\r\n		<li>Đặt Stop Loss ngay dưới v&ugrave;ng hỗ trợ (đối với lệnh mua) hoặc tr&ecirc;n v&ugrave;ng kh&aacute;ng cự (đối với lệnh b&aacute;n).</li>\r\n		<li>Sử dụng tỷ lệ R:R (Risk:Reward) hợp l&yacute;, thường l&agrave; 1:2 hoặc 1:3.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>5. V&iacute; dụ thực tế</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>V&ugrave;ng gi&aacute; $100 - $105</strong> tr&ecirc;n cổ phiếu ABC l&agrave; v&ugrave;ng hỗ trợ mạnh. Nếu gi&aacute; chạm $100 v&agrave; xuất hiện nến Pin Bar, đ&acirc;y c&oacute; thể l&agrave; cơ hội mua.</li>\r\n	<li><strong>V&ugrave;ng gi&aacute; $50 - $55</strong> tr&ecirc;n một cặp forex l&agrave; v&ugrave;ng kh&aacute;ng cự. Nếu gi&aacute; ph&aacute; vỡ $55 với khối lượng lớn, đ&acirc;y c&oacute; thể l&agrave; t&iacute;n hiệu mua breakout.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>6. Lưu &yacute; khi giao dịch với Trading Zone</strong></h3>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng phải tất cả c&aacute;c v&ugrave;ng đều dẫn đến phản ứng mạnh, cần x&aacute;c nhận th&ecirc;m t&iacute;n hiệu kh&aacute;c.</li>\r\n	<li>Trading Zone tr&ecirc;n c&aacute;c khung thời gian lớn (như H4, D1) thường đ&aacute;ng tin cậy hơn.</li>\r\n	<li>H&atilde;y kết hợp Trading Zone với c&aacute;c c&ocirc;ng cụ kh&aacute;c như đường xu hướng, Fibonacci, hoặc chỉ b&aacute;o kỹ thuật để tăng tỷ lệ th&agrave;nh c&ocirc;ng</li>\r\n</ul>\r\n\r\n<p><u><em>Link dowload: https://drive.google.com/drive/folders/1TtDsw7pQqWIzmufT5CRF3kxJGsEw9wfn</em></u></p>\r\n', 1, '1734769131_CON-DUONG-TOI-THANH-CONG.jpg'),
(34, 'Trading Hub', '2024-12-03', '<p><strong>Trading Hub</strong> (Trung t&acirc;m giao dịch) trong ngữ cảnh t&agrave;i ch&iacute;nh c&oacute; thể mang nhiều &yacute; nghĩa t&ugrave;y thuộc v&agrave;o bối cảnh. Dưới đ&acirc;y l&agrave; c&aacute;c &yacute; nghĩa phổ biến của thuật ngữ n&agrave;y:</p>\r\n\r\n<p><img alt=\"\" src=\"https://mir-s3-cdn-cf.behance.net/project_modules/1400/918346148717827.62da4213da230.png\" style=\"height:500px; width:500px\" /></p>\r\n', '<h3><strong>1. Trading Hub l&agrave; g&igrave;?</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Về mặt địa l&yacute;</strong>: L&agrave; trung t&acirc;m t&agrave;i ch&iacute;nh to&agrave;n cầu hoặc khu vực, nơi diễn ra c&aacute;c hoạt động giao dịch t&agrave;i ch&iacute;nh lớn, bao gồm cổ phiếu, ngoại hối (forex), h&agrave;ng h&oacute;a, v&agrave; tiền điện tử.\r\n\r\n	<ul>\r\n		<li>V&iacute; dụ: London, New York, Tokyo, Singapore l&agrave; c&aacute;c trading hub lớn.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Về chiến lược giao dịch</strong>: L&agrave; khu vực hoặc v&ugrave;ng gi&aacute; tr&ecirc;n biểu đồ m&agrave; hoạt động giao dịch tập trung cao, thường l&agrave; nơi gi&aacute; c&oacute; xu hướng đảo chiều hoặc tiếp tục mạnh mẽ.\r\n	<ul>\r\n		<li>V&iacute; dụ: C&aacute;c v&ugrave;ng t&iacute;ch lũy gi&aacute; hoặc v&ugrave;ng cung cầu mạnh.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>2. Trading Hub trong ph&acirc;n t&iacute;ch kỹ thuật</strong></h3>\r\n\r\n<p>Trong giao dịch t&agrave;i ch&iacute;nh, <strong>Trading Hub</strong> thường được hiểu l&agrave;:</p>\r\n\r\n<ul>\r\n	<li><strong>Khu vực gi&aacute; quan trọng</strong>:\r\n\r\n	<ul>\r\n		<li>L&agrave; nơi gi&aacute; thường xuy&ecirc;n quay lại kiểm tra, cho thấy sự tập trung lớn của người mua v&agrave; người b&aacute;n.</li>\r\n		<li>Tạo cơ hội để x&aacute;c định xu hướng hoặc dự đo&aacute;n sự thay đổi xu hướng.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>V&ugrave;ng t&iacute;ch lũy (Consolidation Zone)</strong>:\r\n	<ul>\r\n		<li>L&agrave; nơi gi&aacute; dao động trong một phạm vi hẹp trước khi c&oacute; xu hướng lớn.</li>\r\n		<li>Trader thường xem đ&acirc;y l&agrave; dấu hiệu chuẩn bị cho một đợt ph&aacute; vỡ (breakout).</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Điểm c&acirc;n bằng gi&aacute; (POC - Point of Control)</strong>:\r\n	<ul>\r\n		<li>Trong c&aacute;c c&ocirc;ng cụ như <strong>Volume Profile</strong>, đ&acirc;y l&agrave; mức gi&aacute; c&oacute; khối lượng giao dịch lớn nhất, cho thấy sự quan t&acirc;m của thị trường tập trung.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>3. Trading Hub trong thực tế giao dịch</strong></h3>\r\n\r\n<h4><strong>C&aacute;ch nhận diện Trading Hub</strong></h4>\r\n\r\n<ol>\r\n	<li><strong>Khối lượng giao dịch</strong>:\r\n\r\n	<ul>\r\n		<li>C&aacute;c v&ugrave;ng c&oacute; khối lượng giao dịch lớn thường l&agrave; điểm tập trung quan trọng, dễ h&igrave;nh th&agrave;nh Trading Hub.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>V&ugrave;ng hỗ trợ/kh&aacute;ng cự mạnh</strong>:\r\n	<ul>\r\n		<li>Khi gi&aacute; li&ecirc;n tục phản ứng mạnh tại một mức gi&aacute;, khu vực đ&oacute; c&oacute; thể được xem l&agrave; Trading Hub.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>V&ugrave;ng cung cầu</strong>:\r\n	<ul>\r\n		<li>Nơi gi&aacute; tăng/giảm mạnh trong qu&aacute; khứ c&oacute; thể trở th&agrave;nh điểm Trading Hub trong tương lai.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<h4><strong>C&aacute;ch sử dụng Trading Hub</strong></h4>\r\n\r\n<ol>\r\n	<li><strong>Chờ t&iacute;n hiệu</strong>:\r\n\r\n	<ul>\r\n		<li>Chờ gi&aacute; phản ứng tại v&ugrave;ng Trading Hub để x&aacute;c nhận hướng đi trước khi đặt lệnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>X&aacute;c định Breakout hoặc Reversal</strong>:\r\n	<ul>\r\n		<li>Nếu gi&aacute; ph&aacute; vỡ mạnh v&ugrave;ng Trading Hub, đ&oacute; c&oacute; thể l&agrave; t&iacute;n hiệu tiếp tục xu hướng.</li>\r\n		<li>Nếu gi&aacute; đảo chiều tại v&ugrave;ng n&agrave;y, đ&oacute; l&agrave; t&iacute;n hiệu reversal.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Quản l&yacute; rủi ro</strong>:\r\n	<ul>\r\n		<li>Đặt Stop Loss gần v&ugrave;ng Trading Hub để giảm thiểu rủi ro nếu gi&aacute; đi ngược xu hướng.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>4. Trading Hub trong kh&iacute;a cạnh vĩ m&ocirc;</strong></h3>\r\n\r\n<ul>\r\n	<li>C&aacute;c th&agrave;nh phố hoặc khu vực l&agrave; trung t&acirc;m giao dịch lớn:\r\n	<ul>\r\n		<li><strong>London</strong>: Trung t&acirc;m forex lớn nhất thế giới, với m&uacute;i giờ giao dịch quan trọng.</li>\r\n		<li><strong>New York</strong>: Thị trường chứng kho&aacute;n v&agrave; t&agrave;i sản t&agrave;i ch&iacute;nh h&agrave;ng đầu.</li>\r\n		<li><strong>Singapore</strong>: Trung t&acirc;m giao dịch forex v&agrave; h&agrave;ng h&oacute;a lớn ở ch&acirc;u &Aacute;.</li>\r\n		<li><strong>Tokyo</strong>: Nơi diễn ra giao dịch ngoại hối lớn với c&aacute;c cặp tiền JPY.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>5. Lưu &yacute; khi sử dụng Trading Hub trong giao dịch</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Ph&acirc;n t&iacute;ch đa khung thời gian</strong>:\r\n\r\n	<ul>\r\n		<li>X&aacute;c định Trading Hub tr&ecirc;n khung thời gian lớn hơn (D1, H4) để c&oacute; bối cảnh r&otilde; r&agrave;ng.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Kết hợp c&aacute;c c&ocirc;ng cụ ph&acirc;n t&iacute;ch kh&aacute;c</strong>:\r\n	<ul>\r\n		<li>Sử dụng Fibonacci, RSI, hoặc Volume Profile để x&aacute;c nhận v&ugrave;ng Trading Hub.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Kiểm tra lịch sử gi&aacute;</strong>:\r\n	<ul>\r\n		<li>C&aacute;c v&ugrave;ng Trading Hub trong qu&aacute; khứ thường giữ vai tr&ograve; quan trọng khi gi&aacute; quay lại.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><u><em>Link dowload:https://drive.google.com/drive/folders/13CcFNTYc9PX1BMghHiTIX4J3FAP4zBQ-&nbsp;</em></u></p>\r\n', 1, '1734769567_Untitled design (4)-1.png'),
(35, 'Bob Volman', '2024-12-02', '<p><strong>Bob Volman</strong> l&agrave; một t&aacute;c giả nổi tiếng trong cộng đồng giao dịch t&agrave;i ch&iacute;nh, đặc biệt được biết đến với việc chia sẻ c&aacute;c phương ph&aacute;p giao dịch dựa tr&ecirc;n <strong>Price Action</strong> cho c&aacute;c khung thời gian ngắn (short-term trading). &Ocirc;ng tập trung chủ yếu v&agrave;o giao dịch trong ng&agrave;y (day trading) v&agrave; scalping tr&ecirc;n thị trường forex, sử dụng c&aacute;c biểu đồ nến theo dạng <strong>tick chart</strong> thay v&igrave; biểu đồ theo khung thời gian truyền thống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://vieclamvui.com/upload/img/2022/09/21/forex-price-action-scalping-by-bob-volman-pdf-vieclamvui-1663742543.jpg\" style=\"height:362px; width:500px\" /></p>\r\n', '<h3><strong>1. T&aacute;c phẩm nổi bật</strong></h3>\r\n\r\n<p>Bob Volman đ&atilde; xuất bản hai cuốn s&aacute;ch ch&iacute;nh, cả hai đều nhận được sự đ&aacute;nh gi&aacute; cao từ c&aacute;c trader:</p>\r\n\r\n<h4><strong>a. &quot;Forex Price Action Scalping&quot; (2011)</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>Nội dung</strong>:\r\n\r\n	<ul>\r\n		<li>Cuốn s&aacute;ch n&agrave;y tập trung v&agrave;o chiến lược scalping tr&ecirc;n thị trường forex, sử dụng biểu đồ <strong>tick chart</strong> để ph&acirc;n t&iacute;ch h&agrave;nh động gi&aacute;.</li>\r\n		<li>Hướng dẫn cụ thể c&aacute;ch đọc h&agrave;nh động gi&aacute;, x&aacute;c định c&aacute;c cơ hội giao dịch, v&agrave; quản l&yacute; lệnh trong khung thời gian ngắn.</li>\r\n		<li>Ch&uacute; trọng v&agrave;o c&aacute;c mẫu h&igrave;nh gi&aacute; đơn giản như <strong>breakout</strong>, <strong>retest</strong>, v&agrave; c&aacute;c m&ocirc; h&igrave;nh nến nhỏ.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Ai n&ecirc;n đọc</strong>:\r\n	<ul>\r\n		<li>Những trader muốn giao dịch ngắn hạn hoặc giao dịch dựa tr&ecirc;n ph&acirc;n t&iacute;ch h&agrave;nh động gi&aacute;.</li>\r\n		<li>Ph&ugrave; hợp với những người giao dịch cặp tiền tệ forex.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>b. &quot;Understanding Price Action&quot; (2015)</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>Nội dung</strong>:\r\n\r\n	<ul>\r\n		<li>Cuốn s&aacute;ch n&agrave;y l&agrave; một bước tiến s&acirc;u hơn v&agrave;o ph&acirc;n t&iacute;ch Price Action, với trọng t&acirc;m l&agrave; giao dịch tr&ecirc;n c&aacute;c biểu đồ ngắn hạn.</li>\r\n		<li>Bob Volman cung cấp c&aacute;c chiến lược n&acirc;ng cao v&agrave; chi tiết hơn về c&aacute;ch x&aacute;c định c&aacute;c cơ hội giao dịch tiềm năng.</li>\r\n		<li>Cuốn s&aacute;ch cũng nhấn mạnh tầm quan trọng của t&acirc;m l&yacute; giao dịch v&agrave; quản l&yacute; rủi ro.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Ai n&ecirc;n đọc</strong>:\r\n	<ul>\r\n		<li>Những trader đ&atilde; c&oacute; kinh nghiệm cơ bản về Price Action v&agrave; muốn n&acirc;ng cao kỹ năng.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>2. Triết l&yacute; giao dịch của Bob Volman</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Price Action l&agrave; tất cả</strong>: &Ocirc;ng kh&ocirc;ng dựa v&agrave;o chỉ b&aacute;o kỹ thuật phức tạp m&agrave; tập trung ho&agrave;n to&agrave;n v&agrave;o c&aacute;ch gi&aacute; di chuyển tr&ecirc;n biểu đồ.</li>\r\n	<li><strong>Đơn giản v&agrave; thực tế</strong>: C&aacute;c chiến lược của Bob kh&ocirc;ng y&ecirc;u cầu sử dụng nhiều c&ocirc;ng cụ, chỉ cần biểu đồ tick chart v&agrave; khả năng đọc h&agrave;nh động gi&aacute;.</li>\r\n	<li><strong>Kỷ luật v&agrave; ki&ecirc;n nhẫn</strong>: Giao dịch ngắn hạn đ&ograve;i hỏi sự tập trung cao độ, tu&acirc;n thủ chiến lược, v&agrave; kh&ocirc;ng để cảm x&uacute;c chi phối.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>3. C&aacute;c chiến lược ch&iacute;nh trong s&aacute;ch của Bob Volman</strong></h3>\r\n\r\n<h4><strong>a. Breakout Trading</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>M&ocirc; tả</strong>:\r\n\r\n	<ul>\r\n		<li>T&igrave;m kiếm c&aacute;c khu vực gi&aacute; t&iacute;ch lũy (consolidation) v&agrave; giao dịch khi gi&aacute; ph&aacute; vỡ khỏi v&ugrave;ng n&agrave;y.</li>\r\n		<li>Breakout c&oacute; thể đi k&egrave;m với khối lượng lớn để x&aacute;c nhận.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>&Aacute;p dụng</strong>:\r\n	<ul>\r\n		<li>V&agrave;o lệnh khi gi&aacute; vượt qua mức cao/thấp gần nhất v&agrave; đặt Stop Loss dưới v&ugrave;ng t&iacute;ch lũy.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>b. Retest Trading</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>M&ocirc; tả</strong>:\r\n\r\n	<ul>\r\n		<li>Sau khi gi&aacute; ph&aacute; vỡ, chờ gi&aacute; quay lại kiểm tra v&ugrave;ng kh&aacute;ng cự/hỗ trợ cũ v&agrave; giao dịch theo hướng của xu hướng.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>&Aacute;p dụng</strong>:\r\n	<ul>\r\n		<li>X&aacute;c định c&aacute;c mức quan trọng v&agrave; v&agrave;o lệnh sau khi c&oacute; t&iacute;n hiệu x&aacute;c nhận.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>c. Momentum-Based Entries</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>M&ocirc; tả</strong>:\r\n\r\n	<ul>\r\n		<li>Dựa v&agrave;o động lượng gi&aacute; (momentum) để v&agrave;o lệnh trong c&aacute;c xu hướng mạnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>&Aacute;p dụng</strong>:\r\n	<ul>\r\n		<li>T&igrave;m c&aacute;c đợt gi&aacute; điều chỉnh nhẹ trong xu hướng v&agrave; v&agrave;o lệnh khi xu hướng tiếp tục.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>4. Những điểm nổi bật trong phong c&aacute;ch của Bob Volman</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Sử dụng Tick Chart</strong>:\r\n\r\n	<ul>\r\n		<li>Bob Volman nhấn mạnh rằng tick chart, thay v&igrave; biểu đồ thời gian (time-based chart), cung cấp t&iacute;n hiệu giao dịch r&otilde; r&agrave;ng hơn v&igrave; n&oacute; phản &aacute;nh h&agrave;nh động thị trường thực sự.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Giao dịch forex cặp ch&iacute;nh</strong>:\r\n	<ul>\r\n		<li>&Ocirc;ng tập trung v&agrave;o c&aacute;c cặp tiền tệ c&oacute; thanh khoản cao v&agrave; spread thấp, như EUR/USD, GBP/USD.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Tầm quan trọng của t&acirc;m l&yacute; giao dịch</strong>:\r\n	<ul>\r\n		<li>Kiểm so&aacute;t cảm x&uacute;c v&agrave; tu&acirc;n thủ kế hoạch giao dịch l&agrave; yếu tố quyết định th&agrave;nh c&ocirc;ng, đặc biệt trong giao dịch scalping.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>5. Ưu v&agrave; nhược điểm của phương ph&aacute;p của Bob Volman</strong></h3>\r\n\r\n<h4><strong>Ưu điểm</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Ph&ugrave; hợp với trader y&ecirc;u th&iacute;ch giao dịch ngắn hạn v&agrave; h&agrave;nh động nhanh.</li>\r\n	<li>Tối ưu cho c&aacute;c thị trường c&oacute; thanh khoản cao, như forex.</li>\r\n	<li>Kh&ocirc;ng cần sử dụng nhiều chỉ b&aacute;o, dễ học v&agrave; &aacute;p dụng.</li>\r\n</ul>\r\n\r\n<h4><strong>Nhược điểm</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Y&ecirc;u cầu nhiều thời gian để theo d&otilde;i biểu đồ.</li>\r\n	<li>Phương ph&aacute;p scalping c&oacute; thể căng thẳng, đặc biệt đối với người mới.</li>\r\n	<li>Sử dụng tick chart c&oacute; thể g&acirc;y kh&oacute; khăn v&igrave; kh&ocirc;ng phải mọi nền tảng giao dịch đều hỗ trợ.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>6. Lời khuy&ecirc;n khi &aacute;p dụng phương ph&aacute;p của Bob Volman</strong></h3>\r\n\r\n<ol>\r\n	<li><strong>Thực h&agrave;nh tr&ecirc;n t&agrave;i khoản demo</strong>:\r\n\r\n	<ul>\r\n		<li>L&agrave;m quen với biểu đồ tick chart v&agrave; chiến lược scalping trước khi &aacute;p dụng v&agrave;o t&agrave;i khoản thật.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Ki&ecirc;n nhẫn học hỏi</strong>:\r\n	<ul>\r\n		<li>Đọc kỹ c&aacute;c t&agrave;i liệu của &ocirc;ng v&agrave; luyện tập kỹ năng đọc Price Action tr&ecirc;n biểu đồ thực tế.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Quản l&yacute; vốn</strong>:\r\n	<ul>\r\n		<li>V&igrave; giao dịch ngắn hạn c&oacute; rủi ro cao, h&atilde;y lu&ocirc;n sử dụng Stop Loss v&agrave; tu&acirc;n thủ quy tắc quản l&yacute; vốn.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><u><em>Link dowload:&nbsp;https://drive.google.com/drive/folders/1r-wfVgrQL8-L-_Zqjp3sCgvnM16pAExJ&nbsp;</em></u></p>\r\n', 1, '1734769906_forex-price-action-scalping-by-bob-volman-pdf-vieclamvui-1663742543.jpg'),
(36, 'Foot Print', '2024-12-01', '<p><strong>Footprint Trading</strong> l&agrave; một phương ph&aacute;p giao dịch sử dụng dữ liệu chi tiết về khối lượng giao dịch, thường được hiển thị tr&ecirc;n biểu đồ <strong>Footprint Chart</strong>. Đ&acirc;y l&agrave; một c&ocirc;ng cụ mạnh mẽ d&agrave;nh cho c&aacute;c trader muốn c&oacute; c&aacute;i nh&igrave;n s&acirc;u hơn v&agrave;o d&ograve;ng chảy của lệnh (Order Flow), gi&uacute;p họ hiểu r&otilde; hơn về h&agrave;nh động gi&aacute; v&agrave; c&aacute;c động th&aacute;i của thị trường.</p>\r\n\r\n<p><img alt=\"\" src=\"https://happy.live/wp-content/uploads/2020/04/M%E1%BB%99t-trader-d%C3%B9-newbie-hay-chuy%C3%AAn-nghi%E1%BB%87p-%C4%91%E1%BB%81u-ph%E1%BA%A3i-n%E1%BA%AFm-10-k%E1%BB%B9-n%C4%83ng-giao-d%E1%BB%8Bch-n%C3%A0y-n%E1%BA%BFu-mu%E1%BB%91n-ki%E1%BA%BFm-%C4%91%C6%B0%E1%BB%A3c-nhi%E1%BB%81u-ti%E1%BB%81n.jpg\" style=\"height:353px; width:700px\" /></p>\r\n', '<h3><strong>1. Footprint Chart l&agrave; g&igrave;?</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Footprint Chart</strong> l&agrave; một loại biểu đồ cung cấp th&ocirc;ng tin chi tiết về:\r\n\r\n	<ul>\r\n		<li><strong>Gi&aacute;</strong>: C&aacute;c mức gi&aacute; cụ thể m&agrave; lệnh được thực hiện.</li>\r\n		<li><strong>Khối lượng giao dịch</strong>: Tổng số lệnh mua (Bid) v&agrave; lệnh b&aacute;n (Ask) tại mỗi mức gi&aacute;.</li>\r\n		<li><strong>Delta Volume</strong>: Sự ch&ecirc;nh lệch giữa khối lượng lệnh mua v&agrave; lệnh b&aacute;n.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Kh&aacute;c với biểu đồ nến truyền thống chỉ hiển thị gi&aacute; mở cửa, đ&oacute;ng cửa, cao nhất v&agrave; thấp nhất, Footprint Chart cho biết điều g&igrave; đ&atilde; xảy ra <strong>b&ecirc;n trong c&aacute;c c&acirc;y nến</strong>, gi&uacute;p bạn biết được động th&aacute;i thực sự của người mua v&agrave; người b&aacute;n.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>2. Th&agrave;nh phần của Footprint Chart</strong></h3>\r\n\r\n<p>Footprint Chart thường được hiển thị dưới dạng c&aacute;c &ocirc; (cells) tại mỗi mức gi&aacute; trong một khoảng thời gian hoặc một c&acirc;y nến. Dưới đ&acirc;y l&agrave; c&aacute;c dạng phổ biến:</p>\r\n\r\n<h4><strong>a. Bid/Ask Footprint</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Hiển thị số lượng lệnh mua (Ask) v&agrave; lệnh b&aacute;n (Bid) tại mỗi mức gi&aacute;.</li>\r\n	<li><strong>V&iacute; dụ</strong>:\r\n	<p><code>100 | 200 150 | 250 300 | 100 </code></p>\r\n\r\n	<ul>\r\n		<li>Cột b&ecirc;n tr&aacute;i (Bid): Lệnh b&aacute;n.</li>\r\n		<li>Cột b&ecirc;n phải (Ask): Lệnh mua.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>b. Volume Footprint</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Chỉ hiển thị tổng khối lượng giao dịch tại mỗi mức gi&aacute;, kh&ocirc;ng ph&acirc;n biệt Bid/Ask.</li>\r\n	<li><strong>V&iacute; dụ</strong>:\r\n	<p><code>500 400 600 </code></p>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>c. Delta Footprint</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Hiển thị sự ch&ecirc;nh lệch giữa lệnh mua v&agrave; lệnh b&aacute;n (Delta = Ask - Bid).</li>\r\n	<li><strong>V&iacute; dụ</strong>:\r\n	<p><code>+100 -50 +200 </code></p>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>d. Imbalance Footprint</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Tập trung v&agrave;o việc so s&aacute;nh sự mất c&acirc;n bằng giữa lệnh mua v&agrave; b&aacute;n, gi&uacute;p x&aacute;c định &aacute;p lực mua hoặc b&aacute;n mạnh tại c&aacute;c mức gi&aacute; cụ thể.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>3. Tại sao n&ecirc;n sử dụng Footprint Trading?</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Hiểu r&otilde; d&ograve;ng chảy lệnh (Order Flow)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Biết được ai đang kiểm so&aacute;t thị trường: người mua hay người b&aacute;n.</li>\r\n		<li>X&aacute;c định c&aacute;c khu vực quan trọng như <strong>hỗ trợ</strong>, <strong>kh&aacute;ng cự</strong>, hoặc <strong>v&ugrave;ng cung cầu</strong>.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&aacute;t hiện c&aacute;c t&iacute;n hiệu quan trọng</strong>:</p>\r\n\r\n	<ul>\r\n		<li>C&aacute;c v&ugrave;ng c&oacute; khối lượng giao dịch lớn (High Volume Nodes) c&oacute; thể l&agrave; điểm hỗ trợ/kh&aacute;ng cự tiềm năng.</li>\r\n		<li>Sự mất c&acirc;n bằng giữa Bid v&agrave; Ask c&oacute; thể b&aacute;o hiệu sự tiếp tục hoặc đảo chiều của xu hướng.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tối ưu h&oacute;a điểm v&agrave;o v&agrave; ra lệnh</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Dựa v&agrave;o dữ liệu chi tiết để v&agrave;o lệnh ch&iacute;nh x&aacute;c hơn.</li>\r\n		<li>X&aacute;c định c&aacute;c điểm c&oacute; sự tham gia mạnh mẽ của thị trường.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>4. Chiến lược giao dịch với Footprint Chart</strong></h3>\r\n\r\n<h4><strong>a. X&aacute;c định v&ugrave;ng gi&aacute; quan trọng (High Volume Nodes v&agrave; Low Volume Nodes)</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>High Volume Nodes (HVN)</strong>:\r\n\r\n	<ul>\r\n		<li>L&agrave; v&ugrave;ng gi&aacute; c&oacute; khối lượng giao dịch cao, cho thấy sự đồng thuận giữa người mua v&agrave; b&aacute;n.</li>\r\n		<li>Thường l&agrave; v&ugrave;ng hỗ trợ/kh&aacute;ng cự mạnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Low Volume Nodes (LVN)</strong>:\r\n	<ul>\r\n		<li>L&agrave; v&ugrave;ng gi&aacute; c&oacute; khối lượng giao dịch thấp, cho thấy sự thiếu quan t&acirc;m của thị trường.</li>\r\n		<li>Thường l&agrave; v&ugrave;ng gi&aacute; m&agrave; thị trường dễ ph&aacute; vỡ.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>b. Giao dịch theo Delta Volume</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>Delta dương lớn (+Delta)</strong>:\r\n\r\n	<ul>\r\n		<li>&Aacute;p lực mua mạnh, c&oacute; thể b&aacute;o hiệu xu hướng tăng.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Delta &acirc;m lớn (-Delta)</strong>:\r\n	<ul>\r\n		<li>&Aacute;p lực b&aacute;n mạnh, c&oacute; thể b&aacute;o hiệu xu hướng giảm.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>c. Giao dịch dựa tr&ecirc;n Imbalance</strong></h4>\r\n\r\n<ul>\r\n	<li><strong>Imbalance dương</strong>:\r\n\r\n	<ul>\r\n		<li>Nếu lệnh mua vượt trội so với lệnh b&aacute;n tại một mức gi&aacute;, đ&oacute; c&oacute; thể l&agrave; t&iacute;n hiệu tăng.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Imbalance &acirc;m</strong>:\r\n	<ul>\r\n		<li>Nếu lệnh b&aacute;n vượt trội, đ&oacute; c&oacute; thể l&agrave; t&iacute;n hiệu giảm.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h4><strong>d. X&aacute;c định sự đảo chiều</strong></h4>\r\n\r\n<ul>\r\n	<li>Nếu khối lượng lớn xuất hiện tại đ&aacute;y hoặc đỉnh (capitulation), điều n&agrave;y c&oacute; thể b&aacute;o hiệu sự đảo chiều của xu hướng.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>5. Ưu điểm v&agrave; nhược điểm của Footprint Trading</strong></h3>\r\n\r\n<h4><strong>Ưu điểm</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Hiển thị dữ liệu chi tiết gi&uacute;p hiểu r&otilde; động th&aacute;i của thị trường.</li>\r\n	<li>Ph&ugrave; hợp cho cả giao dịch ngắn hạn v&agrave; d&agrave;i hạn.</li>\r\n	<li>Gi&uacute;p tăng độ ch&iacute;nh x&aacute;c trong việc x&aacute;c định điểm v&agrave;o v&agrave; ra lệnh.</li>\r\n</ul>\r\n\r\n<h4><strong>Nhược điểm</strong>:</h4>\r\n\r\n<ul>\r\n	<li>Y&ecirc;u cầu dữ liệu thị trường chất lượng cao (Real-time tick data).</li>\r\n	<li>Phức tạp cho người mới, cần thời gian để học v&agrave; thực h&agrave;nh.</li>\r\n	<li>Cần phần mềm chuy&ecirc;n dụng (v&iacute; dụ: Sierra Chart, NinjaTrader, ATAS).</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>6. C&ocirc;ng cụ v&agrave; phần mềm sử dụng Footprint Chart</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Sierra Chart</strong>: Một trong những nền tảng phổ biến nhất hỗ trợ Footprint Chart.</li>\r\n	<li><strong>NinjaTrader</strong>: Hỗ trợ c&aacute;c c&ocirc;ng cụ ph&acirc;n t&iacute;ch Order Flow.</li>\r\n	<li><strong>ATAS (Advanced Trading Analytical Software)</strong>: Phần mềm mạnh mẽ cho Order Flow v&agrave; Footprint Trading.</li>\r\n	<li><strong>Quantower</strong>: Hỗ trợ c&aacute;c c&ocirc;ng cụ biểu đồ chi tiết, bao gồm Footprint Chart.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>7. Lời khuy&ecirc;n khi bắt đầu với Footprint Trading</strong></h3>\r\n\r\n<ol>\r\n	<li><strong>Hiểu cơ bản về Order Flow</strong>:\r\n\r\n	<ul>\r\n		<li>Trước khi sử dụng Footprint Chart, h&atilde;y nắm vững c&aacute;ch thị trường hoạt động, bao gồm Bid, Ask, v&agrave; c&aacute;c kh&aacute;i niệm cơ bản về khối lượng.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Thực h&agrave;nh tr&ecirc;n t&agrave;i khoản demo</strong>:\r\n	<ul>\r\n		<li>L&agrave;m quen với c&aacute;c c&ocirc;ng cụ v&agrave; chiến lược trước khi &aacute;p dụng v&agrave;o t&agrave;i khoản thực.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Kết hợp với Price Action</strong>:\r\n	<ul>\r\n		<li>Sử dụng Footprint Chart để x&aacute;c nhận c&aacute;c t&iacute;n hiệu từ Price Action, tăng độ ch&iacute;nh x&aacute;c.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Theo d&otilde;i một thị trường cụ thể</strong>:\r\n	<ul>\r\n		<li>Bắt đầu với một t&agrave;i sản hoặc thị trường bạn quen thuộc (v&iacute; dụ: Forex, Futures, hoặc cổ phiếu).</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><u><em>Link dowload:https://drive.google.com/drive/folders/1a0r3wi98zWfIYqdpmawMahX3sHzlFRQe&nbsp;</em></u></p>\r\n', 1, '1734770313_Một-trader-dù-newbie-hay-chuyên-nghiệp-đều-phải-nắm-10-kỹ-năng-giao-dịch-này-nếu-muốn-kiếm-được-nhiều-tiền.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(80, 54, 41, 1, 200000),
(81, 55, 44, 1, 65000),
(82, 56, 50, 2, 200000),
(83, 56, 51, 1, 210000),
(84, 57, 53, 1, 139000),
(85, 58, 49, 1, 340000),
(86, 59, 45, 1, 139000),
(87, 60, 50, 1, 200000),
(89, 61, 44, 3, 65000),
(90, 61, 42, 1, 220000),
(91, 62, 45, 2, 139000),
(92, 63, 44, 1, 65000),
(93, 63, 45, 1, 139000),
(94, 64, 52, 1, 45000),
(95, 65, 45, 1, 139000),
(96, 66, 67, 1, 600000),
(97, 67, 72, 1, 950000),
(98, 67, 71, 1, 200000),
(99, 67, 69, 1, 400000),
(100, 68, 69, 1, 400000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `hot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`, `hot`) VALUES
(66, 20, '2024-12-21', 450000, 1, 1),
(67, 18, '2024-12-21', 1212500, 1, 1),
(68, 20, '2024-12-21', 300000, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `author` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `photo1` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `author`, `photo`, `photo1`, `price`, `discount`, `category_id`) VALUES
(66, 'Smart Money Concept Trading', '', '<p><strong>SMC Trading</strong> (Smart Money Concept Trading) l&agrave; một phương ph&aacute;p giao dịch dựa tr&ecirc;n việc theo d&otilde;i v&agrave; ph&acirc;n t&iacute;ch h&agrave;nh động của <strong>&quot;Smart Money&quot;</strong> (tiền th&ocirc;ng minh). Đ&acirc;y l&agrave; một trường ph&aacute;i giao dịch n&acirc;ng cao, sử dụng c&aacute;c kỹ thuật để hiểu c&aacute;ch c&aacute;c tổ chức lớn, quỹ đầu tư, v&agrave; ng&acirc;n h&agrave;ng thực hiện giao dịch, nhằm t&igrave;m ra c&aacute;c cơ hội giao dịch chất lượng cao.</p>\r\n\r\n<h3><strong>1. SMC Trading l&agrave; g&igrave;?</strong></h3>\r\n\r\n<p>SMC dựa tr&ecirc;n việc ph&acirc;n t&iacute;ch h&agrave;nh động gi&aacute; (price action) để t&igrave;m hiểu c&aacute;ch c&aacute;c tổ chức lớn thực hiện giao dịch. Thay v&igrave; sử dụng c&aacute;c chỉ b&aacute;o kỹ thuật phức tạp, phương ph&aacute;p n&agrave;y tập trung v&agrave;o việc hiểu c&aacute;ch c&aacute;c mức gi&aacute; quan trọng, thanh khoản, v&agrave; c&aacute;c v&ugrave;ng cung cầu được thiết lập v&agrave; khai th&aacute;c bởi c&aacute;c tổ chức lớn.</p>\r\n\r\n<h3><strong>2. C&aacute;c yếu tố cốt l&otilde;i của SMC Trading</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Market Structure (Cấu tr&uacute;c thị trường):</strong> X&aacute;c định xu hướng ch&iacute;nh của thị trường (tăng, giảm, hoặc đi ngang) bằng c&aacute;ch quan s&aacute;t c&aacute;c đỉnh (higher high, lower high) v&agrave; đ&aacute;y (higher low, lower low).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Order Block (Khối lệnh):</strong> L&agrave; c&aacute;c v&ugrave;ng gi&aacute; m&agrave; tổ chức lớn thực hiện giao dịch, thường dẫn đến sự đảo chiều hoặc tiếp diễn xu hướng. Đ&acirc;y l&agrave; điểm m&agrave; trader c&oacute; thể t&igrave;m kiếm cơ hội v&agrave;o lệnh.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Liquidity (Thanh khoản):</strong> Hiểu c&aacute;ch c&aacute;c tổ chức lớn săn thanh khoản (stop loss hoặc lệnh chờ) để th&uacute;c đẩy biến động gi&aacute;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Imbalance (Sự mất c&acirc;n bằng):</strong> Những v&ugrave;ng gi&aacute; m&agrave; cung v&agrave; cầu kh&ocirc;ng c&acirc;n bằng, thường xảy ra khi thị trường di chuyển nhanh qua c&aacute;c mức gi&aacute; m&agrave; kh&ocirc;ng c&oacute; sự kiểm tra lại.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mitigation (B&ugrave; trừ):</strong> C&aacute;c tổ chức lớn thường quay lại để kiểm tra c&aacute;c v&ugrave;ng gi&aacute; m&agrave; họ đ&atilde; mở lệnh nhằm ho&agrave;n th&agrave;nh khối lượng giao dịch.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>3. Lợi &iacute;ch của SMC Trading</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Tập trung v&agrave;o logic thị trường:</strong> Phương ph&aacute;p n&agrave;y gi&uacute;p trader hiểu r&otilde; hơn về c&aacute;ch thị trường vận h&agrave;nh thay v&igrave; chỉ dựa v&agrave;o t&iacute;n hiệu từ c&aacute;c chỉ b&aacute;o.</li>\r\n	<li><strong>Tối ưu h&oacute;a điểm v&agrave;o lệnh v&agrave; dừng lỗ:</strong> Việc hiểu c&aacute;c v&ugrave;ng gi&aacute; quan trọng gi&uacute;p trader đặt lệnh ch&iacute;nh x&aacute;c hơn.</li>\r\n	<li><strong>Tăng x&aacute;c suất thắng lợi:</strong> Khi giao dịch theo hướng của c&aacute;c &quot;smart money,&quot; trader c&oacute; thể giảm thiểu rủi ro v&agrave; tăng cơ hội th&agrave;nh c&ocirc;ng.</li>\r\n</ul>\r\n\r\n<h3><strong>4. C&aacute;ch &aacute;p dụng SMC Trading</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>X&aacute;c định cấu tr&uacute;c thị trường:</strong> Ph&acirc;n t&iacute;ch biểu đồ để x&aacute;c định xu hướng ch&iacute;nh.</li>\r\n	<li><strong>T&igrave;m kiếm order block:</strong> X&aacute;c định c&aacute;c v&ugrave;ng gi&aacute; quan trọng m&agrave; tổ chức lớn c&oacute; thể đ&atilde; thực hiện giao dịch.</li>\r\n	<li><strong>Quan s&aacute;t thanh khoản:</strong> T&igrave;m kiếm c&aacute;c v&ugrave;ng c&oacute; khả năng bị &quot;săn stop loss&quot; để dự đo&aacute;n hướng di chuyển tiếp theo.</li>\r\n	<li><strong>Chờ đợi x&aacute;c nhận:</strong> Đợi t&iacute;n hiệu từ h&agrave;nh động gi&aacute; (price action) tại c&aacute;c v&ugrave;ng quan trọng trước khi v&agrave;o lệnh.</li>\r\n</ul>\r\n\r\n<h3><strong>5. Lưu &yacute; khi giao dịch SMC</strong></h3>\r\n\r\n<ul>\r\n	<li>Phương ph&aacute;p n&agrave;y y&ecirc;u cầu kiến thức s&acirc;u về ph&acirc;n t&iacute;ch kỹ thuật v&agrave; h&agrave;nh động gi&aacute;.</li>\r\n	<li>Cần thực h&agrave;nh tr&ecirc;n t&agrave;i khoản demo trước khi &aacute;p dụng v&agrave;o giao dịch thực tế.</li>\r\n	<li>SMC kh&ocirc;ng đảm bảo thắng lợi 100%, cần quản l&yacute; rủi ro cẩn thận.</li>\r\n</ul>\r\n\r\n<h3><strong>6. Kết luận</strong></h3>\r\n\r\n<p>SMC Trading l&agrave; một phương ph&aacute;p giao dịch hiệu quả d&agrave;nh cho những trader muốn hiểu r&otilde; c&aacute;ch thị trường hoạt động dưới g&oacute;c nh&igrave;n của c&aacute;c tổ chức lớn. Tuy nhi&ecirc;n, để th&agrave;nh c&ocirc;ng với phương ph&aacute;p n&agrave;y, bạn cần d&agrave;nh thời gian nghi&ecirc;n cứu, luyện tập v&agrave; ph&aacute;t triển kỹ năng ph&acirc;n t&iacute;ch.</p>\r\n', 1, 'Beyonder', '1734772761_Thumnail-khoa-hoc.jpg', '', 500000, 25, 43),
(67, 'ICT Concepts', '<p>ICT Concept Trading (Inner Circle Trader) l&agrave; một phong c&aacute;ch giao dịch dựa tr&ecirc;n ph&acirc;n t&iacute;ch h&agrave;nh động gi&aacute; (price action) v&agrave; cơ chế thị trường. Đ&acirc;y l&agrave; một phương ph&aacute;p nổi tiếng do Michael J. Huddleston, thường được gọi l&agrave; &quot;The Inner Circle Trader (ICT)&quot;, ph&aacute;t triển. Phương ph&aacute;p n&agrave;y tập trung v&agrave;o việc hiểu r&otilde; c&aacute;ch c&aacute;c tổ chức t&agrave;i ch&iacute;nh lớn (như ng&acirc;n h&agrave;ng v&agrave; quỹ đầu tư) hoạt động v&agrave; ảnh hưởng đến thị trường.</p>\r\n', '<h3>C&aacute;c đặc điểm ch&iacute;nh của ICT Concept Trading:</h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Hiểu cơ chế thị trường</strong>:<br />\r\n	ICT kh&ocirc;ng chỉ tập trung v&agrave;o c&aacute;c m&ocirc; h&igrave;nh nến m&agrave; c&ograve;n v&agrave;o c&aacute;ch thị trường vận h&agrave;nh, như c&aacute;ch thanh khoản được thu h&uacute;t, c&aacute;c mức gi&aacute; &quot;Smart Money&quot; quan t&acirc;m v&agrave; c&aacute;c khu vực gi&aacute; trị.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Focus v&agrave;o thanh khoản (Liquidity)</strong>:<br />\r\n	ICT cho rằng c&aacute;c tổ chức lớn lu&ocirc;n t&igrave;m c&aacute;ch thu h&uacute;t thanh khoản để thực hiện giao dịch lớn m&agrave; kh&ocirc;ng g&acirc;y biến động gi&aacute;. Do đ&oacute;, việc hiểu c&aacute;ch thanh khoản được thu h&uacute;t l&agrave; ch&igrave;a kh&oacute;a để dự đo&aacute;n h&agrave;nh vi gi&aacute;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Smart Money Concept (SMC)</strong>:<br />\r\n	ICT tập trung v&agrave;o c&aacute;c hoạt động của &quot;Smart Money&quot; (tiền th&ocirc;ng minh), bao gồm:</p>\r\n\r\n	<ul>\r\n		<li>Breaker Block</li>\r\n		<li>Order Block</li>\r\n		<li>Fair Value Gap (FVG)</li>\r\n		<li>Liquidity Pool</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; rủi ro</strong>:<br />\r\n	Phương ph&aacute;p n&agrave;y nhấn mạnh tầm quan trọng của quản l&yacute; rủi ro chặt chẽ v&agrave; t&iacute;nh kỷ luật trong giao dịch.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&aacute;c c&ocirc;ng cụ ph&acirc;n t&iacute;ch kỹ thuật đặc th&ugrave;</strong>:<br />\r\n	ICT sử dụng c&aacute;c c&ocirc;ng cụ như Fibonacci, mức kh&aacute;ng cự/hỗ trợ, v&agrave; cấu tr&uacute;c thị trường (Market Structure) để x&aacute;c định điểm v&agrave;o lệnh v&agrave; tho&aacute;t lệnh.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3>Lợi &iacute;ch của ICT Concept Trading:</h3>\r\n\r\n<ul>\r\n	<li><strong>Hiểu s&acirc;u hơn về thị trường</strong>: Gi&uacute;p nh&agrave; giao dịch nhận biết được những t&iacute;n hiệu thực sự từ thị trường, kh&ocirc;ng chỉ dựa tr&ecirc;n c&aacute;c chỉ b&aacute;o truyền thống.</li>\r\n	<li><strong>Tăng khả năng th&agrave;nh c&ocirc;ng</strong>: Bằng c&aacute;ch theo d&otilde;i d&ograve;ng tiền th&ocirc;ng minh, nh&agrave; giao dịch c&oacute; thể dự đo&aacute;n c&aacute;c bước đi lớn của thị trường.</li>\r\n	<li><strong>Chiến lược cụ thể</strong>: ICT cung cấp c&aacute;c phương ph&aacute;p chi tiết cho từng loại thị trường như forex, chứng kho&aacute;n, v&agrave; h&agrave;ng h&oacute;a.</li>\r\n</ul>\r\n\r\n<h3>Những điều cần lưu &yacute;:</h3>\r\n\r\n<ul>\r\n	<li>ICT l&agrave; một phương ph&aacute;p phức tạp, y&ecirc;u cầu sự nghi&ecirc;n cứu v&agrave; thực h&agrave;nh nghi&ecirc;m t&uacute;c.</li>\r\n	<li>Kh&ocirc;ng phải ai cũng c&oacute; thể th&agrave;nh c&ocirc;ng ngay lập tức với phương ph&aacute;p n&agrave;y, cần thời gian để l&agrave;m quen v&agrave; &aacute;p dụng v&agrave;o thực tế.</li>\r\n</ul>\r\n', 1, 'ICT', '1734774252_maxxasatori221200022.jpg', '', 600000, 25, 42),
(68, 'Sóng Elliott', '', '', 0, 'Công Tuyền', '1734774977_6.png', '', 3000000, 0, 45),
(69, 'Price Action', '<p><strong>Price Action</strong> (H&agrave;nh động gi&aacute;) l&agrave; một phương ph&aacute;p ph&acirc;n t&iacute;ch thị trường t&agrave;i ch&iacute;nh dựa tr&ecirc;n việc quan s&aacute;t v&agrave; diễn giải c&aacute;c biến động gi&aacute; tr&ecirc;n biểu đồ m&agrave; kh&ocirc;ng sử dụng nhiều chỉ b&aacute;o kỹ thuật. Thay v&igrave; dựa v&agrave;o c&aacute;c chỉ b&aacute;o phức tạp, Price Action tập trung v&agrave;o việc hiểu cấu tr&uacute;c thị trường, c&aacute;c mẫu h&igrave;nh gi&aacute; (chart patterns), v&agrave; h&agrave;nh vi của gi&aacute; để đưa ra quyết định giao dịch.</p>\r\n', '<h3><strong>Đặc điểm ch&iacute;nh của Price Action</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Tập trung v&agrave;o biểu đồ gi&aacute;</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Price Action chủ yếu dựa v&agrave;o biểu đồ nến, thanh, hoặc đường để ph&acirc;n t&iacute;ch.</li>\r\n		<li>Kh&ocirc;ng sử dụng nhiều chỉ b&aacute;o hoặc chỉ sử dụng để tham khảo (v&iacute; dụ: đường trung b&igrave;nh động).</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đọc cấu tr&uacute;c thị trường</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Nhận diện xu hướng thị trường (Tăng, Giảm, hoặc Đi ngang).</li>\r\n		<li>Ph&acirc;n t&iacute;ch c&aacute;c mức hỗ trợ (Support) v&agrave; kh&aacute;ng cự (Resistance).</li>\r\n		<li>X&aacute;c định c&aacute;c mức gi&aacute; quan trọng m&agrave; thị trường c&oacute; khả năng phản ứng mạnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&aacute;c mẫu h&igrave;nh h&agrave;nh động gi&aacute; phổ biến</strong>:</p>\r\n\r\n	<ul>\r\n		<li><strong>Pin Bar</strong>: C&acirc;y nến c&oacute; đu&ocirc;i d&agrave;i, biểu thị sự từ chối gi&aacute; tại một mức nhất định.</li>\r\n		<li><strong>Inside Bar</strong>: Nến nằm ho&agrave;n to&agrave;n trong phạm vi nến trước, thể hiện sự t&iacute;ch lũy hoặc chờ đợi.</li>\r\n		<li><strong>Engulfing (Bao tr&ugrave;m)</strong>: Một c&acirc;y nến lớn bao tr&ugrave;m to&agrave;n bộ c&acirc;y nến trước, biểu thị sự đảo chiều mạnh mẽ.</li>\r\n		<li><strong>Breakout</strong>: Gi&aacute; ph&aacute; vỡ một mức hỗ trợ hoặc kh&aacute;ng cự, thường đi k&egrave;m với khối lượng giao dịch lớn.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kh&ocirc;ng dự đo&aacute;n, m&agrave; phản ứng</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Thay v&igrave; cố gắng dự đo&aacute;n tương lai, Price Action gi&uacute;p nh&agrave; giao dịch phản ứng với những g&igrave; gi&aacute; hiện tại đang thể hiện.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dựa v&agrave;o h&agrave;nh vi thị trường</strong>:</p>\r\n\r\n	<ul>\r\n		<li>H&agrave;nh động gi&aacute; phản &aacute;nh t&acirc;m l&yacute; của nh&agrave; đầu tư tr&ecirc;n thị trường (sợ h&atilde;i, tham lam, do dự).</li>\r\n		<li>N&oacute; gi&uacute;p nh&agrave; giao dịch hiểu d&ograve;ng tiền v&agrave; quyết định của c&aacute;c b&ecirc;n tham gia.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>Ưu điểm của Price Action</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Đơn giản v&agrave; r&otilde; r&agrave;ng</strong>: Kh&ocirc;ng cần qu&aacute; nhiều chỉ b&aacute;o phức tạp.</li>\r\n	<li><strong>Linh hoạt</strong>: Ph&ugrave; hợp với nhiều khung thời gian (timeframes) v&agrave; thị trường (forex, chứng kho&aacute;n, h&agrave;ng h&oacute;a).</li>\r\n	<li><strong>Tập trung v&agrave;o bản chất thị trường</strong>: Gi&uacute;p nh&agrave; giao dịch hiểu s&acirc;u hơn về c&aacute;ch thị trường hoạt động.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>Nhược điểm của Price Action</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Chủ quan</strong>: C&aacute;ch mỗi nh&agrave; giao dịch diễn giải h&agrave;nh động gi&aacute; c&oacute; thể kh&aacute;c nhau.</li>\r\n	<li><strong>Đ&ograve;i hỏi kinh nghiệm</strong>: Cần thời gian để nhận diện ch&iacute;nh x&aacute;c c&aacute;c mẫu h&igrave;nh gi&aacute; v&agrave; cấu tr&uacute;c thị trường.</li>\r\n	<li><strong>Kh&ocirc;ng c&oacute; t&iacute;n hiệu cụ thể</strong>: Kh&aacute;c với chỉ b&aacute;o kỹ thuật, Price Action kh&ocirc;ng cung cấp t&iacute;n hiệu mua hoặc b&aacute;n r&otilde; r&agrave;ng m&agrave; y&ecirc;u cầu sự ph&aacute;n đo&aacute;n.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>C&aacute;ch &aacute;p dụng Price Action trong giao dịch</strong></h3>\r\n\r\n<ol>\r\n	<li><strong>X&aacute;c định xu hướng</strong>: Sử dụng đỉnh cao hơn (Higher High) v&agrave; đ&aacute;y cao hơn (Higher Low) cho xu hướng tăng; hoặc đỉnh thấp hơn (Lower High) v&agrave; đ&aacute;y thấp hơn (Lower Low) cho xu hướng giảm.</li>\r\n	<li><strong>Vẽ c&aacute;c mức hỗ trợ v&agrave; kh&aacute;ng cự</strong>: Nhận diện c&aacute;c v&ugrave;ng gi&aacute; m&agrave; thị trường thường xuy&ecirc;n phản ứng.</li>\r\n	<li><strong>Theo d&otilde;i mẫu h&igrave;nh nến</strong>: T&igrave;m kiếm c&aacute;c t&iacute;n hiệu đảo chiều hoặc tiếp diễn xu hướng.</li>\r\n	<li><strong>Xem x&eacute;t khối lượng giao dịch</strong>: Kết hợp với h&agrave;nh động gi&aacute; để x&aacute;c nhận c&aacute;c điểm breakout hoặc đảo chiều.</li>\r\n</ol>\r\n', 1, 'Nhật Hoài Trader', '1734775524_Slide4.png', '', 400000, 25, 49),
(70, 'Wyckoff', '<p><strong>Phương ph&aacute;p Wyckoff</strong> l&agrave; một l&yacute; thuyết ph&acirc;n t&iacute;ch thị trường t&agrave;i ch&iacute;nh được ph&aacute;t triển bởi Richard D. Wyckoff v&agrave;o đầu thế kỷ 20. Phương ph&aacute;p n&agrave;y đặc biệt nổi tiếng trong giao dịch cổ phiếu, nhưng cũng được &aacute;p dụng rộng r&atilde;i tr&ecirc;n thị trường forex, h&agrave;ng h&oacute;a v&agrave; tiền điện tử. Wyckoff tập trung v&agrave;o c&aacute;ch c&aacute;c &quot;tay to&quot; (Smart Money, hoặc Composite Man) vận h&agrave;nh để ảnh hưởng đến thị trường v&agrave; c&aacute;ch nh&agrave; giao dịch c&aacute; nh&acirc;n c&oacute; thể sử dụng kiến thức n&agrave;y để đưa ra quyết định s&aacute;ng suốt.</p>\r\n', '<h3><strong>Nguy&ecirc;n l&yacute; ch&iacute;nh của phương ph&aacute;p Wyckoff</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Composite Man (Người Tổng Hợp)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Wyckoff tưởng tượng thị trường như được kiểm so&aacute;t bởi một nh&acirc;n vật tưởng tượng &ndash; Composite Man.</li>\r\n		<li>Composite Man đại diện cho c&aacute;c nh&agrave; giao dịch lớn (Smart Money), những người tạo ra thanh khoản v&agrave; xu hướng thị trường.</li>\r\n		<li>Nh&agrave; giao dịch nhỏ lẻ cần học c&aacute;ch &quot;đọc&quot; h&agrave;nh động của Composite Man th&ocirc;ng qua gi&aacute; v&agrave; khối lượng.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>3 Quy luật cơ bản</strong>:</p>\r\n\r\n	<ul>\r\n		<li><strong>Luật Cung v&agrave; Cầu (Supply and Demand)</strong>:\r\n\r\n		<ul>\r\n			<li>Khi cầu lớn hơn cung, gi&aacute; tăng. Khi cung lớn hơn cầu, gi&aacute; giảm.</li>\r\n		</ul>\r\n		</li>\r\n		<li><strong>Luật Nguy&ecirc;n Nh&acirc;n v&agrave; Kết Quả (Cause and Effect)</strong>:\r\n		<ul>\r\n			<li>Qu&aacute; tr&igrave;nh t&iacute;ch lũy hoặc ph&acirc;n phối (Cause) tạo ra c&aacute;c xu hướng tăng hoặc giảm lớn (Effect).</li>\r\n		</ul>\r\n		</li>\r\n		<li><strong>Luật Nỗ lực v&agrave; Kết quả (Effort vs. Result)</strong>:\r\n		<ul>\r\n			<li>Gi&aacute; v&agrave; khối lượng giao dịch phải tương quan. Nếu khối lượng tăng mạnh nhưng gi&aacute; kh&ocirc;ng thay đổi nhiều, c&oacute; thể l&agrave; dấu hiệu thị trường đảo chiều.</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>Chu kỳ thị trường theo Wyckoff</strong></h3>\r\n\r\n<p>Phương ph&aacute;p Wyckoff chia thị trường th&agrave;nh 4 giai đoạn ch&iacute;nh:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>T&iacute;ch lũy (Accumulation)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Composite Man mua v&agrave;o sau một giai đoạn giảm gi&aacute;.</li>\r\n		<li>Gi&aacute; dao động trong một v&ugrave;ng hẹp, thường h&igrave;nh th&agrave;nh c&aacute;c m&ocirc; h&igrave;nh như Range hoặc Consolidation.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tăng gi&aacute; (Markup)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Gi&aacute; bắt đầu tăng khi Composite Man đ&atilde; t&iacute;ch lũy đủ v&agrave; cầu vượt cung.</li>\r\n		<li>Xu hướng tăng mạnh, nh&agrave; giao dịch nhỏ lẻ bắt đầu tham gia v&agrave;o thị trường.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n phối (Distribution)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Composite Man b&aacute;n ra khi gi&aacute; đ&atilde; tăng đ&aacute;ng kể.</li>\r\n		<li>Thị trường tạo c&aacute;c đỉnh v&agrave; dao động trong v&ugrave;ng hẹp trước khi giảm.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Giảm gi&aacute; (Markdown)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Sau khi Composite Man đ&atilde; b&aacute;n hết, gi&aacute; bắt đầu giảm do cung vượt cầu.</li>\r\n		<li>Xu hướng giảm mạnh, nh&agrave; giao dịch nhỏ lẻ thường bị kẹt trong xu hướng n&agrave;y.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>C&ocirc;ng cụ ch&iacute;nh trong phương ph&aacute;p Wyckoff</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Sơ đồ t&iacute;ch lũy v&agrave; ph&acirc;n phối</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Sử dụng c&aacute;c m&ocirc; h&igrave;nh để nhận biết c&aacute;c giai đoạn của chu kỳ thị trường.</li>\r\n		<li>Hai sơ đồ ch&iacute;nh:\r\n		<ul>\r\n			<li><strong>Sơ đồ T&iacute;ch lũy</strong>: Cho thấy c&aacute;ch Composite Man mua dần trước khi xu hướng tăng bắt đầu.</li>\r\n			<li><strong>Sơ đồ Ph&acirc;n phối</strong>: Cho thấy c&aacute;ch Composite Man b&aacute;n dần trước khi xu hướng giảm bắt đầu.</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Khối lượng giao dịch (Volume)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Wyckoff đặc biệt nhấn mạnh mối quan hệ giữa khối lượng v&agrave; h&agrave;nh động gi&aacute;.</li>\r\n		<li>Ph&acirc;n t&iacute;ch khối lượng để x&aacute;c định sự tham gia của Composite Man.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Spring v&agrave; Upthrust</strong>:</p>\r\n\r\n	<ul>\r\n		<li><strong>Spring</strong>: Một c&uacute; giảm mạnh dưới v&ugrave;ng hỗ trợ trước khi gi&aacute; đảo chiều tăng.</li>\r\n		<li><strong>Upthrust</strong>: Một c&uacute; tăng mạnh vượt v&ugrave;ng kh&aacute;ng cự trước khi gi&aacute; đảo chiều giảm.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>Ứng dụng Wyckoff trong giao dịch</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Nhận biết c&aacute;c giai đoạn của thị trường</strong>:</p>\r\n\r\n	<ul>\r\n		<li>X&aacute;c định thị trường đang ở giai đoạn n&agrave;o (T&iacute;ch lũy, Tăng gi&aacute;, Ph&acirc;n phối, Giảm gi&aacute;) để giao dịch ph&ugrave; hợp.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sử dụng c&aacute;c m&ocirc; h&igrave;nh</strong>:</p>\r\n\r\n	<ul>\r\n		<li>&Aacute;p dụng sơ đồ t&iacute;ch lũy hoặc ph&acirc;n phối để t&igrave;m điểm v&agrave;o v&agrave; tho&aacute;t lệnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kết hợp với quản l&yacute; rủi ro</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Đặt stop-loss tại c&aacute;c mức quan trọng như v&ugrave;ng hỗ trợ hoặc kh&aacute;ng cự.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>Ưu điểm của phương ph&aacute;p Wyckoff</strong></h3>\r\n\r\n<ul>\r\n	<li>Hiểu s&acirc;u về c&aacute;ch thị trường vận h&agrave;nh.</li>\r\n	<li>Dễ d&agrave;ng nhận diện c&aacute;c xu hướng ch&iacute;nh v&agrave; điểm đảo chiều.</li>\r\n	<li>Gi&uacute;p tr&aacute;nh bị &quot;bẫy gi&aacute;&quot; do c&aacute;c tay to tạo ra.</li>\r\n</ul>\r\n\r\n<h3><strong>Nhược điểm</strong></h3>\r\n\r\n<ul>\r\n	<li>Phức tạp, y&ecirc;u cầu thời gian để nghi&ecirc;n cứu v&agrave; thực h&agrave;nh.</li>\r\n	<li>Ph&acirc;n t&iacute;ch chủ yếu dựa tr&ecirc;n quan s&aacute;t, c&oacute; thể mang t&iacute;nh chủ quan.</li>\r\n</ul>\r\n', 1, 'Ratio Trading', '1734775931_maxresdefault.jpg', '', 800000, 0, 44),
(71, 'Relative Strength Indicator(RSI)', '<p><strong>Relative Strength Index (RSI)</strong> l&agrave; một chỉ b&aacute;o dao động (oscillator) phổ biến trong ph&acirc;n t&iacute;ch kỹ thuật, được ph&aacute;t triển bởi J. Welles Wilder Jr. RSI gi&uacute;p đo lường sức mạnh tương đối của gi&aacute; trong một khoảng thời gian nhất định, từ đ&oacute; x&aacute;c định c&aacute;c v&ugrave;ng qu&aacute; mua (overbought) hoặc qu&aacute; b&aacute;n (oversold) để dự đo&aacute;n khả năng đảo chiều gi&aacute;.</p>\r\n', '<h3><strong>C&ocirc;ng thức t&iacute;nh RSI</strong></h3>\r\n\r\n<p>RSI được t&iacute;nh theo c&ocirc;ng thức:</p>\r\n\r\n<p>RSI=100&minus;1001+RSRSI = 100 - \\frac{100}{1 + RS}RSI=100&minus;1+RS100​</p>\r\n\r\n<p>Trong đ&oacute;:</p>\r\n\r\n<ul>\r\n	<li>RS=Trung&nbsp;bıˋnh&nbsp;lợi&nbsp;nhuận&nbsp;(Average&nbsp;Gain)Trung&nbsp;bıˋnh&nbsp;lo&circ;&tilde;&nbsp;(Average&nbsp;Loss)RS = \\frac{\\text{Trung b&igrave;nh lợi nhuận (Average Gain)}}{\\text{Trung b&igrave;nh lỗ (Average Loss)}}RS=Trung&nbsp;bıˋnh&nbsp;lo&circ;&tilde;&nbsp;(Average&nbsp;Loss)Trung&nbsp;bıˋnh&nbsp;lợi&nbsp;nhuận&nbsp;(Average&nbsp;Gain)​</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng thường:</p>\r\n\r\n<ul>\r\n	<li>RSI được t&iacute;nh trong khoảng thời gian <strong>14 phi&ecirc;n</strong> (mặc định).</li>\r\n	<li>Gi&aacute; trị RSI dao động từ <strong>0 đến 100</strong>.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>&Yacute; nghĩa của RSI</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>V&ugrave;ng Qu&aacute; mua (Overbought)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>RSI &gt; 70: Gi&aacute; c&oacute; thể đ&atilde; tăng qu&aacute; mức v&agrave; c&oacute; khả năng đảo chiều giảm.</li>\r\n		<li>Đ&acirc;y l&agrave; t&iacute;n hiệu cho thấy thị trường c&oacute; thể đang ở trạng th&aacute;i &quot;n&oacute;ng&quot; v&agrave; cần điều chỉnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>V&ugrave;ng Qu&aacute; b&aacute;n (Oversold)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>RSI &lt; 30: Gi&aacute; c&oacute; thể đ&atilde; giảm qu&aacute; mức v&agrave; c&oacute; khả năng đảo chiều tăng.</li>\r\n		<li>Đ&acirc;y l&agrave; t&iacute;n hiệu cho thấy thị trường c&oacute; thể đang bị b&aacute;n qu&aacute; đ&agrave;.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>V&ugrave;ng Trung t&iacute;nh</strong>:</p>\r\n\r\n	<ul>\r\n		<li>RSI từ 30 đến 70: Thị trường kh&ocirc;ng ở trạng th&aacute;i qu&aacute; mua hay qu&aacute; b&aacute;n. Đ&acirc;y l&agrave; giai đoạn gi&aacute; thường dao động ổn định.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Divergence (Ph&acirc;n kỳ)</strong>:</p>\r\n\r\n	<ul>\r\n		<li><strong>Ph&acirc;n kỳ dương (Bullish Divergence)</strong>:\r\n\r\n		<ul>\r\n			<li>Gi&aacute; tạo đ&aacute;y thấp hơn, nhưng RSI tạo đ&aacute;y cao hơn &rarr; Dấu hiệu khả năng gi&aacute; đảo chiều tăng.</li>\r\n		</ul>\r\n		</li>\r\n		<li><strong>Ph&acirc;n kỳ &acirc;m (Bearish Divergence)</strong>:\r\n		<ul>\r\n			<li>Gi&aacute; tạo đỉnh cao hơn, nhưng RSI tạo đỉnh thấp hơn &rarr; Dấu hiệu khả năng gi&aacute; đảo chiều giảm.</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>Ứng dụng của RSI trong giao dịch</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>X&aacute;c định v&ugrave;ng qu&aacute; mua/qu&aacute; b&aacute;n</strong>:</p>\r\n\r\n	<ul>\r\n		<li>RSI &gt; 70: Xem x&eacute;t b&aacute;n hoặc tho&aacute;t lệnh mua.</li>\r\n		<li>RSI &lt; 30: Xem x&eacute;t mua hoặc tho&aacute;t lệnh b&aacute;n.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n kỳ RSI</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Sử dụng ph&acirc;n kỳ để nhận biết sớm khả năng đảo chiều xu hướng.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>RSI Breakout</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Khi RSI vượt qua mức 50, c&oacute; thể x&aacute;c nhận xu hướng tăng hoặc giảm.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kết hợp RSI với c&aacute;c c&ocirc;ng cụ kh&aacute;c</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Kết hợp RSI với hỗ trợ, kh&aacute;ng cự hoặc đường trung b&igrave;nh động để tăng độ ch&iacute;nh x&aacute;c.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<hr />\r\n<h3><strong>Ưu điểm của RSI</strong></h3>\r\n\r\n<ul>\r\n	<li>Đơn giản v&agrave; dễ hiểu.</li>\r\n	<li>Hiệu quả trong việc x&aacute;c định v&ugrave;ng qu&aacute; mua/qu&aacute; b&aacute;n v&agrave; t&iacute;n hiệu đảo chiều.</li>\r\n	<li>C&oacute; thể &aacute;p dụng cho nhiều thị trường: forex, chứng kho&aacute;n, h&agrave;ng h&oacute;a, tiền điện tử.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>Nhược điểm của RSI</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>T&iacute;n hiệu sai (False Signals)</strong>:\r\n\r\n	<ul>\r\n		<li>RSI c&oacute; thể đưa ra t&iacute;n hiệu mua/b&aacute;n sai, đặc biệt trong thị trường c&oacute; xu hướng mạnh.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Kh&ocirc;ng ph&ugrave; hợp với mọi điều kiện thị trường</strong>:\r\n	<ul>\r\n		<li>Trong thị trường sideway, RSI hoạt động tốt, nhưng trong xu hướng mạnh, chỉ b&aacute;o n&agrave;y c&oacute; thể bị &quot;qu&aacute; tải&quot;.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>C&aacute;ch tối ưu RSI</strong></h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>T&ugrave;y chỉnh chu kỳ (Period)</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Chu kỳ ngắn hơn (&lt;14): Nhạy hơn nhưng dễ tạo t&iacute;n hiệu sai.</li>\r\n		<li>Chu kỳ d&agrave;i hơn (&gt;14): &Iacute;t nhạy hơn nhưng đ&aacute;ng tin cậy hơn.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Điều chỉnh v&ugrave;ng qu&aacute; mua/qu&aacute; b&aacute;n</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Trong thị trường c&oacute; xu hướng mạnh:\r\n		<ul>\r\n			<li>RSI &gt; 80: Qu&aacute; mua.</li>\r\n			<li>RSI &lt; 20: Qu&aacute; b&aacute;n.</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', 1, 'Nukida', '1734775999_rsi-indicator-forex-blog-preview.jpg', '', 200000, 0, 47),
(72, 'Bull Bear Law', '', '', 1, 'Nukida', '1734776423_Screenshot 2024-12-21 172004.png', '', 950000, 25, 50),
(73, ' Pro Training Trọn Đời', '', '<p>Học lu&ocirc;n bộ quy tắc được kiểm chứng để &aacute;p dụng ngay, học c&aacute;ch kiểm chứng, thống k&ecirc; phương ph&aacute;p, tối ưu nhiều điểm v&agrave;o kh&aacute;c nhau</p>\r\n', 0, 'Nukida', '1734776592_Screenshot 2024-12-21 172033.png', '', 999000, 25, 51),
(74, 'Smart Money Concept (SMC)', '<p><strong>Smart Money Concept (SMC)</strong> l&agrave; một phương ph&aacute;p giao dịch tập trung v&agrave;o việc hiểu v&agrave; đi theo d&ograve;ng tiền lớn trong thị trường, thường gọi l&agrave; &quot;Smart Money&quot; (Tiền th&ocirc;ng minh). Đ&acirc;y l&agrave; c&aacute;ch tiếp cận dựa tr&ecirc;n h&agrave;nh vi của c&aacute;c tổ chức t&agrave;i ch&iacute;nh lớn như ng&acirc;n h&agrave;ng, quỹ đầu tư, v&agrave; những nh&agrave; giao dịch chuy&ecirc;n nghiệp, thay v&igrave; c&aacute;c chỉ b&aacute;o truyền thống.</p>\r\n\r\n<p>SMC được x&acirc;y dựng tr&ecirc;n nền tảng của c&aacute;c l&yacute; thuyết h&agrave;nh động gi&aacute; (Price Action) v&agrave; ph&acirc;n t&iacute;ch cơ chế thị trường (Market Structure). N&oacute; đặc biệt hữu &iacute;ch để x&aacute;c định xu hướng, điểm v&agrave;o lệnh v&agrave; tho&aacute;t lệnh ch&iacute;nh x&aacute;c hơn.</p>\r\n', '', 0, 'Quoc Dung Invest', '1734777041_maxresdefault (1).jpg', '', 300000, 0, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(23, 20, 5),
(24, 20, 5),
(25, 20, 1),
(26, 20, 3),
(27, 20, 2),
(28, 20, 1),
(29, 11, 5),
(30, 11, 5),
(31, 19, 4),
(32, 20, 2),
(33, 19, 5),
(34, 19, 5),
(35, 53, 1),
(36, 52, 5),
(37, 52, 5),
(38, 52, 5),
(39, 52, 5),
(40, 52, 5),
(41, 52, 5),
(42, 53, 5),
(43, 53, 5),
(44, 52, 4),
(45, 52, 1),
(46, 49, 1),
(47, 52, 1),
(48, 45, 1),
(49, 41, 1),
(50, 38, 1),
(51, 45, 1),
(52, 46, 1),
(53, 46, 4),
(54, 45, 5),
(55, 46, 5),
(56, 53, 5),
(57, 45, 5),
(58, 46, 4),
(59, 46, 2),
(60, 46, 5),
(61, 45, 5),
(62, 45, 5),
(63, 46, 5),
(64, 46, 5),
(65, 45, 5),
(66, 46, 5),
(67, 46, 5),
(68, 46, 5),
(69, 46, 5),
(70, 46, 1),
(71, 44, 5),
(72, 46, 5),
(73, 52, 5),
(74, 53, 5),
(75, 46, 5),
(76, 50, 5),
(77, 46, 5),
(78, 44, 5),
(79, 46, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `photo`, `name`) VALUES
(4, '1734754080_5.png', 'slide1'),
(5, '1734754091_6.png', 'slide2'),
(6, '1734754102_7.png', 'slide3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'admin2', 'admin2@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'admin3', 'admin3@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'admin4', 'admin4@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'admin5', 'admin5@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'admin6', 'admin6@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
