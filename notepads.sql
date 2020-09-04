-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 03:18 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notepads`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2020-07-28 02:45:29', NULL),
(2, 'PHP', 'php', '2020-07-28 02:45:35', NULL),
(3, 'Mail', 'mail', '2020-07-28 02:45:40', NULL),
(4, 'Github', 'github', '2020-07-28 02:48:36', NULL),
(5, 'Cheat', 'cheat', '2020-07-28 04:01:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2020_05_04_100450_create_category_table', 1),
(20, '2020_05_04_100518_create_notepads_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notepads`
--

CREATE TABLE `notepads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `np_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `np_category_id` bigint(20) NOT NULL DEFAULT 0,
  `np_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_js` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `np_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notepads`
--

INSERT INTO `notepads` (`id`, `np_name`, `np_slug`, `np_category_id`, `np_description`, `np_html`, `np_css`, `np_js`, `np_link`, `created_at`, `updated_at`) VALUES
(1, 'Github', 'github', 4, '* Các bước làm việc nhóm\r\ngit clone -b dev https://gitlab.com/project-job/frontend.git\r\ngit checkout -b tuan_dev\r\ngit pull origin dev\r\ngit push origin tuan_dev\r\ngit clone -b tuan_dev https://gitlab.com/project-job/frontend.git', '1', NULL, NULL, NULL, '2020-07-28 02:49:16', '2020-07-30 02:28:57'),
(2, 'Toastr', 'toastr', 1, 'Thông báo notification\r\n\\Session::flash(\'toastr\' ,[\r\n                \'type\'      => \'success\',\r\n                \'message\'   => \'Đăng ký thành công\'\r\n]);\r\n---------------------------\r\n@if(session(\'toastr\'))\r\n<script>\r\n   var TYPE_MESSAGE = \"{{session(\'toastr.type\')}}\";\r\n   var MESSAGE = \"{{session(\'toastr.message\')}}\";\r\n</script>\r\n{{--  --}}\r\n@endif', NULL, '<link rel=\"stylesheet\" type=\"text/css\" href=\"https://codeseven.github.io/toastr/build/toastr.min.css\">', '<script type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"https://codeseven.github.io/toastr/build/toastr.min.js\"></script>\r\n<script type=\"text/javascript\">\r\n   if (typeof TYPE_MESSAGE != \"undefined\") {\r\n       switch (TYPE_MESSAGE){\r\n           case \'success\' :\r\n               toastr.success(MESSAGE)\r\n               break;\r\n           case \'error\':\r\n               toastr.error(MESSAGE)\r\n               break;\r\n       }\r\n   }\r\n</script>', 'https://github.com/CodeSeven/toastr', '2020-07-28 02:50:35', '2020-07-30 02:53:45'),
(3, 'Middleware', 'middleware', 1, 'Ví dụ: ta muốn khi chưa đăng nhập, không thể nào ta có thể truy cập vào /home, nó sẽ tự redirect qua /login.\r\nNếu theo cách thông thường, ta sẽ check Auth::check() để kiểm tra đăng nhập hay chưa, chưa thì redirect.\r\n\r\nVà theo cách truyền thống này thì khá lâu, vậy nên ta đã có middleware để xử lý vụ này 😀\r\n\r\nNếu ta sử dụng Authentication của Laravel, ta sẽ có sẵn 2 middleware là guest và auth. Với mỗi controller/action có chứa middleware auth, phải cần đăng nhập mới có thể truy cập, guest sẽ không cần dăng nhập.\r\n\r\nDễ hiểu nhất là: kiểm tra điều kiện gì đó để coi có được truy cập page này hay không. (Đối với ASP.NET, ta có thể dùng Filter (ActionFilterAttribute).', NULL, NULL, NULL, 'https://sethphat.com/sp-523/laravel-5-middleware-va-custom-middleware', '2020-07-28 03:36:58', '2020-07-28 03:37:30'),
(4, 'Multiple user', 'multiple-user', 0, 'MULTIPLE AUTHENTICATION GUARDS IN A LARAVEL APP', NULL, NULL, NULL, 'https://pusher.com/tutorials/multiple-authentication-guards-laravel', '2020-07-28 03:38:41', '2020-08-03 01:18:00'),
(5, 'php artisan db:seed', 'php-artisan-dbseed', 1, 'Bây giờ chúng ta cần có một số lượng dữ liệu kha khá lớn để hiển thị lên website của chúng ta, thay vì cách nhập tay thủ công thông thường vừa tốn thời gian vừa tốn công thì Laravel hỗ trợ chúng ta Seeder để nhanh chóng tạo dữ liệu , nhanh chóng để phát triển tính năng của chúng ta.\r\n\r\nvd:\r\n   // giả lập tài khoản admin\r\n        \\DB::table(\'admins\')->insert([\r\n            \'name\'      => \'tuanpham\',\r\n            \'email\'     => \'bicudu0403@gmail.com\',\r\n            \'phone\'     => \'0932505372\',\r\n            \'password\'  => Hash::make(\'04031998\'),\r\n        ]);', NULL, NULL, NULL, 'https://viblo.asia/p/tim-hieu-ve-seeder-trong-laravel-bWrZn1MmKxw', '2020-07-28 03:39:11', '2020-07-28 04:38:09'),
(6, 'php artisan config:cache', 'php-artisan-configcache', 1, 'Xoá bộ nhớ cache cấu hình', NULL, NULL, NULL, 'https://snipe-it.readme.io/docs/clearing-the-config-cache', '2020-07-28 03:50:50', '2020-07-30 02:10:16'),
(7, 'ALL SELECT2', 'all-select2', 0, 'Select2 là công cụ khá tốt để tùy biến select box, nó hỗ trợ việc tìm kiếm, tagging, lấy dữ liệu từ nguồn khác ... Để sử dụng Select2, bạn cần chèn file JavaScript và CSS của nó vào trang web của bạn. Bạn có thể tải chúng về từ đây', NULL, NULL, NULL, 'https://select2.github.io/select2/', '2020-07-28 03:51:47', '2020-07-30 02:11:03'),
(8, 'decrement', 'decrement', 1, 'Giảm cột', NULL, NULL, NULL, NULL, '2020-07-28 03:52:22', NULL),
(9, 'increment', 'increment', 1, 'DB::table(\'users\')->increment(\'votes\');\r\n\r\ntăng bảng user cột votes tăng đơn vị', NULL, NULL, NULL, NULL, '2020-07-28 03:52:36', '2020-07-30 02:37:21'),
(10, 'bumjoi99@gmail.com', 'bumjoi99-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 03:53:35', '2020-07-30 02:09:01'),
(11, 'vvber4@protonmail.com', 'vvber4-at-protonmailcom', 3, '1', NULL, NULL, NULL, NULL, '2020-07-28 03:55:22', NULL),
(12, 'yujthrge1@protonmail.com', 'yujthrge1-at-protonmailcom', 3, '1', NULL, NULL, NULL, NULL, '2020-07-28 03:55:34', '2020-07-30 02:47:38'),
(13, 'wVE12@protonmail.com', 'wve12-at-protonmailcom', 3, '1', NULL, NULL, NULL, NULL, '2020-07-28 03:55:43', '2020-07-30 02:39:14'),
(14, 'dsfvsdv@protonmail.com', 'dsfvsdv-at-protonmailcom', 3, '1', NULL, NULL, NULL, NULL, '2020-07-28 03:56:02', '2020-07-30 02:39:44'),
(15, 'tuanpham0403@xmail.cloud', 'tuanpham0403-at-xmailcloud', 3, '@Taolapro0403\r\n\r\n*onedrive', NULL, NULL, NULL, NULL, '2020-07-28 03:56:33', '2020-07-28 04:25:14'),
(16, 'lkywnfmuz@t.odmail.cn', 'lkywnfmuz-at-todmailcn', 3, '@minhvu123456', NULL, NULL, NULL, NULL, '2020-07-28 03:56:47', '2020-07-28 04:12:06'),
(17, 'ol8uj3u5w_@t.odmail.cn', 'ol8uj3u5w-at-todmailcn', 3, '@Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 03:56:55', '2020-07-28 04:07:24'),
(18, 'suiterscott@gmail.com', 'suiterscott-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 03:57:09', '2020-07-28 04:07:06'),
(19, 'bropackakache@gmail.com', 'bropackakache-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 03:57:26', NULL),
(20, 'bicudu04032@gmail.com', 'bicudu04032-at-gmailcom', 3, 'bidaica0403', NULL, NULL, NULL, NULL, '2020-07-28 03:57:38', NULL),
(21, 'bicudu04033@gmail.com', 'bicudu04033-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:58:33', NULL),
(22, 'bicudu04034@gmail.com', 'bicudu04034-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:58:47', NULL),
(23, 'bicudu04035@gmail.com', 'bicudu04035-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:58:58', NULL),
(24, 'bicudu04036@gmail.com', 'bicudu04036-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:59:10', NULL),
(25, 'bicudu040310@gmail.com', 'bicudu040310-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:59:22', NULL),
(26, 'bicudu040313@gmail.com', 'bicudu040313-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:59:34', NULL),
(27, 'bicudu040314@gmail.com', 'bicudu040314-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 03:59:48', NULL),
(28, 'bicudu040320@gmail.com', 'bicudu040320-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 04:00:00', NULL),
(29, 'bicudu040323@gmail.com', 'bicudu040323-at-gmailcom', 3, '04031998', NULL, NULL, NULL, NULL, '2020-07-28 04:00:12', NULL),
(30, 'phanjone4@gmail.com', 'phanjone4-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:00:23', NULL),
(31, 'jookkook2@gmail.com', 'jookkook2-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:00:34', NULL),
(32, 'bd1640410@gmail.com', 'bd1640410-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:00:58', NULL),
(33, 'coocobay1@gmail.com', 'coocobay1-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:01:10', NULL),
(34, 'tinhkein24@gmail.com', 'tinhkein24-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:01:25', NULL),
(35, 'check bin', 'check-bin', 5, 'check bin\r\n446542700102xxxx\r\n03/23\r\nhttps://namso-gen.com/', NULL, NULL, NULL, 'https://www.mrchecker.net/', '2020-07-28 04:02:18', '2020-07-28 04:02:54'),
(36, 'hent10823@gmail.com', 'hent10823-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:03:10', NULL),
(37, 'kinghu883@gmail.com', 'kinghu883-at-gmailcom', 3, 'Taolapro0403', '1', '1', '1', NULL, '2020-07-28 04:03:21', '2020-07-30 02:12:26'),
(38, 'gchuonh@gmail.com', 'gchuonh-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:03:31', NULL),
(39, 'brualats@gmail.com', 'brualats-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:03:43', NULL),
(40, 'waysena5@gmail.com', 'waysena5-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-07-28 04:03:54', NULL),
(41, 'Mastercard yolo', 'mastercard-yolo', 5, '5460 3496 4185 5245\r\n5/22\r\n054\r\npham Tuan', NULL, NULL, NULL, NULL, '2020-07-28 04:04:11', NULL),
(42, 'in_array()', 'in-array', 2, 'Kiểm tra value có tồn tại không', '<?php\r\n$userdb = Array\r\n(\r\n    (0) => Array\r\n        (\r\n            (\'uid\') => \'100\',\r\n            (\'name\') => \'Sandra Shush\',\r\n            (\'url\') => \'urlof100\'\r\n        ),\r\n\r\n    (1) => Array\r\n        (\r\n            (\'uid\') => \'5465\',\r\n            (\'name\') => \'Stefanie Mcmohn\',\r\n            (\'url\') => \'urlof5465\'\r\n        ),\r\n\r\n    (2) => Array\r\n        (\r\n            (\'uid\') => \'40489\',\r\n            (\'name\') => \'Michael\',\r\n            (\'url\') => \'urlof40489\'\r\n        )\r\n);\r\nif(!empty($userdb)){\r\n    if(in_array(\'5465\',array_column($userdb,\'uid\'))){\r\n        echo \"tồn tại\";\r\n    }\r\n}', NULL, NULL, 'https://www.w3schools.com/php/phptryit.asp?filename=tryphp_func_in_array', '2020-07-28 04:04:39', '2020-08-03 04:32:42'),
(43, 'array_get', 'array-get', 1, 'vd\r\n protected $type = [\r\n        1 =>[\r\n            \'name\' => \"Đôi\",\r\n            \'class\'=> \"label label-info\"\r\n        ],\r\n        \r\n       \r\n   ];\r\n    // dùng array_get để lấy     \r\n   public function getType(){\r\n        return Arr::get($this->type,$this->atb_type,\"[N/A]\");\r\n   }', NULL, NULL, NULL, 'https://viblo.asia/p/laravel-helper-p1-arrays-3P0lPOqmZox', '2020-07-28 04:05:07', NULL),
(44, 'belongsto', 'belongsto', 1, 'realationship: mối quan hệ \r\nTuy nhiên, nếu khóa ngoại trên Phone mô hình không có user_id, bạn có thể chuyển tên khóa tùy chỉnh làm đối số thứ hai cho belongsTophương thức:\r\nvd:        return $this->belongsto(Category::class,\'atb_category_id\');', NULL, NULL, NULL, 'https://viblo.asia/p/eloquent-relationships-in-laravel-phan-1-PdbGnoEdeyA', '2020-07-28 04:05:31', NULL),
(45, 'array_pop()', 'array-pop', 1, 'loại bỏ phần tử cuối truyền vào \r\nvd [\'tuan\',\'pham\',\'4\'] lấy 2 cái đầu bỏ 4\r\ndùng để lấy id ra\r\nvd   $id = array_pop($arraySlug);', '<?php\r\n  $n1 = [\r\n    \'1\' =>[\r\n\r\n        \"name\"  => \'tuấn\',\r\n\r\n        \"sex\"   => \'1\',\r\n\r\n        \"age\"   => [10,6,5],\r\n\r\n    ],\r\n    \'2\' =>[\r\n\r\n        \"name\"  => \"diệu\",\r\n\r\n        \"sex\"   => \'2\',\r\n\r\n        \"age\"   => [10,6,5],\r\n\r\n    ],\r\n];\r\n   $last = array_pop($n1);\r\n   echo \"<pre>\";\r\n   print_r($n1);\r\n   echo \"</pre>\";\r\n?>', NULL, NULL, 'https://www.php.net/manual/en/function.array-pop.php', '2020-07-28 04:05:47', '2020-08-03 00:44:06'),
(46, 'explode()', 'explode', 1, 'Tách chuỗi\r\nvd arraySlug = explode ( \'-\' , $slug)\r\nChuyển 1 chuỗi thành mảng\r\n*', '<?php\r\n    $fullName = \'Pham-Dac-Tuan\';\r\n    $array = explode(\'-\',$fullName);\r\n    echo \"<pre>\";\r\n    print_r ($array);\r\n    echo \"</pre>\";\r\nKQ:\r\nArray\r\n(\r\n    [0] => Pham\r\n    [1] => Dac\r\n    [2] => Tuan\r\n)\r\n $n2 = \'pham        dac        tuan  \';\r\n   $str2 = explode(\" \",$n2);\r\n   foreach($str2 as $key => $value){\r\n     if ( trim($value) == null) unset($str2[$key]);\r\n  }\r\n  echo \"<pre>\";\r\n  print_r($str2);\r\n  echo \"</pre>\";', NULL, NULL, 'https://www.php.net/manual/en/function.explode.php', '2020-07-28 04:06:06', '2020-08-29 07:23:29'),
(47, 'jenssegers/agent', 'jenssegersagent', 1, 'check mobie hay destop\r\ncomposer require jenssegers/agent\r\n\r\nAdd the service provider in config/app.php:\r\n\r\nJenssegers\\Agent\\AgentServiceProvider::class,\r\nAnd add the Agent alias to config/app.php:\r\n\r\n\'Agent\' => Jenssegers\\Agent\\Facades\\Agent::class,', NULL, NULL, NULL, 'https://github.com/jenssegers/agent', '2020-07-28 04:06:30', '2020-07-31 06:09:02'),
(48, 'Function1', 'function1', 2, 'Hàm không tham số  và không trả về', 'function createBox(){\r\n echo \'<p>Box A</p>\'\r\n}\r\n\r\ncreateBox();', NULL, NULL, 'https://drive.google.com/file/d/1qsx7jfTUwHxXY4GiU_kElu-zEfrFGOZK/view', '2020-07-30 06:34:35', '2020-07-30 06:35:02'),
(49, 'Function2', 'function2', 2, 'Hàm có giá trị trả về', 'function createBox(){\r\n    $value   = <p>ABC</p>\r\n    $value  .=<div>BCA</div>\r\n    return $value;\r\n}                          \r\n$result = createBox();\r\necho $result', NULL, NULL, NULL, '2020-07-30 06:40:01', '2020-07-30 07:10:27'),
(50, 'Function3', 'function3', 2, 'Hàm trả về giá trị true false', 'function checkNumber(){\r\n $value = 12;\r\nif ($value %2 == 0){\r\n  return true;\r\n}else{\r\n   return falsel\r\n}\r\n}                            \r\n$result = checkNumber();\r\nif ($result == true ){\r\n echo \"so chan\"\r\n}else{\r\necho \"so le\"\r\n}', NULL, NULL, NULL, '2020-07-30 07:09:58', NULL),
(51, 'Function4', 'function4', 2, 'Truyền tham số vào hàm', '<?php\r\nfunction checkNumber($value){\r\n    if ($value % 2 == 0 ){\r\n        return true;\r\n    }else{\r\n        return false;\r\n    }\r\n}\r\n\r\n$result = checkNumber(90);\r\n    if ($result == true){\r\n        echo \'SỐ CHẴN\';\r\n    }else{\r\n        echo \'SỐ LẺ\';\r\n    }', NULL, NULL, 'https://drive.google.com/file/d/1kmvcupUUwn5vS64i0LHX-64F2hzFx5vR/view', '2020-07-30 18:24:47', '2020-07-30 18:33:55'),
(52, 'Function5', 'function5', 2, 'Truyền vào hàm nhiều tham số', '<?php\r\nfunction createBox($content,$width){\r\n    $result = \'<div style=\"width: \'.$width\'.px; height:50px \"></div>\';\r\n    $result.= \'<p>\'.$content.\'</p>\';\r\n    return result;\r\n}\r\n    $boxA = createBox(\"Box A\",500);', NULL, NULL, 'https://drive.google.com/file/d/1kmvcupUUwn5vS64i0LHX-64F2hzFx5vR/view', '2020-07-30 18:31:34', '2020-07-30 18:33:45'),
(53, 'Function6', 'function6', 2, 'Gán giá trị mặc định cho tham số', '<?php\r\nfunction createBox($content,$width = 150){\r\n    $result = \'<div style=\"width: \'.$width\'.px; height:50px \"></div>\';\r\n    $result.= \'<p>\'.$content.\'</p>\';\r\n    return result;\r\n}\r\n\r\n    $boxA = createBox(\"Box A\",500);\r\n    $boxB = createBox(\"Box B\"); //150', NULL, NULL, 'https://drive.google.com/file/d/1kmvcupUUwn5vS64i0LHX-64F2hzFx5vR/view', '2020-07-30 18:33:20', '2020-07-30 18:33:37'),
(54, 'function7', 'function7', 2, 'Biến toàn cục', '<?php\r\n$x = 75;\r\n\r\nfunction addition() {\r\n    $GLOBALS[\'x\'];\r\n}\r\n   $new = addition();\r\n   echo $x;\r\n    \r\n?>', NULL, NULL, NULL, '2020-07-30 18:49:59', NULL),
(55, 'Function8', 'function8', 2, 'Truyền theo kiểu tham chiếu:Thì biến được truyền trực tiếp vào hàm\r\n\r\nTruyền theo kiểu tham trị: Sẽ có 1 bản copy của biến được truyền vào sẽ thay đổi theo bản copy đó', '// tham chiếu\r\n<?php\r\n    function sum(&$n1,&$n2){\r\n        $result = 0;\r\n        $n1 = $n1 * $n1;\r\n        $n2 = $n2 * $n2;\r\n        $result = $n1 + $n2;\r\n        return $result;\r\n    }\r\n    $n1 = 2;\r\n    $n2 = 3;\r\n    $number = sum($n1,$n2);\r\n    echo $number .\"<br>\";\r\n    echo \"n1: \".$n1.\"<br>\";//n1=4\r\n    echo \"n2: \".$n2.\"<br>\";\r\n?>\r\n//tham trị\r\n<?php\r\n    function sum($n1,$n2){\r\n        $result = 0;\r\n        $n1 = $n1 * $n1;\r\n        $n2 = $n2 * $n2;\r\n        $result = $n1 + $n2;\r\n        return $result;\r\n    }\r\n    $n1 = 2;\r\n    $n2 = 3;\r\n    $number = sum($n1,$n2);\r\n    echo $number .\"<br>\";\r\n    echo \"n1: \".$n1.\"<br>\";//n1=2\r\n    echo \"n2: \".$n2.\"<br>\";\r\n\r\n?>', NULL, NULL, NULL, '2020-07-30 19:13:04', '2020-08-03 00:47:53'),
(56, 'Kiểm tra kiểu dữ liệu', 'kiem-tra-kieu-du-lieu', 2, 'var_dump,is_numberic,is_string,is_array,is_date', '<?php\r\n    $n1 = 10;\r\n    $n2 = \"ABC\";\r\n    var_dump($n1);\r\n    var_dump($n2);\r\n    echo \"<br>\";\r\n    if (is_numeric($n2)){\r\n        echo \"Number\";\r\n    }else{\r\n        echo \"Not Number\";\r\n    }\r\n?>', NULL, NULL, NULL, '2020-07-30 19:58:08', '2020-07-30 19:58:27'),
(57, 'var_dump, gettype', 'var-dump-gettype', 2, 'Lấy kiểu dữ liệu của 1 biến', '<?php\r\n    $n1 = \"ABC\";    \r\n    $data = array(1, 1., NULL, new stdClass, \'foo\');\r\n    var_dump($n1) ;\r\n    echo  \"<br>\";\r\n    foreach ($data as $value) {\r\n        echo gettype($value), \"\\n\";\r\n    }  \r\n?>', NULL, NULL, 'https://drive.google.com/file/d/1MqN00w6bMcyOKajePeaHT9PsZQ7xdZQV/view', '2020-07-31 18:16:21', NULL),
(58, 'is_numberic,is_string,is_array,is_date', 'is-numbericis-stringis-arrayis-date', 2, 'Kiểm tra kiểu dữ liệu của 1 biến', '<?php\r\n    $n1 = \"ABC\";\r\n    if(is_numeric($n1)){\r\n        echo \"Đây là sô\";\r\n    }else{\r\n        echo \"không phải số\";\r\n    }\r\n?>', NULL, NULL, NULL, '2020-07-31 18:19:32', NULL),
(59, 'Lenght', 'lenght', 2, 'Đếm số phẩn tử của mảng', '<?php\r\n    $n1 = [\"NAC\",\"BAC\"];\r\n\r\n    $lenght = count($n1);\r\n    echo $lenght;\r\n    //hoặc dùng empty\r\n    if (!empty($n1) ){\r\n        echo \"Không phải mảng rỗng\";\r\n    }else{\r\n        echo \"Mảng rỗng\";\r\n    }\r\n?>', NULL, NULL, NULL, '2020-07-31 18:24:37', '2020-07-31 18:26:49'),
(60, 'Foreach array', 'foreach-array', 2, 'Show dữ liệu foreach', '<?php\r\n    $n1 = [\r\n        \'1\' =>[\r\n            \"name\"  => \'tuấn\',\r\n            \"sex\"   => \'1\',\r\n            \"age\"   => [10,6,5],\r\n        ],\r\n        \'2\' =>[\r\n            \"name\"  => \"diệu\",\r\n            \"sex\"   => \'2\',\r\n            \"age\"   => [10,6,5],\r\n        ],\r\n    ];\r\n        if(!empty($n1)){\r\n            foreach ($n1 as $key => $value){\r\n                $name  = $value[\"name\"];\r\n                $sex   = ($value[\"sex\"] == 1 ? \"Nam\" : \"Nữ\") ;\r\n                $score = array_sum($value[\"age\"]);\r\n                echo \"Name: \" .$name. \"- Sex: \" .$sex. \"- Age: \" .$score. \"<br>\"  ;\r\n            }\r\n        }  \r\n?>', NULL, NULL, NULL, '2020-08-01 06:23:23', '2020-08-01 19:44:11'),
(64, 'array_value', 'array-value', 2, 'Lấy giá trị value trong mảnh', '<?php\r\n   $n1 = [\r\n        \"name\" => \'tuan\',\r\n        \'age\'  => \'11\'\r\n   ];\r\n\r\n   $new = array_values($n1);\r\n   print_r($new);\r\n?>\r\nKQ:\r\nArray ( [0] => tuan [1] => 11 )', NULL, NULL, NULL, '2020-08-03 00:36:33', NULL),
(65, 'array_keys', 'array-keys', 2, 'Lấy ra key của mảng', '<?php\r\n   $n1 = [\r\n        \"name\" => \'tuan\',\r\n        \'age\'  => \'11\'\r\n   ];\r\n\r\n   $new = array_keys($n1);\r\n   print_r($new);\r\n?>\r\nKQ:\r\nArray\r\n(\r\n    [0] => name\r\n    [1] => age\r\n)', NULL, NULL, NULL, '2020-08-03 00:37:28', NULL),
(66, 'array_shift', 'array-shift', 2, 'Xóa giá trị đầu tiên của mảng', '<?php\r\n  $n1 = [\r\n    \'1\' =>[\r\n\r\n        \"name\"  => \'tuấn\',\r\n\r\n        \"sex\"   => \'1\',\r\n\r\n        \"age\"   => [10,6,5],\r\n\r\n    ],\r\n    \'2\' =>[\r\n\r\n        \"name\"  => \"abc\",\r\n\r\n        \"sex\"   => \'2\',\r\n\r\n        \"age\"   => [10,6,5],\r\n\r\n    ],\r\n];\r\n   $first = array_shift($n1);\r\n   echo \"<pre>\";\r\n   print_r($n1);\r\n   echo \"</pre>\";\r\n?>', NULL, NULL, NULL, '2020-08-03 00:45:10', NULL),
(67, 'array_unique', 'array-unique', 2, 'Loại bỏ giá trị mảng trùng', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'11\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   $unique = array_pop($n1);\r\n   echo \"<pre>\";\r\n   print_r($unique);\r\n   echo \"</pre>\";\r\n?>\r\nKQ:\r\nArray\r\n(\r\n    [name] => tuan\r\n    [age] => 000\r\n    [address] => 110 tran tan moi\r\n)', NULL, NULL, NULL, '2020-08-03 01:17:25', '2020-08-03 01:17:52'),
(68, 'unset', 'unset', 2, 'Xóa bất kỳ phần tử nào của mảng', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'11\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   unset($n1[1]);\r\n   echo \"<pre>\";\r\n   print_r($n1);\r\n   echo \"</pre>\";\r\n?>', NULL, NULL, NULL, '2020-08-03 01:22:22', NULL),
(69, 'array_push', 'array-push', 2, 'Thêm giá trị vào cuối mảng', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'11\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   array_push($n1, [ \"name\" => \'nam\' , \'age\' => \'18\']);\r\n   echo \"<pre>\";\r\n   print_r($n1);\r\n   echo \"</pre>\";\r\n?>                            \r\nKQ:\r\nArray\r\n(\r\n    [1] => Array\r\n        (\r\n            [name] => tuan\r\n            [age] => 11\r\n            [address] => 110 tran tan moi\r\n        )\r\n\r\n    [2] => Array\r\n        (\r\n            [name] => tuan\r\n            [age] => 000\r\n            [address] => 110 tran tan moi\r\n        )\r\n\r\n    [3] => Array\r\n        (\r\n            [name] => nam\r\n            [age] => 18\r\n        )\r\n\r\n)', NULL, NULL, NULL, '2020-08-03 01:52:29', NULL),
(70, 'array_unshift', 'array-unshift', 2, 'Thêm giá trị vào đầu tiên của mảng', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'11\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   array_unshift($n1, [ \"name\" => \'nam\' , \'age\' => \'18\']);\r\n   echo \"<pre>\";\r\n   print_r($n1);\r\n   echo \"</pre>\";\r\n?>', NULL, NULL, NULL, '2020-08-03 01:54:13', NULL),
(71, 'array_resverse', 'array-resverse', 2, 'Đảo ngược giá trị trong mảng', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'kien\',\r\n        \'age\'     => \'11\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   $resverse = array_reverse($n1);\r\n   echo \"<pre>\";\r\n   print_r($resverse);\r\n   echo \"</pre>\";\r\n?>', NULL, NULL, NULL, '2020-08-03 01:55:46', NULL),
(72, 'array_flip', 'array-flip', 2, 'Đảo key cho value', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'kien\',\r\n        \'age\'     =>  18,\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   $flip = array_map(\"array_flip\",$n1);\r\n   echo \"<pre>\";\r\n   print_r($flip);\r\n   echo \"</pre>\";\r\n?>\r\nKQ:\r\nArray\r\n(\r\n    [1] => Array\r\n        (\r\n            [kien] => name\r\n            [18] => age\r\n            [110 tran tan moi] => address\r\n        )\r\n\r\n    [2] => Array\r\n        (\r\n            [tuan] => name\r\n            [000] => age\r\n            [110 tran tan moi] => address\r\n        )\r\n\r\n)', NULL, NULL, NULL, '2020-08-03 02:12:05', NULL),
(73, 'array_map', 'array-map', 2, 'Hàm array_map () gửi mỗi giá trị của một mảng cho hàm do người dùng tạo ra, và trả về một mảng với các giá trị mới, được đưa ra bởi hàm do người dùng tạo.\r\n\r\nMẹo: Bạn có thể gán một mảng cho hàm, hoặc nhiều như bạn muốn.', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<?php\r\nfunction myfunction($num)\r\n{\r\n  return($num*$num);\r\n}\r\n\r\n$a=array(1,2,3,4,5);\r\nprint_r(array_map(\"myfunction\",$a));\r\n?>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, '2020-08-03 02:13:15', NULL),
(74, 'array_count_values', 'array-count-values', 2, 'Đếm số lần xuất hiện trong mảng', '<?php\r\n   $n1 = [3,5,4,7,7,8 ];\r\n   $new_array = array_count_values($n1);\r\n   echo \"<pre>\";\r\n   print_r($new_array);\r\n   echo \"</pre>\";\r\n?>\r\nKQ:\r\nArray\r\n(\r\n    [3] => 1\r\n    [5] => 1\r\n    [4] => 1\r\n    [7] => 2\r\n    [8] => 1\r\n)', NULL, NULL, NULL, '2020-08-03 02:19:04', NULL),
(75, 'array_merge', 'array-merge', 2, 'Nối nhiều mảng lại với nhau', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'name\'    => \'tuan\',\r\n        \'age\'     =>  18,\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"name\"    => \'kien\',\r\n        \'age\'     => \'000\',\r\n        \'address\' => \'110 tran tan moi\',\r\n       ]\r\n       \r\n   ];\r\n   $n2 = [\r\n        \'3\' => [\r\n            \'name\' => \"huy\",\r\n            \'age\'     => \'000\',\r\n            \'address\' => \'110 tran tan moi\',\r\n        ]\r\n   ];\r\n   $new_array = array_merge($n1,$n2);\r\n   echo \"<pre>\";\r\n   print_r($new_array);\r\n   echo \"</pre>\";\r\n?>', NULL, NULL, NULL, '2020-08-03 02:22:06', NULL),
(76, 'array_rand', 'array-rand', 2, 'random key của mảng', NULL, NULL, NULL, NULL, '2020-08-03 02:26:05', '2020-08-03 03:58:51'),
(77, 'array_key_exists', 'array-key-exists', 2, 'Kiểm tra key có tồn tại k', '<?php\r\n   $n1 = [\r\n       \'1\' => [\r\n        \"name\"    => \'tuan\',\r\n        \'name\'    => \'tuan\',\r\n        \'age\'     =>  18,\r\n        \'address\' => \'110 tran tan moi\',\r\n       ],\r\n       \'2\' => [\r\n        \"ten\"    => \'kien\',\r\n        \'tuoi\'     => \'000\',\r\n        \'dịa chỉ\' => \'110 tran tan moi\',\r\n       ]\r\n   ];\r\n   if(array_key_exists(\'1\',$n1)){\r\n       echo \"ton tai\";\r\n   }\r\n\r\n?>', NULL, NULL, NULL, '2020-08-03 02:42:13', NULL),
(79, 'array_change_key_case', 'array-change-key-case', 2, 'In hoa key trong mảng', '<?php\r\n    $input_array = array(\"FirSt\" => 1, \"SecOnd\" => 4);\r\n    print_r(array_change_key_case($input_array, CASE_UPPER));\r\n?>\r\nKQ:\r\nArray ( [FIRST] => 1 [SECOND] => 4 )', NULL, NULL, NULL, '2020-08-03 05:06:33', '2020-08-03 05:07:08'),
(80, 'implode', 'implode', 2, 'Nối chuỗi cách nhau bằng\r\nChuyển 1 mảng thành chuỗi', '<?php\r\n    $couse = [\'abc\',1,2,\'5\'];\r\n    echo $str = implode(\'-\',$couse);\r\n?>\r\nKQ:\r\nabc-1-2-5', NULL, NULL, NULL, '2020-08-03 05:12:17', '2020-08-24 12:10:37'),
(81, 'current,next,prev,reset', 'currentnextprevreset', 2, 'Truy xuất đến phần tử của mảng', '<?php\r\n    $n1 = [\'1\',\'bcn\',\'nbh\',1];\r\n\r\n    echo current($n1) . \"<br>\"; //hiện hành\r\n    echo next($n1) . \"<br>\";\r\n    echo current($n1). \"<br>\";\r\n    echo prev($n1). \"<br>\";\r\n    echo reset($n1). \"<br>\";', NULL, NULL, NULL, '2020-08-03 05:34:01', NULL),
(82, 'shuffle', 'shuffle', 2, 'Xáo trộn value của mảng', '<?php\r\n   $n1 = [1,5,9,6,3,1,46,5];\r\n   shuffle($n1);\r\n   echo \"<pre>\";\r\n   print_r($n1);\r\n   echo \"</pre>\";\r\nKQ:\r\nArray\r\n(\r\n    [0] => 3\r\n    [1] => 1\r\n    [2] => 9\r\n    [3] => 1\r\n    [4] => 5\r\n    [5] => 5\r\n    [6] => 6\r\n    [7] => 46\r\n)', NULL, NULL, NULL, '2020-08-03 05:38:52', NULL),
(83, 'compact', 'compact', 2, 'Tạo mảng mới từ biến có sẵn', '<?php\r\n$n1 = [\'100\',2,\'abc\'];\r\n$n2 = [102];\r\n$course = compact(\'n1\',\'n2\');\r\necho \"<pre>\";\r\nprint_r($course);\r\necho \"</pre>\";', NULL, NULL, NULL, '2020-08-03 05:46:09', NULL),
(84, 'range', 'range', 2, 'Tạo 1 dãy các phần tử của mảng', '<?php\r\n$n1 = range(1,10,2); // tăng từ 1 đến 10 (2) là tăng thêm 2 đơn vị\r\necho \"<pre>\";\r\nprint_r($n1);\r\necho \"</pre>\";                \r\nKQ:\r\nArray\r\n(\r\n    [0] => 1\r\n    [1] => 3\r\n    [2] => 5\r\n    [3] => 7\r\n    [4] => 9\r\n)', NULL, NULL, NULL, '2020-08-03 05:51:02', NULL),
(85, 'array_combine', 'array-combine', 2, 'Tạo 1 mảng mới có khóa lấy từ mảng key và mảng value theo thứ tự', '<?php\r\n$n1 = [\'1\',\'2\',\'3\'];\r\n$n2 = [\"tuan\",\"abc\",\"nsn\"];\r\n$array = array_combine($n1,$n2);\r\necho \"<pre>\";\r\nprint_r($array);\r\necho \"</pre>\";\r\nKQ:\r\nArray\r\n(\r\n    [1] => tuan\r\n    [2] => abc\r\n    [3] => nsn\r\n)', NULL, NULL, NULL, '2020-08-03 05:54:06', NULL),
(86, 'array_diff', 'array-diff', 2, 'In ra các phần tử tồn tại trong array1 nhưng không tồn tại trong array 2', '<?php\r\n$n1 = [\'1\',\'2\',\'tuan\'];\r\n$n2 = [\"tuan\",\"abc\",\"nsn\"];\r\n$array = array_diff($n1,$n2);\r\necho \"<pre>\";\r\nprint_r($array);\r\necho \"</pre>\";\r\nKQ:\r\nArray\r\n(\r\n    [0] => 1\r\n    [1] => 2\r\n)', NULL, NULL, NULL, '2020-08-03 06:00:37', NULL),
(87, 'array_diff_key', 'array-diff-key', 2, 'In ra các phần tử tồn tại trong (key) array1 nhưng không tồn tại trong (key) array 2', '<?php\r\n$n1 = [\'1\' => \"nan\",\'name\' => \'tuan\',\'age\' => 18;\r\n$n2 = [\"tuan\",\"abc\",\"nsn\"];\r\n$array = array_diff_key($n1,$n2);\r\necho \"<pre>\";\r\nprint_r($array);\r\necho \"</pre>\";\r\nKQ:\r\nArray\r\n(\r\n    [name] => tuan\r\n    [age] => 18\r\n)', NULL, NULL, NULL, '2020-08-03 06:12:30', NULL),
(88, 'array_diff_assoc', 'array-diff-assoc', 2, 'In ra các phần tử tồn tại trong (key) bao gồm [0][1] array1 nhưng không tồn tại trong (key) array 2', '<?php\r\n$n1 = [\'1\' => \"nan\",\'name\' => \'tuan\',\'age\' => 18];\r\n$n2 = [\'name\' => \'tuan\',\"abc\",\"nsn\"];\r\n$array = array_diff_assoc($n1,$n2);\r\necho \"<pre>\";\r\nprint_r($array);\r\necho \"</pre>\";\r\nKQ:\r\nArray\r\n(\r\n    [1] => nan\r\n    [age] => 18\r\n)', NULL, NULL, NULL, '2020-08-03 06:33:56', '2020-08-03 08:06:29'),
(104, 'parse_str()', 'parse-str', 2, 'truy vấn các biến vào các biến hoặc mảng\r\n*', '<?php\r\n    $str = \"name=tuanpham&age=22\";\r\n    parse_str($str);\r\n    echo $name;\r\n    //KQ:tuanpham\r\n    parse_str($str,$arr);\r\n    echo \"<pre>\";\r\n    print_r($arr);\r\n    echo \"</pre>\";\r\n    // KQ:\r\n    /*\r\n    Array\r\n    (\r\n        [name] => tuanpham\r\n        [age] => 22\r\n    )\r\n    */', NULL, NULL, NULL, '2020-08-20 06:05:58', '2020-08-24 12:18:58'),
(105, 'strcmp', 'strcmp', 2, 'so sánh 2 chuỗi', '$n1 = \"pham dac tuan\";\r\n    $n2 = \"pham\";\r\n    \r\n    $result = strcmp($n1,$n2);\r\n    echo $result;', NULL, NULL, NULL, '2020-08-21 04:57:13', NULL),
(106, 'str_pad', 'str-pad', 2, 'tăng độ dài chuỗi', '$str = \"pham dac tuan\";\r\n    $result = str_pad($str,30,\'.\');\r\n    // $result = str_pad($str,30);\r\n    // $result = str_pad($str,30,\'.\',STR_PAD_LEFT);\r\n    // $result = str_pad($str,30,\'.\',STR_PAD_RIGHT);\r\n        // $result = str_pad($str,30,\'.\',STR_PAD_BOTH); ở giữa các ký tự chia đều\r\n    echo $result;', NULL, NULL, NULL, '2020-08-21 05:09:53', NULL),
(107, 'str_replace', 'str-replace', 2, 'thay thế chuỗi hoặc mảng', '<?php\r\n    $n1 = \"PhP is easy\";\r\n    $result = str_replace(\"PhP\",\"Android\",$n1);\r\n    echo $result;', NULL, NULL, NULL, '2020-08-21 05:31:53', '2020-08-21 05:35:34'),
(108, 'substr_count', 'substr-count', 2, 'Đếm số lần xuất hiện', '<?php\r\n    $n1 = \'this is a book\';\r\n    $result = substr_count($n1,\"is\");\r\n    echo $result;', NULL, NULL, NULL, '2020-08-21 05:42:39', NULL),
(109, 'str_split', 'str-split', 2, 'cắt chuỗi thành mảng', '<?php\r\n    $n1 = \"pham dac tuan\";\r\n    // $str = str_split($n1);\r\n    $str = str_split($n1,3); //pha m d ac tua n\r\n    echo \"<pre>\";\r\n    print_r($str);\r\n    echo \"</pre>\";\r\n    /* KQ\r\n    Array\r\n(\r\n    [0] => p\r\n    [1] => h\r\n    [2] => a\r\n    [3] => m\r\n    [4] =>  \r\n    [5] => d\r\n    [6] => a\r\n    [7] => c\r\n    [8] =>  \r\n    [9] => t\r\n    [10] => u\r\n    [11] => a\r\n    [12] => n\r\n)\r\n    */', NULL, NULL, NULL, '2020-08-21 05:50:14', NULL),
(110, 'alerttuan@gmail.com', 'alerttuan-at-gmailcom', 3, 'Taolapro0403', NULL, NULL, NULL, NULL, '2020-08-21 05:51:07', NULL),
(111, 'ltrim()', 'ltrim', 2, 'bỏ đi các ký tự bên trái', '<?php\r\n    $n1 = \'                 phamdac tuan  \';\r\n    echo \"Input: \".$n1. \"- lenght: \"  . strlen($n1) .\"<br>\";\r\n    $ltrim = ltrim($n1);\r\n    echo \"Output: \". $ltrim .\"- lenght: \" .strlen($ltrim);', NULL, NULL, NULL, '2020-08-24 12:05:03', NULL),
(113, 'strrev()', 'strrev', 2, 'Đảo ngược chuỗi', '<?php\r\n    $n1 = \'pham dac tuan\';\r\n    $rev = strrev($n1);\r\n    echo $rev;', NULL, NULL, NULL, '2020-08-24 12:07:32', NULL),
(114, 'strtoupper, strtolower, ucfirst, ucwords', 'strtoupper-strtolower-ucfirst-ucwords', 2, 'in hoa,in thường,in đậm chữ đầu tiên,in đậm tất cả chữ đầu tiên', '<?php\r\n    $n1 = \'pham dac tuan\';\r\n    $n2 = \'Pham Dac Tuan\';\r\n    $n3 = \'pham dac tuan\';\r\n    $inhoa = strtoupper($n1);\r\n    $lower = strtolower($n2);\r\n    $ucfirst = ucfirst($n3);\r\n    $ucword = ucwords($n3);\r\n    echo \"In hoa (upper): \". $inhoa .\"<br>\";\r\n    echo \"In thường (lower): \".$lower .\"<br>\";\r\n    echo \"In chữ đầu (ucfirst): \".$ucfirst .\"<br>\";\r\n    echo \"In tất cả chữ đầu in hoa (ucwords): \" .$ucword .\"<br>\";', NULL, NULL, NULL, '2020-08-24 12:14:43', NULL),
(115, 'mb_strlen', 'mb-strlen', 2, 'Đếm chuỗi có bao nhiêu kí tự bao gồm utf8\r\nĐếm có bao nhiêu kí tự bao gồm utf8', '<?php\r\n    //đếm chuỗi có bao nhiêu kí tự bao gồm utf8\r\n    $n1 = \"Phạm Đắc Tuấn\";\r\n    $lenght = mb_strlen($n1);\r\n    echo $lenght;', NULL, NULL, NULL, '2020-08-24 12:16:52', NULL),
(116, 'str_repeat', 'str-repeat', 2, 'Lặp lại', '<?php\r\n    $n1 = \"aa\";\r\n    $str = str_repeat($n1,5);\r\n    echo $str;', NULL, NULL, NULL, '2020-08-24 12:20:31', NULL),
(117, 'str_shuffle', 'str-shuffle', 2, 'Xáo trộn chuỗi', '<?php\r\n    $n1 = \"pham tuan\";\r\n    $str = str_shuffle($n1);\r\n    echo $str;', NULL, NULL, NULL, '2020-08-24 12:23:44', NULL),
(118, 'str_word_count', 'str-word-count', 2, 'Đếm số từ trong chuỗi', '<?php\r\n    $n1 = \"Pham dac tuan\";\r\n    $word = str_word_count($n1);\r\n    echo $word;', NULL, NULL, NULL, '2020-08-24 12:26:07', NULL),
(119, 'substr', 'substr', 2, 'Lấy từ vị trí x tới x', '<?php\r\n    $n1 = \'php is easy \';\r\n    $n2 = \"php is easy\";\r\n    $substr = substr($n1,2);\r\n    $sub2 = substr($n2,2,5);\r\n    $sub3 = substr($n2,-5,3);\r\n    echo $substr .\"<br>\"; //kq p is easy\r\n    echo \"Lấy vị trí số 2 tới vị trí số 5: \" .$sub2 .\"<br>\"; //kq: p is\r\n    echo \"Lấy vị trí số -5 tới vị trí số 3: \" .$sub3; //kq: ea', NULL, NULL, NULL, '2020-08-24 12:27:35', NULL),
(120, 'trim()', 'trim', 2, 'Xoá bỏ bên phải và bên trái\r\n*', '<?php\r\n //trim xóa bỏ bên trái và phải\r\n  $n1 = \"     pham dac     tuan\";\r\n  $str = trim($n1);\r\n  echo $str .\"<br>\";\r\n  //KQ:pham dac tuan\r\n  $n2 = \"-- tuan pham--\";\r\n  $str2 = trim($n2,\'-\');\r\n  echo $str2;\r\n  //kq:tuan pham', NULL, NULL, NULL, '2020-08-24 12:29:57', NULL),
(121, 'addcslashes', 'addcslashes', 2, 'thêm trc ký tự đặt biệt dấu / trc ký tự character', '//thêm trc ký tự đặt biệt dấu / trc ký tự character\r\n$str = \'PHP is easy\';\r\n$str = addcslashes($str,\"ea\");\r\necho $str;\r\n// KQ : PHP \\i\\s \\ea\\sy', NULL, NULL, NULL, '2020-08-24 12:31:13', NULL),
(122, 'htmlspecialchars', 'htmlspecialchars', 2, 'chuyển ký tự sang html entities', '<?php\r\n// chuyển ký tự sang html entities\r\n$str = \"<b>php</b> is easy\";\r\necho \"Input\" . $str . \"<br>\";\r\necho \"Output\" . htmlspecialchars($str);', NULL, NULL, NULL, '2020-08-24 12:31:43', NULL),
(123, 'stripcslashes', 'stripcslashes', 2, 'hiển thị chuỗi không có ký tự gạch chéo được tạo ra bởi hàm', '<?php\r\n// hiển thị chuỗi không có ký tự gạch chéo được tạo ra bởi hàm addcslashes\r\n$str = \'PHP \\is e\\as\\y\';\r\n$str = stripcslashes($str);\r\necho $str;', NULL, NULL, NULL, '2020-08-24 12:32:11', NULL),
(124, 'stripslashes', 'stripslashes', 2, 'hiển thị các chuỗi không có kí tự gạch chéo được tạo bởi hàm addslashes', '<?php\r\n//hiển thị các chuỗi không có kí tự gạch chéo được tạo bởi hàm addslashes\r\n$str = \'\\\"PHP\\\" is \\\\essy\\\\\';\r\n$str = stripslashes($str);\r\necho $str;', NULL, NULL, NULL, '2020-08-24 12:32:36', NULL),
(125, 'addslashes', 'addslashes', 2, 'thêm các ký tự \\ vào trước các ký tự \' \" \\', '<?php\r\n//thêm các ký tự \\ vào trước các ký tự \' \" \\\r\n// phía trước 1 ký tự đặc biệt có ký tự /\r\n$str = \'\"PHP\" is \\\\easy\';\r\n$str = addslashes($str);\r\necho $str;', NULL, NULL, NULL, '2020-08-24 12:33:00', NULL),
(126, 'rand', 'rand', 2, 'random số ngẫu nhiên', '<?php\r\n    echo \"số ngẫu nhiên: \" . rand() .\"<br>\";\r\n    echo \"số ngẫu nhiên từ 2-10: \" .rand(2,10);', NULL, NULL, NULL, '2020-08-29 07:53:32', NULL),
(127, 'sqrt()', 'sqrt', 2, 'căn bậc 2', '<?php\r\n    $n1 = 16;\r\n    $output = sqrt($n1);\r\n    echo $output;', NULL, NULL, NULL, '2020-08-29 07:53:52', NULL),
(128, 'pow()', 'pow', 2, 'tính luỹ thừa', '<?php\r\n    $n1 = 4;\r\n    $n2 = 2;\r\n    $output = pow($n1,$n2);\r\n    echo $output;', NULL, NULL, NULL, '2020-08-29 07:54:13', NULL),
(129, 'round', 'round', 2, 'làm tròn số', '<?php\r\n// làm tròn đến số nguyên gần nhất\r\n    $n1 = 8.5;\r\n    $number = round($n1); //kết quả 4\r\n    $number1 = round($n1,2); //kết quả 3.52\r\n    // số nguyên gần nhất và lớn nhất\r\n    $number2 = round($n1,0,PHP_ROUND_HALF_UP); //kết qủa\r\n    // số nguyên gần nhất và nhỏ nhất\r\n    $number3 = round($n1,0,PHP_ROUND_HALF_DOWN);\r\n    $number4 = round($n1,0,PHP_ROUND_HALF_ODD); // gần nhất và là số chẵn\r\n    $number5 = round($n1,0,PHP_ROUND_HALF_EVEN); //gần nhất và là số lẻ\r\n\r\n    echo \"round(): \".$number .\"<br>\";\r\n    echo \"round(n,0,HP_ROUND_HALF_UP): \".$number2.\"<br>\";\r\n    echo \"round(n,0,PHP_ROUND_HALF_DOWN: ): \".$number3.\"<br>\";\r\n    echo \"round(n,0,PHP_ROUND_HALF_EVEN): \" .$number4.\"<br>\";\r\n    echo \"round(n,0,PHP_ROUND_HALF_ODD): \" .$number5;', NULL, NULL, NULL, '2020-08-29 07:54:42', NULL),
(130, 'sort()', 'sort', 2, 'sắp xếp mảng từ nhỏ đến lớn\r\n//keyword: sắp xếp từ nhỏ đến lớn', '<?php\r\n    $n1 = array(-5,5,8,6,1,10,11);\r\n\r\n    sort($n1);\r\n\r\n    echo \"<pre>\";\r\n    print_r($n1);\r\n    echo \"<pre>\";', NULL, NULL, NULL, '2020-08-29 07:55:36', NULL),
(131, 'number_format()', 'number-format', 2, 'format số', '<?php\r\n    $n1 = 5112132.1515;\r\n    $output = number_format($n1); //kết quả 5,112,132\r\n    echo \"Number Format: \" .$output;', NULL, NULL, NULL, '2020-08-29 07:56:05', NULL),
(132, 'abs()', 'abs', 2, 'trả về giá trị tuyệt đối\r\n//keyword: trả về số dương', '<?php\r\n    // trả về số dương\r\n    $n1 = -12.5;\r\n    $output = abs($n1); //kết quả 12\r\n    echo $output;', NULL, NULL, NULL, '2020-08-29 07:56:38', NULL),
(133, 'filetype', 'filetype', 2, 'dir là thư mục file là tập tin\r\nkiểm tra kiểu file', '<?php\r\n    //$filename = \'files\'; //kết quả dir\r\n    $filename = \'files/abc.txt\'; //kết quả file\r\n    $type = filetype($filename);\r\n    echo $type;\r\n    // trả về 2 kiểu của $filename tập tin hoặc thư mục\r\n    // dir là thư mục file là tập tin', NULL, NULL, NULL, '2020-09-04 06:10:42', NULL),
(134, 'filesize', 'filesize', 2, '*', '<?php\r\n    $filename = \'files/abc.txt\';\r\n    $size = filesize($filename);\r\n    function convertSize ($size, $totalDigit = 2,$distance = \' \'){\r\n        $unit = array(\'B\',\'KB\',\'MB\',\'GB\',\'TB\');\r\n        $lenght = count($unit);\r\n        for ($i = 0; $i < $lenght; $i++){\r\n            if($size > 1024){\r\n                $size = $size/1024;\r\n            }else{\r\n                $unit = $unit[$i];\r\n            break;\r\n            }\r\n        }\r\n        $result = round($size,$totalDigit) .$distance .$unit;\r\n        return $result;\r\n    }\r\n    echo convertSize($size,3);', NULL, NULL, NULL, '2020-09-04 06:15:54', NULL),
(135, 'file_exits', 'file-exits', 2, 'kiểm tra file có tồn tại không', '<?php\r\n    //$filename = \'files\';\r\n    $filename = \'files/abc.txt\';\r\n    if(file_exists($filename)){\r\n        echo \"tồn tại\";\r\n    }else{\r\n        echo \"Không tồn tại\";\r\n    }', NULL, NULL, NULL, '2020-09-04 06:16:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_c_slug_unique` (`c_slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notepads`
--
ALTER TABLE `notepads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notepads_np_slug_unique` (`np_slug`),
  ADD KEY `notepads_np_category_id_index` (`np_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notepads`
--
ALTER TABLE `notepads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
