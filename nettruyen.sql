-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 14, 2024 lúc 03:39 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nettruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `truyen_id` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `slug_chapter` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `truyen_id`, `tieude`, `slug_chapter`, `tomtat`, `noidung`, `kichhoat`) VALUES
(1, 4, 'Chương 1 - Ánh Sáng Nơi Cuối Con Đường', 'chuong-1-anh-sang-noi-cuoi-con-duong', 'Ánh Sáng Nơi Cuối Con Đường', '<p>Giữa bầu trời m&acirc;y đen nằm d&agrave;y đặc, thỉnh thoảng sẽ bốc l&ecirc;n một tia chớp, k&egrave;m theo từng tiếng sấm rền, một trận mưa lớn sắp xảy ra.<br />\r\n<br />\r\nB&ecirc;n trong Ngọa Hổ th&agrave;nh, Trầm Tường ngửa đầu nh&igrave;n bầu trời, th&igrave; th&agrave;o n&oacute;i rằng:<br />\r\n<br />\r\n- Kh&ocirc;ng thể k&eacute;o d&agrave;i được nữa, ta phải nhanh ch&oacute;ng t&igrave;m được linh dược tốt, bằng kh&ocirc;ng ta kh&oacute; c&oacute; thể c&oacute; cơ hội xoay người.<br />\r\n<br />\r\nNăm nay Trầm Tường mười s&aacute;u tuổi, th&acirc;n h&igrave;nh so với bạn c&ugrave;ng lứa tuổi th&igrave; cường tr&aacute;ng cao lớn hơn, th&acirc;n thể n&agrave;y c&ugrave;ng gương mặt tuấn t&uacute; mang theo t&iacute;nh trẻ con, nh&igrave;n rất l&agrave; tr&aacute;i ngược, nhưng cặp mắt kia của hắn lại th&acirc;m th&uacute;y kh&ocirc;ng tương xứng c&ugrave;ng tuổi t&aacute;c, xem ra nh&agrave;n đến muốn th&agrave;nh thục hơn so với bạn c&ugrave;ng lứa tuổi một &iacute;t.<br />\r\n<br />\r\nL&uacute;c n&agrave;y Trầm Tường muốn đi h&aacute;i thuốc, mặc d&ugrave; hắn l&agrave; trưởng t&ocirc;n tử của Trầm gia tộc, nhưng bởi v&igrave; hắn kh&ocirc;ng c&oacute; linh mạch, kh&ocirc;ng thể trở th&agrave;nh một v&otilde; giả lợi hại, bởi vậy, từ nhỏ hắn đ&atilde; rất chăm chỉ r&egrave;n luyện th&acirc;n thể của m&igrave;nh, thường thường ra ngo&agrave;i tiến h&agrave;nh c&aacute;c loại huấn luyện b&iacute; mật, thậm ch&iacute; c&ograve;n tiến h&agrave;nh tranh đấu với Hổ th&uacute;, tuy hắn tuổi c&ograve;n trẻ, nhưng cũng từng c&oacute; mấy lần trải qua sinh tử, t&acirc;m t&igrave;nh c&ugrave;ng &yacute; ch&iacute; đều hơn xa bạn c&ugrave;ng lứa tuổi.<br />\r\n<br />\r\n- Đ&acirc;y kh&ocirc;ng phải l&agrave; Trầm Tường sao? Sắp c&oacute; mưa to, ngươi c&ograve;n muốn đi r&egrave;n luyện sao?<br />\r\n<br />\r\nMột l&atilde;o quản gia đi tới n&oacute;i, thấy Trầm Tường hăng h&aacute;i như vậy, hắn kh&ocirc;ng khỏi k&iacute;nh phục, nhưng trong &aacute;nh mắt c&agrave;ng nhiều ch&iacute;nh l&agrave; tiếc hận.<br />\r\n<br />\r\nMỗi ng&agrave;y Trầm Tường đều chăm học khổ luyện, đến nay s&aacute;u năm, nhưng vẫn dừng lại ở Ph&agrave;m V&otilde; Cảnh tầng ba, con ch&aacute;u Trầm gia c&ugrave;ng tuổi với hắn, đại đa số đều tiến v&agrave;o Ph&agrave;m V&otilde; Cảnh tầng bốn, lợi hại c&agrave;ng l&agrave; tiến v&agrave;o tầng năm.<br />\r\n<br />\r\nTất cả những thứ n&agrave;y đều l&agrave; bởi v&igrave; hắn kh&ocirc;ng c&oacute; linh mạch, cho n&ecirc;n mới kh&ocirc;ng được gia tộc coi trọng, m&agrave; b&acirc;y giờ hắn chỉ l&agrave; một người rất b&igrave;nh thường b&ecirc;n trong Trầm gia.<br />\r\n<br />\r\nTuy kh&ocirc;ng c&oacute; linh mạch, nhưng xưa nay Trầm Tường chưa bao giờ nhụt ch&iacute;, vẫn đều đang nỗ lực r&egrave;n luyện ch&iacute;nh m&igrave;nh, ch&iacute; &iacute;t trong qu&aacute; tr&igrave;nh nỗ lực để hắn cảm gi&aacute;c m&igrave;nh rất phong ph&uacute;.<br />\r\n<br />\r\n- L&atilde;o M&atilde;, ta l&agrave; đi h&aacute;i thuốc.<br />\r\n<br />\r\nTrầm Tường chạy đến ph&iacute;a sau l&atilde;o quản gia, cười cợt n&oacute;i chuyện với hắn.<br />\r\n<br />\r\n- V&ocirc; dụng th&ocirc;i, ngươi kh&ocirc;ng c&oacute; linh mạch, bất kể nỗ lực thế n&agrave;o đều l&agrave; kh&ocirc;ng l&agrave;m n&ecirc;n chuyện g&igrave;!<br />\r\n<br />\r\nL&atilde;o quản gia kia lắc đầu than thở.<br />\r\n<br />\r\nĐối với lời như vậy, Trầm Tường nghe qua v&ocirc; số lần, nhưng hắn vẫn ki&ecirc;n tr&igrave; như cũ, d&ugrave; như thế n&agrave;o hắn cũng sẽ kh&ocirc;ng bỏ qua.<br />\r\n<br />\r\n- Tường nhi, kh&iacute; trời như vậy cũng đừng đi nữa!<br />\r\n<br />\r\nL&uacute;c n&agrave;y, một nam tử trung ni&ecirc;n đi tới.<br />\r\n<br />\r\nTrầm Tường bĩu m&ocirc;i, n&oacute;i rằng:<br />\r\n<br />\r\n- Cha, trời mưa xuống h&aacute;i thuốc l&agrave; một thời cơ tốt, ch&iacute; &iacute;t kh&ocirc;ng cần cướp đến bể đầu chảy m&aacute;u c&ugrave;ng người kh&aacute;c.<br />\r\n<br />\r\nNgười đ&agrave;n &ocirc;ng trung ni&ecirc;n n&agrave;y t&ecirc;n l&agrave; Trầm Thi&ecirc;n Hổ, l&agrave; phụ th&acirc;n của Trầm Tường, l&agrave; một v&otilde; giả cường đại danh chấn một phương, cũng l&agrave; người c&oacute; hy vọng kế thừa Trầm gia tộc trưởng đời kế tiếp nhất, tuy con trai hắn kh&ocirc;ng c&oacute; linh mạch, nhưng hắn vẫn cổ vũ Trầm Tường, vẫn thỉnh thoảng cho hắn một &iacute;t đan dược tr&acirc;n qu&yacute;, chỉ bất qu&aacute; vẫn l&agrave; kh&ocirc;ng l&agrave;m n&ecirc;n chuyện g&igrave;.<br />\r\n<br />\r\n- Cầm.<br />\r\n<br />\r\nTrầm Thi&ecirc;n Hổ bất đắc dĩ nở nụ cười, vứt cho Trầm Tường một c&aacute;i hộp nhỏ.<br />\r\n<br />\r\nTrầm Tường tiếp nhận c&aacute;i hộp, cũng kh&ocirc;ng th&egrave;m nh&igrave;n tới đồ vật b&ecirc;n trong, hắn biết b&ecirc;n trong l&agrave; đan dược, cười cợt n&oacute;i:<br />\r\n<br />\r\n- Đa tạ cha, như vậy ta cũng kh&ocirc;ng cần đi trộm những con g&agrave; n&agrave;y của M&atilde; l&atilde;o đầu để bổ dưỡng th&acirc;n thể.<br />\r\n<br />\r\nĐiều n&agrave;y l&agrave;m cho M&atilde; quản gia kia mặt đầy cay đắng, hắn kh&ocirc;ng nghĩ tới m&igrave;nh dĩ nhi&ecirc;n bị nh&igrave;n chằm chằm.<br />\r\n<br />\r\nNh&igrave;n b&oacute;ng lưng Trầm Tường biến mất, Trầm Thi&ecirc;n Hổ chỉ c&oacute; thể thở d&agrave;i, tuy hắn ở Trầm gia c&oacute; địa vị rất cao, nhưng Trầm gia trưởng l&atilde;o quản l&yacute; đối với những đan dược tr&acirc;n qu&yacute; hi hữu n&agrave;y rất nghi&ecirc;m khắc, hắn chỉ c&oacute; thể lấy của bản th&acirc;n cho Trầm Tường, nhưng c&aacute;i n&agrave;y cũng kh&ocirc;ng c&oacute; t&aacute;c dụng g&igrave;, bởi v&igrave; đan dược qu&aacute; &iacute;t.<br />\r\n<br />\r\nL&agrave;m cha, c&aacute;i n&agrave;o kh&ocirc;ng hy vọng nhi tử th&agrave;nh Long? Chỉ bất qu&aacute; Trầm Thi&ecirc;n Hổ cũng kh&ocirc;ng c&oacute; c&aacute;ch n&agrave;o, hắn chỉ c&oacute; thể l&agrave;m hết sức, tranh thủ đan dược cho Trầm Tường.<br />\r\n<br />\r\n...<br />\r\n<br />\r\nTi&ecirc;n Ma Nhai, đ&oacute; l&agrave; một địa phương phi thường hoang vu, giờ khắc n&agrave;y tr&ecirc;n v&aacute;ch n&uacute;i cheo leo c&oacute; một thiếu ni&ecirc;n ở trần leo l&ecirc;n.<br />\r\n<br />\r\nL&uacute;c n&agrave;y rơi xuống mưa r&agrave;o tầm t&atilde;, nhưng Trầm Tường leo n&uacute;i như vậy, đ&acirc;y l&agrave; một chuyện v&ocirc; c&ugrave;ng nguy hiểm, phải biết v&aacute;ch n&uacute;i b&ecirc;n dưới Ti&ecirc;n Ma Nhai n&agrave;y l&agrave; s&acirc;u kh&ocirc;ng thấy đ&aacute;y, hơn nữa ph&iacute;a dưới quanh năm tr&agrave;n ngập một loại kh&iacute; tức mang theo tử vong, v&igrave; lẽ đ&oacute; rất nhiều người đều kh&ocirc;ng muốn tới gần địa phương n&agrave;y.<br />\r\n<br />\r\nNhưng Trầm Tường tới nơi n&agrave;y h&aacute;i thuốc, c&ograve;n leo l&ecirc;n tr&ecirc;n v&aacute;ch đ&aacute;, chậm r&atilde;i đi xuống ph&iacute;a dưới, nếu để cho người kh&aacute;c biết, nhất định sẽ cười hắn l&agrave; một kẻ kh&ocirc;ng muốn sống, ai cũng biết loại địa phương chim kh&ocirc;ng th&egrave;m ị n&agrave;y, tử kh&iacute; d&agrave;y đặc l&agrave; chắc chắn sẽ kh&ocirc;ng c&oacute; linh dược tốt g&igrave;.<br />\r\n<br />\r\nTrầm Tường kh&ocirc;ng những kh&ocirc;ng ngốc, m&agrave; c&ograve;n rất th&ocirc;ng minh, hắn biết Ti&ecirc;n Ma Nhai n&agrave;y tồn tại rất nhiều năm, đặc biệt l&agrave; những tử kh&iacute; n&agrave;y ph&iacute;a dưới, c&agrave;ng l&agrave; kh&ocirc;ng ai biết tồn tại bao nhi&ecirc;u năm.<br />\r\n<br />\r\nỞ b&ecirc;n trong nhận thức của người thường, địa phương kh&ocirc;ng hề c&oacute; sinh kh&iacute; l&agrave; kh&ocirc;ng c&oacute; linh dược, m&agrave; Trầm Tường lại kh&ocirc;ng cho l&agrave; như vậy, đạo l&yacute; vật cực tất phản hắn cũng biết, hắn khẳng định chắc chắn tr&ecirc;n v&aacute;ch đ&aacute; n&agrave;y nhất định c&oacute; một loại linh dược tr&acirc;n qu&yacute; trong truyền thuyết.<br />\r\n<br />\r\nĐịa Ngục Linh Chi, loại linh dược n&agrave;y nghe tới rất đ&aacute;ng sợ, nhưng l&agrave; một loại linh dược c&oacute; hiệu quả tẩy kinh phạt tủy, b&igrave;nh thường sinh trưởng ở cổ chiến trường, b&atilde;i tha ma,&hellip; những địa phương c&oacute; tử kh&iacute; d&agrave;y đặt, l&agrave; một loại kỳ dược.<br />\r\n<br />\r\nNg&agrave;y mưa c&oacute; thể l&agrave;m cho một &iacute;t hắc kh&iacute; trầm xuống, như vậy Trầm Tường liền c&oacute; thể thấy r&otilde; một &iacute;t v&aacute;ch đ&aacute; s&acirc;u, hắn liền đi đến địa phương s&acirc;u ph&iacute;a dưới, như vậy hắn liền c&oacute; thể t&igrave;m tới Địa Ngục Linh Chi kia.<br />\r\n<br />\r\nTuy rằng hắn kh&ocirc;ng cần Địa Ngục Linh Chi, nhưng sau khi hắn đạt được th&aacute;nh dược n&agrave;y, cũng tuyệt đối c&oacute; thể đổi đến rất nhiều đan dược tr&acirc;n qu&yacute;, c&oacute; thể l&agrave;m cho hắn tho&aacute;t khỏi quẫn cảnh, nắm giữ thực lực cường đại.<br />\r\n<br />\r\nHạt mưa đ&aacute;nh v&agrave;o tr&ecirc;n người Trầm Tường, l&agrave;m hắn cảm thấy rất kh&ocirc;ng thoải m&aacute;i, đồng thời cũng l&agrave;m cho nham thạch tr&ecirc;n v&aacute;ch đ&aacute; trở n&ecirc;n lỏng lẻo. Điều n&agrave;y l&agrave;m cho hắn c&agrave;ng cẩn thận hơn, cẩn thận từng li từng t&iacute; một từ tr&ecirc;n v&aacute;ch đ&aacute; leo xuống, bằng kh&ocirc;ng kh&ocirc;ng cẩn thận hắn sẽ t&eacute; xuống.<br />\r\n<br />\r\nKh&ocirc;ng ai biết b&ecirc;n dưới v&aacute;ch n&uacute;i Ti&ecirc;n Ma c&oacute; c&aacute;i g&igrave;, tuy người xuống qua cũng c&oacute; kh&ocirc;ng &iacute;t, nhưng c&oacute; thể đi l&ecirc;n lại một c&aacute;i cũng kh&ocirc;ng c&oacute;, ng&atilde; xuống liền mang &yacute; nghĩa sẽ chết!<br />\r\n<br />\r\nHai canh giờ tr&ocirc;i qua, mưa to vẫn c&ograve;n tiếp tục, Trầm Tường bằng v&agrave;o th&acirc;n thể cường tr&aacute;ng hắn nhiều năm r&egrave;n luyện, xuống tới mấy chục trượng s&acirc;u trong v&aacute;ch đ&aacute;.<br />\r\n<br />\r\nTrầm Tường t&igrave;m được một nơi đặt ch&acirc;n tốt hơn, l&uacute;c n&agrave;y hắn tỉ mỉ quan s&aacute;t ph&iacute;a dưới, đột nhi&ecirc;n, hắn nh&igrave;n thấy những thứ g&igrave;, điều n&agrave;y l&agrave;m cho hắn k&iacute;ch động đến tr&aacute;i tim nhảy l&ecirc;n kịch liệt.<br />\r\n<br />\r\n- Địa Ngục Linh Chi!<br />\r\n<br />\r\nTrầm Tường hưng phấn h&ocirc; một tiếng, &aacute;nh mắt k&iacute;ch động nh&igrave;n chăm ch&uacute; ph&iacute;a dưới, địa phương ở dưới ch&acirc;n hắn chừng mười trượng c&oacute; một đồ vật giống như đại b&iacute;nh m&agrave;u trắng kề s&aacute;t v&aacute;ch đ&aacute;, hắn phi thường khẳng định đ&acirc;y ch&iacute;nh l&agrave; Địa Ngục Linh Chi trong truyền thuyết.<br />\r\n<br />\r\nNơi n&agrave;y quanh năm đều bị tử kh&iacute; m&agrave;u đen che lấp, m&agrave; m&agrave;u sắc của Địa Ngục Linh Chi phi thường tương tự c&ugrave;ng v&aacute;ch đ&aacute;, rất kh&oacute; ph&aacute;t hiện.<br />\r\n<br />\r\nTrầm Tường hưng phấn kh&ocirc;ng th&ocirc;i, hắn l&agrave;m cho m&igrave;nh trấn định lại, nghỉ ngơi chốc l&aacute;t, mới chầm chậm leo xuống ph&iacute;a dưới.<br />\r\n<br />\r\nKh&ocirc;ng bao l&acirc;u, Trầm Tường liền đến b&ecirc;n cạnh c&acirc;y Địa Ngục Linh Chi kia, hắn nuốt nuốt nước miếng, nh&igrave;n c&acirc;y Địa Ngục Linh Chi m&agrave;u trắng to bằng chậu rửa mặt kia, b&acirc;y giờ hắn c&ograve;n c&oacute; thể cảm nhận được Địa Ngục Linh Chi kia tản m&aacute;t ra sinh mệnh lực dồi d&agrave;o.<br />\r\n<br />\r\nTrầm Tường chỉ c&oacute; thể d&ugrave;ng một tay đi h&aacute;i c&acirc;y Địa Ngục Linh Chi n&agrave;y, hắn phỏng chừng đ&acirc;y l&agrave; Địa Ngục Linh Chi ng&agrave;n năm trở l&ecirc;n, cầm b&aacute;n đấu gi&aacute;, l&agrave; một con số tr&ecirc;n trời.</p>', 0),
(2, 4, 'Chương 2: Bách Khoa Toàn Thư Về Thao Túng Mana', 'chuong-2-bach-khoa-toan-thu-ve-thao-tung-mana', 'Bách Khoa Toàn Thư Về Thao Túng Mana', '<p>Trầm Tường ph&iacute; rất nhiều kh&iacute; lực mới h&aacute;i được, để v&agrave;o trong t&uacute;i trữ vật, hắn nhếch miệng cười:<br />\r\n<br />\r\n- Ha ha, thời điểm l&atilde;o tử xoay người đến rồi!<br />\r\n<br />\r\nHắn chỉ cần b&aacute;n đi c&acirc;y Địa Ngục Linh Chi n&agrave;y, liền c&oacute; thể mua rất nhiều đan dược cấp bậc kh&ocirc;ng sai, đến thời điểm hắn liền c&oacute; thể tăng nhanh như gi&oacute;!<br />\r\n<br />\r\nMưa dần dần nhỏ, Trầm Tường l&agrave; người rất thấy đủ, cho n&ecirc;n hắn kh&ocirc;ng c&oacute; tiếp tục sưu tầm v&aacute;ch đ&aacute; to như vậy, m&agrave; l&agrave; lựa chọn leo l&ecirc;n, d&ugrave; sao thể lực hắn c&oacute; hạn, leo l&ecirc;n cũng l&agrave; phi thường gian khổ c&ugrave;ng nguy hiểm.<br />\r\n<br />\r\nThời điểm hắn b&ograve; hơn nửa giờ, đột nhi&ecirc;n cảm gi&aacute;c được v&aacute;ch đ&aacute; đang run rẩy nh&egrave; nhẹ l&ecirc;n!<br />\r\n<br />\r\nTrong l&ograve;ng Trầm Tường cả kinh, t&acirc;m k&iacute;ch động v&agrave; hưng phấn lập tức ch&igrave;m xuống, hắn c&oacute; dự cảm kh&ocirc;ng tốt. Hắn nh&igrave;n về ph&iacute;a tr&ecirc;n, chỉ thấy rất nhiều h&ograve;n đ&aacute; nhỏ từ tr&ecirc;n v&aacute;ch đ&aacute; rớt xuống, ng&atilde; v&agrave;o dưới vực s&acirc;u s&acirc;u kh&ocirc;ng thấy đ&aacute;y, m&agrave; nguy&ecirc;n bản v&aacute;ch đ&aacute; cũng khẽ run run đến c&agrave;ng ng&agrave;y c&agrave;ng kịch liệt.<br />\r\n<br />\r\n- Mẹ kiếp, thật vất vả đạt được Địa Ngục Linh Chi, &ocirc;ng trời ngươi đừng n&oacute;i giỡn c&ugrave;ng ta a!<br />\r\n<br />\r\nĐột nhi&ecirc;n xuất hiện sơn di&ecirc;u địa chấn, l&agrave;m cho Trầm Tường kh&ocirc;ng khỏi chửi nhỏ l&ecirc;n.<br />\r\n<br />\r\nHắn muốn bảo tr&igrave; trấn định, để cho m&igrave;nh t&oacute;m chặt lấy v&aacute;ch đ&aacute; gập ghềnh, bằng kh&ocirc;ng hắn cũng sẽ bị chấn động đến mức ng&atilde; xuống.<br />\r\n<br />\r\nRung động kh&ocirc;ng ngừng tăng l&ecirc;n l&agrave;m cho Trầm Tường dần dần tuyệt vọng, l&uacute;c n&agrave;y hắn thấy ph&iacute;a tr&ecirc;n kh&ocirc;ng ngừng rơi xuống h&ograve;n đ&aacute; c&agrave;ng to lớn hơn, m&agrave; hắn cảm gi&aacute;c được hai tay của hắn cầm lấy nham thạch cũng sinh ra khe nứt.<br />\r\n<br />\r\n- &Ocirc;ng trời, ta mới vừa đạt được Địa Ngục Linh Chi, ngươi liền để ta xuống địa ngục, chơi ta sao!<br />\r\n<br />\r\nTrầm Tường kh&ocirc;ng khỏi chửi ầm l&ecirc;n, cũng tại l&uacute;c n&agrave;y, hắc kh&iacute; ph&iacute;a dưới bắt đầu bay l&ecirc;n, nham thạch m&agrave; Trầm Tường cầm đột nhi&ecirc;n nứt ra...<br />\r\n<br />\r\n- A&hellip;<br />\r\n<br />\r\nTh&acirc;n thể Trầm Tường rơi v&agrave;o trong vực s&acirc;u tr&agrave;n ngập hắc kh&iacute;, &acirc;m thanh tr&agrave;n ngập kh&ocirc;ng cam l&ograve;ng của hắn quanh quẩn ở ph&iacute;a dưới...<br />\r\n<br />\r\nKh&ocirc;ng biết qua bao l&acirc;u, Trầm Tường mở mắt ra, hắn dĩ nhi&ecirc;n c&oacute; thể nh&igrave;n thấy &aacute;nh s&aacute;ng, đ&acirc;y cũng l&agrave; dưới đ&aacute;y vực s&acirc;u, l&agrave;m cho hắn cảm thấy kh&oacute; m&agrave; tin nổi nhất ch&iacute;nh l&agrave; hắn dĩ nhi&ecirc;n ở b&ecirc;n trong nước, hơn nữa hắn c&ograve;n c&oacute; thể h&ocirc; hấp!<br />\r\n<br />\r\nTrầm Tường bơi l&ecirc;n mặt nước, chỗ của hắn l&agrave; một c&aacute;i hồ nước, m&agrave; trong hồ nước lại ph&aacute;t ra quang mang m&agrave;u trắng th&aacute;nh khiết.<br />\r\n<br />\r\nL&agrave;m cho Trầm Tường trợn mắt ngo&aacute;c mồm ch&iacute;nh l&agrave;, ở c&aacute;ch đ&oacute; kh&ocirc;ng xa dĩ nhi&ecirc;n l&agrave; hai mỹ nữ ngồi xếp bằng, t&oacute;c rối bời xo&atilde; tr&ecirc;n vai, dung mạo cực kỳ xinh đẹp.<br />\r\n<br />\r\nL&agrave;m cho hắn cảm thấy khiếp sợ nhất ch&iacute;nh l&agrave;, hai nữ tử trước mắt giống như Thi&ecirc;n ti&ecirc;n n&agrave;y dĩ nhi&ecirc;n đều kh&ocirc;ng c&oacute; mặc quần &aacute;o! Hai cỗ ngọc thể ho&agrave;n mỹ kh&ocirc;ng một t&igrave; vết cứ như vậy kh&ocirc;ng hề bảo lưu b&agrave;y ra ở trước mặt hắn!<br />\r\n<br />\r\nTh&acirc;n thể hai nữ tử giống như l&agrave; d&ugrave;ng ngọc bạch tỉ mỉ đi&ecirc;u khắc m&agrave;i th&agrave;nh, kh&ocirc;ng c&oacute; một ch&uacute;t tạp sắc n&agrave;o. Đ&ocirc;i nhũ hoa của c&aacute;c n&agrave;ng đều đẫy đ&agrave; ki&ecirc;n quyết, v&ograve;ng eo đều kiều tế như thế, c&aacute;c n&agrave;ng đều đẹp đến khiến người ta nghẹt thở... Đ&acirc;y l&agrave; nữ nh&acirc;n đẹp nhất m&agrave; Trầm Tường gặp gỡ.<br />\r\n<br />\r\nH&igrave;nh ảnh hương diễm c&oacute; lực tr&ugrave;ng k&iacute;ch như vậy l&agrave;m cho cả người Trầm Tường trong nh&aacute;y mắt ho&aacute; đ&aacute;, mặt đỏ tới mang tai, tim đập c&ugrave;ng h&ocirc; hấp đều phảng phất ngưng lại!<br />\r\n<br />\r\nHai vị nữ tử xếp bằng tr&ecirc;n mặt đất, c&aacute;c n&agrave;ng nh&igrave;n đối phương, ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; ph&aacute;t hiện Trầm Tường, điều n&agrave;y l&agrave;m cho Trầm Tường c&oacute; loại cảm gi&aacute;c bị coi rẻ, hắn lại bị hai Đại mỹ nh&acirc;n kh&ocirc;ng nh&igrave;n.<br />\r\n<br />\r\nSau một trận thất thần, Trầm Tường mới nh&igrave;n r&otilde; dưới đ&aacute;y vực s&acirc;u n&agrave;y khắp nơi vết thương, c&oacute; rất nhiều khe nứt c&ugrave;ng l&otilde;m khanh, đ&aacute; vụn đầy đất, trong đ&aacute; vụn c&ograve;n c&oacute; rất nhiều rất n&aacute;t tan m&agrave;u trắng tơ lụa, xem ra giống như l&agrave; đ&atilde; xảy ra chiến đấu, hắn suy đo&aacute;n l&agrave; hai vị nữ tử kia chiến đấu tạo th&agrave;nh, cũng bởi vậy dẫn đến quần &aacute;o n&aacute;t tan n&aacute;t.<br />\r\n<br />\r\nTuy Trầm Tường kh&ocirc;ng biết v&igrave; sao hai nữ tử tuyệt sắc khuynh th&agrave;nh n&agrave;y lại chiến đấu ở dưới vực s&acirc;u, nhưng hắn nh&igrave;n ra hai nữ n&agrave;y rất mạnh, hơn nữa cường đại đến vượt qua phạm tr&ugrave; hắn nhận thức, dĩ nhi&ecirc;n c&oacute; thể thi triển ra sức mạnh đất rung n&uacute;i chuyển.<br />\r\n<br />\r\n- Thực sự l&agrave; hồng nhan họa thủy, dĩ nhi&ecirc;n chấn ta rớt xuống nơi n&agrave;y, may m&agrave; mạng lớn kh&ocirc;ng c&oacute; ng&atilde; chết!<br />\r\n<br />\r\nTrong l&ograve;ng Trầm Tường chửi nhỏ, bất qu&aacute; hắn rất t&ograve; m&ograve; hai nữ tử thần b&iacute; n&agrave;y.<br />\r\n<br />\r\nTrầm Tường trừng trừng nh&igrave;n trước mắt n&agrave;y hai cỗ kh&ocirc;ng hề tỳ vết ngọc thể, đồng thời hướng hai nữ nhẹ nh&agrave;ng bước qua.<br />\r\n<br />\r\nVực s&acirc;u b&ecirc;n cạnh Ti&ecirc;n Ma Nhai được gọi l&agrave; Địa Ngục, m&agrave; l&uacute;c n&agrave;y ở ph&iacute;a dưới Địa ngục n&agrave;y, Trầm Tường lại tưởng l&agrave; Ti&ecirc;n cảnh, nơi n&agrave;y c&oacute; một c&aacute;i đầm toả ra Bạch Quang th&aacute;nh khiết, trọng yếu nhất l&agrave; b&ecirc;n hồ nước c&ograve;n c&oacute; hai nữ tử tuyệt mỹ kh&ocirc;ng c&oacute; mặc quần &aacute;o.<br />\r\n<br />\r\nL&uacute;c n&agrave;y hai vị nữ tử kia mới &yacute; thức tới c&aacute;ch đ&oacute; kh&ocirc;ng xa c&oacute; một đ&ocirc;i con mắt hừng hực qu&eacute;t qua c&aacute;c n&agrave;ng, điều n&agrave;y l&agrave;m cho c&aacute;c n&agrave;ng nổi giận kh&ocirc;ng ngớt.<br />\r\n<br />\r\nHai nữ tử tuyệt mỹ cũng kh&ocirc;ng hề động, chỉ l&agrave; tr&ecirc;n mặt cười che k&iacute;n s&aacute;t &yacute; ngập trời, hai đ&ocirc;i mắt đẹp kia đều bao h&agrave;m tức giận m&agrave; nh&igrave;n hắn, c&aacute;c n&agrave;ng thậm ch&iacute; ngay cả đầu cũng kh&ocirc;ng thể vặn vẹo.<br />\r\n<br />\r\n- Hai vị đại tỷ, c&aacute;c ngươi... c&aacute;c ngươi kh&ocirc;ng lạnh sao? Tại sao kh&ocirc;ng mặc quần &aacute;o, ta cảm gi&aacute;c rất lạnh.<br />\r\n<br />\r\nTrầm Tường cũng kh&ocirc;ng biết n&ecirc;n n&oacute;i c&aacute;i g&igrave;, liền hỏi lung tung một c&acirc;u.<br />\r\n<br />\r\nL&uacute;c n&agrave;y, nữ tử l&atilde;nh diễm cao qu&yacute;, đầy mặt sương lạnh kia lạnh l&ugrave;ng qu&aacute;t l&ecirc;n:<br />\r\n<br />\r\n- Ngươi lại tiến l&ecirc;n một bước, ta tất nhi&ecirc;n sẽ để cho ngươi nhận hết nỗi đau Thực cốt, sống kh&ocirc;ng bằng chết.<br />\r\n<br />\r\nTuy &acirc;m thanh nữ tử n&agrave;y kỳ ảo lanh lảnh, nhưng cũng kh&ocirc;ng ch&uacute;t t&igrave;nh cảm n&agrave;o, khiến người ta c&oacute; một cảm gi&aacute;c ngọc c&oacute; tỳ vết. Nữ tử n&agrave;y c&ugrave;ng &acirc;m thanh như thế, bất kể l&agrave; thần t&igrave;nh hay l&agrave; kh&iacute; chất, đều c&oacute; một cảm gi&aacute;c lạnh lẽo từ chối người ngo&agrave;i ng&agrave;n dặm, một đ&ocirc;i h&agrave;n mang c&agrave;ng l&agrave; lộ ra lệ kh&iacute; nồng đậm.<br />\r\n<br />\r\n- Tiểu tử, nếu ngươi d&aacute;m tới gần, ta sẽ để ngươi hối hận v&igrave; đi tới thế giới n&agrave;y!<br />\r\n<br />\r\nMột nữ tử kh&aacute;c nhẹ n&oacute;i, &acirc;m thanh nữ tử n&agrave;y kiều mị giống như chu&ocirc;ng bạc, đảo mắt mị th&aacute;i nảy sinh, c&acirc;u nh&acirc;n đoạt ph&aacute;ch, đ&acirc;y l&agrave; một vưu vật tuyệt thế diễm lệ, mị hoặc đến trong xương.<br />\r\n<br />\r\nTrước mắt hương diễm, đối với Trầm Tường l&agrave; thiếu ni&ecirc;n mới lớn m&agrave; n&oacute;i c&oacute; sức m&ecirc; hoặc rất lớn, tuy hắn tự nhận kh&ocirc;ng phải l&agrave; ch&iacute;nh nh&acirc;n qu&acirc;n tử g&igrave;, nhưng hắn cũng kh&ocirc;ng phải l&agrave; loại tiểu nh&acirc;n gian tr&aacute;, hai vị nữ tử trước mắt n&agrave;y kh&ocirc;ng c&oacute; c&aacute;ch n&agrave;o nh&uacute;c nh&iacute;ch, hắn sẽ kh&ocirc;ng lợi dụng l&uacute;c người ta gặp kh&oacute; khăn m&agrave; ra tay.<br />\r\n<br />\r\nTrầm Tường &acirc;m thầm b&igrave;nh tĩnh lại, lễ ph&eacute;p m&agrave; n&oacute;i rằng:<br />\r\n<br />\r\n- Hai vị c&ocirc; nương, c&aacute;i n&agrave;y. . . ta kh&ocirc;ng phải cố &yacute;, ta h&aacute;i thuốc ở v&aacute;ch n&uacute;i ph&iacute;a tr&ecirc;n, sau đ&oacute; ta bị chấn động rơi xuống, ta kh&ocirc;ng c&oacute; chết đ&atilde; xem như l&agrave; mạng lớn.<br />\r\n<br />\r\nĐang khi n&oacute;i chuyện, Trầm Tường lấy ra hai c&aacute;i &aacute;o cho&agrave;ng, đi tới nữ tử l&atilde;nh diễm kia, hắn nh&igrave;n ra được hai vị nữ tử n&agrave;y kh&ocirc;ng thể động, v&igrave; kh&ocirc;ng cho c&aacute;c n&agrave;ng cảm thấy thẹn th&ugrave;ng, hắn chỉ c&oacute; thể trước ti&ecirc;n che đậy k&iacute;n th&acirc;n thể lỏa lồ kia của c&aacute;c n&agrave;ng.<br />\r\n<br />\r\nBị Trầm Tường khoảng c&aacute;ch gần như vậy nh&igrave;n ngọc thể n&agrave;ng, nữ tử l&atilde;nh diễm chỉ c&oacute; thể nhắm mắt lại, chịu đựng &aacute;nh mắt n&oacute;ng bỏng thi&ecirc;u đốt ngọc thể n&agrave;ng kia của Trầm Tường! Cả người n&agrave;ng khẽ run, tản m&aacute;t ra một loại s&aacute;t kh&iacute; &acirc;m l&atilde;nh thấu nh&acirc;n cốt tủy, l&agrave;m cho Trầm Tường kh&ocirc;ng khỏi r&ugrave;ng m&igrave;nh một c&aacute;i.<br />\r\n<br />\r\nCả người Trầm Tường to&aacute;t mồ h&ocirc;i lạnh, c&oacute; ch&uacute;t kh&ocirc;ng muốn m&agrave; cho&agrave;ng c&aacute;i &aacute;o kia l&ecirc;n th&acirc;n thể nữ tử l&atilde;nh diễm, điều n&agrave;y l&agrave;m cho n&agrave;ng hơi hừ một tiếng, sắc mặt cũng trở n&ecirc;n h&ograve;a ho&atilde;n hơn rất nhiều, kh&ocirc;ng c&oacute; s&aacute;t kh&iacute; hừng hực như l&uacute;c trước.<br />\r\n<br />\r\nTrầm Tường lại tới đến b&ecirc;n người nữ tử y&ecirc;u mị kia, chỉ thấy nữ tử y&ecirc;u mị kia hướng hắn khẽ mỉm cười, mị th&aacute;i ng&agrave;n vạn, điều n&agrave;y l&agrave;m cho n&eacute;t mặt của Trầm Tường hơi đỏ l&ecirc;n, hắn h&iacute;t s&acirc;u một hơi, mới cho&agrave;ng &aacute;o l&ecirc;n người n&agrave;ng.<br />\r\n<br />\r\nĐộng t&aacute;c n&agrave;y của Trầm Tường, l&agrave;m cho trong l&ograve;ng hai vị nữ tử đều &acirc;m thầm cảm k&iacute;ch, trong l&ograve;ng c&aacute;c n&agrave;ng cũng c&oacute; ch&uacute;t hổ thẹn, trước đ&oacute; c&aacute;c n&agrave;ng vẫn cứ uy hiếp người ta, hơn nữa c&ograve;n chấn người ta rớt xuống, nếu như kh&ocirc;ng phải Trầm Tường mạng lớn, chỉ sợ cũng ng&atilde; chết.</p>', 0),
(3, 6, 'Chương 1 - Lâu đài dưới đáy biển', 'chuong-1-lau-dai-duoi-day-bien', 'Lâu đài dưới đáy biển', 'Giữa bầu trời mây đen nằm dày đặc, thỉnh thoảng sẽ bốc lên một tia chớp, kèm theo từng tiếng sấm rền, một trận mưa lớn sắp xảy ra.\r\n\r\nBên trong Ngọa Hổ thành, Trầm Tường ngửa đầu nhìn bầu trời, thì thào nói rằng:\r\n\r\n- Không thể kéo dài được nữa, ta phải nhanh chóng tìm được linh dược tốt, bằng không ta khó có thể có cơ hội xoay người.\r\n\r\nNăm nay Trầm Tường mười sáu tuổi, thân hình so với bạn cùng lứa tuổi thì cường tráng cao lớn hơn, thân thể này cùng gương mặt tuấn tú mang theo tính trẻ con, nhìn rất là trái ngược, nhưng cặp mắt kia của hắn lại thâm thúy không tương xứng cùng tuổi tác, xem ra nhàn đến muốn thành thục hơn so với bạn cùng lứa tuổi một ít.\r\n\r\nLúc này Trầm Tường muốn đi hái thuốc, mặc dù hắn là trưởng tôn tử của Trầm gia tộc, nhưng bởi vì hắn không có linh mạch, không thể trở thành một võ giả lợi hại, bởi vậy, từ nhỏ hắn đã rất chăm chỉ rèn luyện thân thể của mình, thường thường ra ngoài tiến hành các loại huấn luyện bí mật, thậm chí còn tiến hành tranh đấu với Hổ thú, tuy hắn tuổi còn trẻ, nhưng cũng từng có mấy lần trải qua sinh tử, tâm tình cùng ý chí đều hơn xa bạn cùng lứa tuổi.\r\n\r\n- Đây không phải là Trầm Tường sao? Sắp có mưa to, ngươi còn muốn đi rèn luyện sao?\r\n\r\nMột lão quản gia đi tới nói, thấy Trầm Tường hăng hái như vậy, hắn không khỏi kính phục, nhưng trong ánh mắt càng nhiều chính là tiếc hận.\r\n\r\nMỗi ngày Trầm Tường đều chăm học khổ luyện, đến nay sáu năm, nhưng vẫn dừng lại ở Phàm Võ Cảnh tầng ba, con cháu Trầm gia cùng tuổi với hắn, đại đa số đều tiến vào Phàm Võ Cảnh tầng bốn, lợi hại càng là tiến vào tầng năm.\r\n\r\nTất cả những thứ này đều là bởi vì hắn không có linh mạch, cho nên mới không được gia tộc coi trọng, mà bây giờ hắn chỉ là một người rất bình thường bên trong Trầm gia.\r\n\r\nTuy không có linh mạch, nhưng xưa nay Trầm Tường chưa bao giờ nhụt chí, vẫn đều đang nỗ lực rèn luyện chính mình, chí ít trong quá trình nỗ lực để hắn cảm giác mình rất phong phú.\r\n\r\n- Lão Mã, ta là đi hái thuốc.\r\n\r\nTrầm Tường chạy đến phía sau lão quản gia, cười cợt nói chuyện với hắn.\r\n\r\n- Vô dụng thôi, ngươi không có linh mạch, bất kể nỗ lực thế nào đều là không làm nên chuyện gì!\r\n\r\nLão quản gia kia lắc đầu than thở.\r\n\r\nĐối với lời như vậy, Trầm Tường nghe qua vô số lần, nhưng hắn vẫn kiên trì như cũ, dù như thế nào hắn cũng sẽ không bỏ qua.\r\n\r\n- Tường nhi, khí trời như vậy cũng đừng đi nữa!\r\n\r\nLúc này, một nam tử trung niên đi tới.\r\n\r\nTrầm Tường bĩu môi, nói rằng:\r\n\r\n- Cha, trời mưa xuống hái thuốc là một thời cơ tốt, chí ít không cần cướp đến bể đầu chảy máu cùng người khác.\r\n\r\nNgười đàn ông trung niên này tên là Trầm Thiên Hổ, là phụ thân của Trầm Tường, là một võ giả cường đại danh chấn một phương, cũng là người có hy vọng kế thừa Trầm gia tộc trưởng đời kế tiếp nhất, tuy con trai hắn không có linh mạch, nhưng hắn vẫn cổ vũ Trầm Tường, vẫn thỉnh thoảng cho hắn một ít đan dược trân quý, chỉ bất quá vẫn là không làm nên chuyện gì.\r\n\r\n- Cầm.\r\n\r\nTrầm Thiên Hổ bất đắc dĩ nở nụ cười, vứt cho Trầm Tường một cái hộp nhỏ.\r\n\r\nTrầm Tường tiếp nhận cái hộp, cũng không thèm nhìn tới đồ vật bên trong, hắn biết bên trong là đan dược, cười cợt nói:\r\n\r\n- Đa tạ cha, như vậy ta cũng không cần đi trộm những con gà này của Mã lão đầu để bổ dưỡng thân thể.\r\n\r\nĐiều này làm cho Mã quản gia kia mặt đầy cay đắng, hắn không nghĩ tới mình dĩ nhiên bị nhìn chằm chằm.\r\n\r\nNhìn bóng lưng Trầm Tường biến mất, Trầm Thiên Hổ chỉ có thể thở dài, tuy hắn ở Trầm gia có địa vị rất cao, nhưng Trầm gia trưởng lão quản lý đối với những đan dược trân quý hi hữu này rất nghiêm khắc, hắn chỉ có thể lấy của bản thân cho Trầm Tường, nhưng cái này cũng không có tác dụng gì, bởi vì đan dược quá ít.\r\n\r\nLàm cha, cái nào không hy vọng nhi tử thành Long? Chỉ bất quá Trầm Thiên Hổ cũng không có cách nào, hắn chỉ có thể làm hết sức, tranh thủ đan dược cho Trầm Tường.\r\n\r\n...\r\n\r\nTiên Ma Nhai, đó là một địa phương phi thường hoang vu, giờ khắc này trên vách núi cheo leo có một thiếu niên ở trần leo lên.\r\n\r\nLúc này rơi xuống mưa rào tầm tã, nhưng Trầm Tường leo núi như vậy, đây là một chuyện vô cùng nguy hiểm, phải biết vách núi bên dưới Tiên Ma Nhai này là sâu không thấy đáy, hơn nữa phía dưới quanh năm tràn ngập một loại khí tức mang theo tử vong, vì lẽ đó rất nhiều người đều không muốn tới gần địa phương này.\r\n\r\nNhưng Trầm Tường tới nơi này hái thuốc, còn leo lên trên vách đá, chậm rãi đi xuống phía dưới, nếu để cho người khác biết, nhất định sẽ cười hắn là một kẻ không muốn sống, ai cũng biết loại địa phương chim không thèm ị này, tử khí dày đặc là chắc chắn sẽ không có linh dược tốt gì.\r\n\r\nTrầm Tường không những không ngốc, mà còn rất thông minh, hắn biết Tiên Ma Nhai này tồn tại rất nhiều năm, đặc biệt là những tử khí này phía dưới, càng là không ai biết tồn tại bao nhiêu năm.\r\n\r\nỞ bên trong nhận thức của người thường, địa phương không hề có sinh khí là không có linh dược, mà Trầm Tường lại không cho là như vậy, đạo lý vật cực tất phản hắn cũng biết, hắn khẳng định chắc chắn trên vách đá này nhất định có một loại linh dược trân quý trong truyền thuyết.\r\n\r\nĐịa Ngục Linh Chi, loại linh dược này nghe tới rất đáng sợ, nhưng là một loại linh dược có hiệu quả tẩy kinh phạt tủy, bình thường sinh trưởng ở cổ chiến trường, bãi tha ma,… những địa phương có tử khí dày đặt, là một loại kỳ dược.\r\n\r\nNgày mưa có thể làm cho một ít hắc khí trầm xuống, như vậy Trầm Tường liền có thể thấy rõ một ít vách đá sâu, hắn liền đi đến địa phương sâu phía dưới, như vậy hắn liền có thể tìm tới Địa Ngục Linh Chi kia.\r\n\r\nTuy rằng hắn không cần Địa Ngục Linh Chi, nhưng sau khi hắn đạt được thánh dược này, cũng tuyệt đối có thể đổi đến rất nhiều đan dược trân quý, có thể làm cho hắn thoát khỏi quẫn cảnh, nắm giữ thực lực cường đại.\r\n\r\nHạt mưa đánh vào trên người Trầm Tường, làm hắn cảm thấy rất không thoải mái, đồng thời cũng làm cho nham thạch trên vách đá trở nên lỏng lẻo. Điều này làm cho hắn càng cẩn thận hơn, cẩn thận từng li từng tí một từ trên vách đá leo xuống, bằng không không cẩn thận hắn sẽ té xuống.\r\n\r\nKhông ai biết bên dưới vách núi Tiên Ma có cái gì, tuy người xuống qua cũng có không ít, nhưng có thể đi lên lại một cái cũng không có, ngã xuống liền mang ý nghĩa sẽ chết!\r\n\r\nHai canh giờ trôi qua, mưa to vẫn còn tiếp tục, Trầm Tường bằng vào thân thể cường tráng hắn nhiều năm rèn luyện, xuống tới mấy chục trượng sâu trong vách đá.\r\n\r\nTrầm Tường tìm được một nơi đặt chân tốt hơn, lúc này hắn tỉ mỉ quan sát phía dưới, đột nhiên, hắn nhìn thấy những thứ gì, điều này làm cho hắn kích động đến trái tim nhảy lên kịch liệt.\r\n\r\n- Địa Ngục Linh Chi!\r\n\r\nTrầm Tường hưng phấn hô một tiếng, ánh mắt kích động nhìn chăm chú phía dưới, địa phương ở dưới chân hắn chừng mười trượng có một đồ vật giống như đại bính màu trắng kề sát vách đá, hắn phi thường khẳng định đây chính là Địa Ngục Linh Chi trong truyền thuyết.\r\n\r\nNơi này quanh năm đều bị tử khí màu đen che lấp, mà màu sắc của Địa Ngục Linh Chi phi thường tương tự cùng vách đá, rất khó phát hiện.\r\n\r\nTrầm Tường hưng phấn không thôi, hắn làm cho mình trấn định lại, nghỉ ngơi chốc lát, mới chầm chậm leo xuống phía dưới.\r\n\r\nKhông bao lâu, Trầm Tường liền đến bên cạnh cây Địa Ngục Linh Chi kia, hắn nuốt nuốt nước miếng, nhìn cây Địa Ngục Linh Chi màu trắng to bằng chậu rửa mặt kia, bây giờ hắn còn có thể cảm nhận được Địa Ngục Linh Chi kia tản mát ra sinh mệnh lực dồi dào.\r\n\r\nTrầm Tường chỉ có thể dùng một tay đi hái cây Địa Ngục Linh Chi này, hắn phỏng chừng đây là Địa Ngục Linh Chi ngàn năm trở lên, cầm bán đấu giá, là một con số trên trời.', 0),
(4, 10, 'Chương 1: Âm Dương Thần Mạch', 'chuong-1-am-duong-than-mach', 'Ngạo thế đan thần', '<p>Hai vị nữ tử đều thở ph&agrave;o nhẹ nh&otilde;m, Trầm Tường kh&ocirc;ng c&oacute; l&agrave;m ra chuyện xấu xa đối với c&aacute;c n&agrave;ng, định lực n&agrave;y l&agrave;m cho c&aacute;c n&agrave;ng t&aacute;n thưởng kh&ocirc;ng ngớt, c&aacute;c n&agrave;ng đều rất r&otilde; r&agrave;ng m&igrave;nh l&uacute;c n&agrave;y đối với đ&agrave;n &ocirc;ng c&oacute; sức m&ecirc; hoặc rất mạnh.<br />\r\n<br />\r\n- Hai vị c&ocirc; nương, c&aacute;c ngươi kh&ocirc;ng phải l&agrave; ở ph&iacute;a dưới n&agrave;y l&acirc;u rồi chứ? C&oacute; thể n&oacute;i cho ta biết l&agrave;m sao đi tới kh&ocirc;ng? Ta kh&ocirc;ng thể sống ở chỗ n&agrave;y cả đời, ta vẫn c&oacute; chuyện rất trọng yếu muốn l&agrave;m!<br />\r\n<br />\r\nTrầm Tường c&oacute; ch&uacute;t thất vọng n&oacute;i.<br />\r\n<br />\r\nNữ tử Y&ecirc;u mị &ocirc;n nhu cười yếu ớt n&oacute;i:<br />\r\n<br />\r\n- Tiểu đệ đệ, ta nh&igrave;n ngươi kh&ocirc;ng c&oacute; linh mạch, cuộc đời n&agrave;y kh&ocirc;ng c&aacute;ch n&agrave;o bước v&agrave;o cảnh giới cường giả v&otilde; đạo! Bất qu&aacute;. . . ta c&oacute; thể tặng ngươi một Ch&iacute; Dương Thần Mạch, truyền dạy cho ngươi thần c&ocirc;ng cường đại, dạy ngươi luyện đan chế dược, cho ngươi trở th&agrave;nh một t&ecirc;n v&otilde; giả cường đại, nhưng ta c&oacute; một điều kiện.<br />\r\n<br />\r\nNữ tử Y&ecirc;u mị cho Trầm Tường một c&aacute;i mị nh&atilde;n, thần th&aacute;i mị &yacute; nồng đậm kia, l&agrave;m cho Trầm Tường kh&ocirc;ng khỏi t&acirc;m thần rung động, nữ tử n&agrave;y cũng l&agrave;m cho hắn hơi giật m&igrave;nh. Bất qu&aacute; hắn lại c&oacute; ch&uacute;t nghi hoặc, hắn xem ra hai vị nữ tử n&agrave;y rất mạnh, chỉ bất qu&aacute; b&acirc;y giờ thụ thương m&agrave; kh&ocirc;ng thể động đậy, hắn c&oacute; thể trợ gi&uacute;p c&aacute;c n&agrave;ng c&aacute;i g&igrave;?<br />\r\n<br />\r\nĐ&ocirc;i mắt nữ tử l&atilde;nh diễm s&aacute;ng ngời, n&agrave;ng lạnh l&ugrave;ng n&oacute;i rằng:<br />\r\n<br />\r\n- Tiểu tử, ta tặng ngươi một Ch&iacute; &Acirc;m Thần Mạch! Đồng thời truyền thụ ma c&ocirc;ng ta tu luyện cho ngươi, ma c&ocirc;ng của ta tuyệt kh&ocirc;ng k&eacute;m thần c&ocirc;ng của sư muội! Ch&uacute;ng ta tuyệt kh&ocirc;ng nuốt lời.<br />\r\n<br />\r\nCả người Trầm Tường chấn động, thượng phẩm Linh mạch ch&iacute;nh l&agrave; thi&ecirc;n t&agrave;i, m&agrave; b&ecirc;n tr&ecirc;n Linh mạch c&ograve;n c&oacute; Huyền mạch c&agrave;ng hi hữu, b&ecirc;n tr&ecirc;n Huyền mạch c&ograve;n c&oacute; Thi&ecirc;n mạch, m&agrave; b&ecirc;n tr&ecirc;n thi&ecirc;n mạch ch&iacute;nh l&agrave; Thần mạch trong truyền thuyết!<br />\r\n<br />\r\nNắm giữ một c&aacute;i Thần mạch, đ&acirc;y ch&iacute;nh l&agrave; phi thường nghịch thi&ecirc;n!<br />\r\n<br />\r\n- C&aacute;c n&agrave;ng kh&ocirc;ng phải l&agrave; từ tr&ecirc;n t&eacute; xuống ng&atilde; hư đầu chứ? Đừng bắt ta l&agrave;m tr&ograve; cười, ta cũng kh&ocirc;ng c&oacute; thời gian ngốc c&ugrave;ng với c&aacute;c n&agrave;ng ở chỗ n&agrave;y.<br />\r\n<br />\r\nTuy rằng vừa n&atilde;y Trầm Tường kinh h&atilde;i một tho&aacute;ng, nhưng hắn vẫn l&agrave; kh&ocirc;ng thể tin tưởng.<br />\r\n<br />\r\n- Nếu như ngươi đạt được những thứ n&agrave;y, muốn trở th&agrave;nh một v&otilde; giả cường đại kh&ocirc;ng c&oacute; kh&oacute; ch&uacute;t n&agrave;o! Bất qu&aacute; đến thời điểm ngươi phải gi&uacute;p ch&uacute;ng ta kh&ocirc;i phục thực lực.<br />\r\n<br />\r\nNữ tử Y&ecirc;u mị nũng nịu m&agrave; n&oacute;i, &acirc;m thanh l&agrave;m cho Trầm Tường cảm thấy xương một trận mềm yếu.<br />\r\n<br />\r\nL&atilde;nh diễm nữ tử n&oacute;i rằng:<br />\r\n<br />\r\n- Ch&uacute;ng ta l&agrave; bị một kẻ th&ugrave; v&acirc;y ở chỗ n&agrave;y, bị thương nặng, kh&ocirc;ng c&aacute;ch n&agrave;o nh&uacute;c nh&iacute;ch, tu vi mất hết, m&agrave; ph&iacute;a dưới n&agrave;y sẽ c&oacute; y&ecirc;u th&uacute; cường đại qua lại, ch&uacute;ng ta phải mau ch&oacute;ng rời khỏi nơi n&agrave;y.<br />\r\n<br />\r\nHiện tại c&aacute;c n&agrave;ng động cũng kh&ocirc;ng thể động, thương thế của c&aacute;c n&agrave;ng đến v&ocirc; c&ugrave;ng nghi&ecirc;m trọng, kinh mạch, xương cốt, đan điền, lục phủ ngũ tạng trong cơ thể đều bị trọng thương, c&oacute; thể n&oacute;i l&agrave; ho&agrave;n to&agrave;n bị phế bỏ, đ&acirc;y đều l&agrave; c&aacute;c n&agrave;ng đại chiến c&ugrave;ng kẻ th&ugrave; m&agrave; tạo th&agrave;nh, cũng l&agrave; v&agrave;o l&uacute;c n&agrave;y dẫn đến đất rung n&uacute;i chuyển hất Trầm Tường xuống.<br />\r\n<br />\r\nM&agrave; thiếu ni&ecirc;n thiện lương Trầm Tường n&agrave;y xuất hiện, đối với c&aacute;c n&agrave;ng m&agrave; n&oacute;i kh&ocirc;ng thể nghi ngờ l&agrave; một cơ hội xoay người, phải biết ph&iacute;a dưới n&agrave;y thường thường c&oacute; y&ecirc;u th&uacute; qua lại, c&aacute;c n&agrave;ng kh&ocirc;ng c&oacute; lực phản kh&aacute;ng, cuối c&ugrave;ng chỉ c&oacute; thể trở th&agrave;nh đồ ăn cho y&ecirc;u th&uacute;.<br />\r\n<br />\r\n- B&acirc;y giờ ngươi nhất định phải tin tưởng ch&uacute;ng ta, bằng kh&ocirc;ng đời n&agrave;y ngươi cũng đừng nghĩ đi l&ecirc;n.<br />\r\n<br />\r\nNữ tử y&ecirc;u mị kia chăm ch&uacute; n&oacute;i<br />\r\n<br />\r\nTrầm Tường rất kh&oacute; tiếp thu hai vị nữ tử n&agrave;y c&oacute; thể t&ugrave;y &yacute; ban tặng người kh&aacute;c Thần Mạch, hơn nữa c&ograve;n người mang ma c&ocirc;ng người mang thần c&ocirc;ng. Nhưng hiện tại hắn chỉ c&oacute; thể lựa chọn tin tưởng.<br />\r\n<br />\r\nTrầm Tường cười khổ h&iacute;t một tiếng, n&oacute;i rằng:<br />\r\n<br />\r\n- Tiểu tử t&ecirc;n l&agrave; Trầm Tường, xin hỏi phương danh hai vị tỷ tỷ? Chỉ mong c&aacute;c ngươi kh&ocirc;ng c&oacute; chơi ta.<br />\r\n<br />\r\nL&atilde;nh diễm nữ tử lạnh l&ugrave;ng n&oacute;i rằng:<br />\r\n<br />\r\n- Bạch U U.<br />\r\n<br />\r\nKiều mị nữ tử cười yếu ớt n&oacute;i:<br />\r\n<br />\r\n- T&ocirc; Mị Dao.<br />\r\n<br />\r\nTrầm Tường mỉm cười n&oacute;i:<br />\r\n<br />\r\n- Thực sự l&agrave; người cũng như t&ecirc;n nha! C&aacute;i kia ta phải l&agrave;m g&igrave;?<br />\r\n<br />\r\nT&ocirc; Mị Dao n&oacute;i rằng:<br />\r\n<br />\r\n- Ch&uacute;ng ta sẽ kết một c&aacute;i khế huyết với ngươi, bảo đảm song phương ch&uacute;ng ta đều kh&ocirc;ng phản bội, bởi v&igrave; ch&uacute;ng ta muốn c&ugrave;ng tồn tại một đoạn thời gian rất d&agrave;i! Đem Thần mạch chuyển dời đến tr&ecirc;n người của ngươi cũng l&agrave; chuyện rất đơn giản, ta c&ugrave;ng sư tỷ đều l&agrave; song Thần Mạch, cho ngươi một c&aacute;i cũng kh&ocirc;ng c&aacute;i g&igrave;.<br />\r\n<br />\r\nSong Thần mạch! Hai người đều như vậy, kh&oacute;e miệng Trầm Tường co quắp, điều n&agrave;y l&agrave;m cho hắn c&agrave;ng kh&oacute; c&oacute; thể tin tưởng được hơn. Bất qu&aacute; trong l&ograve;ng hắn c&oacute; ch&uacute;t k&iacute;ch động, bởi v&igrave; hai nữ tử lợi hại n&agrave;y muốn ở c&ugrave;ng với hắn thời gian rất d&agrave;i, c&aacute;i n&agrave;y đối với nam nh&acirc;n m&agrave; n&oacute;i l&agrave; sự t&igrave;nh tuyệt kh&ocirc;ng thể tả, hơn nữa c&aacute;c n&agrave;ng c&ograve;n muốn dựa v&agrave;o hắn để kh&ocirc;i phục thực lực.<br />\r\n<br />\r\nBạch U U lạnh l&ugrave;ng n&oacute;i rằng:<br />\r\n<br />\r\n- Ch&uacute;ng ta đều kh&ocirc;ng biết đối phương, v&igrave; ph&ograve;ng ngừa qua cầu r&uacute;t v&aacute;n, kết huyết khế l&agrave; tất yếu.<br />\r\n<br />\r\nT&ocirc; Mị Dao đơn giản giảng giải sự t&igrave;nh huyết khế kia một tho&aacute;ng, sau đ&oacute; tỉ mỉ n&oacute;i c&aacute;c bước một lần.<br />\r\n<br />\r\nHuyết khế rất đơn giản, ch&iacute;nh l&agrave; trước ti&ecirc;n d&ugrave;ng huyết dịch ba người ng&acirc;m v&agrave;o một tấm da th&uacute;, sau đ&oacute; ở ph&iacute;a tr&ecirc;n vẽ hoa văn huyết khế, ở mặt tr&ecirc;n huyết khế viết xuống nội dung khế ước, cuối c&ugrave;ng ba người nhỏ m&aacute;u ở mặt tr&ecirc;n huyết khế, sau khi huyết khế th&agrave;nh sẽ h&igrave;nh th&agrave;nh một loại li&ecirc;n hệ linh hồn, c&oacute; thể l&agrave;m cho người r&otilde; r&agrave;ng cảm gi&aacute;c được nội dung khế ước.<br />\r\n<br />\r\nSau khi Trầm Tường ho&agrave;n th&agrave;nh huyết khế, đối với loại ph&aacute;p thuật huyền ảo n&agrave;y cảm thấy khiếp sợ kh&ocirc;ng th&ocirc;i, l&uacute;c n&agrave;y hắn đ&atilde; tin tưởng hai vị nữ tử n&agrave;y n&oacute;i l&agrave; sự thật! Trong l&ograve;ng c&oacute; ch&uacute;t k&iacute;ch động n&oacute;i kh&ocirc;ng ra, hắn biết sau đ&oacute; sẽ c&ugrave;ng hai người mỹ nh&acirc;n n&agrave;y ờ chung một đoạn thời gian rất d&agrave;i, hơn nữa chẳng những hắn c&oacute; thể xoay người, c&ograve;n c&oacute; thể trở th&agrave;nh tuyệt thế thi&ecirc;n t&agrave;i.<br />\r\n<br />\r\nCứ như vậy, hai nữ tử dung mạo như thi&ecirc;n ti&ecirc;n đạt th&agrave;nh hiệp nghị với Trầm Tường.<br />\r\n<br />\r\n- Hai vị tỷ tỷ, c&aacute;c ngươi kh&ocirc;ng thể động l&agrave; bởi v&igrave; xương cốt kinh mạch trong cơ thể đều bị thương rất nặng sao?<br />\r\n<br />\r\nTrầm Tường hỏi, hắn vừa h&aacute;i được Địa Ngục Linh Chi, Địa Ngục Linh Chi n&agrave;y c&oacute; hiệu quả tẩy kinh phạt tủy, đối với loại thương thế n&agrave;y c&oacute; trợ gi&uacute;p rất lớn.<br />\r\n<br />\r\nBạch U U gật đầu n&oacute;i:<br />\r\n<br />\r\n- Kẻ th&ugrave; của ch&uacute;ng ta rất mạnh, nhưng tiện nh&acirc;n n&agrave;y bởi v&igrave; duy&ecirc;n cớ huyết khế, kh&ocirc;ng thể tự tay giết chết ch&uacute;ng ta, v&igrave; lẽ đ&oacute; liền phế bỏ ch&uacute;ng ta, sau đ&oacute; l&agrave;m cho ch&uacute;ng ta ở đ&acirc;y chờ chết.<br />\r\n<br />\r\nTrầm Tường tới đ&acirc;y, kh&ocirc;ng thể nghi ngờ l&agrave; cứu c&aacute;c n&agrave;ng, cho n&ecirc;n c&aacute;c n&agrave;ng cũng nguyện &yacute; đem Thần mạch dư thừa của m&igrave;nh tặng cho Trầm Tường.<br />\r\n<br />\r\nTrầm Tường kinh h&atilde;i kh&ocirc;ng ngớt, hai nữ tử b&iacute; ẩn n&agrave;y c&oacute; song Thần mạch, đều cường h&atilde;n như vậy, m&agrave; kẻ th&ugrave; của c&aacute;c n&agrave;ng c&agrave;ng l&agrave; cường h&atilde;n, c&oacute; thể l&agrave;m cho c&aacute;c n&agrave;ng rơi xuống t&igrave;nh cảnh như thế.<br />\r\n<br />\r\n- Ta ở tr&ecirc;n v&aacute;ch đ&aacute; h&aacute;i được Địa Ngục Linh Chi, c&aacute;i n&agrave;y đối với thương thế c&aacute;c n&agrave;ng c&oacute; trợ gi&uacute;p kh&ocirc;ng?<br />\r\n<br />\r\nTrầm Tường hỏi, hắn rất nhanh sẽ c&oacute; thể được đến hai c&aacute;i Thần mạch, v&igrave; lẽ đ&oacute; cũng kh&ocirc;ng keo kiệt Địa Ngục Linh Chi kia.</p>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) UNSIGNED NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `slug_danhmuc` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `slug_danhmuc`, `mota`, `kichhoat`) VALUES
(3, 'chuyến đi kỳ thú', 'truyen-trinh-tham', 'siêu kinh dị 123', 0),
(4, 'doraemon', 'doraemon', 'manga', 0),
(5, 'truyện ma kinh di', 'truyen-ma-kinh-di', 'kinh dị', 0),
(6, 'truyện người lớn', 'truyen-nguoi-lon', 'truyện người lớn', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `tentheloai` varchar(255) NOT NULL,
  `slug_theloai` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`, `slug_theloai`, `mota`, `kichhoat`) VALUES
(1, 'Kinh dị', 'kinh-di', 'kinh dị giật gân', 0),
(2, 'Hành động', 'hanh-dong', 'hành động đánh nhau', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentruyen` varchar(255) NOT NULL,
  `tukhoa` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `tomtat` longtext NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `theloai_id` int(10) UNSIGNED NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `slug_truyen` varchar(255) NOT NULL,
  `truyen_noibat` int(11) NOT NULL DEFAULT 0,
  `kichhoat` int(11) NOT NULL,
  `views` int(30) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL,
  `loaitruyen` varchar(255) NOT NULL,
  `so_chapter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `tukhoa`, `tacgia`, `tomtat`, `danhmuc_id`, `theloai_id`, `hinhanh`, `slug_truyen`, `truyen_noibat`, `kichhoat`, `views`, `tinhtrang`, `loaitruyen`, `so_chapter`) VALUES
(1, 'doraemon 2', 'doraemon', 'hao', 'series doraemon đình đám', 3, 2, 'anh-doremon-hai-hay-nhat_05412592188.jpg', 'doraemon-2', 0, 0, 1231213, '', '', 0),
(4, 'Ánh sáng cuối con đường', 'chuyen sinh', 'yashiki', 'King Grey là người sở hữu tất cả trong một thế giới bị Võ thuật chi phối. Nhưng đi đôi với một sức mạnh to lớn lại là sự cô độc không hồi kết.', 3, 1, 'OIP76.jfif', 'anh-sang-cuoi-con-duong', 0, 0, 24321, '', '', 0),
(5, 'Ánh sáng cuối con đường 2', 'chuyen sinh', 'yashiki', 'King Grey là người sở hữu tất cả trong một thế giới bị Võ thuật chi phối. Nhưng đi đôi với một sức mạnh to lớn lại là sự cô độc không hồi kết.', 3, 2, 'OIP76.jfif', 'anh-sang-cuoi-con-duong-2', 0, 0, 390, '', '', 0),
(6, 'doraemon', 'doraemon hoat hinh', 'Đang cập nhật', 'doraemon', 3, 1, 'anh-doremon-hai-hay-nhat_05412592188.jpg', 'doraemon', 0, 0, 231234, '', '', 0),
(7, 'Bậc thầy thiết kế điền trang', 'chuyen sinh', 'Đang cập nhật', 'ashd jkasdkjhd ksjahdjkasd', 6, 2, 'bacthay35.png', 'bac-thay-thiet-ke-dien-trang', 0, 0, 90, '', '', 0),
(8, 'doraemon chapter 2', '', 'Đang cập nhật', 'asfdhgjkdsfghjskfg', 6, 1, 'R2.jfif', 'doraemon-chapter-2', 0, 0, 67898, '', '', 0),
(10, 'Ta Là Tiên', 'tu tien, chuyen sinh, hanh dong, ta là tiên', 'Lịch Sử Lý Xuy Xuy Phong', 'Nơi này có cầm radio dự báo thời tiết Vân Thần, có tay cầm điện côn Quỷ Thần. Có cõng súng phun lửa Hỏa Thần, cầm súng ngắn xem như Chưởng Tâm Lôi đạo môn chân nhân, có trông coi đập lớn Trường Giang Long Vương.', 6, 2, '3009.jpg', 'ta-la-tien', 0, 0, 12312, '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hao Nguyen', 'abc@gmail.com', NULL, '$2y$10$FkU/Go5r4cKoII64ykDFquBJestgl52xZt9J8AP2ksns9uKTFzj4e', NULL, '2024-07-11 01:06:11', '2024-07-11 01:06:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
