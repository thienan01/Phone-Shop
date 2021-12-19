--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _accounts; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._accounts (
    id smallint,
    username character varying(8) DEFAULT NULL::character varying,
    password integer,
    fullname character varying(11) DEFAULT NULL::character varying,
    email character varying(22) DEFAULT NULL::character varying,
    phone bigint,
    address character varying(28) DEFAULT NULL::character varying,
    isadmin smallint
);


ALTER TABLE public._accounts OWNER TO rebasedata;

--
-- Name: _category; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._category (
    id smallint,
    cbrand character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE public._category OWNER TO rebasedata;

--
-- Name: _products; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._products (
    id smallint,
    idcategory smallint,
    brand character varying(7) DEFAULT NULL::character varying,
    name character varying(44) DEFAULT NULL::character varying,
    price integer,
    color character varying(10) DEFAULT NULL::character varying,
    detail character varying(309) DEFAULT NULL::character varying,
    description character varying(708) DEFAULT NULL::character varying,
    status character varying(12) DEFAULT NULL::character varying,
    image character varying(177) DEFAULT NULL::character varying
);


ALTER TABLE public._products OWNER TO rebasedata;

--
-- Data for Name: _accounts; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._accounts (id, username, password, fullname, email, phone, address, isadmin) FROM stdin;
1	isadmin	123456	Lê Thiện An	thienan12359@gmail.com	383865402	182 Lê Văn Việt, Quận 9, HCM	1
2	notadmin	123456	Hồ Qúi Ly	messi@gmail.com	377749636	Vo Van Ngan, Thu Duc	0
\.


--
-- Data for Name: _category; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._category (id, cbrand) FROM stdin;
2	Iphone
4	Oppo
1	Samsung
3	Xiaomi
\.


--
-- Data for Name: _products; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._products (id, idcategory, brand, name, price, color, detail, description, status, image) FROM stdin;
1	1	Samsung	Điện thoại Samsung Galaxy S21 Ultra 5G 128GB	25990000	Black	Màn hình: Dynamic AMOLED 2X6.8"Quad HD+ (2K+) <br>\r\nHệ điều hành: Android 11<br>\r\nCamera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP<br>\r\nCamera trước: 40 MP<br>\r\nChip: Exynos 2100<br>\r\nRAM: 12 GB<br>\r\nBộ nhớ trong: 128 GB<br>\r\nSIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G<br>\r\nPin, Sạc: 5000 mAh25 W<br>	Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.<br>\r\nĐột phá trong thiết kế thời thượng <br>\r\nKhông chỉ đơn thuần phục vụ giao tiếp và giải trí, Samsung Galaxy S21 Ultra 5G còn chính là món phụ kiện thời trang khẳng định vị thế của người sở hữu. <br>\r\nVẻ ngoài mảnh mai và thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm và trọng lượng 228 g dù phải “vác” một viên pin lớn.\r\n<img id="imgDetail" "src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s21-ultra-fpt-1.jpg">	Có sẵn	./interface/PhoneImg/SamsungS21.png
2	2	Iphone	Điện thoại iPhone 13 Pro Max 128GB	33990000	Xanh dương	Màn hình: OLED6.7"Super Retina XDR<br>\r\nHệ điều hành: iOS 15<br>\r\nCamera sau: 3 camera 12 MP<br>\r\nCamera trước: 12 MP<br>\r\nChip: Apple A15 Bionic<br>\r\nRAM: 6 GB <br>	iPhone 13 Pro Max 128GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách. <br>\r\nThiết kế đẳng cấp hàng đầu <br>\r\niPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước <br>\r\n<img id="imgDetail" src="https://www.xtmobile.vn/vnt_upload/news/10_2021/19/iphone-13-pro-max-xtmobile.jpg">	Có sẵn	https://cdn1.it4profit.com/AfrOrF3gWeDA6VOlDG4TzxMv39O7MXnF4CXpKUwGqRM/resize:fill:540/bg:f6f6f6/q:100/plain/s3://catalog-products/210915083829601093/210929160015118996.png@webp
3	3	Xiaomi	Điện thoại Xiaomi Mi 11 5G	19990000	Xám đậm	Màn hình: AMOLED6.81"Quad HD+ (2K+)<br>\r\nHệ điều hành: Android 11<br>\r\nCamera sau: Chính 108 MP & Phụ 13 MP, 5 MP<br>\r\nCamera trước: 20 MP<br>\r\nChip: Snapdragon 888<br>\r\nRAM: 8 GB<br>	Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này. <br>\r\nThiết kế nổi bật với cụm camera độc nhất <br>\r\nCó thể thấy, điểm sáng trong thiết kế của Mi 11 đến từ cụm 3 camera mặt sau được đặt trong mô-đun hình vuông, được phân tầng với 2 lớp kính tạo nên sự khác biệt và nổi bật ngay từ cái nhìn đầu tiên. <br>\r\n<img id="imgDetail" src="https://thietbiketnoi.com/wp-content/uploads/2021/11/xiaomi-mi-11-lite-5g.jpg">	Có sẵn	./interface/PhoneImg/xiaomimi11.jpg
4	1	Samsung	Điện thoại Samsung Galaxy Z Fold3 5G 512GB	44990000	Đen	Màn hình: Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Full HD+ <br>\r\nHệ điều hành: Android 11<br>\r\nCamera sau: 3 camera 12 MP<br>\r\nCamera trước: 10 MP & 4 MP<br>\r\nChip: Snapdragon 888<br>\r\nRAM: 12 GB<br>\r\nBộ nhớ trong: 512 GB<br>	Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.<br>\r\nĐột phá thiết kế màn hình gập\r\nĐầu tiên, khung viền Galaxy Z Fold3 được hoàn thiện bằng chất liệu Armor Aluminum cao cấp nhất từ trước đến giờ nhằm tăng cường được độ bền, mà vẫn đảm bảo được trọng lượng cân đối đem tới cảm giác vô cùng chắc chắn và cao cấp.\r\n<img id="imgDetail" \r\nsrc="https://cdn.tgdd.vn/Files/2021/07/29/1371582/samsung-galaxy-z-fold-3-black_1280x720-800-resize.jpg">	Có sẵn	https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-silver-1-600x600.jpg
5	2	Iphone	Điện thoại iPhone 12 64GB	20990000	Đỏ	Màn hình: OLED6.1"Super Retina XDR <br>\r\nHệ điều hành: iOS 14 <br>\r\nCamera sau: 2 camera 12 MP <br>\r\nCamera trước: 12 MP <br>\r\nChip: Apple A14 Bionic <br>\r\nRAM: 4 GB <br>\r\nBộ nhớ trong: 64 GB <br>	Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.<br>\r\nHiệu năng vượt xa mọi giới hạn <br>\r\nApple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.<br>\r\n<img id="imgDetail" src="https://minhtuanmobile.com/uploads/images/2020/11/MxG7C8TDG3pWS99hyi3dB.jpg">	Có sẵn	https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/11/06/apple-iphone-12-mini.png
6	1	Samsung	Điện thoại Samsung Galaxy Z Flip3 5G 128GB	24990000	Kem	Màn hình: Dynamic AMOLED 2XChính 6.7" & Phụ 1.9"Full HD+ <br>\r\nHệ điều hành: Android 11<br>\r\nCamera sau: 2 camera 12 MP<br>\r\nCamera trước: 10 MP<br>\r\nChip: Snapdragon 888<br>\r\nRAM: 8 GB<br>\r\nBộ nhớ trong: 128 GB<br>	Trong sự kiện Galaxy Unpacked hồi 11/8, Samsung đã chính thức trình làng mẫu điện thoại màn hình gập thế hệ mới mang tên Galaxy Z Flip3 5G 128GB. Đây là một siêu phẩm với màn hình gập dạng vỏ sò cùng nhiều điểm cải tiến và thông số ấn tượng, sản phẩm chắc chắn sẽ thu hút được rất nhiều sự quan tâm của người dùng, đặc biệt là phái nữ.<b>\r\nThiết kế hiện đại cùng màu sắc thời trang <br>\r\nGalaxy Z Flip 3 sở hữu cơ cấu gập theo chiều dọc xịn sò, tạo ra chiếc smartphone khác biệt so với phần còn lại, có thể đóng lại gọn gàng khi không sử dụng để bạn thuận tiện mang theo bên mình.<br>\r\n<img id="imgDetail" src="https://img.websosanh.vn/v10/users/review/images/788q2ndk88o5l/galaxy-z-flip3.jpg?compress=85">	Có sẵn	https://cdn.nguyenkimmall.com/images/detailed/749/10049828-dien-thoai-samsung-galaxy-z-flip-3-256gb-kem-1.jpg
7	2	Iphone	Điện thoại iPhone 12 mini 64GB	16990000	Xanh lá	Màn hình: OLED5.4"Super Retina XDR <br>\r\nHệ điều hành: iOS 14<br>\r\nCamera sau: 2 camera 12 MP<br>\r\nCamera trước: 12 MP<br>\r\nChip: Apple A14 Bionic<br>\r\nRAM: 4 GB<br>\r\nBộ nhớ trong: 64 GB<br>\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5Gv\r\nPin, Sạc: 2227 mAh20 W<br>	iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.<br>\r\nThiết kế sang trọng, cao cấp <br>\r\nĐiểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính <br>\r\n<img id="imgDetail"  src="https://lapvui.com/wp-content/uploads/2021/02/kich-thuoc-iphone-12-bao-nhieu-inch-6-min.jpg">	Có sẵn	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3x4-RVEPjZbbDGDorglyr_0hY2RWIrbXzXOrXwgBct2U5mMuWSYFVyIMMSpAwAz1SBPw&usqp=CAU
8	1	Samsung	Điện thoại Samsung Galaxy Note 20	15990000	Xanh lá	Màn hình: Super AMOLED Plus6.7"Full HD+ <br>\r\nHệ điều hành: Android 10<br>\r\nCamera sau: Chính 12 MP & Phụ 64 MP, 12 MP<br>\r\nCamera trước: 10 MP<br>\r\nChip: Exynos 990<br>\r\nRAM: 8 GB<br>\r\nBộ nhớ trong: 256 GB<br>\r\nSIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 4G<br>\r\nPin, Sạc: 4300 mAh25 W<br>	Tháng 8/2020, Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.<br>\r\nCamera cụm hình chữ nhật độc đáo cùng thiết kế mạnh mẽ <br>\r\nĐiện thoại sở hữu thiết kế khung kim loại chắc chắn, mặt lưng nhựa bóng bẩy, kiểu dáng mạnh mẽ với những góc cạnh vuông vức nhưng vẫn mang lại cảm giác cầm nắm thoải mái.<br>\r\n<img id="imgDetail" \r\n src="https://www.xda-developers.com/files/2020/08/samsung-galaxy-note-20-ultra-review-featured-1.jpg">	Có sẵn	https://www.viettablet.com/images/thumbnails/480/516/detailed/40/samsung-galaxy-note-20-vn-my-han.jpg
9	4	Oppo	Điện thoại OPPO Reno5 5G	11990000	Bạc	Màn hình:AMOLED6.43"Full HD+ <br>\r\nHệ điều hành:Android 11 <br>\r\nCamera sau:Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP <br>\r\nCamera trước:32 MP <br>\r\nChip:Snapdragon 765G <br>\r\nRAM:8 GB <br>\r\nBộ nhớ trong:128 GB <br>\r\nSIM:2 Nano SIMHỗ trợ 5G <br>\r\nPin, Sạc:4300 mAh65 W <br>	OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ ngoài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu. <br>\r\nTừng đường nét lấp lánh, tỏa sáng <br>\r\nOPPO Reno5 5G có cấu tạo các khung viền xung quanh hoàn toàn bằng kim loại cao cấp, mặt lưng làm từ kính. Chiếc điện thoại được thiết kế tổng thể nguyên khối vô cùng rắn chắc và bo cong mềm mại ở 4 góc, mang đến người dùng cảm giác cầm nắm thoải mái nhất. <br>\r\n	Có sẵn	https://product.hstatic.net/1000063620/product/oppo-reno-5-mhm_7cb9b420bb0943ffa9b7159f86cdcb2d_grande_1d95d9b628f84a9abb92559a81bab14d_grande.jpg
10	4	Oppo	Điện thoại OPPO Reno4 Pro	10490000	Trắng	Màn hình:AMOLED6.5"Full HD+ <br>\r\nHệ điều hành:Android 10 <br>\r\nCamera sau:Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP <br>\r\nCamera trước:32 MP <br>\r\nChip:Snapdragon 720G <br>\r\nRAM:8 GB <br>\r\nBộ nhớ trong:256 GB <br>\r\nSIM:2 Nano SIMHỗ trợ 4G <br>\r\nPin, Sạc:4000 mAh65 W <br>	OPPO chính thức trình làng chiếc smartphone có tên OPPO Reno4 Pro. Máy trang bị cấu hình vô cùng cao cấp với vi xử lý chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, cùng công nghệ sạc siêu nhanh 65 W nhưng được bán với mức giá vô ưu đãi, dễ tiếp cận. <br>\r\nThiết kế tràn viền siêu ấn tượng <br>\r\nOPPO Reno4 Pro được trang bị màn hình siêu tràn viền kích thước lớn 6.5 inch, tỉ lệ hiển thị lên tới 93.4%, mật độ điểm ảnh đạt ngưỡng 402 ppi, đạt 100% dải màu DCI-P3 điều này cho phép hình ảnh hiển thị chi tiết, sắc nét và sống động nhất. <br>\r\n	Có sẵn	https://product.hstatic.net/1000126467/product/06323639_1_84f7cea6e36a457f9f15eb38f37da3ac_e7c73df23237417f875a405c03536643_grande.jpg
11	4	Oppo	Điện thoại OPPO Reno5 Marvel	9690000	Đen	Màn hình:AMOLED6.43"Full HD+ <br>\r\nHệ điều hành:Android 11 <br>\r\nCamera sau:Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP <br>\r\nCamera trước:44 MP <br>\r\nChip:Snapdragon 720G <br>\r\nRAM:8 GB <br>\r\nBộ nhớ trong:128 GB <br>\r\nSIM:2 Nano SIMHỗ trợ 4G <br>\r\nPin, Sạc:4310 mAh50 W <br>\r\n	OPPO cho ra mắt một phiên bản giới hạn mới OPPO Reno5 Marvel, về hiệu năng cấu hình bên trong máy hoàn toàn tương tự so với Reno5, nhưng về kiểu dáng bên ngoài máy có phần khác biệt với thiết kế tùy chỉnh với mặt lưng có logo Marvel, logo Avengers hoàn toàn mới lạ. <br>\r\nThiết kế hầm hố, ấn tượng <br>\r\nThoạt nhìn, OPPO Reno5 Marvel trông như một chiếc điện thoại chơi game với chủ đạo là màu đen, xen lẫn là các màu đỏ và bạc, sự kết hợp này tạo nên điểm nhấn nổi bật về một chiếc điện thoại mang phong cách thể thao nhưng vẫn toát lên vẻ đẹp thanh lịch. <br>\r\n	Out of stock	https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-thumb-600x600-200x200.jpg
12	4	Oppo	Điện thoại OPPO A93	6490000	Trắng	Màn hình:AMOLED6.43"Full HD+ <br>\r\nHệ điều hành:Android 10 <br>\r\nCamera sau:Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP <br>\r\nCamera trước:Chính 16 MP & Phụ 2 MP <br>\r\nChip:MediaTek Helio P95 <br>\r\nRAM:8 GB <br>\r\nBộ nhớ trong:128 GB <br>\r\nSIM:2 Nano SIMHỗ trợ 4G <br>\r\nPin, Sạc:4000 mAh18 W <br>	OPPO đã tung ra OPPO A93 dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18 W. <br>\r\nHiệu năng vượt trội cùng với Helio P95 <br>\r\nOPPO A93 được trang bị chipset MediaTek Helio P95 tốc độ CPU đạt 2.2 GHz với sức mạnh như thế này thì A93 sẽ không làm bạn thất vọng khi có thể hoạt động tốt với nhiều ứng dụng nặng hay thao tác cuộn trang đều diễn ra trơn tru cảm giác như không có độ trễ. <br>\r\n	Có sẵn	https://khohangdienmay.vn/public/uploads/products/2020-11/oppo-a93-2020.jpg
13	2	Iphone	Điện thoại iPhone 13 Pro Max 512GB	42990000	Xám	Màn hình:OLED6.7"Super Retina XDR <br>\r\nHệ điều hành:iOS 15 <br>\r\nCamera sau:3 camera 12 MP <br>\r\nCamera trước:12 MP <br>\r\nChip:Apple A15 Bionic <br>\r\nRAM:6 GB <br>\r\nBộ nhớ trong:512 GB <br>\r\nSIM:1 Nano SIM & 1 eSIMHỗ trợ 5G <br>\r\nPin, Sạc:4352 mAh20 W <br>\r\n	iPhone 13 Pro Max 512GB một siêu phẩm đến từ nhà Apple chắc chắn đang được rất nhiều sự quan tâm từ iFan. Chiếc điện thoại này sở hữu màn hình siêu đẹp, hiệu năng bức phá từ con chip Apple A15 Bionic sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ thông thường cho đến các ứng dụng chuyên nghiệp. <br>\r\nThiết kế sang trọng, đậm chất Apple <br>\r\nSang trọng - lịch lãm là những từ sẽ hiện lên đầu tiên khi nói về thiết kế của iPhone 13. Phần khung được làm từ thép không gỉ được tạo hình vuông vức, mặt lưng bằng kính vô cùng đẹp mắt, ở phiên bản này vẫn được giữ lại tai thỏ nhưng với một kích nhỏ gọn hơn 20% so với trước đây, việc thu nhỏ tai thỏ giúp màn hình trong rộng rãi hơn. <br>\r\n	Có sẵn	https://cdn.nguyenkimmall.com/images/detailed/760/dien-thoai-iphone-13-pro-max-256gb-xam-1.jpg
14	2	Iphone	Điện thoại iPhone 12 Pro Max 128GB	31990000	Vàng đồng	Màn hình:OLED6.7"Super Retina XDR <br>\r\nHệ điều hành:iOS 14 <br>\r\nCamera sau:3 camera 12 MP <br>\r\nCamera trước:12 MP <br>\r\nChip:Apple A14 Bionic <br>\r\nRAM:6 GB <br>\r\nBộ nhớ trong:128 GB <br>\r\nSIM:1 Nano SIM & 1 eSIMHỗ trợ 5G <br>\r\nPin, Sạc:3687 mAh20 W <br>	iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng. <br>\r\nThay đổi thiết kế mới sau 6 năm <br>\r\nTheo chu kỳ cứ mỗi 3 năm thì iPhone lại thay đổi thiết kế và 2020 là năm đánh dấu cột mốc quan trong này, vì thế rất có thể đây là thời điểm các mẫu iPhone 12 sẽ có một sự thay đổi mạnh mẽ về thiết kế. <br>\r\n\r\niPhone 12 Pro Max sở hữu diện mạo mới mới với khung viền được vát thẳng và mạnh mẽ như trên iPad Pro 2020, chấm dứt hơn 6 năm với kiểu thiết kế bo cong trên iPhone 6 được ra mắt lần đầu tiên vào năm 2014. <br>\r\n	Có sẵn	\r\nhttps://huymobile.vn/upload/default/product/album_1602663344_P2.png
15	4	Oppo	Điện thoại OPPO Find X3 Pro 5G	23990000	Đen	Màn hình:AMOLED6.7"Quad HD+ (2K+) <br>\r\nHệ điều hành:Android 11 <br>\r\nCamera sau:Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP <br>\r\nCamera trước:32 MP <br>\r\nChip:Snapdragon 888 <br>\r\nRAM:12 GB <br> \r\nBộ nhớ trong:256 GB <br> \r\nSIM:2 Nano SIMHỗ trợ 5G <br>\r\nPin, Sạc:4500 mAh65 W <br>	OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android. <br>\r\nKết quả của sự sáng tạo không ngừng <br>\r\nNếu nhìn qua mặt lưng của OPPO Find X3 Pro 5G thì bạn sẽ bất ngờ ngay với cụm camera sau, được tạo hình giống như miệng núi lửa, thiết kế này đã ngốn rất nhiều thời gian và công sức của nhà sản xuất để mang đến cho người dùng sự khác biệt mới lạ. <br>\r\n	Có sẵn	https://phuonglinhmobile.com/image/cache/catalog/Oppo%20Reno/oppo-find-x3-pro-black-001-600x600-800x800.jpg
16	4	Oppo	Điện thoại OPPO Reno6 Z 5G 	9490000	Bạc	Màn hình:AMOLED6.43"Full HD+ <br>\r\nHệ điều hành:Android 11 <br>\r\nCamera sau:Chính 64 MP & Phụ 8 MP, 2 MP <br>\r\nCamera trước:32 MP <br>\r\nChip:MediaTek Dimensity 800U 5G <br>\r\nRAM:8 GB <br>\r\nBộ nhớ trong:128 GB <br>\r\nSIM:2 Nano SIMHỗ trợ 5G <br>\r\nPin, Sạc:4310 mAh30 W <br>	Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm" mà bạn không thể bỏ qua. <br>\r\nBộ 3 camera chuyên nghiệp - Mỗi cảm xúc, một chân dung <br>\r\n	Có sẵn	https://cdn.tgdd.vn/Products/Images/42/239747/oppo-reno6-z-5g-aurora-1-600x600.jpg
17	3	Xiaomi	Điện thoại Xiaomi Mi 11 Lite	7990000	Hồng	Màn hình:AMOLED6.55"Full HD+<br>\r\nHệ điều hành:Android 11<br>\r\nCamera sau:Chính 64 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:16 MP<br>\r\nChip:Snapdragon 732G<br>\r\nRAM:8 GB<br>\r\nBộ nhớ trong:128 GB<br>\r\nSIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G<br>\r\nPin, Sạc:4250 mAh33 W<br>	Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.<br>\r\nMi 11 Lite trang bị con chip đến từ Qualcomm, sản xuất trên tiến trình 8 nm sẵn sàng cùng bạn chiến mọi tựa game phổ biến hiện nay với tốc độ tối đa lên đến 2.3 GHz.<br>\r\nNhững cải tiến về hiệu suất của Snapdragon 732G mang đến hiệu năng xử lý đồ họa cũng như các tác vụ khác đều được nâng cao, trí tuệ nhân tạo AI cũng được cải thiện hơn so với thế hệ trước, nhờ thế mà viên pin sẽ được tối ưu tốt hơn.<br>\r\n	Có sẵn	https://cdn.tgdd.vn/Products/Images/42/233241/xiaomi-mi-11-lite-4g-hong-1-org.jpg
18	3	Xiaomi	Điện thoại Xiaomi 11T Pro 5G	14990000	Xám	\r\nMàn hình:AMOLED6.67"Full HD+<br>\r\nHệ điều hành:Android 11<br>\r\nCamera sau:Chính 108 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:16 MP<br>\r\nChip:Snapdragon 888<br>\r\nRAM:12 GB<br>\r\nBộ nhớ trong:256 GB<br>\r\nSIM:2 Nano SIMHỗ trợ 5G<br>\r\nPin, Sạc:5000 mAh120 W<br>	Màn hình Xiaomi 11T Pro có độ phân giải Full HD+ (1080 x 2400 Pixels), được hỗ trợ tần số quét 120 Hz và tốc độ lấy mẫu cảm ứng là 480 Hz, giúp cho mọi thao tác điều khiển của bạn trở nên mượt mà và chính xác hơn.<br>\r\nMọi thao tác xử lý trên Xiaomi 11T Pro được đảm nhận bởi Snapdragon 888 5G của Qualcomm. Con chip xử lý được sản xuất trên tiến trình 5 nm giúp cải thiện 25% hiệu suất CPU và 35% hiệu suất GPU so với thế hệ trước mang lại hiệu năng đột phá và tiêu thụ điện năng hiệu quả hơn.<br>\r\n	Có sẵn	https://cdn.tgdd.vn/Products/Images/42/248218/xiaomi-11t-pro-1-2.jpg
20	3	Xiaomi	Điện thoại Xiaomi Redmi Note 10S 6GB	5990000	Black	Màn hình:AMOLED6.43"Full HD+ <br>\r\nHệ điều hành:Android 11<br>\r\nCamera sau:Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:13 MP<br>\r\nChip:MediaTek Helio G95<br>\r\nRAM:6 GB<br>\r\nBộ nhớ trong:128 GB<br>\r\nSIM:2 Nano SIMHỗ trợ 4G<br>\r\nPin, Sạc:5000 mAh33 W<br>	Redmi Note 10S 6GB đến từ nhà Xiaomi thuộc phân khúc smartphone giá tầm trung nhưng chinh phục người tiêu dùng với thiết kế sang đẹp, cấu hình ấn tượng và cụm camera cực chất, sẽ là thiết bị liên lạc, chiến game giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.\r\nHiệu năng mạnh mẽ, đáp ứng mọi tác vụ<br>\r\nXiaomi Redmi Note 10S 6GB sở hữu chip xử lý MediaTek Helio G95 8 nhân được sản xuất trên tiến trình 12nm cho tốc độ lên đến 2.05 GHz, tích hợp chip đồ họa Mali-G76 MC4 xử lý đồ họa tốt cho phép người dùng chiến game ổn định, mượt mà ở những tựa game có mức cài đặt phù hợp.<br>\r\n	Có sẵn	https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/03/22/image-removebg-preview.png
22	2	Iphone	Điện thoại iPhone 13 128GB	24990000	Xanh dương	Màn hình:OLED6.1"Super Retina XDR<br>\r\nHệ điều hành:iOS 15<br>\r\nCamera sau:2 camera 12 MP<br>\r\nCamera trước:12 MP<br>\r\nChip:Apple A15 Bionic<br>\r\nRAM:4 GB<br>\r\nBộ nhớ trong:128 GB<br>\r\nSIM:1 Nano SIM & 1 eSIMHỗ trợ 5G<br>\r\nPin, Sạc:3240 mAh20 W<br>	Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 - điện thoại có nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.<br>\r\nHiệu năng vượt trội nhờ chip Apple A15 Bionic<br>\r\nCon chip Apple A15 Bionic siêu mạnh được sản xuất trên quy trình 5 nm giúp iPhone 13 đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%, GPU nhanh hơn 30% so với các đối thủ trong cùng phân khúc.<br>	Có sẵn	https://24hstore.vn/images/products/2021/09/15/large/iphone-13-blue-select-2021_1631648920_1.jpg
\.


--
-- PostgreSQL database dump complete
--

