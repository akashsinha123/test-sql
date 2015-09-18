-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 18, 2015 at 04:32 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `connectMantra`
--

-- --------------------------------------------------------

--
-- Table structure for table `answerComments`
--

CREATE TABLE IF NOT EXISTS `answerComments` (
  `id` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `user_id` int(20) NOT NULL,
  `answer_id` int(20) NOT NULL,
  `created` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answerComments`
--

INSERT INTO `answerComments` (`id`, `comment`, `user_id`, `answer_id`, `created`, `user_name`) VALUES
(1, 'sdfbdrgn', 41, 5, 'Thu Sep 03 2015', 'Akash Sinha'),
(2, 'sfgrgnftghmntdhm', 41, 6, 'Thu Sep 03 2015', 'Akash Sinha'),
(4, 'dwgfbdfgndfg  efbsgngn', 41, 7, 'Thu Sep 03 2015', 'Akash Sinha'),
(5, 'jnbx chfv dfv hdfv bdj,f bdmvds', 41, 5, 'Thu Sep 03 2015', 'Akash Sinha'),
(6, 'sdvm bsdvc hdsghv g gsdjvbxmncbb hsdgvyu gsdgsg dv', 41, 6, 'Thu Sep 03 2015', 'Akash Sinha'),
(8, 'vsdvn dbnsvsdfgkuv gsfbyjksdfklv hofsb', 41, 7, 'Thu Sep 03 2015', 'Akash Sinha'),
(9, 'answered by me', 14, 20, 'Thu Sep 03 2015', 'Bala'),
(10, 'answered by me fdbdfgb', 14, 20, 'Thu Sep 03 2015', 'Bala'),
(11, 'xnbcd sjbdv bmd cbnd fjbdhjbfcj jbdhjv bdc', 43, 5, 'Mon Sep 07 2015', 'Koushik Manna'),
(12, 'xhbcv hs dfhjv hdydfhjv bdbmnf hudfbvm', 41, 7, 'Tue Sep 08 2015', 'Akash Sinha'),
(13, 'dvbdmflnb dfbnd fukdfkhv', 41, 21, 'Tue Sep 15 2015', 'Akash Sinha'),
(14, 'dsjhbc sfvb sdfbvdfvjhhjdsf vdfhjvb', 41, 5, 'Tue Sep 15 2015', 'Akash Sinha'),
(15, 'dfjv bjdfjhb jdfv', 41, 7, 'Tue Sep 15 2015', 'Akash Sinha');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL,
  `answer` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `created` varchar(30) NOT NULL,
  `answer_desc` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `user_id`, `ques_id`, `user_name`, `created`, `answer_desc`) VALUES
(5, 'sldnvsn dkksdkjvnbkjsdhvb kjsdgkv', 41, 1, 'Akash Sinha', 'Thu Sep 03 2015', 'swbdvsenbrsgbf'),
(6, 'Place code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code here', 41, 1, 'Akash Sinha', 'Thu Sep 03 2015', 'Place code herePlace code herePlace code here'),
(7, 'Place code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code herePlace code here', 41, 1, 'Akash Sinha', 'Thu Sep 03 2015', 'Place code herePlace code herePlace code here'),
(17, '$scope.getRemainingLang = function(){\n        \n        var data = {\n            sessionId : $cookieStore.get(''sessionId''),\n            id: $scope.que.que_id,\n            length: $scope.que.tag.length\n        }\n\n        AskService.getRemainingLang(data)\n        .then(function(user){\n          $scope.remainingTags = user.records;\n        })\n        .catch(function(err){\n            \n        });\n\n    }', 41, 2, 'Akash Sinha', 'Thu Sep 03 2015', 'sjdhbvc sd vhksvm d dfs vbsdfhmvbkdsf vdsfki jdfbvhjds'),
(18, '&lt;button ng-click=&quot;toggleEditQue(); getRemainingLang()&quot; class=&quot;btn btn-primary&quot;&gt;Edit Question&lt;/button&gt;\n  &lt;add-employee visible=&quot;showEditQue&quot;&gt;\n    &lt;form class=&quot;addForm&quot;&gt;\n      &lt;h1&gt;Create Blog&lt;/h1&gt;\n      \n      &lt;fieldset&gt;\n        &lt;label for=&quot;bio&quot;&gt;Question:&lt;/label&gt;\n		&lt;textarea id=&quot;bio&quot; name=&quot;user_bio&quot; rows=&quot;8&quot; cols=&quot;64&quot; ng-model=&quot;que2.question&quot;&gt;&lt;/textarea&gt;\n        &lt;label for=&quot;job&quot;&gt;Tags:&lt;/label&gt;&lt;p&gt;To choose multiple languages press ctrl/command and select&lt;/p&gt;\n           &lt;select id=&quot;job&quot; class=&quot;addInput&quot; multiple=&quot;true&quot; ng-options=&quot;sourc as sourc.name for sourc in remainingTags&quot; ng-model=&quot;que2.sourc&quot;&gt;\n           &lt;/select&gt;\n           &lt;ul&gt;\n             &lt;li ng-repeat=&quot;sou in que2.sourc&quot;&gt;{{sou.name}}&lt;/li&gt;\n           &lt;/ul&gt;\n      &lt;/fieldset&gt;\n      &lt;button type=&quot;button&quot; ng-click=&quot;editQues(que2); toggleEditQue()&quot; class=&quot;addButton&quot;&gt;Edit Blog&lt;/button&gt;\n    &lt;/form&gt;\n  &lt;/add-employee&gt;', 41, 2, 'Akash Sinha', 'Thu Sep 03 2015', 'mnbsdcvmbs dvsjdvgcj gsdvhsmdv shdjvhjsdv'),
(19, '\n            angular.forEach($scope.questions, function(val){\n                val.tag = [];\n                val.count = 0;\n                angular.forEach($scope.ques_lang_relation, function(pal){\n                    if (val.que_id == pal.ques_id) {\n                        val.tag.push(pal.lang_name);\n                     };\n                });\n                angular.forEach($scope.countAns, function(kal){\n                    if (val.question == kal.question) {\n                        val.count = kal.count;\n                     };\n                });\n            });\n            console.log($scope.questions);\n        })\n        .catch(function(err){\n            \n        });\n    }', 41, 3, 'Akash Sinha', 'Thu Sep 03 2015', 'akdsbhv dvmsdvj  svbjed'),
(20, 'ws=&quot;8&quot; cols=&quot;64&quot; ng-model=&quot;lang.question&quot;&gt;&lt;/textarea&gt;\n            &lt;label for=&quot;job&quot;&gt;Tags:&lt;/label&gt;&lt;p&gt;To choose multiple languages press ctrl/command and select&lt;/p&gt;\n           &lt;select id=&quot;job&quot; class=&quot;addInput&quot; multiple=&quot;true&quot; ng-options=&quot;sourc as sourc.name for sourc in languages&quot; ng-model=&quot;lang.sourc&quot;&gt;\n           &lt;/select&gt;\n           &lt;ul&gt;\n             &lt;li ng-repeat=&quot;sou in lang.sourc&quot;&gt;{{sou.name}}&lt;/li&gt;\n           &lt;/ul&gt;\n          &lt;/fieldset&gt;\n          &lt;button type=&quot;button&quot; ng-click=&quot;addQues(lang); toggleAddQues()&quot; class=&quot;addButton&quot;&gt;Create Blog&lt;/button&gt;\n        &lt;/form&gt;\n      &lt;/add-employee&gt;\n        &lt;hr&gt;\n        &lt;div class=&quot;panel panel-default&quot;&gt;\n          &lt;!-- Default panel contents --&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;&lt;/div&gt;\n\n          &lt;!-- Table --&gt;\n          &lt;table class=&quot;table table-striped table-hover&quot;&gt;', 14, 4, 'Bala', 'Thu Sep 03 2015', 'husfchb vmdfn bhdfghvgdfk v'),
(21, '\n                    if (user == &quot;1 records UPDATED successfully&quot; ) {\n                        bootbox.alert(&quot;Project Deleted&quot;);\n                        $scope.projects.splice(ind, 1);\n                    }else{\n                        bootbox.alert(&quot;Cannot Delete Project Due to RDBMS&quot;);\n                    };\n                })\n                .catch(function(err){\n                    ', 43, 5, 'Koushik Manna', 'Fri Sep 04 2015', 'sdjv snbdv nnsdmv j bsdfmbhv dsfjvbmsbdfnv gjdsgvsd');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL,
  `blog_name` varchar(100) NOT NULL,
  `blog_description` varchar(2000) NOT NULL,
  `created` varchar(30) NOT NULL,
  `extension` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_name`, `blog_description`, `created`, `extension`) VALUES
(1, 'Toyota Tacoma', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  fbkjsdfv dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  fbkjsdfv dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  fbkjsdfv dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  fbkjsdfv', 'August 28, 2013 at 10:00 PM', 'jpg'),
(2, 'Porsche 911', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', 'jpg'),
(3, 'sjehbfhhsdvchj', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(4, 'dfovjfvh', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(5, 'sdfvbuhfdv ', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(6, 'dfkbvhjfvb ', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(7, 'dsfbvhdsvbhb', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(8, 'dfkvbhsdvbk', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(9, 'dfovjfvh', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(12, 'sdfkvbhduvs', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(13, 'sdvkbhjsdbjvb', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(15, 'dfjvfuhfv', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(16, 'dsfmvbdhfib', 'dfbkjsdfv sdbvnsb dvbh sdfhkvbsdf vbsdkh v bds bvds vbmsdbvs dnv nmsdbhk mdc bdfmn dnfmvdsf mnv nmdfb jdf mbdmnfv bmdfm vbndfjbv nmdfs mjdf bmdfmbv jsd fm''v nmfsdbvh nmfd vmndfbj ndfnmvbiwdvjkne fkebvhj nw3d vhjefdjv dfknvbjksdfbv  ', 'August 28, 2013 at 10:00 PM', ''),
(44, 'myBlog', 'ksfvkdfsbvbdfsvbhdf vmnd bfn vbvidfvbhkdfbhjb aaaaaaaaaaaaaaaa', 'Tue Sep 01 2015', ''),
(45, 'skdnvdfv dnfv nkdfk dfvbd dfcj', 'fv fg fg kjfgkbgfkgb;lfb fmgn jnfgbndm.fnblkjvdfn gjkbflgnj lbfrn bg,mfgbm,grjnbjfgn blnfgbnl jbnogrnfbnlfgnbilfg', 'Mon Sep 07 2015', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `created` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `blog_id`, `created`, `user_name`) VALUES
(1, 'nice blog Parag', 41, 3, 'Tue Sep 01 2015', 'Akash Sinha'),
(2, 'ksajdbvkscnv bkjdchhdsgi idfv', 41, 3, 'Tue Sep 01 2015', 'Akash Sinha'),
(3, 'commented by Harish', 5, 3, 'Tue Sep 01 2015', 'harish'),
(4, 'dssdfgdfg', 41, 3, 'Wed Sep 02 2015', 'Akash Sinha'),
(5, 'dygsfv sdfv dfvdfmbv jdfv', 41, 1, 'Mon Sep 07 2015', 'Akash Sinha'),
(6, 'sbdjv mv dk bfbvkcxvb', 41, 1, 'Mon Sep 07 2015', 'Akash Sinha'),
(7, 'sbdjv mv dk bfbvkcxvb', 41, 1, 'Mon Sep 07 2015', 'Akash Sinha'),
(8, 'skdhbv  sdvkbkdshfv kdhfhv udsfv', 43, 1, 'Mon Sep 07 2015', 'Koushik Manna'),
(9, 'sduhbvc bsdvb sudhfv dsjhvdbf', 41, 2, 'Tue Sep 08 2015', 'Akash Sinha'),
(10, 'sdfjvbh fevbjdfbj heifv', 41, 45, 'Tue Sep 15 2015', 'Akash Sinha');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_desc` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`lang_id`, `lang_name`, `lang_desc`) VALUES
(1, 'HTML', 'Dummy Description'),
(2, 'CSS', 'Dummy Description'),
(3, 'W3.CSS', 'Dummy Description'),
(4, 'Bootstrap', 'Dummy Description'),
(5, 'JavaScript', 'Dummy Description'),
(6, 'jQuery', 'Dummy Description'),
(7, 'jQuery Mobile', 'Dummy Description'),
(8, 'AppML', 'Dummy Description'),
(9, 'AngularJS', 'Dummy Description'),
(10, 'AJAX', 'Dummy Description'),
(11, 'JSON', 'Dummy Description'),
(12, 'Canvas', 'Dummy Description'),
(13, 'SVG', 'Dummy Description'),
(14, 'Icons', 'Dummy Description'),
(15, 'Goole Maps', 'Dummy Description'),
(16, 'SQL', 'Dummy Description'),
(17, 'PHP', 'Dummy Description'),
(18, 'ASP', 'Dummy Description'),
(19, 'ASP.NET', 'Dummy Description'),
(20, 'XML', 'Dummy Description'),
(21, 'Schema', 'Dummy Description'),
(22, 'XQuery', 'Dummy Description'),
(23, 'WSDL', 'Dummy Description'),
(24, 'NodeJS', 'Dummy Description'),
(25, 'ExpressJS', 'Dummy Description'),
(26, 'SailsJS', 'Dummy Description'),
(27, 'Zend Framework', 'Dummy Description'),
(28, 'WordPress', 'Dummy Description'),
(29, 'JAVA', 'Dummy Description'),
(30, 'Android', 'Dummy Description'),
(31, 'cake PHP', 'Dummy Description'),
(32, 'dummy lang 1', 'Dummy Description'),
(33, 'dummy lang 2', 'Dummy Description');

-- --------------------------------------------------------

--
-- Table structure for table `language_source_relation`
--

CREATE TABLE IF NOT EXISTS `language_source_relation` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language_source_relation`
--

INSERT INTO `language_source_relation` (`id`, `lang_id`, `seq_no`, `source_id`) VALUES
(5, 2, 1, 1),
(6, 2, 2, 4),
(7, 2, 3, 3),
(8, 3, 1, 1),
(9, 3, 2, 7),
(10, 4, 1, 1),
(11, 32, 1, 11),
(12, 33, 1, 12),
(15, 1, 0, 16),
(20, 1, 0, 21),
(21, 1, 0, 22),
(22, 1, 0, 23),
(24, 1, 0, 25);

-- --------------------------------------------------------

--
-- Table structure for table `lang_project_relation`
--

CREATE TABLE IF NOT EXISTS `lang_project_relation` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lang_project_relation`
--

INSERT INTO `lang_project_relation` (`id`, `lang_id`, `seq_no`, `project_id`) VALUES
(2, 1, 2, 5),
(3, 1, 3, 3),
(5, 2, 2, 5),
(6, 3, 1, 1),
(7, 3, 2, 7),
(8, 4, 1, 1),
(9, 5, 1, 2),
(10, 5, 2, 3),
(11, 5, 3, 6),
(12, 6, 1, 6),
(13, 6, 2, 7),
(15, 7, 2, 7),
(16, 8, 1, 4),
(17, 8, 2, 5),
(18, 9, 1, 6),
(20, 10, 1, 1),
(21, 6, 0, 1),
(22, 1, 0, 2),
(23, 2, 0, 2),
(24, 1, 0, 1),
(25, 2, 0, 1),
(26, 5, 0, 1),
(27, 9, 0, 1),
(28, 3, 0, 8),
(29, 6, 0, 8),
(30, 5, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `name`, `email`, `user_id`) VALUES
(4, 'akashsinha', '3fc0a7acf087f549ac2b266baf94b8b1', 'Akash Sinha', 'akash.sinha@mantralabsglobal.com', 41),
(10, 'KoushikM', '4d6341896a313c02d55a86eaaa8126b4', 'Koushik Manna', 'kousik.manna@mantralabsglobal.com', 43);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_description`) VALUES
(1, 'ConnectMantra', 'it connects all the employees of mantralabs'),
(2, 'Touchkin', 'care for your loved ones'),
(3, 'Marrily', 'another dating app'),
(4, 'Indus Diva', 'No idea .. some shit going on for years'),
(5, 'Chatpay Helpdesh', 'now close. Selling vegetables online'),
(6, 'dummy project 1', 'dsfbsfgbf'),
(7, 'dummy project 2', 'dfvbewhkvbcbdhvb'),
(8, 'dummy Project 3', 'dkbcjhdh d gedfjvjdsjv jsdj jsdhgvhcsdabvuagdsvbksxvbidb svsdmnbhjvuyeveirgfvgehjdbwhjvhsmdjvyue wduvshjdhvj');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `ques_created` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ques_created`) VALUES
(1, 'Is there a Eclipse plugin for a File Browser Dialog button?', 'Tue Sep 01 2015'),
(2, 'iOS) convert NSString to NSDate to NSString as What I want?', 'Tue Sep 01 2015'),
(3, 'Using NDB without AppEngine ?', 'Tue Sep 01 2015'),
(4, 'Having trouble with bubble sort C++?', 'Tue Sep 01 2015'),
(5, 'Trying to Get Started with Bourbon/SASS (& How to Compile in Adobe Brackets)', 'Tue Sep 01 2015'),
(6, 'Android Dev. - I''m designing an app that will require sign-ups with a college email, but all i find are things for Google+. Any suggestions?', 'Tue Sep 01 2015'),
(7, 'API sendemail to contacts with correct notification settings', 'Tue Sep 01 2015'),
(8, 'Barcode Scanning issue in Samsung tab device in android', 'Tue Sep 01 2015'),
(9, 'self cannot run the right method when hero node collide with object from NSMutableArray', 'Tue Sep 01 2015'),
(10, 'SetImageBitmap from internal storage', 'Tue Sep 01 2015'),
(31, 'Please Work .. Some Random Question By Akash', 'Fri Sep 04 2015'),
(32, 'jnxd fvn bnx cm bjds vujbmn kxbmfvhjbdn jcdxfbmv bdkfbvkbdjfb vhdgfhjb vmdfbj b', 'Fri Sep 04 2015'),
(33, 'how does bootstrap works?', 'Mon Sep 07 2015'),
(34, 'kjsdgjhv sjvdjsfvjh djgj', 'Wed Sep 16 2015');

-- --------------------------------------------------------

--
-- Table structure for table `question_lang_relation`
--

CREATE TABLE IF NOT EXISTS `question_lang_relation` (
  `id` int(11) NOT NULL,
  `ques_id` int(20) NOT NULL,
  `lang_id` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_lang_relation`
--

INSERT INTO `question_lang_relation` (`id`, `ques_id`, `lang_id`) VALUES
(1, 1, 1),
(3, 2, 3),
(4, 3, 4),
(6, 5, 13),
(7, 6, 6),
(8, 7, 8),
(9, 8, 7),
(10, 9, 17),
(11, 10, 18),
(12, 10, 27),
(27, 2, 1),
(29, 5, 4),
(30, 3, 11),
(32, 4, 1),
(33, 4, 4),
(51, 31, 5),
(52, 31, 9),
(53, 32, 2),
(54, 32, 31),
(55, 33, 1),
(56, 33, 4),
(57, 34, 1),
(58, 34, 3);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE IF NOT EXISTS `source` (
  `source_id` int(11) NOT NULL,
  `source_name` varchar(255) NOT NULL,
  `source_address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`source_id`, `source_name`, `source_address`) VALUES
(1, 'W3SCHOOLS', 'http://www.w3schools.com'),
(2, 'angularjs', 'https://angularjs.org/'),
(3, 'nodejs', 'https://nodejs.org/'),
(4, 'Zend FrameWork', 'http://framework.zend.com/'),
(5, 'Some random Shit', 'http://www.shitmorebitch.com'),
(6, 'youtube', 'http://www.youtube.com'),
(7, 'gitHub', 'http://www.github.org'),
(8, 'bing', 'ABC.WTF'),
(9, 'mantralabs', 'http://www.mantralabsglobal.com'),
(10, 'facebook', 'http://www.facebook.com'),
(11, 'dummy source 1', 'srgbndtrhn'),
(12, 'dummy source 2', 'dfbdgb'),
(14, 'djhfhjvdsf', 'http://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_placeholder'),
(15, 'W3school', 'http://www.w3schools.com/'),
(16, 'shgdfcuwsdv', 'http://www.w3schools.com/'),
(17, 'eruvyge7tfvy', 'http://www.w3schools.com/'),
(18, 'jhxbvjsdjvjh', 'dsfghnbdrtyhdrt'),
(19, 'esrhbdrthrdt', 'esrhgrdthrthr'),
(20, 'dfve', 'efver'),
(21, 'ewrtgwerg', 'wergwe4rhgwer'),
(22, 'w3sdfuhbv', 'hidfbvsfd'),
(23, 'avd', 'sddsfv'),
(24, 'xx', 'sdf'),
(25, 'sfdbvdfb', 'sdv'),
(26, 'sebfefsbdf', 'bdfgbnfdgb');

-- --------------------------------------------------------

--
-- Table structure for table `sugComments`
--

CREATE TABLE IF NOT EXISTS `sugComments` (
  `id` int(11) NOT NULL,
  `sug_comment` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sug_id` int(11) NOT NULL,
  `sug_created` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sugComments`
--

INSERT INTO `sugComments` (`id`, `sug_comment`, `user_id`, `sug_id`, `sug_created`, `user_name`) VALUES
(1, 'Well Done', 41, 11, '', 'Akash Sinha'),
(2, 'yeeeee woooooo', 41, 11, '', 'Akash Sinha'),
(3, 'ba ba ba naaa naaa', 41, 11, 'Tue Sep 01 2015', 'Akash Sinha'),
(4, 'hxbcvbdfsbvdsk  hdfbdjf idfibv df', 41, 1, 'Wed Sep 02 2015', 'Akash Sinha'),
(5, 'sbdvjb jn sdf vmdsmfjvbdjfv', 43, 14, 'Fri Sep 04 2015', 'Koushik Manna'),
(6, 'sbdvjb jn sdf vmdsmfjvbdjfv skdnfv njkdfs', 67, 14, 'Fri Sep 04 2015', 'Anonymous'),
(7, 'dfnb  ,dcvd fn dfvmdfv bdf dfvdfb v ncv dnfmvb dfvb', 67, 1, 'Fri Sep 04 2015', 'Anonymous'),
(8, 'jnxvc  jv hdfh vjd bijhdfb', 41, 1, 'Sun Sep 06 2015', 'Akash Sinha'),
(9, 'jnxvc  jv hdfh vjd bijhdfb jnfv jrndfjnb rfghjd', 67, 1, 'Sun Sep 06 2015', 'Anonymous'),
(10, 'sdjbvhisbdv jsdjvjs dvjbsdbjfv', 41, 1, 'Tue Sep 08 2015', 'Akash Sinha'),
(11, 'kdjbnfv kdnfkbhv dfb,,jdfg', 67, 16, 'Tue Sep 08 2015', 'Anonymous'),
(12, 'dfbfdbdbfmdfnb mdfnbdfmbdfkjjdfjkdfhb', 67, 16, 'Tue Sep 15 2015', 'Anonymous'),
(13, 'bj jhdfv j sdfgvdfvjdjfgv b sd gfhdjsv', 41, 16, 'Tue Sep 15 2015', 'Akash Sinha'),
(14, 'sdfbjv dfjvjdfgjvdf', 41, 17, 'Tue Sep 15 2015', 'Akash Sinha');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
  `id` int(11) NOT NULL,
  `sug_name` varchar(200) NOT NULL,
  `sug_desc` varchar(300) NOT NULL,
  `sug_created` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `sug_name`, `sug_desc`, `sug_created`) VALUES
(1, 'Write all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'sdvsdv'),
(2, 'zsdfbdfbWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'dcv dvfbdf'),
(3, 'szdgfdfsgbdfWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', 'dfbvdsgfbhdg sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'sfdbdfb'),
(4, 'Write all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'dfbdfgnfg'),
(5, 'dfhdgbWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'dwfgewrger'),
(6, 'efgbWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'wef'),
(7, 'asgwerWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'wefgwr'),
(8, 'wefWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'wdgwerg'),
(9, 'dsfsdWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', 'sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'wefwer'),
(10, 'sdgWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'wefwergwf'),
(11, 'abcWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', 'sdvyg ydsvhs dsd gyuvchscv nvscvhjv sdvbmnvjhsd vcbmsdvh gsdhjv jsdvj vsvdv sdjhvg ysdyvhmsdhmvg hsdvchmschj gshjdvhjbshjd vyusgdhjvbjsdvhjsdhjvn msvdhjvhjsdvhjbhdjv', 'Tue Sep 01 2015'),
(12, 'AnonymousWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'Fri Sep 04 2015'),
(13, 'skjdnvjkWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'Fri Sep 04 2015'),
(14, 'kajsdbcbdsvbWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', ' sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj sdgsfdhbdf sfdjbvhdfv dfnvdfjvjdfv ndnmvdbfhjbvhjdfvbhjdfvdbfhj', 'Fri Sep 04 2015'),
(15, 'kjsdbv s dkjvn dnmsfv hj dfmnvWrite all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', 'kdnbfv dfvde,nmv dnmfb,mv dsjkfbvd bjkf bndnkf vbdnm,f mdbkjbdkgf kdbkgkdnbfv dfvde,nmv dnmfb,mv dsjkfbvd bjkf bndnkf vbdnm,f mdbkjbdkgf kdbkgkdnbfv dfvde,nmv dnmfb,mv dsjkfbvd bjkf bndnkf vbdnm,f mdbkjbdkgf kdbkg', 'Tue Sep 08 2015'),
(16, 'hey dude wassap??Write all the complaints you hkdjfv kdfsvbb dfjvbdmfnbv jdbfhjvbhjdfv ', 'kdnbfv dfvde,nmv dnmfb,mv dsjkfbvd bjkf bndnkf vbdnm,f mdbkjbdkgf kdbkg kdnbfv dfvde,nmv dnmfb,mv dsjkfbvd bjkf bndnkf vbdnm,f mdbkjbdkgf kdbkg kdnbfv dfvde,nmv dnmfb,mv dsjkfbvd bjkf bndnkf vbdnm,f mdbkjbdkgf kdbkg aaa', 'Tue Sep 08 2015'),
(17, 'dfbv gdfsvj', 'xcb ncs ndfhjv ghjdf vdfvdfk', 'Tue Sep 15 2015');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dof_certificate` varchar(255) DEFAULT NULL,
  `dof_original` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `father's/husband's_name` varchar(255) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `correspondence_address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `emergency_contact_no` varchar(255) DEFAULT NULL,
  `Gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zipCode` varchar(20) NOT NULL,
  `role` varchar(40) NOT NULL,
  `extension` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `name`, `dof_certificate`, `dof_original`, `blood_group`, `pan_no`, `father's/husband's_name`, `present_address`, `permanent_address`, `correspondence_address`, `mobile`, `emergency_contact_no`, `Gender`, `email`, `city`, `zipCode`, `role`, `extension`, `designation`) VALUES
(1, 'EMPL4', 'Divya Sree M', '6/15/1987', '9th Dec.', 'O +ve', 'ATZPD1165F', 'Sree Ramulu M', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#75, 1st Floor, Rochie Enclave, Banjara Layout, Horamavu, Bangalore - 560043,Phone: 9986101098, Email:divyasreemakam@yahoo.co.in', '#10,Shanthi nivas, Balaji layout,Bangalore-33', '9986101098', '9441919369, 9741111568', 'Female', 'divya@mantralabsglobal.com', 'Bangalore', '2651287', 'user', 'jpg', 'Web Developer'),
(2, 'EMPL01', 'Parag Sharma', '19/11/81', '19/02/81', 'A +ve', 'BFWPS2881B', 'C P Sharma', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '5064, Prestige Wellington Park, Gangamma Circle, Jalahalli Bangalore 560013 Phone: 080 23089189 Email: parag.shar@gmail.com', '5064, Prestige Wellington Park, Gangamma Circle', '9740495689', '8022023189', 'Male', 'parag@mantralabsglobal.com', 'Bangalore', '2651287', 'Admin', 'jpg', 'Web Developer'),
(3, 'EMPL14', 'Sudhagar.K', '10th May 1988', '10th May 1988', 'B +ve', 'CTTPS9868Q', 'Kandhan P', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 's1, cable babu building, GS palya, konappana agrahara, Electronics city phase 1, bangalore - 09738171518, sudhagar.bca@gmail.com', '27, Ram nagar, Kumarasamypatti, Salem, Tamilnadu, 636007', '9738171518', '9788079739', 'Male', 'sudhagar@mantralabsglobal.com', 'Bangalore', '2651287', 'user', 'jpg', 'Web Developer'),
(4, 'EMPL07', 'Amrutharaj R ', '15/08/86', '15th Aug', '', 'AMVPA5621Q', 'Rajegowda M', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#G9, Golden Meadows apartment, hennur cross, kalyan nagar  Bangalore-560043. 9845208308, amrutharaj@mantralabsglobal.com', '#G9, Golden Meadows apartment, hennur cross, kalyan nagar  Bangalore-560043. 9845208308, amrutharaj@mantralabsglobal.com', '9845208308', '9845209230', 'Male', 'amrutharaj@mantralabsglobal.com', 'Bangalore', '2651287', 'user', 'jpg', 'Web Developer'),
(5, 'EMPL19', 'Harish K J', '19/09/90', '19/09/90', 'O +ve', 'AEAPH1526A', 'Jayashankar Guptha K V', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '7/2-14,Rajivgandhinagar,Amco layout,Impact collage road,Kodigehally,Sahakarnagar po,Bangalore-54,Phone:9738124129,Email:kj.harish19@gmail.com', '7/2-14,Rajivgandhinagar,Amco layout,Impact collage road,Kodigehally,Sahakarnagar po,Bangalore-54,Phone:9738124129,Email:kj.harish19@gmail.com', '9738124129', '9343910151', 'Male', 'harish@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(6, 'EMPL21', 'Rakesh M', '23/11/1989', '23th Nov', 'B +ve', 'BWFPM3162D', 'Sree Ramulu M', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur - 515201 Phone : 9741755766 Email : rakesh.makam@gmail.com', '#75, 1st Floor, Rochie Enclave, Banjara Layout, Horamavu, Bangalore - 560043,Phone: 9741766755, Email: rakesh.makam@gmail.com', '#10,Shanthi nivas, Balaji layout,Bangalore-33', '9741766755', '9441919369', 'Male', 'rakesh@mantralabsglobal.com', 'Bangalore', '2651287', 'user', 'jpg', 'Web Developer'),
(7, 'EMPL3', 'Avishek Kumar Singh', '03/02/80', '3rd March', 'B +ve', 'BZGPS0085R', 'Sri. D.K.Singh', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'Phone- 8050500205, Email- avishek@mantralabsglobal.com. Address:- Flat No-6, 2nd floor, 263/2-1, Sri Ventakashwara Nilaya, 6th ''C'' Cross , Kaggadasapura,C.V. Raman Nagar,Bangalore-560093', 'Flat No-6, 2nd floor, 263/2-1, Sri Ventakashwara Nilaya, 6th ''C'' Cross , Kaggadasapura,C.V. Raman Nagar,Bangalore-560093', '8050500205', '9431094217', 'Male', 'avishek@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(8, 'EMPL24', 'Abhijeet Gupta', '17/08/90', '17/08/90', 'A +ve', 'APOPG2219N', 'Ram Prakash Gupta', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'phone: +917829298460\remail: abhijeet@mantralabsglobal.com\raddress: Srinath Paradise, 3rd Cross Nanjappa Garden, Babusapalya\r, Banaswadi P.O., Kalyan nagar, Bangalore - 43 , karnataka', '#6 Srinath Paradise, 3rd Cross Nanjappa Garden, Babusapalya, Banaswadi P.O., Kalyan nagar, Bangalore - 43 , karnataka', '9876543210', '9820298048 , 9886715819', 'Male', 'abhijeet@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(9, 'EMPL22', 'Umesh K J', '17/10/1981', '17/10/1981', 'O+ve', 'ABAPU5066D', 'Jayashankar Gupta K V', 'Jayashankar Guptha K V, retired teacher , kodigenahalli(p), madhugiri(th),tumkur(dts),karnataka - 572127,Phone:9343254619, Email:kj.umesh30@gmail.com', '7/2-14,Rajivgandhinagar,Amco layout,Impact collage road,Kodigehally,Sahakarnagar po,Bangalore-54,Phone:9343254619, Email:kj.umesh30@gmail.com', '7/2-14,Rajivgandhinagar,Amco layout,Impact collage road,Kodigehally,Sahakarnagar po,Bangalore-54,Phone:9343254619, Email:kj.umesh30@gmail.com', '9343254619', '9343910151', 'Male', 'umesh@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(10, 'EMPL25', 'Dhananjay Ghodke', '09/10/87', '09/10/87', 'O -ve', 'AWUPG5382R', 'Manohar B Ghodke', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'Dhananjay M Ghodke\rC/o Ms S. T Herle\r#908, Bhagya Nivas\rOpp Karnataka Bank , 28th Main, 9th Block,\rBangalore 560069.\r M : 8147442900, Mail: dhananjaymg@gmail.com', '#31/3, C/o Afsar Pasha, BTB Area, Swagath Main Road, Tilak Nagar, Jayanagar 560041', '9876543210', '98765433210', 'Male', 'dhananjay@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(11, 'EMPL23', 'Sudhakar Ponnusamy', '07/09/91', '10/09/91', 'O +ve', 'EHHPS9281K', 'Ponnusamy K', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '159-Premden , Jakkasandra Extension,Koramangala 1st block,Bangalore 560034 M:+91 9790923827, Mail :sudhakar0907@gmail.com', '159-Premden , Jakkasandra Extension,Koramangala 1st block,Bangalore 560034', '9790923827', '9786773080', 'Male', 'sudhakar@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(12, 'EMPL28', 'Manisha Sharma', '23/04/1981', '23/04/1981', 'B+ve', 'BSRPS6169J', 'Ghanshyam', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '824, 23rd Cross, 19th Main Road,\rSector 2, Bangalore 560102 India', '824, 23rd Cross, 19th Main Road,\rSector 2, Bangalore 560102 India', '9902401671', '9972433445', 'Female', 'manisha@mantralabsglobal.com', 'Bangalore', '2651287', 'Admin', '', 'Web Developer'),
(13, 'EMPL29', 'Anuj Kumar', '20/06/1989', '13/08/1989', 'A +ve', 'CJNPK4983Q', 'Satya Prakash Rathore', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'phone: +918892738100\remail: anuj@mantralabsglobal.com\raddress: Srinath Paradise, 3rd Cross Nanjappa Garden, Babusapalya\r, Banaswadi P.O., Kalyan nagar, Bangalore - 43 , karnataka', '#6 Srinath Paradise, 3rd Cross Nanjappa Garden, Babusapalya, Banaswadi P.O., Kalyan nagar, Bangalore - 43 , karnataka', '8892738100', '9935260912', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(14, 'EMPL27', 'Balakrishna M', '04/09/91', '06/09/91', 'AB-ve', 'BWAPM8445E', 'Govinda Bhat M', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#g2,no 25,1st A cross,BTM 1st stage,Bangalore-560029 ph:+919620728618 e-mail:balakrishna@mantralabsglobal.com', ' #g2,no 25,1st A cross,BTM 1st stage,Bangalore-560029 ph:+919620728618 e-mail:balakrishna@mantralabsglobal.com', '9620728618', '9886042265', 'Male', 'balakrishna@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(15, 'EMPL30', 'Kaushal', '10/05/80', '10/05/80', 'B-ve', 'AAUPY8625K', 'Shri P.C. Yadav', 'C-3 Jana Jeeva Nest , 29th ''C'' Cross , Kaggadasapura, Bangalore .email:kaushalendra@mantralabsglobal.com, 9008255519', 'C-3 Jana Jeeva Nest , 29th ''C'' Cross , Kaggadasapura, Bangalore .email:kaushalendra@mantralabsglobal.com, 9008255519', 'C-3 Jana Jeeva Nest , 29th ''C'' Cross , Kaggadasapura', '9008255519', '080-41605044', 'Male', 'kaushalendra@mantralabsglobal.com', 'Bangalore', '2651287', 'Admin', '', 'Web Developer'),
(16, 'EMPL31', 'Vijay Kumar', '7.01.1988', '7.01.1988', 'O -ve', 'BHRPK5245E', 'Ram Dutta Singh', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'Door No. 5, Subhodaya layout, Shivanna Building, Tulsi Theater Road, 1st cross, Marathahalli , Behind Park Plaza', 'Door No. 5, Subhodaya layout, Shivanna Building, Tulsi Theater Road, 1st cross, Marathahalli , Behind Park Plaza', '8892985950', '9470520662', 'Male', 'vijay@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(17, 'EMPL33', 'RAVI SRIDHAR', '17.02.1992', '17.02.1992', 'B-', 'BVHPR1368F', 'Narasimha Rao', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'Sai Ganesh PG, Beside Nest backery,CKB Layout,Munnekolla,Marthahalli,560037,mobile: 8123994809, email: sridhar.raavi47@gmail.com', 'Sai Ganesh PG, Beside Nest backery,CKB Layout,Munnekolla,Marthahalli,560037,mobile: 8123994809, email: sridhar.raavi47@gmail.com', '8123994809', '9550566785', 'Male', 'sridhar@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(18, 'EMPL34', 'Murali Selvaraj', '05.04.1992', '01.04.1991', 'B +ve', 'BRSPM3248J', 'Selvaraj C', '4/51, Mottur (Po & Vill), Kaveripattinam (Via), Krishnagiri-635112. Cell: 09787093667, Email: s.murali@live.in', '3/381, Sri Balaji PG, Venkateswara Layout, Near Sandhiya Talkies, Madiwala, Bangalore-68. Cell: 09164879342, Email: murali@mantralabsglobal.com', '3/381, Sri Balaji PG, Venkateswara Layout, Near Sandhiya Talkies, Madiwala, Bangalore-68.', '9787093667', '9787293853', 'Male', 'murali@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(19, 'EMPL41', 'Akansha Agarwal Kamalia', '26.02.1987', '26.02.1987', 'B +ve', 'AOCPA0425R', 'Dr. PK Agarwal/Mr. Anuj Kamalia', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'First Floor, 15 and 16, Ranganatha layout , Mahadevpura, Bangalore-560048;emil id: akanshaagarwal2602@gmail.com; 7259818384', 'First Floor, 15 and 16, Ranganatha layout , Mahadevpura, Bangalore-560048', '7259818384', '9415819635', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(20, 'EMPL39', 'Yuvaraj S', '29.11.1989', '29.11.1989', 'O+ve', 'BFXPR7528K', ' SUNDAR RAJ P', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'NO.17, 4TH CROSS, POOJA GARDEN LAYOUT, KALLKERE CHANNASANDRA, HORAMAVU POST, BENGALURU-560043. Mob:8892209047. Email:s.yuvaraj03@gmail.com', 'NO.17, 4TH CROSS, POOJA GARDEN LAYOUT, KALLKERE CHANNASANDRA, HORAMAVU POST, BENGALURU-560043.', '8892209047', '9738651068', 'Male', 'yuvaraj@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(21, 'EMPL37', 'Manikandan Moorthi', '01.01.1991', '01.01.1991', 'O +ve', 'BVDPM9741B', 'Moorthi N', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '3/30, West Street, Gudimangalam(po), Udumalpet(Tk), Thirupur-642201, Mob: 8884903420, manikandan.moorthi@mantralabsglobal.com', 'PSR PG , Agra, Bangalore', '8884903420', '9942276536', 'Male', 'manikandan.moorthi@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(22, 'EMPL38', 'Ravindra Mandalapu', '22.08.1991', '22.08.1991', 'B +ve', 'BOVPM6959L', 'Srinivasa Rao', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#259, aswath nagar, 1st main, 9th cross, marathahalli, 560038. Phone no:08686525288, ravindranath@mantralabsglobal.com', '', '8686525288', '9948028945', 'Male', 'ravindranath@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(23, 'EMPL42', 'Sumit Sinha', '', '23/10/82', '-', 'DAOPS6059A', 'Sri B. K. Sinha', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'G-9, Golden Meadows, Hennur Cross (Opp. Nike Showroom), Bangalore 560043. Ph# 8971384837; sumit@mantralabsglobal.com', '2nd floor, House # 63, 12th Cross, Sir MV Layout, Virupakshapura, Bangalore', '8971384837', '9760408938', 'Male', 'sumit@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(24, 'EMPL44', 'Nitish Anand', '18.02.1990', '18.02.1990', 'B +ve', 'ATYPA1831E', 'Nawal Kishore Prasad', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#403 9th Amain,1st cross,Kalyan Nagar,Banaswadi Outer Ring Road,Bangalore-560043 Mobile No: 7676396387, Email: nitish@mantralabsglobal.com,nitish4u029@gmail.com', '#403 9th Amain,1st cross,Kalyan Nagar,Banaswadi Outer Ring Road,Bangalore-560043', '7676396387', '8150000238', 'Male', 'nitish@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(25, 'EMPL46', 'Harsh Rayzada', '02.10.1991', '02.10.1991', '', '', 'S K Rayzada', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#8, 19 BT Krishnappa Building, Abbigere Main Road, K G Halli, Jalahalli(West), Bangalore-560015 Email - harsh.rayzada@gmail.com Ph no - +91 9620469791', '#8, 19 BT Krishnappa Building, Abbigere Main Road, K G Halli, Jalahalli(West), Bangalore-560015.  Email - harsh.rayzada@gmail.com, Ph - +91 9620469791', '9620469791', '9916682091/8861751477', 'Male', 'harsh@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(26, 'EMPL51', 'Kadhiresan', '18.05.1992', '18.05.1992', 'O+', 'CIVPK0894B', 'Karuppusami', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '3/381, Sri Balaji PG, Venkateswara Layout, Near Sandhiya Talkies, Madiwala, Bangalore-68. Phone:8884986100 Email:kkadhir10@gmail.com', '3/381, Sri Balaji PG, Venkateswara Layout, Near Sandhiya Talkies, Madiwala, Bangalore-68.', '8884986100', '9578628674', 'Male', 'kadhiresan@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(27, 'EMPL52', 'Rajat Gupta', '21.07.1989', '29.08.1989', '', 'AZWPG0504A', 'Ratan Gupta', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#38 5th Block Ganesha Block, Dinnur Main Road, R T Nagar Bangalore-32 Mob No. 9620919192 email rajatgupta0889@gmail.com', '#38,5th Cross, Ganesh Block, Dinnur Main Road, RT Nagar ', '7204631994', '9826654897', 'Male', 'rajat@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(29, 'EMPL58', 'Kumar Saurabh', '22/05/1993', '22/05/1993', 'A+ve', 'EXDPS5990H', 'Ashok Kumar', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#675, 13th cross, 29th Main Near Madiwala Lake BTM 2nd Stage Bangalore. 9738929801/saurabh@mantralabsglobal.com', '#675 13th cross,29th main Near Madiwala lake BTM Layout 2nd Stage Bangalore', '9738929801', '9792174756', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(30, 'EMPL59', 'Ashis Kumar Maharana', '25/05/1989', '4th Sep', 'B +ve', 'BAEPM3007L', 'Harendra Maharana', 'Madhipur, Remuna, Balasore, Odisha, 756019 , Phone Number: 9035307574  , ashis.maharana@mantralabsglobal.com', 'Residing at No. 149/161, Property No. 162 ( Site No. 26 & 26/3),  J.R Layout, 2nd cross,  Chelekere Main Road, Kalyanagar Post, Bangalore ', 'Residing at No. 149/161, Property No. 162 ( Site No. 26 & 26/3),  J.R Layout, 2nd cross,  Chelekere Main Road, Kalyanagar Post, Bangalore ', '9035307574', '8792771838', 'Male', 'ashis.maharana@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(32, 'EMPL61', 'Adarsh Hegde', '31/08/1987', '31/08/1987', 'O+ve', 'AHAPH1023K', 'Shripad Hegde', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'Gajanana Apartment, #66,FF1, 4th main,5th cross,maruthilayout, Vasanthapura, Banglore 560061,09663892592,adarsh4graphics@gmail.com', 'Gajanana Apartment, #66,FF1, 4th main,5th cross,maruthilayout, Vasanthapura, Banglore 560061', '9663892592', '9663072352', 'Male', 'adarsh.hegde@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(34, 'EMPL64', 'Jayanth KV', '19/09/1991', '19/09/1991', 'O +ve', 'AYAPJ6431A', 'Prakash K V', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#8, Nandu Nilaya, 3rd Cross, Mathru Layout, 3rd Main, Yelahanka New Town, Bangalore 64, 08197396143, jayanth.kv@mantralabsglobal.com', '#8, Nandu Nilaya, 3rd Cross, Mathru Layout, 3rd Main, Yelahanka New Town, Bangalore 64, 08197396143, jayanth.kv@mantralabsglobal.com', '8197396143', '9611146004', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(35, 'EMPL65', 'Yeshwant Bhosale', '19/05/1992', '19/05/1992', 'B +Ve', 'BGNPB8426K', 'D.S Bhosale', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#23 medarahalli , RR layout , chikkabanawara , bangalore 560090, 8050659566,yeshwant49@gmail.com', '', '8050659566', '9871533269', 'Male', 'yashwant.bhosale@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(36, 'EMPL66', 'Raghavendra V', '25/11/1992', '25/11/1992', 'o+Ve', '', 'Prakash V', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#44 wadno9 near old veg big market with sunklamma temple Bellary 583101', '#402 comfort enclave 3rd floor,3rd cross syndicate bank colony bannerghatta road Banglore.', '8867132356', '9945702269', 'Male', 'raghavendra.v@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(37, 'EMPL68', 'Prafulla Rathore', '27/06/1991', '27/05/1991', 'B+', 'BNTPR7476L', 'Suresh Kumar', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '12th main, btm 1st stage, near- water tank bus stand, Bangalore, Karnataka(560076), 9066665428, prafulla.rathore@mantralabsglobal.com', '', '9066665428', '9066665429', 'Male', 'prafulla.rathore@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(38, 'EMPL69', 'Shankar Karuppusamy', '07/06/92', '07/06/92', 'O+ve', 'FDAPS1590B', 'K.Karuppusamy', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'E-35,Chemplast(Plant-II)Colony, Raman nagar(post),Mettur Dam - 636403,, +91-9500622939', '', '7676558404', '9952273519', 'Male', 'shankar.karuppusamy@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(39, 'EMPL70', 'Priyanka Singh', '19/01/1989', '19th may', 'AB+', '', 'Arvind Kumar Singh', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '66-4-14/2,sri shiva sai balaji girls pg,opposite of total mall,behind hanuman temple,madiwala,priyanka.singh@mantralabsglobal.com', '66-4-14/2,sri shiva sai balaji girls pg,opposit to total mall,behind hanuman temple,hosur road,madiwala', '8050282755', '9035171080', 'Female', 'priyanka.singh@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(40, 'EMPL71', 'Naval Kishore G R', '30/04/1991', '30/04/1991', 'B-ve', 'BAIPR8395E', 'Ramakrishnappa H', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '', '#14, ShreeGuru Nivasa, Ayyappa Temple Road, Santhe Circle, Yelhanaka Old Town - 560064', '7353097000', '9036434618', 'Male', 'naval.kishore@mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(41, 'EMPL72', 'Akash', '16/03/1992', '16/03/1992', 'A+ve', '', 'Ajay Kumar Sinha', 'T.C.Palem, Malakonda Area, Rly Q-696/D', 'T.C.Palem, Malakonda Area, Rly Q-696/D Dr.No.41-14-15-530016, 9936487887, akash.sinha@mantralabsglobal.com', '', '9980058981', '9956750767', 'Male', 'akash.sinha@mantralabsglobal.com', 'Bangalore', '2651287', 'Admin', 'jpg', 'full stack developer'),
(42, 'EMPL73', 'Boddupalli Balaji', '24/08/1993', '24/09/1993', '0+ve', 'BURPB7133H', 'B.Lakshmaiah', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '#112 , vivekananda layout, near nest bakery, marathahalli, 8885747187 , balaji.boddupalli@mantralabsglobal.com', '#112,room no 202,venkatadri pg,marathahalli-5600037 , bangalore', '8885747187', '9884207501', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(43, 'EMPL74', 'Kousik Manna', '27/06/1989', '27/06/1989', 'B+ve h', 'BNBPM8651E', 'Radhashyam Manna', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '6th Phase, J P Nagar , Bangalore - 560078 , 9538623872 , kousik.manna@mantralabsglobal.com', '6th Phase, J P Nagar , Bangalore - 560078', '9538623872', '9538623872', 'Male', 'kousik.manna@mantralabsglobal.com', 'Bangalore', '2651287', 'user', 'jpg', 'Web Developer'),
(44, 'EMPL75', 'Kuldeep Malik', '10/07/91', '10/07/91', 'A+ve', 'BGRPM0656C', 'B P S MALIK', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '66/2 mahima ranga building abbigere main road k.g halli jahalalli west banaglore 560015      phn : 8197480332  email:kuldeep.malik@mantralabsglobal.com   /   kd.mlk07@gmail.com', 'same as present address ', '8197480332', '9035177417', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(45, 'EMPL76', 'Mikhail Mitra', '13/02/1984', '13/01/1984', 'O+ve', 'AOQPM8151C', 'Mani Mukut Mitra', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', '9911637969/mikhail.ait@gmail.com', 'TBD', '9911637969', '8800097399', 'Male', 'mikhail.mitra@mantralabsglobal.com', 'Bangalore', '2651287', 'Admin', '', 'Web Developer'),
(47, 'EMP106', 'Dummy Employee happy', '24738', '87y', 'hu', 'hub', 'hb', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'jhbjh', 'jhb', 'jhb', 'jhb', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(48, 'EMP110', 'Random Guy', 'sdjvh', 'ksbdv', 'jshdfv', 'kvb', 'fbv', 'M Sree Ramulu, #13-15-489, Sree Vidya Nagar, Hindupur', 'jvjdfk', 'ksnf v', '3427658634', 'jhdfl', 'Male', 'dummyEmail.mantralabsglobal.com', 'Bangalore', '2651287', 'user', '', 'Web Developer'),
(67, '', 'Anonymous', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'user', 'jpg', 'Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_relation`
--

CREATE TABLE IF NOT EXISTS `user_blog_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_blog_relation`
--

INSERT INTO `user_blog_relation` (`id`, `user_id`, `seq_no`, `blog_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 3),
(4, 2, 1, 4),
(5, 3, 2, 5),
(6, 4, 1, 6),
(7, 5, 2, 7),
(8, 6, 4, 8),
(9, 7, 1, 9),
(10, 6, 1, 12),
(11, 8, 1, 13),
(12, 9, 1, 15),
(13, 11, 1, 16),
(47, 41, 0, 44),
(48, 41, 0, 45);

-- --------------------------------------------------------

--
-- Table structure for table `user_language_relation`
--

CREATE TABLE IF NOT EXISTS `user_language_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_language_relation`
--

INSERT INTO `user_language_relation` (`id`, `user_id`, `seq_no`, `language_id`) VALUES
(7, 2, 3, 7),
(10, 3, 2, 12),
(11, 4, 1, 3),
(12, 4, 2, 12),
(13, 4, 3, 17),
(15, 5, 2, 14),
(16, 6, 1, 11),
(17, 6, 2, 10),
(20, 8, 1, 5),
(22, 47, 0, 9),
(23, 47, 0, 11),
(24, 47, 0, 13),
(57, 3, 0, 1),
(58, 3, 0, 2),
(59, 48, 0, 1),
(60, 48, 0, 2),
(61, 48, 0, 10),
(62, 48, 0, 11),
(63, 48, 0, 12),
(77, 41, 0, 9),
(79, 41, 0, 11),
(80, 41, 0, 12),
(82, 1, 0, 3),
(83, 1, 0, 7),
(84, 43, 0, 1),
(85, 43, 0, 2),
(86, 43, 0, 4),
(87, 43, 0, 5),
(88, 43, 0, 6),
(89, 43, 0, 9),
(90, 43, 0, 10),
(91, 43, 0, 11),
(92, 43, 0, 15),
(100, 2, 0, 2),
(101, 2, 0, 1),
(102, 2, 0, 4),
(103, 2, 0, 3),
(104, 2, 0, 5),
(106, 5, 0, 1),
(108, 1, 0, 1),
(109, 1, 0, 2),
(110, 41, 0, 18),
(111, 41, 0, 30);

-- --------------------------------------------------------

--
-- Table structure for table `user_project_relation`
--

CREATE TABLE IF NOT EXISTS `user_project_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_project_relation`
--

INSERT INTO `user_project_relation` (`id`, `user_id`, `seq_no`, `project_id`) VALUES
(4, 2, 1, 1),
(5, 3, 1, 1),
(6, 4, 1, 2),
(7, 12, 1, 1),
(8, 15, 1, 4),
(9, 14, 1, 3),
(10, 11, 1, 5),
(11, 12, 1, 4),
(12, 16, 1, 4),
(13, 19, 1, 3),
(14, 47, 1, 6),
(15, 47, 2, 7),
(17, 2, 0, 2),
(18, 2, 0, 3),
(19, 3, 0, 6),
(25, 1, 0, 6),
(27, 1, 0, 2),
(30, 41, 0, 1),
(31, 41, 0, 5),
(32, 41, 0, 6),
(33, 41, 0, 7),
(34, 12, 0, 2),
(35, 6, 0, 1),
(36, 6, 0, 3),
(37, 6, 0, 4),
(38, 43, 0, 4),
(39, 43, 0, 6),
(40, 43, 0, 7),
(45, 1, 0, 4),
(46, 5, 0, 2),
(47, 5, 0, 1),
(48, 1, 0, 8),
(49, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_question_relation`
--

CREATE TABLE IF NOT EXISTS `user_question_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `que_id` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_question_relation`
--

INSERT INTO `user_question_relation` (`id`, `user_id`, `que_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(25, 41, 30),
(26, 41, 31),
(27, 43, 32),
(28, 41, 33),
(29, 41, 34);

-- --------------------------------------------------------

--
-- Table structure for table `user_suggestion_like_relation`
--

CREATE TABLE IF NOT EXISTS `user_suggestion_like_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `suggestion_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_suggestion_relation`
--

CREATE TABLE IF NOT EXISTS `user_suggestion_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sug_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_suggestion_relation`
--

INSERT INTO `user_suggestion_relation` (`id`, `user_id`, `sug_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 41, 11),
(12, 43, 12),
(13, 43, 13),
(14, 67, 14),
(15, 41, 15),
(16, 67, 16),
(17, 67, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answerComments`
--
ALTER TABLE `answerComments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_source_relation`
--
ALTER TABLE `language_source_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_source_constraint` (`lang_id`),
  ADD KEY `source_source_constraint` (`source_id`);

--
-- Indexes for table `lang_project_relation`
--
ALTER TABLE `lang_project_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_project_constraint` (`project_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_lang_relation`
--
ALTER TABLE `question_lang_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ques_lang_constraint` (`ques_id`),
  ADD KEY `lang2_lang2_constraint` (`lang_id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`source_id`);

--
-- Indexes for table `sugComments`
--
ALTER TABLE `sugComments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blog_relation`
--
ALTER TABLE `user_blog_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_language_relation`
--
ALTER TABLE `user_language_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_lang_constraint` (`user_id`),
  ADD KEY `lang_lang_constraint` (`language_id`);

--
-- Indexes for table `user_project_relation`
--
ALTER TABLE `user_project_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_project_constraint` (`user_id`),
  ADD KEY `project_proj_constraint` (`project_id`);

--
-- Indexes for table `user_question_relation`
--
ALTER TABLE `user_question_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ques_constraint` (`user_id`),
  ADD KEY `ques_ques_constraint` (`que_id`);

--
-- Indexes for table `user_suggestion_like_relation`
--
ALTER TABLE `user_suggestion_like_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_suggestion_relation`
--
ALTER TABLE `user_suggestion_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_sugg_constraint` (`user_id`),
  ADD KEY `suggestions_sugg_constraint` (`sug_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answerComments`
--
ALTER TABLE `answerComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `language_source_relation`
--
ALTER TABLE `language_source_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lang_project_relation`
--
ALTER TABLE `lang_project_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `question_lang_relation`
--
ALTER TABLE `question_lang_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `source_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sugComments`
--
ALTER TABLE `sugComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `user_blog_relation`
--
ALTER TABLE `user_blog_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user_language_relation`
--
ALTER TABLE `user_language_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `user_project_relation`
--
ALTER TABLE `user_project_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `user_question_relation`
--
ALTER TABLE `user_question_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `user_suggestion_like_relation`
--
ALTER TABLE `user_suggestion_like_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_suggestion_relation`
--
ALTER TABLE `user_suggestion_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `language_source_relation`
--
ALTER TABLE `language_source_relation`
  ADD CONSTRAINT `lang_source_constraint` FOREIGN KEY (`lang_id`) REFERENCES `language` (`lang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `source_source_constraint` FOREIGN KEY (`source_id`) REFERENCES `source` (`source_id`) ON UPDATE CASCADE;

--
-- Constraints for table `lang_project_relation`
--
ALTER TABLE `lang_project_relation`
  ADD CONSTRAINT `project_project_constraint` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`) ON UPDATE CASCADE;

--
-- Constraints for table `question_lang_relation`
--
ALTER TABLE `question_lang_relation`
  ADD CONSTRAINT `lang2_lang2_constraint` FOREIGN KEY (`lang_id`) REFERENCES `language` (`lang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ques_lang_constraint` FOREIGN KEY (`ques_id`) REFERENCES `questions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_language_relation`
--
ALTER TABLE `user_language_relation`
  ADD CONSTRAINT `lang_lang_constraint` FOREIGN KEY (`language_id`) REFERENCES `language` (`lang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_lang_constraint` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_project_relation`
--
ALTER TABLE `user_project_relation`
  ADD CONSTRAINT `lang_project_constraint` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `project_proj_constraint` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_question_relation`
--
ALTER TABLE `user_question_relation`
  ADD CONSTRAINT `ques_ques_constraint` FOREIGN KEY (`que_id`) REFERENCES `questions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ques_constraint` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_suggestion_relation`
--
ALTER TABLE `user_suggestion_relation`
  ADD CONSTRAINT `lang_sugg_constraint` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `suggestions_sugg_constraint` FOREIGN KEY (`sug_id`) REFERENCES `suggestions` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
