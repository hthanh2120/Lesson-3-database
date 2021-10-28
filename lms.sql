-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lms_plusplus
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api`
--

DROP TABLE IF EXISTS `api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `http_method` varchar(45) DEFAULT NULL,
  `pattern` varchar(500) DEFAULT NULL,
  `permission_name` varchar(45) DEFAULT NULL,
  `is_required_access_token` tinyint(4) DEFAULT NULL,
  `should_check_permission` tinyint(4) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api`
--

LOCK TABLES `api` WRITE;
/*!40000 ALTER TABLE `api` DISABLE KEYS */;
INSERT INTO `api` VALUES (1,'get data by lesson id ','GET','/room/lesson/{lesson_id}','lesson.getById',1,1,'2021-06-12 09:34:27','2021-06-12 09:34:27','ACTIVE'),(2,'get list leson by course id','GET','/room/course/{course_id}','lesson.getByCourserId',1,1,'2021-06-12 12:44:38','2021-06-12 12:44:38','ACTIVE'),(3,'get quizz detail by quizz id','GET','/room/quizz-question/{quizz_id}','quizz.getById',1,1,'2021-06-12 14:53:18','2021-06-12 14:53:18','ACTIVE'),(4,'get material detail by material id','GET','/room/slide/{material_id}','material.getById',1,1,'2021-06-12 14:53:18','2021-06-12 14:53:18','ACTIVE'),(5,'get  user\'s course information','GET','/user/course','course.getByUserId',1,1,'2021-06-14 15:34:51','2021-06-14 15:34:51','ACTIVE'),(6,'get user\'s information','GET','/user/profile','user.getProfile',1,1,'2021-06-14 15:44:27','2021-06-14 15:44:27','ACTIVE'),(7,'login','POST','/user/login','user.login',0,0,'2021-06-17 02:32:30','2021-06-17 02:32:30','ACTIVE'),(8,'register','POST','/user/register','user.register',0,0,'2021-06-17 02:35:48','2021-06-17 02:35:48','ACTIVE'),(9,'delete user','DELETE','/admin/user/{user_id}','user.delete',1,1,'2021-06-17 07:18:04','2021-06-17 07:18:04','ACTIVE'),(10,'logout','GET','/user/logout','user.logout',1,0,'2021-06-17 15:35:09','2021-08-05 15:39:35','ACTIVE'),(11,'add user course','POST','/admin/user_course','userCourse.addCourse',1,1,'2021-06-17 15:35:09','2021-06-17 15:35:09','ACTIVE'),(12,'update user_course by id','PUT','/admin/user_course','userCourse.updateById',1,1,'2021-06-21 11:25:26','2021-06-21 11:25:26','ACTIVE'),(13,'delete user_course by id','DELETE','/admin/user_course','userCourse.deleteById',1,1,'2021-06-22 02:33:19','2021-06-22 02:33:19','ACTIVE'),(14,'get user course by id','GET','/admin/user_course/search','userCourse.getById',1,1,'2021-06-30 02:24:02','2021-06-30 02:24:02','ACTIVE'),(16,'add user exam answer','POST','/admin/user_exam_answer','user.addExamAnswer',1,1,'2021-06-30 02:29:04','2021-06-30 02:29:04','ACTIVE'),(17,'update user exam answer','PUT','/admin/user_exam_answer/{id}','user.updateExamAnswer',1,1,'2021-06-30 02:29:04','2021-06-30 02:29:04','ACTIVE'),(18,'delete user exam answer','DELETE','/admin/user_exam_answer/{id}','user.deleteExamAnswer',1,1,'2021-06-30 02:29:04','2021-06-30 02:29:04','ACTIVE'),(19,'get user exam answer by id','GET','/user_exam_answer/{id}','user.getExamAnswerById',1,1,'2021-06-30 02:29:04','2021-06-30 02:29:04','ACTIVE'),(20,'add user exam','POST','/admin/user_exam','user.addExam',1,1,'2021-06-30 02:34:47','2021-06-30 02:34:47','ACTIVE'),(21,'update user exam','PUT','/admin/user_exam/{id}','user.updateExam',1,1,'2021-06-30 02:34:47','2021-06-30 02:34:47','ACTIVE'),(22,'delete user exam','DELETE','/admin/user_exam/{id}','user.deleteExam',1,1,'2021-06-30 02:34:47','2021-06-30 02:34:47','ACTIVE'),(23,'get user exam by id','GET','/user_exam/{id}','user.getExamById',1,1,'2021-06-30 02:34:47','2021-06-30 02:34:47','ACTIVE'),(24,'add user quizz answer','POST','/admin/user_quizz_answer','user.addQuizzAnswer',1,1,'2021-06-30 03:06:10','2021-06-30 03:06:10','ACTIVE'),(25,'update user quizz answer','PUT','/admin/user_quizz_answer/{id}','user.updateQuizzAnswer',1,1,'2021-06-30 03:06:10','2021-06-30 03:06:10','ACTIVE'),(26,'delete user quizz answer','DELETE','/admin/user_quizz_answer/{id}','user.deleteQuizzAnswer',1,1,'2021-06-30 03:06:10','2021-06-30 03:06:10','ACTIVE'),(27,'get user quizz answer','GET','/user_quizz_answer/{id}','user.getQuizzAnswerById',1,1,'2021-06-30 03:06:10','2021-06-30 03:06:10','ACTIVE'),(28,'add user quizz','POST','/admin/user_quizz','user.addQuizz',1,1,'2021-06-30 03:12:09','2021-06-30 03:12:09','ACTIVE'),(29,'update user quizz','PUT','/admin/user_quizz/{id}','user.updateQuizz',1,1,'2021-06-30 03:12:09','2021-06-30 03:12:09','ACTIVE'),(30,'delete user quizz','DELETE','/admin/user_quizz/{id}','user.deleteQuizz',1,1,'2021-06-30 03:12:09','2021-06-30 03:12:09','ACTIVE'),(31,'get user quizz','GET','/user_quizz/{id}','user.getQuizzById',1,1,'2021-06-30 03:12:09','2021-06-30 03:12:09','ACTIVE'),(32,'add assignment','POST','/admin/assignment','assignment.add',1,1,'2021-07-03 01:33:49','2021-07-03 01:33:49','ACTIVE'),(33,'update assignment','PUT','/admin/assignment/{assignment_id}','assignment.update',1,1,'2021-07-03 01:33:49','2021-07-03 01:33:49','ACTIVE'),(34,'delete assignment by id','DELETE','/admin/assignment/{assignment_id}','assignment.delete',1,1,'2021-07-03 01:33:49','2021-07-03 01:33:49','ACTIVE'),(35,'search assignment','GET','/admin/assignment/search','assignment.search',1,1,'2021-07-03 01:33:49','2021-07-03 01:33:49','ACTIVE'),(36,'add course','POST','/admin/course','course.add',1,1,'2021-07-03 01:36:10','2021-07-03 01:36:10','ACTIVE'),(37,'update course','PUT','/admin/course/{course_id}','course.update',1,1,'2021-07-03 01:36:10','2021-07-03 01:36:10','ACTIVE'),(38,'delate course','DELETE','/admin/course/{course_id}','course.delete',1,1,'2021-07-03 01:36:10','2021-07-03 01:36:10','ACTIVE'),(39,'search course','GET','/admin/course/search','course.search',1,1,'2021-07-03 01:36:10','2021-07-03 01:36:10','ACTIVE'),(41,'add exam','POST','/admin/exam','exam.add',1,1,'2021-07-03 01:44:19','2021-07-03 01:44:19','ACTIVE'),(42,'update exam','PUT','/admin/exam/{exam_id}','exam.update',1,1,'2021-07-03 01:44:19','2021-07-03 01:44:19','ACTIVE'),(43,'delete exam','DELETE','/admin/exam/{exam_id}','exam.delete',1,1,'2021-07-03 01:44:19','2021-07-03 01:44:19','ACTIVE'),(44,'search exam','GET','/admin/exam/search','exam.search',1,1,'2021-07-03 01:44:19','2021-07-03 01:44:19','ACTIVE'),(45,'add exam question','POST','/admin/exam_question','examQuestion.add',1,1,'2021-07-03 01:46:39','2021-07-03 01:46:39','ACTIVE'),(46,'update exam question','PUT','/admin/exam_question/{examquestion_id}','examQuestion.update',1,1,'2021-07-03 01:46:39','2021-07-03 01:46:39','ACTIVE'),(47,'delete exam question','DELETE','/admin/exam_question/{examquestion_id}','examQuestion.delete',1,1,'2021-07-03 01:46:39','2021-07-03 01:46:39','ACTIVE'),(48,'search exam question','GET','/admin/exam_question/search','examQuestion.search',1,1,'2021-07-03 01:46:39','2021-07-03 01:46:39','ACTIVE'),(49,'add lesson','POST','/admin/lesson','lesson.add',1,1,'2021-07-03 01:50:18','2021-07-03 01:50:18','ACTIVE'),(50,'update lesson','PUT','/admin/lesson/{lesson_id}','lesson.update',1,1,'2021-07-03 01:50:18','2021-07-03 01:50:18','ACTIVE'),(51,'delete lesson','DELETE','/admin/lesson/{lesson_id}','lesson.delete',1,1,'2021-07-03 01:50:18','2021-07-03 01:50:18','ACTIVE'),(52,'search lesson','GET','/admin/lesson/search','lesson.search',1,1,'2021-07-03 01:50:18','2021-07-03 01:50:18','ACTIVE'),(54,'add material','POST','/admin/material','material.add',1,1,'2021-07-03 01:54:33','2021-07-03 01:54:33','ACTIVE'),(55,'update material','PUT','/admin/material/{material_id}','material.update',1,1,'2021-07-03 01:54:33','2021-07-03 01:54:33','ACTIVE'),(56,'delete material','DELETE','/admin/material/{material_id}','material.delete',1,1,'2021-07-03 01:54:33','2021-07-03 01:54:33','ACTIVE'),(57,'search material','GET','/admin/material/search','material.search',1,1,'2021-07-03 01:54:33','2021-07-03 01:54:33','ACTIVE'),(58,'add quizz','POST','/admin/quizz','quizz.add',1,1,'2021-07-03 01:57:27','2021-07-03 01:57:27','ACTIVE'),(59,'update quizz','PUT','/admin/quizz/{quizz_id}','quizz.update',1,1,'2021-07-03 01:57:27','2021-07-03 01:57:27','ACTIVE'),(60,'delete quizz','DELETE','/admin/quizz/{quizz_id}','quizz.delete',1,1,'2021-07-03 01:57:27','2021-07-03 01:57:27','ACTIVE'),(61,'search quizz','GET','/admin/quizz/search','quizz.search',1,1,'2021-07-03 01:57:27','2021-07-03 01:57:27','ACTIVE'),(62,'add quizz question','POST','/admin/quizz_question','quizzQuestion.add',1,1,'2021-07-03 02:00:08','2021-07-03 02:00:08','ACTIVE'),(63,'add quizz question','PUT','/admin/quizz_question/{quizzquestion_id}','quizzQuestion.update',1,1,'2021-07-03 02:00:08','2021-07-03 02:00:08','ACTIVE'),(64,'delete quizz question','DELETE','/admin/quizz_question/{quizzquestion_id}','quizzQuestion.delete',1,1,'2021-07-03 02:00:08','2021-07-03 02:00:08','ACTIVE'),(65,'search quizz question','GET','/admin/quizz_question/search','quizzQuestion.search',1,1,'2021-07-03 02:00:08','2021-07-03 02:00:08','ACTIVE'),(67,'add session','POST','/admin/session','session.add',1,1,'2021-07-03 02:03:21','2021-07-03 02:03:21','ACTIVE'),(68,'update session','PUT','/admin/session/{session_id}','session.update',1,1,'2021-07-03 02:03:21','2021-07-03 02:03:21','ACTIVE'),(69,'delete session','DELETE','/admin/session/{session_id}','session.delete',1,1,'2021-07-03 02:03:21','2021-07-03 02:03:21','ACTIVE'),(70,'search session','GET','/admin/session/search','session.search',1,1,'2021-07-03 02:03:21','2021-07-03 02:03:21','ACTIVE'),(71,'add slide','POST','/admin/slide','slide.add',1,1,'2021-07-03 02:08:50','2021-07-03 02:08:50','ACTIVE'),(72,'update slide','PUT','/admin/slide/{slide_id}','slide.update',1,1,'2021-07-03 02:08:50','2021-07-03 02:08:50','ACTIVE'),(73,'delete slide','DELETE','/admin/slide/{slide_id}','slide.delete',1,1,'2021-07-03 02:08:50','2021-07-03 02:08:50','ACTIVE'),(74,'search slide','GET','/admin/slide/search','slide.search',1,1,'2021-07-03 02:08:50','2021-07-03 02:08:50','ACTIVE'),(76,'get list suggest courses','GET','/room/course/sugguest','course.getSuggest',1,1,'2021-07-05 08:59:21','2021-07-05 08:59:21','ACTIVE'),(77,'get list completed courses','GET','/room/course/completed','course.getCompleted',1,1,'2021-07-05 08:59:21','2021-07-05 08:59:21','ACTIVE'),(78,'upload file','POST','/admin/file/upload','file.upload',0,0,'2021-07-13 01:52:36','2021-07-13 01:52:36','ACTIVE'),(80,'search user exam','GET','/admin/user_exam/search','user.searchExam',1,1,'2021-07-16 07:38:31','2021-07-16 07:38:31','ACTIVE'),(81,'search user exam answer','GET','/admin/user_exam_answer/search','user.searchExamAnswer',1,1,'2021-07-16 07:38:31','2021-07-16 07:38:31','ACTIVE'),(82,'search userquizz','GET','/admin/user_quizz/search','user.searchQuizz',1,1,'2021-07-16 07:38:31','2021-07-16 07:38:31','ACTIVE'),(83,'search user quizz answer','GET','/admin/user_quizz_answer/search','user.searchQuizzAnswer',1,1,'2021-07-16 10:47:01','2021-07-16 10:47:01','ACTIVE'),(84,'answers','POST','/admin/quizz_question/answer','quizzQuestion.answer',1,1,'2021-07-25 16:34:54','2021-07-25 16:34:54','ACTIVE'),(85,'search user','GET','/admin/user/search','user.search',1,1,'2021-08-03 15:22:48','2021-08-03 15:22:48','ACTIVE'),(86,'add user','POST','/admin/user','user.add',1,1,'2021-08-04 11:08:32','2021-08-04 11:08:32','ACTIVE'),(87,'update user','PUT','/admin/user/{user_id}','user.update',1,1,'2021-08-04 11:18:37','2021-08-04 11:18:37','ACTIVE'),(88,'get user\'s detail','GET','/admin/user/detail/{user_id}','user.getDetailById',1,1,'2021-08-04 11:18:37','2021-08-04 11:18:37','ACTIVE'),(89,'search api','GET','/admin/api/search','api.search',1,1,'2021-08-05 01:50:11','2021-08-05 01:50:11','ACTIVE'),(90,'add api','POST','/admin/api','api.add',1,1,'2021-08-05 02:25:52','2021-08-05 02:25:52','ACTIVE'),(91,'update api','PUT','/admin/api/{apiId}','api.update',1,1,'2021-08-05 02:25:52','2021-08-05 02:25:52','ACTIVE'),(92,'delete api','DELETE','/admin/api/{apiId}','api.delete',1,1,'2021-08-05 02:26:17','2021-08-05 02:26:17','ACTIVE'),(93,'search role','GET','/admin/role/search','role.search',1,1,'2021-08-05 03:25:40','2021-08-05 03:25:40','ACTIVE'),(94,'add role','POST','/admin/role','role.add',1,1,'2021-08-05 03:25:40','2021-08-05 03:25:40','ACTIVE'),(95,'update role','PUT','/admin/role/{roleId}','role.update',1,1,'2021-08-05 03:25:40','2021-08-05 03:25:40','ACTIVE'),(96,'delete role','DELETE','/admin/role/{roleId}','role.delete',1,1,'2021-08-05 03:25:40','2021-08-05 03:25:40','ACTIVE'),(97,'get detail role','GET','/admin/role/{roleId}','role.getDetailById',1,1,'2021-08-05 03:26:08','2021-08-05 03:26:08','ACTIVE'),(98,'login user admin','POST','/admin/user/login','admin.login',0,0,'2021-08-08 02:05:23','2021-08-08 02:05:23','ACTIVE'),(99,'get admin profile','GET','/admin/user/profile','admin.profile',1,1,'2021-08-08 04:20:56','2021-08-08 15:30:35','ACTIVE'),(100,'search room','GET','/admin/room/search','room.search',1,1,'2021-08-10 13:51:55','2021-08-10 13:51:55','ACTIVE'),(101,'add room','POST','/admin/room','room.add',1,1,'2021-08-10 13:51:55','2021-08-10 13:51:55','ACTIVE'),(102,'update room','PUT','/admin/room/{roomId}','room.update',1,1,'2021-08-10 13:51:55','2021-08-10 13:51:55','ACTIVE'),(103,'delete room','DELETE','/admin/room/{roomId}','room.delete',1,1,'2021-08-10 13:51:55','2021-08-10 13:51:55','ACTIVE'),(104,'search voucher','GET','/admin/voucher/search','voucher.search',1,1,'2021-08-11 06:32:45','2021-08-11 06:32:45','ACTIVE'),(105,'add voucher','POST','/admin/voucher','voucher.add',1,1,'2021-08-11 06:32:45','2021-08-11 06:32:45','ACTIVE'),(106,'update voucher','PUT','/admin/voucher/{voucherId}','voucher.update',1,1,'2021-08-11 06:32:45','2021-08-11 06:32:45','ACTIVE'),(107,'delete voucher','DELETE','/admin/voucher/{voucherId}','voucher.delete',1,1,'2021-08-11 06:32:45','2021-08-11 06:32:45','ACTIVE'),(108,'search billing','GET','/admin/billing/search','billing.search',1,1,'2021-08-11 09:01:26','2021-08-11 09:01:26','ACTIVE'),(109,'add billing','POST','/admin/billing','billing.add',1,1,'2021-08-11 09:01:26','2021-08-11 09:01:26','ACTIVE'),(110,'update billing','PUT','/admin/billing/{billingId}','billing.update',1,1,'2021-08-11 09:01:26','2021-08-11 09:01:26','ACTIVE'),(111,'delete billing','DELETE','/admin/billing/{billingId}','billing.delete',1,1,'2021-08-11 09:01:26','2021-08-11 09:01:26','ACTIVE'),(112,'search revenue','GET','/admin/revenue/search','revenue.search',1,1,'2021-08-11 09:36:47','2021-08-11 09:36:47','ACTIVE'),(113,'add revenue','POST','/admin/revenue','revenue.add',1,1,'2021-08-11 09:36:47','2021-08-11 09:36:47','ACTIVE'),(114,'update revenue','PUT','/admin/revenue/{revenueId}','revenue.update',1,1,'2021-08-11 09:36:47','2021-08-11 09:36:47','ACTIVE'),(115,'delete revenue','DELETE','/admin/revenue/{revenueId}','revenue.delete',1,1,'2021-08-11 09:36:47','2021-08-11 09:36:47','ACTIVE'),(116,'add room user','POST','/admin/room-user','roomUser.add',1,1,'2021-08-11 13:14:07','2021-08-11 13:14:07','ACTIVE'),(117,'delete room user','DELETE','/admin/room-user','room-User.delete',1,1,'2021-08-11 13:14:07','2021-08-11 13:14:07','ACTIVE'),(119,'search room mentor','GET','/admin/room-mentor/search','roomMentor.search',1,1,'2021-08-14 09:22:32','2021-08-14 09:22:32','ACTIVE'),(120,'add room mentor','POST','/admin/room-mentor','roomMentor.add',1,1,'2021-08-14 09:22:32','2021-08-14 09:22:32','ACTIVE'),(121,'update room mentor','PUT','/admin/room-mentor','roomMentor.update',1,1,'2021-08-14 09:22:32','2021-08-14 09:22:32','ACTIVE'),(122,'delete room mentor','DELETE','/admin/room-mentor','roomMentor.delete',1,1,'2021-08-14 09:22:32','2021-08-14 09:22:32','ACTIVE'),(123,'search room user','GET','/admin/room-user/search','roomUser.search',1,1,'2021-08-14 15:37:02','2021-08-14 15:37:02','ACTIVE'),(124,'get user to add ','GET','/admin/room-user','roomUser.getuser',1,1,'2021-08-15 02:43:35','2021-08-15 02:43:35','ACTIVE'),(125,'get user to add','GET','/admin/room-mentor','roomMentor.getuser',1,1,'2021-08-15 02:43:35','2021-08-15 02:43:35','ACTIVE'),(126,'get user in the room user','GET','/admin/room-user/{roomId}','roomUser.getUserInRoomUser',1,1,'2021-08-16 12:30:18','2021-08-16 12:30:18','ACTIVE'),(127,'get user in the room mentor','GET','/admin/room-mentor/{roomId}','roomMentor.getUserInRoomMentor',1,1,'2021-08-17 09:19:26','2021-08-17 09:19:26','ACTIVE'),(128,'get all user student to add','GET','/admin/user_course','userCourse.getUserToAdd',1,1,'2021-08-17 09:50:38','2021-08-17 09:50:38','ACTIVE'),(129,'get all user in the course','GET','/admin/user_course/{courseId}','userCourse.getAllUserInCourse',1,1,'2021-08-17 09:50:38','2021-08-17 09:50:38','ACTIVE'),(130,'change user info','PUT','/user/info/{userId}','user.changeUserInfo',1,1,'2021-08-23 06:46:12','2021-08-23 06:46:12','ACTIVE'),(131,'change admin info','PUT','/admin/user/change-info','userAdmin.changeUserInfo',1,1,'2021-08-23 10:16:26','2021-08-23 10:16:26','ACTIVE'),(132,'change user password','PUT','/user/change-password/{userId}','user.changeUserPassword',1,1,'2021-08-23 14:58:15','2021-08-23 14:58:15','ACTIVE'),(133,'change admin password','PUT','/admin/user/change-password','userAdmin.changeUserPassword',1,1,'2021-08-23 15:16:46','2021-08-23 15:16:46','ACTIVE'),(134,'guest search course','GET','/guest/search','guest.searchCourse',0,0,'2021-08-24 14:20:49','2021-08-24 14:20:49','ACTIVE'),(137,'add course price','POST','/admin/course-price','coursePrice.add',1,1,'2021-09-04 08:55:59','2021-09-04 08:55:59','ACTIVE'),(138,'update course price','PUT','/admin/course-price/{id}','coursePrice.update',1,1,'2021-09-04 08:55:59','2021-09-04 08:55:59','ACTIVE'),(139,'delete course price','DELETE','/admin/course-price/{id}','coursePrice.delete',1,1,'2021-09-04 08:55:59','2021-09-04 08:55:59','ACTIVE'),(140,'search course price','GET','/admin/course-price/search','coursePrice.search',1,1,'2021-09-04 09:06:01','2021-09-04 09:06:01','ACTIVE'),(146,'search mentor','GET','/admin/mentor/search','mentor.search',1,1,'2021-09-05 05:07:24','2021-09-05 05:07:24','ACTIVE'),(147,'add mentor','POST','/admin/mentor','mentor.add',1,1,'2021-09-05 05:07:24','2021-09-05 05:07:24','ACTIVE'),(148,'update mentor','PUT','/admin/mentor/{mentorId}','mentor.update',1,1,'2021-09-05 05:07:24','2021-09-05 05:07:24','ACTIVE'),(149,'delete mentor','DELETE','/admin/mentor/{mentorId}','mentor.delete',1,1,'2021-09-05 05:07:24','2021-09-05 05:07:24','ACTIVE'),(150,'search student','GET','/admin/student/search','student.search',1,1,'2021-09-08 18:38:15','2021-09-08 18:38:15','ACTIVE'),(151,'add student','POST','/admin/student','student.add',1,1,'2021-09-08 18:38:15','2021-09-08 18:38:15','ACTIVE'),(152,'update student','PUT','/admin/student/{studentId}','student.update',1,1,'2021-09-08 18:38:15','2021-09-08 18:38:15','ACTIVE'),(153,'delete student','DELETE','/admin/student/{studentId}','student.delete',1,1,'2021-09-08 18:38:15','2021-09-08 18:38:15','ACTIVE'),(156,'get search blogs','GET','/admin/blogs/search','api.search',1,1,'2021-09-10 07:33:52','2021-09-10 07:33:52','ACTIVE'),(157,'add blogs','POST','/admin/blogs','blog.post',1,1,'2021-09-10 07:38:31','2021-09-10 07:38:31','ACTIVE'),(158,'update blogs','PUT','/admin/blogs/update/{id}','blog.update',1,1,'2021-09-10 07:38:31','2021-09-10 07:38:31','ACTIVE'),(159,'delete blogs','DELETE','/admin/blogs/{id}','blog.delete',1,1,'2021-09-10 07:38:31','2021-09-10 07:38:31','ACTIVE'),(160,'admin approve','PUT','/admin/blogs/approve','blog.admin.approve',1,1,'2021-09-10 07:38:31','2021-09-10 07:38:31','ACTIVE'),(161,'get cate','GET','/admin/blogs/cate','blog.getcategory',1,1,'2021-09-10 09:32:14','2021-09-10 09:32:14','ACTIVE'),(162,'search user lesson','GET','/admin/user-lesson/search','userLesson.search',1,1,'2021-09-10 12:40:45','2021-09-10 12:40:45',NULL),(163,'add user lesson','POST','/admin/user-lesson','userLesson.add',1,1,'2021-09-10 12:40:45','2021-09-10 12:40:45',NULL),(164,'get blog detail','GET','/admin/blogs/detail/{id}','blogDetail.get',1,1,'2021-09-10 13:30:05','2021-09-10 13:30:05','ACTIVE'),(165,'update user lesson','PUT','/admin/user-lesson/{userLessonId}','userLesson.update',1,1,'2021-09-10 13:55:36','2021-09-10 13:55:36','ACTIVE'),(166,'delete user lesson','DELETE','/admin/user-lesson/{userLessonId}','userLesson.delete',1,1,'2021-09-10 13:55:37','2021-09-10 13:55:37','ACTIVE'),(167,'get all course of user','GET','/admin/course/user/{userId}','course.getAllByUserId',1,1,'2021-09-11 08:09:36','2021-09-11 08:09:36','ACTIVE'),(168,'add video lesson','POST','/admin/video/add','videoLesson.add',1,1,'2021-09-11 10:23:45','2021-09-11 10:23:45','ACTIVE'),(169,'update video lesson','PUT','/admin/video/{video_id}','videoLesson.update',1,1,'2021-09-11 10:24:55','2021-09-11 10:24:55','ACTIVE'),(170,'delete video lesson','DELETE','/admin/video/{video_id}','videoLesson.delete',1,1,'2021-09-11 10:24:55','2021-09-11 10:24:55','ACTIVE'),(172,'user search video lesson','GET','/video/get-video','videoLesson.getbyUser',1,1,'2021-09-11 17:03:38','2021-09-11 17:03:38','ACTIVE'),(173,'search video lesson by admin','GET','/admin/video/search','videoLesson.getbyAdmin',1,1,'2021-09-11 17:03:38','2021-09-11 17:03:38','ACTIVE'),(176,'update cart','PUT','/cart','cart.update',1,1,'2021-09-23 15:11:26','2021-09-23 15:11:26',NULL),(178,'search order','GET','/admin/orders/search','orders.search',1,1,'2021-09-23 17:49:38','2021-09-23 17:49:38',NULL),(179,'admin add order','POST','/admin/orders','orders.add',1,1,'2021-09-23 17:49:38','2021-09-23 17:49:38',NULL),(180,'update order','PUT','/admin/orders/{orderId}','orders.update',1,1,'2021-09-23 17:49:38','2021-09-23 17:49:38',NULL),(181,'delete order','DELETE','/admin/orders/{orderId}','orders.delete',1,1,'2021-09-23 17:49:38','2021-09-23 17:49:38',NULL),(182,'get cart detail','GET','/cart/detail','cart.getDetail',1,1,'2021-09-24 02:29:15','2021-09-24 02:29:15',NULL),(183,'check voucher in cart','POST','/voucher/check','cart.checkVoucher',1,1,'2021-09-24 03:30:55','2021-09-24 03:30:55',NULL),(184,'get order user detail','GET','/orders','orderUser.getDetail',1,1,'2021-09-25 03:07:45','2021-09-25 03:07:45',NULL),(185,'add to cart','POST','/cart','cart.addToCart',1,1,'2021-09-25 08:42:41','2021-09-25 08:42:41',NULL),(186,'delete course in cart','DELETE','/cart','cart.deleteCourse',1,1,'2021-09-25 12:38:36','2021-09-25 12:38:36',NULL),(187,'add order','POST','/orders','orders.add',1,1,'2021-09-27 14:38:17','2021-09-27 14:38:17',NULL),(188,'course detail','GET','/guest/course/detail','guest.detail',0,0,'2021-09-27 14:50:17','2021-09-27 14:50:17',NULL),(189,'cancel order','DELETE','/orders/{ordersId}','orders.cancel',1,1,'2021-09-27 15:29:15','2021-09-27 15:29:15',NULL),(191,'search orders','GET','/admin/orders/search','orderAdmin.search',1,1,'2021-09-30 09:28:59','2021-09-30 09:28:59',NULL),(192,'reject orders','DELETE','/orders/reject/{orderId}','orders.reject',1,1,'2021-10-01 15:31:35','2021-10-01 15:31:35',NULL),(193,'add orders mentor','POST','/orders-mentor','ordersMentor.add',1,1,'2021-10-11 06:45:04','2021-10-11 06:45:04',NULL),(194,'delete orders mentor','DELETE','/orders-mentor','ordersMentor.delete',1,1,'2021-10-11 06:45:04','2021-10-11 06:45:04',NULL),(195,'reject orders mentor','PUT','/orders-mentor/{orderId}','ordersMentor.reject',1,1,'2021-10-11 07:20:17','2021-10-11 07:20:17',NULL),(196,'get mentor detail','GET','/guest/mentor/detail','guest.getMentorDetail',0,0,'2021-10-11 07:46:00','2021-10-11 07:46:00',NULL),(197,'search all mentor','GET','/guest/mentor','guest.getAllMentor',0,0,'2021-10-11 08:00:49','2021-10-11 08:00:49',NULL),(198,'search orders mentor','GET','/admin/orders-mentor/search','ordersMentorAdmin.search',1,1,'2021-10-11 12:06:48','2021-10-11 12:06:48',NULL),(199,'get orders mentor by status','GET','/orders-mentor','ordersMentor.search',1,1,'2021-10-11 14:21:37','2021-10-11 14:21:37',NULL),(200,'admin add orders mentor','POST','/admin/orders-mentor','adminOrdersMentor.add',1,1,'2021-10-11 14:53:03','2021-10-11 14:53:03',NULL),(201,'admin update orders mentor','PUT','/admin/orders-mentor/{orderId}','adminOrdersMentor.update',1,1,'2021-10-11 14:53:04','2021-10-11 14:53:04',NULL),(202,'admin orders mentor','DELETE','/admin/orders-mentor/{orderId}','adminOrdersMentor.delete',1,1,'2021-10-11 15:50:16','2021-10-11 15:50:16',NULL),(203,'add favorite mentor','POST','/user/mentor-favorite','user.mentorFavourite',1,1,'2021-10-13 13:14:01','2021-10-13 13:14:01',NULL),(204,'unfavorite mentor','POST','/user/mentor-unfavorite','user.mentorUnfavorite',1,1,'2021-10-13 14:57:56','2021-10-13 14:57:56',NULL),(205,'get list mentors favorite','GET','/user/mentor-favorite','user.listMentorsFavorite',1,1,'2021-10-13 15:13:34','2021-10-13 15:13:34',NULL),(206,'add asset','POST','/admin/asset','asset.add',1,1,'2021-10-15 12:23:15','2021-10-15 12:23:15','ACTIVE'),(207,'update asset','PUT','/admin/asset/{asset_id}','asset.update',1,1,'2021-10-15 12:37:23','2021-10-15 12:37:23','ACTIVE'),(208,'delete asset','DELETE','/admin/asset/{asset_id}','asset.delete',1,1,'2021-10-15 12:37:49','2021-10-15 12:37:49','ACTIVE'),(209,'get asset','GET','/admin/asset/search','asset.search',1,1,'2021-10-16 06:19:01','2021-10-16 06:19:01','ACTIVE'),(210,'login social','POST','/user/login-social','user.loginSocial',0,0,'2021-10-21 03:46:51','2021-10-21 03:46:51','ACTIVE');
/*!40000 ALTER TABLE `api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_name` varchar(255) DEFAULT NULL,
  `asset_description` text,
  `asset_quantity` int(11) DEFAULT NULL,
  `asset_unit` varchar(45) DEFAULT NULL,
  `add_time` timestamp(6) NULL DEFAULT NULL,
  `export_time` timestamp(6) NULL DEFAULT NULL,
  `asset_location` text,
  `user_id_last_updated` int(11) DEFAULT NULL,
  `asset_type` varchar(45) DEFAULT NULL,
  `accountant` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `asset_img` text,
  `updated_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (3,'string','string',0,'string',NULL,NULL,'string',25,'string','string','ACTIVE','string','2021-10-15 12:33:53.000000','2021-10-15 12:33:53.000000'),(4,'string','string',0,'string',NULL,NULL,'string',25,'string','string','ACTIVE','string','2021-10-15 12:34:26.000000','2021-10-15 12:34:26.000000'),(5,'string','string',0,'string',NULL,NULL,'string',25,'string','stádasdsadsadring','DELETED','string','2021-10-15 12:43:47.000000','2021-10-15 12:43:47.000000'),(6,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:38.000000','2021-10-16 06:39:38.000000'),(7,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:40.000000','2021-10-16 06:39:40.000000'),(8,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:41.000000','2021-10-16 06:39:41.000000'),(9,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:41.000000','2021-10-16 06:39:41.000000'),(10,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:42.000000','2021-10-16 06:39:42.000000'),(11,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:43.000000','2021-10-16 06:39:43.000000'),(12,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:44.000000','2021-10-16 06:39:44.000000'),(13,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:44.000000','2021-10-16 06:39:44.000000'),(14,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:45.000000','2021-10-16 06:39:45.000000'),(15,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','DELETED','string2','2021-10-16 06:39:46.000000','2021-10-16 06:39:46.000000'),(16,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string1','ACTIVE','string2','2021-10-16 06:39:46.000000','2021-10-16 06:39:46.000000'),(17,'string4','string1',10,'string1',NULL,NULL,'string3',25,'string1','string112312312312','DELETED','string2','2021-10-17 06:04:35.000000','2021-10-17 06:04:35.000000'),(18,'Hải','mô tả',10,'cái',NULL,NULL,'Kho tầng 5',25,'string1','hoàng','DELETED','ảnh','2021-10-18 02:25:08.000000','2021-10-18 02:25:08.000000'),(19,'test2','xin chào',1,'2',NULL,NULL,NULL,1,NULL,NULL,'DELETED','https://cdn-dev.plusplus.vn/lms/images/20211023/002510478_tho.jpg','2021-10-22 17:25:18.000000','2021-10-22 17:25:18.000000');
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_title` text,
  `assignment_link` text,
  `order_in_lesson` int(11) DEFAULT NULL,
  `assignment_type` varchar(45) DEFAULT NULL,
  `lesson_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,'Bài luyện tập buổi 1','https://cdn-dev.plusplus.vn/lms/lesson1_javacore.pdf',1,'NORMAL',1,'2021-05-29 07:44:24','2021-05-29 07:44:24','ACTIVE'),(2,'Bài luyện tập buổi 2','https://cdn-dev.plusplus.vn/lms/lesson2_javacore.pdf',1,'NORMAL',2,'2021-05-29 07:47:04','2021-05-29 07:47:04','ACTIVE'),(3,'Bài luyện tập buổi 3','https://cdn-dev.plusplus.vn/lms/lesson3_javacore.pdf',1,'NORMAL',3,'2021-05-29 07:48:38','2021-05-29 07:48:38','ACTIVE'),(4,'Bài luyện tập buổi 4','https://cdn-dev.plusplus.vn//lms/lesson4_javacore.pdf',1,'NORMAL',4,'2021-05-29 07:49:37','2021-05-29 07:49:37','ACTIVE'),(5,'Bài luyện tập buổi 5','https://cdn-dev.plusplus.vn/lms/lesson5_javacore.pdf',1,'NORMAL',5,'2021-05-29 07:51:01','2021-05-29 07:51:01','ACTIVE'),(6,'Bài luyện tập buổi 6','https://cdn-dev.plusplus.vn/lms/lesson6_javacore.pdf',1,'NORMAL',6,'2021-05-29 07:52:10','2021-05-29 07:52:10','ACTIVE'),(7,'Bài luyện tập buổi 7','https://cdn-dev.plusplus.vn/lms/lesson7_javacore.pdf',1,'NORMAL',7,'2021-05-29 07:53:16','2021-05-29 07:53:16','ACTIVE'),(8,'Bài luyện tập buổi 82','https://cdn-dev.plusplus.vn/lms/lesson8_javacore.pdf',1,'NORMAL',8,'2021-05-29 07:58:03','2021-07-22 02:56:35','ACTIVE'),(9,'Bài luyện tập buổi 9','https://cdn-dev.plusplus.vn/lms/lesson9_javacore.pdf',1,'NORMAL',9,'2021-05-29 07:58:58','2021-05-29 07:58:58','ACTIVE'),(10,'Bài luyện tập buổi 10','https://cdn-dev.plusplus.vn/lms/lesson10_javacore.pdf',1,'NORMAL',10,'2021-05-29 08:01:35','2021-07-25 01:55:11','ACTIVE'),(11,'Bài luyện tập buổi test','https://cdn-dev.plusplus.vn/lms/pdf/20210725/091024701_type.pdf',NULL,'NORMAL',21,'2021-07-25 01:56:11','2021-07-25 02:10:25','ACTIVE');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billling`
--

DROP TABLE IF EXISTS `billling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `noted` text,
  `saler_id` int(11) DEFAULT NULL,
  `saler_name` varchar(45) DEFAULT NULL,
  `bill_img` text,
  `receipts` text,
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billling`
--

LOCK TABLES `billling` WRITE;
/*!40000 ALTER TABLE `billling` DISABLE KEYS */;
INSERT INTO `billling` VALUES (1,1,'Nguyen Tho',100000,'Đã thanh toán',1,'Nguyen Kiem',NULL,NULL,'2021-08-12 08:19:50.000000','2021-08-12 08:19:50.000000','ACTIVE'),(2,6,NULL,100000,NULL,15,NULL,NULL,NULL,'2021-08-19 18:16:51.000000','2021-08-19 18:16:51.000000','DELETED'),(3,14,NULL,100000,NULL,15,NULL,NULL,NULL,'2021-08-19 18:20:44.000000','2021-08-19 18:20:44.000000','DELETED'),(4,15,NULL,100000,NULL,9,NULL,NULL,NULL,'2021-08-19 18:32:57.000000','2021-08-19 18:32:57.000000','DELETED'),(5,11,NULL,100000,NULL,13,NULL,NULL,NULL,'2021-08-19 18:34:46.000000','2021-08-19 18:34:46.000000','DELETED'),(6,14,'test1',100000,NULL,9,'vietduc',NULL,NULL,'2021-08-19 18:36:34.000000','2021-08-19 18:36:34.000000','DRAFF'),(7,6,'kiemnx',1000000,NULL,12,'kiemnx_student',NULL,NULL,'2021-08-19 18:37:22.000000','2021-09-15 02:07:43.000000','DRAFF'),(8,9,'vietduc',122222,NULL,7,'kiemnx','https://cdn-dev.plusplus.vn/lms/images/20210821/202039194_Group 10573.png','https://cdn-dev.plusplus.vn/lms/images/20210821/202033788_Ekko.png','2021-08-21 13:20:47.000000','2021-08-21 13:20:47.000000','DRAFF'),(10,12,'thanhnh',1000000,NULL,19,'thanh',NULL,NULL,'2021-09-15 02:18:34.000000','2021-09-15 02:18:34.000000','ACTIVE'),(12,24,'test',100000,NULL,19,'thanh',NULL,NULL,'2021-09-15 03:42:06.000000','2021-09-15 15:10:06.000000','DRAFF'),(13,15,'hoang',500000,NULL,2,'phanhoanguet',NULL,NULL,'2021-09-15 13:10:42.000000','2021-09-15 13:10:42.000000','DRAFF'),(15,22,'Phan Nho Hoàng',800000,'test',15,'Phan Nho Hoàng',NULL,NULL,'2021-09-16 03:28:32.000000','2021-09-16 03:34:30.000000','ACTIVE'),(16,23,'abc',100000,NULL,2,'Phan Hoang','string','string','2021-09-18 04:03:06.000000','2021-09-18 04:03:06.000000','ACTIVE'),(19,13,'test',1000000,NULL,2,'Phan Hoang',NULL,NULL,'2021-09-19 15:10:28.000000','2021-09-19 15:10:28.000000','DRAFF'),(20,25,'string',720000,NULL,2,'Phan Hoang',NULL,NULL,'2021-10-08 09:26:53.000000','2021-10-08 09:26:53.000000','DRAFF'),(21,40,'Huu Thanh',700000,NULL,2,'Phan Hoang',NULL,NULL,'2021-10-08 12:50:17.000000','2021-10-08 12:50:17.000000','ACTIVE'),(24,31,'Phan Hoang',1200000,NULL,1,'ADMIN',NULL,NULL,'2021-10-23 13:09:56.000000','2021-10-23 13:09:56.000000','ACTIVE'),(25,31,'Phan Hoang',600000,NULL,1,'ADMIN',NULL,NULL,'2021-10-23 13:13:39.000000','2021-10-23 13:13:39.000000','ACTIVE'),(26,31,'Phan Hoang',1000000,NULL,1,'ADMIN',NULL,NULL,'2021-10-23 13:20:27.000000','2021-10-23 13:20:27.000000','ACTIVE'),(27,31,'Phan Hoang',400000,NULL,1,'ADMIN',NULL,NULL,'2021-10-23 13:21:29.000000','2021-10-23 13:21:29.000000','ACTIVE'),(29,31,'Phan Hoang',2500000,NULL,2,'Phan Hoang',NULL,NULL,'2021-10-24 03:36:16.000000','2021-10-24 03:36:16.000000','ACTIVE'),(30,40,'Huu Thanh',1000000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 03:38:01.000000','2021-10-24 03:38:01.000000','ACTIVE'),(31,31,'Phan Hoang',800000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 07:32:25.000000','2021-10-24 07:32:25.000000','ACTIVE'),(32,31,'Phan Hoang',800000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 07:47:44.000000','2021-10-24 07:47:44.000000','ACTIVE'),(33,31,'Phan Hoang',800000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 07:49:03.000000','2021-10-24 07:49:03.000000','ACTIVE'),(34,31,'Phan Hoang',800000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 07:50:56.000000','2021-10-24 07:50:56.000000','ACTIVE'),(35,31,'Phan Hoang',800000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 07:52:47.000000','2021-10-24 07:52:47.000000','ACTIVE'),(36,31,'Phan Hoang',800000,NULL,25,'Hai Dep Zai',NULL,NULL,'2021-10-24 07:58:48.000000','2021-10-24 07:58:48.000000','ACTIVE'),(37,31,'Phan Hoang',500000,NULL,41,'Huu Thanh',NULL,NULL,'2021-10-24 11:46:26.000000','2021-10-24 11:47:12.000000','ACTIVE'),(38,31,'Phan Hoang',500000,NULL,41,'Huu Thanh',NULL,NULL,'2021-10-24 11:47:28.000000','2021-10-24 11:47:28.000000','DRAFF'),(39,31,'Phan Hoang',1000000,NULL,1,'ADMIN',NULL,NULL,'2021-10-24 13:23:30.000000','2021-10-24 13:23:30.000000','ACTIVE');
/*!40000 ALTER TABLE `billling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `list_course_id` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'[]','2021-09-23 15:14:37','2021-09-23 15:14:37','ACTIVE'),(2,2,'[]','2021-09-23 15:27:26','2021-09-23 15:27:26','ACTIVE'),(12,40,'[]','2021-09-27 13:13:37','2021-09-27 13:13:37','ACTIVE'),(14,3,'[3]','2021-09-28 16:50:49','2021-09-28 16:50:49','ACTIVE'),(20,12,'[]','2021-09-30 14:36:47','2021-09-30 14:36:47','ACTIVE'),(21,11,'[1]','2021-09-30 15:52:26','2021-09-30 15:52:26','ACTIVE'),(22,21,'[]','2021-10-04 10:09:41','2021-10-04 10:09:41','ACTIVE'),(23,41,'[]','2021-10-13 02:35:43','2021-10-13 02:35:43','ACTIVE'),(24,42,'[]','2021-10-22 03:04:32','2021-10-22 03:04:32','ACTIVE'),(25,44,'[2]','2021-10-23 09:13:51','2021-10-23 09:13:51','ACTIVE'),(26,45,'[]','2021-10-23 16:00:12','2021-10-23 16:00:12','ACTIVE');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) DEFAULT NULL,
  `lesson_quantity` int(11) DEFAULT NULL,
  `course_description` text,
  `course_avatar` varchar(255) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `journey` varchar(45) DEFAULT NULL,
  `order_in_journey` int(11) DEFAULT NULL,
  `introduction` text,
  `original_price` bigint(20) DEFAULT NULL,
  `promotion_price` bigint(20) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'JAVA CORE',12,'Là khóa học cơ bản giúp mọi người làm quen với ngôn ngữ Java và phương pháp hướng đối tượng trong lập trình','https://imgur.com/GhYtLVG.png','JAVA','JAVA BACKEND',1,'<p><span style=\"font-size: 12pt;\">Kh&oacute;a học&nbsp;lập tr&igrave;nh&nbsp;Java cơ bản. Mỗi b&agrave;i học l&agrave; một v&iacute; dụ cụ thể. Học vi&ecirc;n c&oacute; to&agrave;n bộ m&atilde; nguồn v&agrave; được hướng dẫn từng bước để thực hiện. Học vi&ecirc;n đăng k&yacute; học được xem học liệu vĩnh viễn. Kh&oacute;a học li&ecirc;n tục được cập nhật b&agrave;i giảng mới, c&ocirc;ng nghệ mới khi cần thiết.</span></p>\n<h2>7 điểm nổi bật của kho&aacute; học:</h2>\n<ol>\n<li><span style=\"font-size: 12pt;\">Video chất lượng cao, m&atilde; nguồn minh hoạ được kiểm thử c&oacute; trắc nghiệm để sinh vi&ecirc;n tự kiểm tra kiến thức. Xem vĩnh viễn !</span></li>\n<li><span style=\"font-size: 12pt;\">Nhiều video bonus n&acirc;ng cao, li&ecirc;n tục cập nhất h&agrave;ng th&aacute;ng. (kho&aacute; học kh&aacute;c được l&agrave;m từ 2015 !)</span></li>\n<li><span style=\"font-size: 12pt;\">Cập nhật t&iacute;nh năng mới nhất của Java 8, 9, 10: Lambda Expression, JShell, Interface API (c&aacute;c kho&aacute; học Java tr&ecirc;n mạng chỉ cập nhật đến Java 6 hoặc 7)</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy lập tr&igrave;nh hướng đối tượng kỹ v&agrave; dễ hiểu, nhiều v&iacute; dụ minh hoạ</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy cả Design Pattern. (C&aacute;c kho&aacute; học kh&aacute;c kh&ocirc;ng dạy !)</span></li>\n<li><span style=\"font-size: 12pt;\">C&oacute; video hướng dẫn lập tr&igrave;nh giao diện Java FX (form, vẽ đồ thị). Rất cần cho sinh vi&ecirc;n l&agrave;m đồ &aacute;n tốt nghiệp</span></li>\n<li><span style=\"font-size: 12pt;\">Hướng dẫn lập tr&igrave;nh kết nối cơ sở dữ liệu MySQL, JDBC. Rất cần để học l&ecirc;n lập tr&igrave;nh Java Spring</span></li>\n</ol>\n<h2>Giảng vi&ecirc;n:</h2>\n<p><span style=\"font-size: 12pt;\">Nguyễn Van A: 11 năm ph&aacute;t triển phần mềm, hiện đang tự ph&aacute;t triển k&ecirc;nh youtube chia sẻ kiến thức lập tr&igrave;nh với hơn 700 videos (giảng bằng tiếng Anh v&agrave; tiếng Việt).</span></p>\n<p><span style=\"font-size: 12pt;\">Lớp Java được đ&agrave;o tạo dưới 2 m&ocirc; h&igrave;nh : Lớp học trực tuyến đăng k&yacute; ngay xem video b&agrave;i giảng v&agrave; lớp học ph&ograve;ng lab học trực tiếp tại trung t&acirc;m. ( Lưu &yacute; : Nội dung lớp học onlab học thực h&agrave;nh, v&iacute; dụ trực quan v&agrave; vận dụng thực tế. Đảm bảo kiến thức nền tảng sau mỗi kh&oacute;a học).</span></p>\n<h2>Phương ph&aacute;p học:</h2>\n<p><span style=\"font-size: 12pt;\">Học vi&ecirc;n c&oacute; t&agrave;i khoản ri&ecirc;ng để truy cập v&agrave;o hệ thống đ&agrave;o tạo trực tuyến. Kh&oacute;a học c&oacute; nhiều section, mỗi section c&oacute; nhiều lesson l&agrave; một video khoảng 7-15 ph&uacute;t hướng dẫn thực h&agrave;nh. Sau mỗi video l&agrave; 4-5 c&acirc;u hỏi quiz. C&aacute;c lesson về sau thường l&agrave; b&agrave;i tập lập tr&igrave;nh: ho&agrave;n thiện một ứng dụng cụ thể, hoặc fix lỗi c&aacute;c đoạn code cụ thể để r&egrave;n luyện tư duy đọc m&atilde; nguồn của học vi&ecirc;n.</span></p>\n<p>&nbsp;</p>\n<pre class=\"language-javascript\"><code>new ImageData(width, height);\nnew ImageData(width, height, settings);\nnew ImageData(dataArray, width);\nnew ImageData(dataArray, width, height);\nnew ImageData(dataArray, width, height, settings);</code></pre>',1000000,800000,'2021-07-18 15:25:55','2021-10-01 17:25:51','ACTIVE'),(2,'DATABASE',10,'Khóa học về hệ quản trị cơ sở dữ liệu MySQL , kết nối giữa Java Backend với Database ','https://imgur.com/GhYtLVG.png','JAVA','JAVA BACKEND',2,'<p><span style=\"font-size: 12pt;\">Kh&oacute;a học&nbsp;lập tr&igrave;nh&nbsp;Java cơ bản. Mỗi b&agrave;i học l&agrave; một v&iacute; dụ cụ thể. Học vi&ecirc;n c&oacute; to&agrave;n bộ m&atilde; nguồn v&agrave; được hướng dẫn từng bước để thực hiện. Học vi&ecirc;n đăng k&yacute; học được xem học liệu vĩnh viễn. Kh&oacute;a học li&ecirc;n tục được cập nhật b&agrave;i giảng mới, c&ocirc;ng nghệ mới khi cần thiết.</span></p>\n<h2>7 điểm nổi bật của kho&aacute; học:</h2>\n<ol>\n<li><span style=\"font-size: 12pt;\">Video chất lượng cao, m&atilde; nguồn minh hoạ được kiểm thử c&oacute; trắc nghiệm để sinh vi&ecirc;n tự kiểm tra kiến thức. Xem vĩnh viễn !</span></li>\n<li><span style=\"font-size: 12pt;\">Nhiều video bonus n&acirc;ng cao, li&ecirc;n tục cập nhất h&agrave;ng th&aacute;ng. (kho&aacute; học kh&aacute;c được l&agrave;m từ 2015 !)</span></li>\n<li><span style=\"font-size: 12pt;\">Cập nhật t&iacute;nh năng mới nhất của Java 8, 9, 10: Lambda Expression, JShell, Interface API (c&aacute;c kho&aacute; học Java tr&ecirc;n mạng chỉ cập nhật đến Java 6 hoặc 7)</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy lập tr&igrave;nh hướng đối tượng kỹ v&agrave; dễ hiểu, nhiều v&iacute; dụ minh hoạ</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy cả Design Pattern. (C&aacute;c kho&aacute; học kh&aacute;c kh&ocirc;ng dạy !)</span></li>\n<li><span style=\"font-size: 12pt;\">C&oacute; video hướng dẫn lập tr&igrave;nh giao diện Java FX (form, vẽ đồ thị). Rất cần cho sinh vi&ecirc;n l&agrave;m đồ &aacute;n tốt nghiệp</span></li>\n<li><span style=\"font-size: 12pt;\">Hướng dẫn lập tr&igrave;nh kết nối cơ sở dữ liệu MySQL, JDBC. Rất cần để học l&ecirc;n lập tr&igrave;nh Java Spring</span></li>\n</ol>\n<h2>Giảng vi&ecirc;n:</h2>\n<p><span style=\"font-size: 12pt;\">Nguyễn Van A: 11 năm ph&aacute;t triển phần mềm, hiện đang tự ph&aacute;t triển k&ecirc;nh youtube chia sẻ kiến thức lập tr&igrave;nh với hơn 700 videos (giảng bằng tiếng Anh v&agrave; tiếng Việt).</span></p>\n<p><span style=\"font-size: 12pt;\">Lớp Java được đ&agrave;o tạo dưới 2 m&ocirc; h&igrave;nh : Lớp học trực tuyến đăng k&yacute; ngay xem video b&agrave;i giảng v&agrave; lớp học ph&ograve;ng lab học trực tiếp tại trung t&acirc;m. ( Lưu &yacute; : Nội dung lớp học onlab học thực h&agrave;nh, v&iacute; dụ trực quan v&agrave; vận dụng thực tế. Đảm bảo kiến thức nền tảng sau mỗi kh&oacute;a học).</span></p>\n<h2>Phương ph&aacute;p học:</h2>\n<p><span style=\"font-size: 12pt;\">Học vi&ecirc;n c&oacute; t&agrave;i khoản ri&ecirc;ng để truy cập v&agrave;o hệ thống đ&agrave;o tạo trực tuyến. Kh&oacute;a học c&oacute; nhiều section, mỗi section c&oacute; nhiều lesson l&agrave; một video khoảng 7-15 ph&uacute;t hướng dẫn thực h&agrave;nh. Sau mỗi video l&agrave; 4-5 c&acirc;u hỏi quiz. C&aacute;c lesson về sau thường l&agrave; b&agrave;i tập lập tr&igrave;nh: ho&agrave;n thiện một ứng dụng cụ thể, hoặc fix lỗi c&aacute;c đoạn code cụ thể để r&egrave;n luyện tư duy đọc m&atilde; nguồn của học vi&ecirc;n.</span></p>',1000000,800000,'2021-05-29 03:00:48','2021-09-30 18:46:36','ACTIVE'),(3,'SPRING BACKEND',16,'Sử dụng Spring Boot trong Java Backend','https://imgur.com/GhYtLVG.png','JAVA','JAVA BACKEND',3,'<p><span style=\"font-size: 12pt;\">Kh&oacute;a học&nbsp;lập tr&igrave;nh&nbsp;Java cơ bản. Mỗi b&agrave;i học l&agrave; một v&iacute; dụ cụ thể. Học vi&ecirc;n c&oacute; to&agrave;n bộ m&atilde; nguồn v&agrave; được hướng dẫn từng bước để thực hiện. Học vi&ecirc;n đăng k&yacute; học được xem học liệu vĩnh viễn. Kh&oacute;a học li&ecirc;n tục được cập nhật b&agrave;i giảng mới, c&ocirc;ng nghệ mới khi cần thiết.</span></p>\n<h2>7 điểm nổi bật của kho&aacute; học:</h2>\n<ol>\n<li><span style=\"font-size: 12pt;\">Video chất lượng cao, m&atilde; nguồn minh hoạ được kiểm thử c&oacute; trắc nghiệm để sinh vi&ecirc;n tự kiểm tra kiến thức. Xem vĩnh viễn !</span></li>\n<li><span style=\"font-size: 12pt;\">Nhiều video bonus n&acirc;ng cao, li&ecirc;n tục cập nhất h&agrave;ng th&aacute;ng. (kho&aacute; học kh&aacute;c được l&agrave;m từ 2015 !)</span></li>\n<li><span style=\"font-size: 12pt;\">Cập nhật t&iacute;nh năng mới nhất của Java 8, 9, 10: Lambda Expression, JShell, Interface API (c&aacute;c kho&aacute; học Java tr&ecirc;n mạng chỉ cập nhật đến Java 6 hoặc 7)</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy lập tr&igrave;nh hướng đối tượng kỹ v&agrave; dễ hiểu, nhiều v&iacute; dụ minh hoạ</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy cả Design Pattern. (C&aacute;c kho&aacute; học kh&aacute;c kh&ocirc;ng dạy !)</span></li>\n<li><span style=\"font-size: 12pt;\">C&oacute; video hướng dẫn lập tr&igrave;nh giao diện Java FX (form, vẽ đồ thị). Rất cần cho sinh vi&ecirc;n l&agrave;m đồ &aacute;n tốt nghiệp</span></li>\n<li><span style=\"font-size: 12pt;\">Hướng dẫn lập tr&igrave;nh kết nối cơ sở dữ liệu MySQL, JDBC. Rất cần để học l&ecirc;n lập tr&igrave;nh Java Spring</span></li>\n</ol>\n<h2>Giảng vi&ecirc;n:</h2>\n<p><span style=\"font-size: 12pt;\">Nguyễn Van A: 11 năm ph&aacute;t triển phần mềm, hiện đang tự ph&aacute;t triển k&ecirc;nh youtube chia sẻ kiến thức lập tr&igrave;nh với hơn 700 videos (giảng bằng tiếng Anh v&agrave; tiếng Việt).</span></p>\n<p><span style=\"font-size: 12pt;\">Lớp Java được đ&agrave;o tạo dưới 2 m&ocirc; h&igrave;nh : Lớp học trực tuyến đăng k&yacute; ngay xem video b&agrave;i giảng v&agrave; lớp học ph&ograve;ng lab học trực tiếp tại trung t&acirc;m. ( Lưu &yacute; : Nội dung lớp học onlab học thực h&agrave;nh, v&iacute; dụ trực quan v&agrave; vận dụng thực tế. Đảm bảo kiến thức nền tảng sau mỗi kh&oacute;a học).</span></p>\n<h2>Phương ph&aacute;p học:</h2>\n<p><span style=\"font-size: 12pt;\">Học vi&ecirc;n c&oacute; t&agrave;i khoản ri&ecirc;ng để truy cập v&agrave;o hệ thống đ&agrave;o tạo trực tuyến. Kh&oacute;a học c&oacute; nhiều section, mỗi section c&oacute; nhiều lesson l&agrave; một video khoảng 7-15 ph&uacute;t hướng dẫn thực h&agrave;nh. Sau mỗi video l&agrave; 4-5 c&acirc;u hỏi quiz. C&aacute;c lesson về sau thường l&agrave; b&agrave;i tập lập tr&igrave;nh: ho&agrave;n thiện một ứng dụng cụ thể, hoặc fix lỗi c&aacute;c đoạn code cụ thể để r&egrave;n luyện tư duy đọc m&atilde; nguồn của học vi&ecirc;n.</span></p>',3000000,2000000,'2021-05-29 03:12:24','2021-09-30 18:46:03','ACTIVE'),(5,'vanht',3,'hfoias fsoif','https://imgur.com/GhYtLVG.png','abc','3',3,NULL,1800000,1500000,'2021-07-14 12:52:02','2021-07-15 16:01:04','DELETED'),(6,'vanht-test',1,'test','https://cdn.plusplus.vn/lms/images/20210720/214522167_Chrysanthemum.jpg','javascript','1',1,'test update',2000000,2000000,'2021-07-20 14:45:49','2021-09-07 07:55:38','DELETED'),(7,'Test',10,'Test chức năng addCourse','https://cdn.plusplus.vn/lms/images/20210724/170041198_arindam-saha-Pw.jpg','JAVA','FULLSTACK',1,'test update',2000000,2000000,'2021-07-24 10:00:59','2021-09-07 07:53:41','DELETED'),(8,'FRONTEND CƠ BẢN',12,'Mô tả: Khóa học cung cấp các kiến thức cơ bản để hình thành nên một website: HTML, CSS, JavaScript cơ bản.\nĐối tượng: Người chưa biết gì có nhu cầu tìm hiểu về Frontend\n','https://imgur.com/GhYtLVG.png','HTML','Fullstack',4,'<p><span style=\"font-size: 12pt;\">Kh&oacute;a học&nbsp;lập tr&igrave;nh&nbsp;Java cơ bản. Mỗi b&agrave;i học l&agrave; một v&iacute; dụ cụ thể. Học vi&ecirc;n c&oacute; to&agrave;n bộ m&atilde; nguồn v&agrave; được hướng dẫn từng bước để thực hiện. Học vi&ecirc;n đăng k&yacute; học được xem học liệu vĩnh viễn. Kh&oacute;a học li&ecirc;n tục được cập nhật b&agrave;i giảng mới, c&ocirc;ng nghệ mới khi cần thiết.</span></p>\n<h2>7 điểm nổi bật của kho&aacute; học:</h2>\n<ol>\n<li><span style=\"font-size: 12pt;\">Video chất lượng cao, m&atilde; nguồn minh hoạ được kiểm thử c&oacute; trắc nghiệm để sinh vi&ecirc;n tự kiểm tra kiến thức. Xem vĩnh viễn !</span></li>\n<li><span style=\"font-size: 12pt;\">Nhiều video bonus n&acirc;ng cao, li&ecirc;n tục cập nhất h&agrave;ng th&aacute;ng. (kho&aacute; học kh&aacute;c được l&agrave;m từ 2015 !)</span></li>\n<li><span style=\"font-size: 12pt;\">Cập nhật t&iacute;nh năng mới nhất của Java 8, 9, 10: Lambda Expression, JShell, Interface API (c&aacute;c kho&aacute; học Java tr&ecirc;n mạng chỉ cập nhật đến Java 6 hoặc 7)</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy lập tr&igrave;nh hướng đối tượng kỹ v&agrave; dễ hiểu, nhiều v&iacute; dụ minh hoạ</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy cả Design Pattern. (C&aacute;c kho&aacute; học kh&aacute;c kh&ocirc;ng dạy !)</span></li>\n<li><span style=\"font-size: 12pt;\">C&oacute; video hướng dẫn lập tr&igrave;nh giao diện Java FX (form, vẽ đồ thị). Rất cần cho sinh vi&ecirc;n l&agrave;m đồ &aacute;n tốt nghiệp</span></li>\n<li><span style=\"font-size: 12pt;\">Hướng dẫn lập tr&igrave;nh kết nối cơ sở dữ liệu MySQL, JDBC. Rất cần để học l&ecirc;n lập tr&igrave;nh Java Spring</span></li>\n</ol>\n<h2>Giảng vi&ecirc;n:</h2>\n<p><span style=\"font-size: 12pt;\">Nguyễn Van A: 11 năm ph&aacute;t triển phần mềm, hiện đang tự ph&aacute;t triển k&ecirc;nh youtube chia sẻ kiến thức lập tr&igrave;nh với hơn 700 videos (giảng bằng tiếng Anh v&agrave; tiếng Việt).</span></p>\n<p><span style=\"font-size: 12pt;\">Lớp Java được đ&agrave;o tạo dưới 2 m&ocirc; h&igrave;nh : Lớp học trực tuyến đăng k&yacute; ngay xem video b&agrave;i giảng v&agrave; lớp học ph&ograve;ng lab học trực tiếp tại trung t&acirc;m. ( Lưu &yacute; : Nội dung lớp học onlab học thực h&agrave;nh, v&iacute; dụ trực quan v&agrave; vận dụng thực tế. Đảm bảo kiến thức nền tảng sau mỗi kh&oacute;a học).</span></p>\n<h2>Phương ph&aacute;p học:</h2>\n<p><span style=\"font-size: 12pt;\">Học vi&ecirc;n c&oacute; t&agrave;i khoản ri&ecirc;ng để truy cập v&agrave;o hệ thống đ&agrave;o tạo trực tuyến. Kh&oacute;a học c&oacute; nhiều section, mỗi section c&oacute; nhiều lesson l&agrave; một video khoảng 7-15 ph&uacute;t hướng dẫn thực h&agrave;nh. Sau mỗi video l&agrave; 4-5 c&acirc;u hỏi quiz. C&aacute;c lesson về sau thường l&agrave; b&agrave;i tập lập tr&igrave;nh: ho&agrave;n thiện một ứng dụng cụ thể, hoặc fix lỗi c&aacute;c đoạn code cụ thể để r&egrave;n luyện tư duy đọc m&atilde; nguồn của học vi&ecirc;n.</span></p>',2000000,1800000,'2021-07-26 15:04:03','2021-09-30 18:45:46','ACTIVE'),(9,'vanht-KHÔNG XÓA KHÓA HỌC NÀY',11,'test','https://imgur.com/GhYtLVG.png','Test','1',1,'<ol>\n<li>test vansda</li>\n<li>s&agrave;kjsa</li>\n</ol>\n<p>faslafdlafskafs</p>\n<p>faslksfafd</p>',2000000,1800000,'2021-07-27 15:59:17','2021-09-14 10:07:18','DRAFF'),(10,'ffgnhg 123',1,'gfdg','fgdfgd','fgd','1',1,'<p>dsasfsd</p>',500000,100000,'2021-09-14 09:29:59','2021-09-18 04:51:41','DRAFF'),(11,'JVC',12,'test','string','Java','string',1,'<p><span style=\"font-size: 12pt;\">Kh&oacute;a học&nbsp;lập tr&igrave;nh&nbsp;Java cơ bản. Mỗi b&agrave;i học l&agrave; một v&iacute; dụ cụ thể. Học vi&ecirc;n c&oacute; to&agrave;n bộ m&atilde; nguồn v&agrave; được hướng dẫn từng bước để thực hiện. Học vi&ecirc;n đăng k&yacute; học được xem học liệu vĩnh viễn. Kh&oacute;a học li&ecirc;n tục được cập nhật b&agrave;i giảng mới, c&ocirc;ng nghệ mới khi cần thiết.</span></p>\n<h2>7 điểm nổi bật của kho&aacute; học:</h2>\n<ol>\n<li><span style=\"font-size: 12pt;\">Video chất lượng cao, m&atilde; nguồn minh hoạ được kiểm thử c&oacute; trắc nghiệm để sinh vi&ecirc;n tự kiểm tra kiến thức. Xem vĩnh viễn !</span></li>\n<li><span style=\"font-size: 12pt;\">Nhiều video bonus n&acirc;ng cao, li&ecirc;n tục cập nhất h&agrave;ng th&aacute;ng. (kho&aacute; học kh&aacute;c được l&agrave;m từ 2015 !)</span></li>\n<li><span style=\"font-size: 12pt;\">Cập nhật t&iacute;nh năng mới nhất của Java 8, 9, 10: Lambda Expression, JShell, Interface API (c&aacute;c kho&aacute; học Java tr&ecirc;n mạng chỉ cập nhật đến Java 6 hoặc 7)</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy lập tr&igrave;nh hướng đối tượng kỹ v&agrave; dễ hiểu, nhiều v&iacute; dụ minh hoạ</span></li>\n<li><span style=\"font-size: 12pt;\">Dạy cả Design Pattern. (C&aacute;c kho&aacute; học kh&aacute;c kh&ocirc;ng dạy !)</span></li>\n<li><span style=\"font-size: 12pt;\">C&oacute; video hướng dẫn lập tr&igrave;nh giao diện Java FX (form, vẽ đồ thị). Rất cần cho sinh vi&ecirc;n l&agrave;m đồ &aacute;n tốt nghiệp</span></li>\n<li><span style=\"font-size: 12pt;\">Hướng dẫn lập tr&igrave;nh kết nối cơ sở dữ liệu MySQL, JDBC. Rất cần để học l&ecirc;n lập tr&igrave;nh Java Spring</span></li>\n</ol>\n<h2>Giảng vi&ecirc;n:</h2>\n<p><span style=\"font-size: 12pt;\">Nguyễn Van A: 11 năm ph&aacute;t triển phần mềm, hiện đang tự ph&aacute;t triển k&ecirc;nh youtube chia sẻ kiến thức lập tr&igrave;nh với hơn 700 videos (giảng bằng tiếng Anh v&agrave; tiếng Việt).</span></p>\n<p><span style=\"font-size: 12pt;\">Lớp Java được đ&agrave;o tạo dưới 2 m&ocirc; h&igrave;nh : Lớp học trực tuyến đăng k&yacute; ngay xem video b&agrave;i giảng v&agrave; lớp học ph&ograve;ng lab học trực tiếp tại trung t&acirc;m. ( Lưu &yacute; : Nội dung lớp học onlab học thực h&agrave;nh, v&iacute; dụ trực quan v&agrave; vận dụng thực tế. Đảm bảo kiến thức nền tảng sau mỗi kh&oacute;a học).</span></p>\n<h2>Phương ph&aacute;p học:</h2>\n<p><span style=\"font-size: 12pt;\">Học vi&ecirc;n c&oacute; t&agrave;i khoản ri&ecirc;ng để truy cập v&agrave;o hệ thống đ&agrave;o tạo trực tuyến. Kh&oacute;a học c&oacute; nhiều section, mỗi section c&oacute; nhiều lesson l&agrave; một video khoảng 7-15 ph&uacute;t hướng dẫn thực h&agrave;nh. Sau mỗi video l&agrave; 4-5 c&acirc;u hỏi quiz. C&aacute;c lesson về sau thường l&agrave; b&agrave;i tập lập tr&igrave;nh: ho&agrave;n thiện một ứng dụng cụ thể, hoặc fix lỗi c&aacute;c đoạn code cụ thể để r&egrave;n luyện tư duy đọc m&atilde; nguồn của học vi&ecirc;n.</span></p>',2000000,0,'2021-09-18 03:57:47','2021-09-30 18:46:21','ACTIVE'),(12,'ẻ',2,'ẻw',NULL,'re','1',1,'<p>edsf</p>',123,2,'2021-09-25 16:21:37','2021-09-25 16:21:37','DELETED');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_exam`
--

DROP TABLE IF EXISTS `course_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `comment` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_exam`
--

LOCK TABLES `course_exam` WRITE;
/*!40000 ALTER TABLE `course_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_price`
--

DROP TABLE IF EXISTS `course_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_price` bigint(20) DEFAULT NULL,
  `list_course_id` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_price`
--

LOCK TABLES `course_price` WRITE;
/*!40000 ALTER TABLE `course_price` DISABLE KEYS */;
INSERT INTO `course_price` VALUES (1,'JVC',1,1000000,'2','2021-09-04 09:09:29','2021-09-04 09:09:29');
/*!40000 ALTER TABLE `course_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(45) DEFAULT NULL,
  `exam_type` varchar(45) DEFAULT NULL,
  `order_in_course` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'First Exam ','INPUT',1,1,'2021-05-28 07:52:31','2021-07-29 16:02:41','ACTIVE'),(2,'Final Exam','OUTPUT',1,1,'2021-05-28 07:52:46','2021-07-29 16:02:31','ACTIVE'),(3,'test bai thi','MID_TEAM',NULL,9,'2021-07-27 16:00:48','2021-07-27 16:04:05','DRAFF'),(4,'fsafs','INPUT',NULL,9,'2021-07-30 17:31:29','2021-07-30 17:31:29','DELETED'),(5,'hgjh','INPUT',NULL,9,'2021-07-30 17:47:44','2021-07-30 17:47:44','DRAFF'),(6,'hghg','INPUT',NULL,9,'2021-07-30 17:50:39','2021-07-30 17:50:39','DRAFF'),(7,'ten bai thi','MID_TEAM',NULL,9,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `option_a` text,
  `option_b` text,
  `option_c` text,
  `option_d` text,
  `answer` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `order_in_exam` int(11) DEFAULT NULL,
  `exam_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
INSERT INTO `exam_question` VALUES (1,'Đáp án nào không đúng về lập trình viên Java?','Lập trình viên Java Backend','Lập trình viên Java fullstack','Lập trình viên Android','Lập trình viên Frontend','D','multiple-choice',1,1,'2021-05-29 08:58:43','2021-05-29 08:58:43','ACTIVE'),(2,'Đâu không phải là 1 ngôn ngữ lập trình hướng đối tượng?','Java','Python','C#','C','D','multiple-choice',2,1,'2021-05-29 08:59:55','2021-05-29 08:59:55','ACTIVE'),(3,'Tên gọi đầu tiên của Java là gì?','Java','Cafe','Oak','James golings','C','MULTI_CHOICE_4',3,1,'2021-05-29 09:02:26','2021-07-29 18:40:13','ACTIVE'),(4,'Java chạy trên nền tảng hệ điều hành nào sau đây?','MacOS','Tất cả đáp án trên','Ubuntu','Windows','B','multiple-choice',4,1,'2021-05-29 09:02:26','2021-05-29 09:02:26','ACTIVE'),(5,'JavaScript là 1 phần trong Java?','Đúng','Sai',NULL,NULL,'B','multiple-choice',5,1,'2021-05-29 09:02:26','2021-05-29 09:02:26','ACTIVE'),(6,'Cách khai báo biến nào dưới đây KHÔNG chính xác?','int a, b;','a, b: int;','int a; int b;','int a, b=0;','B','multiple-choice',1,2,'2021-05-29 09:06:23','2021-05-29 09:06:23','ACTIVE'),(7,'Biến local được lưu ở?','Stack','Heap','Bộ nhớ static',NULL,'A','multiple-choice',2,2,'2021-05-29 09:06:23','2021-05-29 09:06:23','ACTIVE'),(8,'text',NULL,NULL,NULL,NULL,'12343','TEXT',NULL,5,'2021-07-30 17:47:44','2021-07-30 17:47:44','DRAFF'),(9,'kjg','jgdff','hgfh','hgf','hgf','fds','MULTI_CHOICE_4',NULL,5,'2021-07-30 17:47:44','2021-07-30 17:47:44','DRAFF'),(10,'1212','df','gfj','jkhkj','jh','kjh','RADIO',NULL,5,'2021-07-30 17:47:44','2021-07-30 17:47:44','DRAFF'),(11,'hgfhf','hgf','jhj',NULL,NULL,'jhg','MULTI_CHOICE_2',0,6,'2021-07-30 17:50:39','2021-07-30 17:50:39','DRAFF'),(12,'grfdghnjkhgf','ghjk','hgjg','hgj','jhhhh','jhgfjhfghg','RADIO',1,6,'2021-07-30 17:50:39','2021-07-30 17:50:39','DRAFF'),(13,'radio','1','2','3','4','A','RADIO',0,7,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF'),(14,'choice 4','4','556456','fsdf','fds','B','MULTI_CHOICE_4',3,7,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF'),(15,'choice 2','1','2',NULL,NULL,'a','MULTI_CHOICE_2',1,7,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF'),(16,'choice 3','1','2','2',NULL,'B','MULTI_CHOICE_3',4,7,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF'),(17,'jlkjhgfdsadgfbn','fdg','gfdg','dsa','dfs','A','RADIO',5,7,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF'),(18,'Text',NULL,NULL,NULL,NULL,'text','TEXT',2,7,'2021-07-30 17:59:28','2021-07-30 17:59:28','DRAFF');
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_name` varchar(255) DEFAULT NULL,
  `lesson_description` varchar(255) DEFAULT NULL,
  `lesson_avatar` varchar(255) DEFAULT NULL,
  `order_in_course` int(11) DEFAULT NULL,
  `lesson_type` varchar(45) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'Giới thiệu Java cơ bản','Giới thiệu chung về ngôn ngữ Java','https://imgur.com/GhYtLVG',1,'KNOWLEDGE',1,'2021-05-28 08:14:12','2021-05-28 08:14:12','ACTIVE'),(2,'Biến, toán tử, kiểu dữ liệu trong Java','Biến, toán tử, kiểu dữ liệu trong Java','https://imgur.com/GhYtLVG',2,'KNOWLEDGE',1,'2021-05-28 08:15:32','2021-05-28 08:15:32','ACTIVE'),(3,'Cấu trúc điều kiện, vòng lặp trong Java','Biến, toán tử, kiểu dữ liệu trong Java','https://imgur.com/GhYtLVG',3,'KNOWLEDGE',1,'2021-05-28 08:16:29','2021-05-28 08:16:29','ACTIVE'),(4,'Array, String, Enum trong Java','Array, String, Enum trong Java','https://imgur.com/GhYtLVG',4,'KNOWLEDGE',1,'2021-05-29 02:53:34','2021-05-29 02:53:34','ACTIVE'),(6,'OOP: Tính kế thừa và đa hình','Giới thiệu và cài đặt môi trường','https://imgur.com/GhYtLVG',6,'KNOWLEDGE',1,'2021-05-29 03:04:56','2021-05-29 03:04:56','ACTIVE'),(7,'OOP: Tính trừu tượng','Đọc dữ liệu với SELECT','https://imgur.com/GhYtLVG',7,'KNOWLEDGE',1,'2021-05-29 03:05:54','2021-05-29 03:05:54','ACTIVE'),(8,'Collection','SQL Aggregate Function','https://imgur.com/GhYtLVG',8,'KNOWLEDGE',1,'2021-05-29 03:08:07','2021-05-29 03:08:07','ACTIVE'),(9,'Exception','Thay đổi dữ liệu INSERT/UPDATE/DELETE','https://imgur.com/GhYtLVG',9,'KNOWLEDGE',1,'2021-05-29 03:08:55','2021-05-29 03:08:55','ACTIVE'),(10,'Đọc ghi file','Tạo Database và tạo bảng','https://imgur.com/GhYtLVG',10,'KNOWLEDGE',1,'2021-05-29 03:09:50','2021-05-29 03:09:50','ACTIVE'),(11,'Layout với Java Swing','Java nâng cao: Thread trong Java','https://imgur.com/GhYtLVG',11,'KNOWLEDGE',1,'2021-05-29 03:44:51','2021-05-29 03:44:51','ACTIVE'),(12,'Java nâng cao: Design Pattern','Java nâng cao: Design Pattern','https://imgur.com/GhYtLVG',2,'KNOWLEDGE',2,'2021-05-29 03:44:51','2021-05-29 03:44:51','ACTIVE'),(13,'Giới thiệu Spring Boot, Maven','Giới thiệu Spring Boot, Maven','https://imgur.com/GhYtLVG',3,'KNOWLEDGE',2,'2021-05-29 03:44:51','2021-05-29 03:44:51','ACTIVE'),(14,'RESTful Web Services','RESTful Web Services','https://imgur.com/GhYtLVG',4,'KNOWLEDGE',2,'2021-05-29 03:44:51','2021-05-29 03:44:51','ACTIVE'),(15,'RESTful Web Services(tiếp)','RESTful Web Services(tiếp)','https://imgur.com/GhYtLVG',5,'KNOWLEDGE',2,'2021-05-29 03:44:51','2021-05-29 03:44:51','ACTIVE'),(21,'Layout với Java Swing','Tạo giao diện Desktop với Java Swing','https://imgur.com/GhYtLVG',11,'KNOWLEDGE',2,'2021-06-30 01:33:05','2021-06-30 01:33:05','ACTIVE'),(22,'test1','testsss',NULL,NULL,'KNOWLEDGE',6,'2021-07-20 16:41:45','2021-07-24 01:04:10','DRAFF'),(23,'Bài học2222','aaaaaaa','https://cdn.plusplus.vn/lms/images/20210721/084226157_208552054_30164.png',NULL,'PRACTICE',6,'2021-07-21 01:42:30','2021-07-21 01:42:30','DRAFF'),(24,'test enum','abcsahshdahsd',NULL,NULL,'KNOWLEDGE',1,'2021-07-30 03:07:21','2021-07-30 03:07:21','DRAFF'),(25,'test 2','test upload image','https://cdn.plusplus.vn/lms/images/20210730/101142479_198834155_32712.jpg',NULL,'KNOWLEDGE',1,'2021-07-30 03:12:34','2021-07-30 03:12:34','DRAFF'),(26,'Kiemnx','Test','http://avatar.vn',1,'KNOWLEDGE',1,'2021-07-30 14:13:45','2021-07-30 14:13:45','DRAFF'),(27,'Kiemnx2','Test','http://avatar.vn',1,'KNOWLEDGE',1,'2021-07-30 14:23:15','2021-07-30 14:23:15',NULL),(28,'Kiemnx3','Test','http://avatar.vn',1,'KNOWLEDGE',1,'2021-07-30 14:24:50','2021-07-30 14:24:50','DRAFF'),(29,'hoangtest','abcxyasjdhsakhdkjsadsad','https://cdn.plusplus.vn/lms/images/20210731/160448027_Spring-JPA.png',NULL,'KNOWLEDGE',9,'2021-07-31 09:04:50','2021-07-31 09:04:50','DRAFF');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(45) DEFAULT NULL,
  `material_url` text,
  `order_in_session` int(11) DEFAULT NULL,
  `material_type` varchar(45) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  `material_video_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Giới thiệu Java cơ bản1','https://cdn-dev.plusplus.vn/lms/Lesson_1_Threading.mp4',1,'VIDEO',1,'2021-05-28 08:22:11','2021-07-25 03:28:02','ACTIVE',NULL),(2,'Biến, toán tử, kiểu dữ liệu trong Java',NULL,1,'SLIDE',2,'2021-05-28 08:23:24','2021-05-28 08:23:24','ACTIVE',NULL),(3,'Cấu trúc điều kiện, vòng lặp trong Java',NULL,1,'SLIDE',3,'2021-05-28 08:24:07','2021-05-28 08:24:07','ACTIVE',NULL),(4,'Array, String, Enum trong Java',NULL,1,'SLIDE',4,'2021-05-29 03:26:39','2021-05-29 03:26:39','ACTIVE',NULL),(5,'OOP: Tính đóng gói',NULL,1,'SLIDE',5,'2021-05-29 03:26:39','2021-05-29 03:26:39','ACTIVE',NULL),(6,'OOP: Tính kế thừa và đa hình',NULL,1,'SLIDE',6,'2021-05-29 03:38:17','2021-05-29 03:38:17','ACTIVE',NULL),(7,'OOP: Tính trừu tượng',NULL,1,'SLIDE',7,'2021-05-29 03:38:17','2021-05-29 03:38:17','ACTIVE',NULL),(8,'Collection',NULL,1,'SLIDE',8,'2021-05-29 03:38:17','2021-05-29 03:38:17','ACTIVE',NULL),(9,'Exception',NULL,1,'SLIDE',9,'2021-05-29 03:38:17','2021-05-29 03:38:17','ACTIVE',NULL),(10,'Đọc ghi file',NULL,1,'SLIDE',10,'2021-05-29 03:38:17','2021-05-29 03:38:17','ACTIVE',NULL),(11,'Layout với Java Swing',NULL,1,'SLIDE',11,'2021-05-29 03:47:36','2021-05-29 03:47:36','ACTIVE',NULL),(16,'Học Online',NULL,NULL,'SLIDE',11,'2021-07-21 02:32:20','2021-10-06 01:59:07','ACTIVE',NULL),(17,'Học online',NULL,NULL,'SLIDE',13,'2021-10-06 02:34:28','2021-10-06 02:34:28','DELETED',NULL);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `avt_img` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `introduction` text,
  `video_url` text,
  `stars` int(11) DEFAULT NULL,
  `min` bigint(20) DEFAULT NULL,
  `max` bigint(20) DEFAULT NULL,
  `total_bookings` int(11) DEFAULT NULL,
  `reviews` text,
  `description` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (8,41,'Nguyen Huu Thanh','https://avatars.preply.com/i/logos/i/logos/avatar_3kv2r7qmtra.jpg?d=160x160&amp;f=jpeg','0657657666','hthanh@gmail.com','JAVA','Giáo Sư X','<p>✔️TEFL Qualified</p>\n<p>🤙 Fun and Customized Lessons For You</p>\n<p>💪🏻 Gain Confidence</p>\n<p>👩&zwj;🏫 Friendly Teacher</p>\n<p>💂🏻&zwj;♀&zwj; Expand Your Vocabulary</p>\n<p>&nbsp;</p>\n<p>Hi and welcome to my profile! During our lessons, I would be more than happy to help you achieve your learning goals and would provide you with all the necessary tools to progress in your own rhythm.</p>\n<p>I can assist you with all your aspects for your&nbsp;<a href=\"https://preply.com/en/online/english-tutors\">English learning</a>, for example: Reading, Speaking, Writing, Listening, Phrasal Verbs, Expressions, Proofreading. During a lesson, I more than happy to correct your errors and recommend more material for your improvement.</p>',NULL,5,100000,200000,NULL,'99','Creative and Enthusiastic English Teacher, Masters in Teaching English, 6 years experience.','2021-10-11 03:49:43','2021-10-21 17:45:25','ACTIVE'),(9,40,'Huu Thanh','https://avatars.preply.com/i/logos/i/logos/avatar_3kv2r7qmtra.jpg?d=160x160&amp;f=jpeg','0326764888','hthanh@gmail.com','Java','Kỹ sư phần mềm','<p>✔️TEFL Qualified</p>\n<p>🤙 Fun and Customized Lessons For You</p>\n<p>💪🏻 Gain Confidence</p>\n<p>👩&zwj;🏫 Friendly Teacher</p>\n<p>💂🏻&zwj;♀&zwj; Expand Your Vocabulary</p>\n<p>&nbsp;</p>\n<p>Hi and welcome to my profile! During our lessons, I would be more than happy to help you achieve your learning goals and would provide you with all necessary tools to progress in your own rhythm.</p>\n<p>I can assist you with all your aspects for your&nbsp;<a href=\"https://preply.com/en/online/english-tutors\">English learning</a>, for example: Reading, Speaking, Writing, Listening, Phrasal Verbs, Expressions, Proofreading. During a lesson, I more than happy to correct your errors and recommend more material for your improvement.</p>',NULL,4,50000,100000,2,'100','Certified tutor with 5 years of experience.\nHello! My name is Mariya and I\'m from Saint Petersburg, Russia. I have been teaching English for more than 4 years. I’m very fond of English and constantly perfecting and improving my skills.','2021-10-11 09:02:39','2021-10-22 13:31:13','ACTIVE');
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `order_items` text,
  `total_price` bigint(20) DEFAULT NULL,
  `promotion_price` bigint(20) DEFAULT NULL,
  `payments` text,
  `note` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (12,2,2,3,'[{\"courseId\":1,\"courseName\":\"JAVA CORE\",\"voucherId\":3,\"voucherCode\":\"testttttttt\",\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000},{\"courseId\":3,\"courseName\":\"string\",\"voucherId\":3,\"voucherCode\":\"testttttttt\",\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000}]',2000000,1600000,'BIDV','hihi','2021-09-27 14:56:50','2021-10-01 10:57:12',1,'DONE'),(13,1,1,3,'[{\"courseId\":2,\"courseName\":\"DATABASE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000}]',800000,800000,'Chuyển khoản',NULL,'2021-09-28 11:45:05','2021-09-28 11:45:05',NULL,'DELETED'),(14,1,1,5,'[{\"courseId\":1,\"courseName\":\"JAVA CORE\",\"voucherId\":2,\"voucherCode\":\"ABCD123\",\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":0},{\"courseId\":2,\"courseName\":\"DATABASE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":null}]',800000,720000,'Chuyển khoản',NULL,'2021-09-28 16:36:04','2021-09-28 16:36:04',NULL,'DELETED'),(21,40,12,3,'[{\"courseId\":8,\"courseName\":\"FRONTEND CƠ BẢN\",\"voucherId\":3,\"voucherCode\":\"testttttttt\",\"promotionPrice\":1800000,\"originalPrice\":2000000,\"temporaryPrice\":1620000}]',1620000,1620000,'Chuyển khoản','ok','2021-09-29 02:16:17','2021-09-30 10:42:10',3,'REJECTED'),(22,12,20,NULL,'[{\"courseId\":2,\"courseName\":\"DATABASE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":null}]',800000,800000,'Chuyển khoản',NULL,'2021-09-30 14:37:34','2021-09-30 14:37:34',NULL,'PENDING'),(23,1,1,5,'[{\"courseId\":8,\"courseName\":\"FRONTEND CƠ BẢN\",\"voucherId\":3,\"voucherCode\":\"testttttttt\",\"promotionPrice\":1800000,\"originalPrice\":2000000,\"temporaryPrice\":1620000}]',1620000,1458000,'Chuyển khoản','ok nhe','2021-10-01 17:18:21','2021-10-01 17:18:52',3,'DONE'),(24,1,1,NULL,'[{\"courseId\":2,\"courseName\":\"DATABASE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":null}]',800000,800000,'Chuyển khoản',NULL,'2021-10-01 17:19:09','2021-10-01 17:19:09',NULL,'REJECTED'),(25,1,1,NULL,'[{\"courseId\":3,\"courseName\":\"SPRING BACKEND\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":2000000,\"originalPrice\":3000000,\"temporaryPrice\":null}]',2000000,2000000,'Chuyển khoản',NULL,'2021-10-02 03:23:44','2021-10-02 03:23:44',NULL,'REJECTED'),(26,1,1,NULL,'[{\"courseId\":2,\"courseName\":\"DATABASE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000}]',800000,800000,'Chuyển khoản',NULL,'2021-10-02 03:29:56','2021-10-02 03:29:56',NULL,'PENDING'),(27,2,2,NULL,'[{\"courseId\":1,\"courseName\":\"JAVA CORE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000},{\"courseId\":2,\"courseName\":\"DATABASE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000}]',1600000,1600000,'Chuyển khoản',NULL,'2021-10-04 01:27:40','2021-10-04 01:27:40',NULL,'REJECTED'),(28,44,25,NULL,'[{\"courseId\":1,\"courseName\":\"JAVA CORE\",\"voucherId\":null,\"voucherCode\":null,\"promotionPrice\":800000,\"originalPrice\":1000000,\"temporaryPrice\":800000}]',800000,800000,'Chuyển khoản',NULL,'2021-10-23 09:14:17','2021-10-23 09:14:17',NULL,'PENDING');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_mentor`
--

DROP TABLE IF EXISTS `orders_mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `schedule` text,
  `total_student` int(11) DEFAULT NULL,
  `total_session` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `note` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_mentor`
--

LOCK TABLES `orders_mentor` WRITE;
/*!40000 ALTER TABLE `orders_mentor` DISABLE KEYS */;
INSERT INTO `orders_mentor` VALUES (5,1,8,NULL,NULL,NULL,100000,NULL,NULL,'2021-10-13 03:03:26','2021-10-13 03:03:26','PENDING'),(6,41,9,NULL,NULL,NULL,50000,NULL,NULL,'2021-10-13 03:05:22','2021-10-13 03:05:22','PENDING'),(7,41,9,NULL,NULL,NULL,50000,NULL,NULL,'2021-10-13 03:05:34','2021-10-13 03:05:34','PENDING'),(8,12,10,NULL,NULL,NULL,100000,NULL,NULL,'2021-10-13 14:17:27','2021-10-13 14:17:27','REJECTED'),(9,1,8,NULL,NULL,NULL,100000,NULL,NULL,'2021-10-13 15:13:27','2021-10-13 15:13:27','REJECTED'),(17,41,8,NULL,NULL,NULL,NULL,NULL,NULL,'2021-10-23 11:57:01','2021-10-23 11:57:01',NULL),(18,11,8,'00:00 24/10/2021',112,13,2600000,NULL,NULL,'2021-10-23 17:16:56','2021-10-23 17:16:56','PENDING'),(19,40,8,'15:00 24/10/2021',1,1,200000,NULL,NULL,'2021-10-24 08:53:58','2021-10-24 08:53:58','PENDING');
/*!40000 ALTER TABLE `orders_mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizz`
--

DROP TABLE IF EXISTS `quizz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quizz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quizz_name` text,
  `quizz_type` varchar(45) DEFAULT NULL,
  `order_in_session` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizz`
--

LOCK TABLES `quizz` WRITE;
/*!40000 ALTER TABLE `quizz` DISABLE KEYS */;
INSERT INTO `quizz` VALUES (1,'Lesson 1','FIRST',1,1,'2021-05-29 08:06:25','2021-05-29 08:06:25','ACTIVE'),(2,'Lesson 2','FIRST',1,2,'2021-05-29 08:06:25','2021-05-29 08:06:25','ACTIVE'),(3,'Lesson 3','FIRST',1,3,'2021-05-29 08:06:25','2021-05-29 08:06:25','ACTIVE'),(4,'Lesson 4','FIRST',1,4,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(5,'Lesson 5','FIRST',1,5,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(6,'Lesson 6','FIRST',1,6,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(7,'Lesson 7','FIRST',1,7,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(8,'Lesson 8','FIRST',1,8,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(9,'Lesson 9','FIRST',1,9,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(10,'Lesson 10','FIRST',1,10,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(11,'Lesson 11','FIRST',1,11,'2021-07-08 07:04:31','2021-07-08 07:04:31','ACTIVE'),(12,'vanht-quizzzzz 1132','FIRST',0,17,'2021-07-27 13:15:31','2021-07-27 17:29:01','DRAFF'),(13,'téy','END',NULL,17,'2021-07-27 17:29:16','2021-07-27 17:29:22','DELETED'),(14,'gfdhfh','FIRST',NULL,17,'2021-07-30 18:16:48','2021-07-30 18:16:48','DELETED'),(15,'ten cau hoir','MID',NULL,17,'2021-07-30 18:18:28','2021-07-30 18:18:28','DELETED');
/*!40000 ALTER TABLE `quizz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizz_question`
--

DROP TABLE IF EXISTS `quizz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quizz_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `option_a` text,
  `option_b` text,
  `option_c` text,
  `option_d` text,
  `answer` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `order_in_quizz` int(11) DEFAULT NULL,
  `quizz_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizz_question`
--

LOCK TABLES `quizz_question` WRITE;
/*!40000 ALTER TABLE `quizz_question` DISABLE KEYS */;
INSERT INTO `quizz_question` VALUES (1,' Đâu là Sai về ngôn ngữ Java?','Ngôn ngữ Java có phân biệt chữ hoa- chữ thường','Java là ngôn ngữ lập trình hướng đối tượng','Dấu chấm phẩy được sử dụng để kết thúc câu lệnh trong Java','Chương trình viết bằng Java chỉ có thể chạy trên hệ điều hành win','D','MULTI_CHOICE_4',1,1,'2021-05-29 08:09:30','2021-05-29 08:09:30','ACTIVE'),(2,'Ngôn ngữ lập trình Java cung cấp các tính năng nào sau đây?','Thư viện tích hợp','Giao diện lập trình ứng dụng','Bộ công cụ giao diện người dùng','Tất cả đáp án trên','D','MULTI_CHOICE_4',2,1,'2021-05-29 08:10:39','2021-05-29 08:10:39','ACTIVE'),(3,'File chứa mã nguồn java sau khi được biên dịch có đuôi là gì?','.java','.class','.jav','.exe','B','MULTI_CHOICE_4',3,1,'2021-05-29 08:14:17','2021-05-29 08:14:17','ACTIVE'),(4,'Java Virtual Machine là gì?','Là một thành phần của Java platform dùng để đọc mã bytecode trong file .class','Là chương trình biên dịch của Java dùng để biên dịch file nguồn java thành mã bytecode','Là chương trình chạy cho Java','Tất cả đáp án đều đúng','A','MULTI_CHOICE_4',4,1,'2021-05-29 08:15:28','2021-05-29 08:15:28','ACTIVE'),(5,'Tên gọi đầu tiên của Java là gì?','Java','Oak','Cafe','James golings','B','MULTI_CHOICE_4',5,1,'2021-05-29 08:16:21','2021-05-29 08:16:21','ACTIVE'),(6,'Java chạy trên nền tảng hệ điều hành nào sau đây?','Linux','Windows','MacOS','Tất cả đáp án trên','D','MULTI_CHOICE_4',6,1,'2021-05-29 08:39:29','2021-05-29 08:39:29','ACTIVE'),(7,'IDE là viết tắt của từ nào sau đây?','Interface Development Environment','Integrated Development Environment','Intellij Debug Evaluate','','B','MULTI_CHOICE_3',7,1,'2021-05-29 08:39:29','2021-05-29 08:39:29','ACTIVE'),(8,'Git là gì ?','Là 1 thư viện quản lí code của Java','Là 1 IDE để code ngôn ngữ Java','Là 1 hệ thống quản lý phiên bản phân tán','','C','MULTI_CHOICE_3',8,1,'2021-05-29 08:39:29','2021-05-29 08:39:29','ACTIVE'),(9,'JDK là viết tắt của từ nào sau đây?','Java Develop Kit','Java Decomplier Kit','Java Development Kit','Java Developer Key','C','MULTI_CHOICE_4',9,1,'2021-05-29 08:40:48','2021-05-29 08:40:48','ACTIVE'),(10,'Các lệnh nào là lệnh của git?','Git clone','Git copy','Git add .','A và C','D','MULTI_CHOICE_4',10,1,'2021-05-29 08:42:10','2021-05-29 08:42:10','ACTIVE'),(11,'Lệnh nào sau đây không phải là lệnh sử dụng trong git?','Git push','Git commit -m \"\"','Git remove','Git pull','C','MULTI_CHOICE_4',11,1,'2021-05-29 08:45:37','2021-05-29 08:45:37','ACTIVE'),(12,'Câu lệnh git nào sau đây giúp bạn bắt đầu tạo một git repository rỗng tại folder hiện tại?','Git init','Git status','Git checkout','Git merge','A','MULTI_CHOICE_4',12,1,'2021-05-29 08:48:12','2021-05-29 08:48:12','ACTIVE'),(13,'Int là kiểu dữ liệu gì?','Kiểu chuỗi','Kiểu số thực','Kiểu số nguyên','Kiểu mảng','C','MULTI_CHOICE_4',1,2,'2021-05-29 08:48:12','2021-05-29 08:48:12','ACTIVE'),(14,'Kích thước của 1 Char là bao nhiêu?','4 bit','7 bit','8 bit','16 bit','D','MULTI_CHOICE_4',2,2,'2021-05-29 08:49:32','2021-05-29 08:49:32','ACTIVE'),(15,'Đâu không phải là một kiểu dữ liệu nguyên thủy trong Java?','double','int','long',' long float','D','MULTI_CHOICE_4',3,2,'2021-05-29 08:50:53','2021-05-29 08:50:53','ACTIVE'),(16,'Cho biết kết quả của đoạn mã sau\nint x=3;\n\nint y=10;\n\nSystem.out.println(y%x)','1','2','3','4','A','MULTI_CHOICE_4',4,2,'2021-07-08 07:41:30','2021-07-08 07:41:30','ACTIVE'),(17,'File chứa mã nguồn java SAU khi được biên dịch có đuôi là gì?','.exe','.class','.jav','.java','B','MULTI_CHOICE_4',5,2,'2021-07-08 07:41:30','2021-07-08 07:41:30','ACTIVE'),(18,'Câu lệnh khai báo chuẩn cho hàm main như thế nào?','public static void main(String[] a) {}','public static int main(String args) {}','public static main(String[] args) {}','public static final void main(String[] args) {}','A','MULTI_CHOICE_4',6,2,'2021-07-08 08:13:47','2021-07-08 08:13:47','ACTIVE'),(19,'Khối lệnh sau có kết quả bao nhiêu?\nString greeting = \"Hello\";\nString name = \"PlusPlus Academy\";\nSystem.out.print (greeting);\nSystem.out.println (name);\nSystem.out.print (\"2020\");','Hello PlusPlus Academy\n2020','HelloPlusPlus Academy 2020','HelloPlusPlus Academy\n2020','Hello PlusPlus Academy 2020','C','MULTI_CHOICE_4',7,2,'2021-07-08 08:17:24','2021-07-08 08:17:24','ACTIVE'),(20,'Câu nào sau đây mô tả đúng về kiểu dữ liệu Long','Kích cỡ 4 byte. Giá trị nhỏ nhất là -2^31 và giá trị lớn nhất là 2^31 -1.','Kích cỡ 8 byte. Giá trị nhỏ nhất là -2^63 và lớn nhất là 2^63 -1.','Kích cỡ 4 byte. Giá trị mặc định là 0.0f','Kích cỡ 2 byte. Giá trị nhỏ nhất là -2^15 và giá trị lớn nhất là 2^15 -1.','B','MULTI_CHOICE_4',8,2,'2021-07-08 08:19:28','2021-07-08 08:19:28','ACTIVE'),(21,'Có bao nhiêu kiểu dữ liệu nguyên thủy trong Java?','9','8','7','6','B','MULTI_CHOICE_4',9,2,'2021-07-08 08:19:28','2021-07-08 08:19:28','ACTIVE'),(22,'Từ nào KHÔNG phải từ khóa trong Java','public','class','void','main','D','MULTI_CHOICE_4',10,2,'2021-07-08 08:20:27','2021-07-08 08:20:27','ACTIVE'),(23,'Khai báo biến nào không đúng?','static final int a;','public static int a;','int a, b = 2, c= 3;','private float f = 10;','A','MULTI_CHOICE_4',11,2,'2021-07-08 08:22:28','2021-07-08 08:22:28','ACTIVE'),(24,'Kết quả hiển thị của khối lệnh:\nint a = 5;\n\nint b = 6;\n\nSystem.out.print((a<b));','5<6','false','true','(a<b)','C','MULTI_CHOICE_4',12,2,'2021-07-08 08:22:28','2021-07-08 08:22:28','ACTIVE'),(25,'Giá trị của biến a sau câu lệnh:\nint a = (10%2 == 0) ? 13 : 9;','13','9','0','5','A','MULTI_CHOICE_4',13,2,'2021-07-08 08:23:16','2021-07-08 08:23:16','ACTIVE'),(26,'Giá trị của b trong câu lệnh:\nint a = 10;\n\nint b = a >> 1;','10','11','20','5','D','MULTI_CHOICE_4',14,2,'2021-07-08 08:23:52','2021-07-08 08:23:52','ACTIVE'),(27,'Biến a trong khối lệnh khi khởi tạo được lưu tại đâu?\npublic void function(){\nint a = 10;\n}','Heap Memory','Stack Memory','Static Memory','Bộ nhớ khác','B','MULTI_CHOICE_4',15,2,'2021-07-08 08:25:17','2021-07-08 08:25:17','ACTIVE'),(28,'Giá trị của b trong câu lệnh sau là bao nhiêu?\ndouble a = 1000.2332;\nlong b = (long) a;','1000.2332','1000.233','1000','1000.0','C','MULTI_CHOICE_4',16,2,'2021-07-08 08:26:35','2021-07-08 08:26:35','ACTIVE'),(29,'Cơ chế lưu trữ của stack memory?','First In First Out','Last In First Out','Last In Last Out','First In Last Out','B','MULTI_CHOICE_4',17,2,'2021-07-08 08:27:25','2021-07-08 08:27:25','ACTIVE'),(30,'Giá trị in ra màn hình của lệnh sau là gì?\nSystem.out.println(1&0);','1','0','true','false','B','MULTI_CHOICE_4',18,2,'2021-07-08 08:28:09','2021-07-08 08:28:09','ACTIVE'),(31,'Java chạy trên hệ điều hành nào sau đây?','Microsoft Window','MacOS','Window','Tất cả','A,D','MULTI_CHOICE_4',19,2,'2021-07-08 08:28:51','2021-07-08 08:28:51','ACTIVE'),(32,'texsste',NULL,NULL,NULL,NULL,'dsaf','TEXT',1,15,'2021-07-30 18:18:28','2021-07-30 18:18:28','DRAFF'),(33,'choice 4','1','2','23','4','A','MULTI_CHOICE_4',2,15,'2021-07-30 18:18:28','2021-07-30 18:18:28','DRAFF'),(34,'choice 3','3','4','5',NULL,'b','MULTI_CHOICE_3',3,15,'2021-07-30 18:18:28','2021-07-30 18:18:28','DRAFF'),(35,'rad','A','dfs','fds','D','A','RADIO',0,15,'2021-07-30 18:18:28','2021-07-30 18:18:28','DRAFF'),(36,'sadksahdkjsahdkjahd','sadas','ádasd','ssds','ádsd','A','MULTI_CHOICE_4',NULL,12,'2021-08-01 04:07:13','2021-08-01 04:07:13','DELETED'),(37,'temp','dap an 1','dap an 2','dap an 3','dap an 4','A','RADIO',NULL,1,'2021-08-12 09:09:46','2021-08-12 09:09:46','DELETED'),(38,'this is text question',NULL,NULL,NULL,NULL,'abc','TEXT',NULL,1,'2021-08-12 10:18:37','2021-08-12 10:18:37','DELETED');
/*!40000 ALTER TABLE `quizz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenue`
--

DROP TABLE IF EXISTS `revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `debit` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `saler_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `noted` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenue`
--

LOCK TABLES `revenue` WRITE;
/*!40000 ALTER TABLE `revenue` DISABLE KEYS */;
INSERT INTO `revenue` VALUES (1,31,2,800000,0,800000,NULL,1,NULL,NULL,'2021-10-23 13:19:42','2021-10-23 13:19:42','ACTIVE'),(2,31,1,800000,0,800000,NULL,1,NULL,NULL,'2021-10-23 13:20:00','2021-10-23 13:20:05','ACTIVE'),(4,31,3,2000000,0,2000000,NULL,25,NULL,NULL,'2021-10-24 03:33:37','2021-10-24 03:33:37','DELETED'),(5,31,3,2000000,400000,2000000,NULL,25,41,NULL,'2021-10-24 03:35:35','2021-10-24 03:35:35','DELETED'),(6,40,2,800000,0,800000,NULL,25,NULL,NULL,'2021-10-24 03:37:48','2021-10-24 03:37:48','ACTIVE'),(9,31,2,800000,0,800000,NULL,25,NULL,NULL,'2021-10-24 07:29:33','2021-10-24 07:29:33','ACTIVE'),(24,31,2,800000,0,800000,NULL,25,NULL,NULL,'2021-10-24 08:51:06','2021-10-24 08:51:06','ACTIVE'),(26,31,1,800000,0,800000,NULL,2,NULL,NULL,'2021-10-24 11:46:40','2021-10-24 11:47:07','ACTIVE'),(28,31,1,800000,0,800000,NULL,41,NULL,NULL,'2021-10-24 11:47:46','2021-10-24 11:47:53','ACTIVE'),(30,31,3,2000000,1700000,2000000,NULL,1,NULL,NULL,'2021-10-24 13:23:56','2021-10-24 13:23:56','ACTIVE');
/*!40000 ALTER TABLE `revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'SUPER_ADMIN','2021-08-08 03:57:50','2021-09-14 12:06:20','ACTIVE'),(2,'STUDENT','2021-08-08 14:08:50','2021-08-08 15:31:01','ACTIVE'),(8,'COURSE_ADMIN','2021-09-06 09:30:52','2021-09-06 10:38:27','ACTIVE'),(9,'test_vanht','2021-09-06 10:43:31','2021-09-06 10:43:31','DRAFF'),(10,'CONTENT_ADMIN','2021-09-08 01:33:12','2021-09-13 16:07:30','ACTIVE'),(11,'CONTENT_USER','2021-09-08 01:33:12','2021-09-13 16:14:04','ACTIVE'),(12,'LMS','2021-09-11 09:41:26','2021-09-11 09:41:26','ACTIVE'),(13,'TEACHER','2021-10-23 09:28:55','2021-10-23 09:28:55','ACTIVE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_api`
--

DROP TABLE IF EXISTS `role_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `api_id` int(11) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_api`
--

LOCK TABLES `role_api` WRITE;
/*!40000 ALTER TABLE `role_api` DISABLE KEYS */;
INSERT INTO `role_api` VALUES (74,2,1,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(75,2,2,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(76,2,3,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(77,2,4,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(78,2,5,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(79,2,6,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(80,2,10,'2021-07-03 03:10:07','2021-07-03 03:10:07'),(176,2,130,'2021-08-23 06:46:23','2021-08-23 06:46:23'),(178,2,132,'2021-08-23 14:58:24','2021-08-23 14:58:24'),(215,8,70,'2021-09-06 10:38:27',NULL),(216,8,69,'2021-09-06 10:38:27',NULL),(217,8,68,'2021-09-06 10:38:27',NULL),(218,8,67,'2021-09-06 10:38:27',NULL),(219,8,74,'2021-09-06 10:38:27',NULL),(220,8,108,'2021-09-06 10:38:27',NULL),(221,9,116,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(222,9,117,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(223,9,113,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(224,9,114,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(225,9,103,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(226,9,99,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(227,9,96,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(228,9,90,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(229,9,91,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(230,9,92,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(231,9,94,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(232,9,93,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(233,9,72,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(234,9,76,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(235,9,77,'2021-09-06 10:43:31','2021-09-06 10:43:31'),(285,2,172,'2021-09-12 02:24:41','2021-09-12 02:24:41'),(286,10,156,'2021-09-13 16:07:30',NULL),(287,10,157,'2021-09-13 16:07:30',NULL),(288,10,158,'2021-09-13 16:07:30',NULL),(289,10,159,'2021-09-13 16:07:30',NULL),(290,10,160,'2021-09-13 16:07:30',NULL),(291,10,161,'2021-09-13 16:07:30',NULL),(292,10,164,'2021-09-13 16:07:30',NULL),(293,10,99,'2021-09-13 16:07:30',NULL),(294,11,156,'2021-09-13 16:14:04',NULL),(295,11,157,'2021-09-13 16:14:04',NULL),(296,11,158,'2021-09-13 16:14:04',NULL),(297,11,159,'2021-09-13 16:14:04',NULL),(298,11,161,'2021-09-13 16:14:04',NULL),(299,11,164,'2021-09-13 16:14:04',NULL),(300,11,99,'2021-09-13 16:14:04',NULL),(301,1,2,'2021-09-14 12:06:20',NULL),(302,1,3,'2021-09-14 12:06:20',NULL),(303,1,4,'2021-09-14 12:06:20',NULL),(304,1,5,'2021-09-14 12:06:20',NULL),(305,1,6,'2021-09-14 12:06:20',NULL),(306,1,9,'2021-09-14 12:06:20',NULL),(307,1,11,'2021-09-14 12:06:20',NULL),(308,1,12,'2021-09-14 12:06:20',NULL),(309,1,10,'2021-09-14 12:06:20',NULL),(310,1,13,'2021-09-14 12:06:20',NULL),(311,1,14,'2021-09-14 12:06:20',NULL),(312,1,16,'2021-09-14 12:06:20',NULL),(313,1,17,'2021-09-14 12:06:20',NULL),(314,1,18,'2021-09-14 12:06:20',NULL),(315,1,19,'2021-09-14 12:06:20',NULL),(316,1,20,'2021-09-14 12:06:20',NULL),(317,1,21,'2021-09-14 12:06:20',NULL),(318,1,22,'2021-09-14 12:06:20',NULL),(319,1,23,'2021-09-14 12:06:20',NULL),(320,1,24,'2021-09-14 12:06:20',NULL),(321,1,25,'2021-09-14 12:06:20',NULL),(322,1,26,'2021-09-14 12:06:20',NULL),(323,1,27,'2021-09-14 12:06:20',NULL),(324,1,28,'2021-09-14 12:06:20',NULL),(325,1,29,'2021-09-14 12:06:20',NULL),(326,1,30,'2021-09-14 12:06:20',NULL),(327,1,31,'2021-09-14 12:06:20',NULL),(328,1,32,'2021-09-14 12:06:20',NULL),(329,1,33,'2021-09-14 12:06:20',NULL),(330,1,34,'2021-09-14 12:06:20',NULL),(331,1,35,'2021-09-14 12:06:20',NULL),(332,1,36,'2021-09-14 12:06:20',NULL),(333,1,37,'2021-09-14 12:06:20',NULL),(334,1,38,'2021-09-14 12:06:20',NULL),(335,1,39,'2021-09-14 12:06:20',NULL),(336,1,41,'2021-09-14 12:06:20',NULL),(337,1,42,'2021-09-14 12:06:20',NULL),(338,1,43,'2021-09-14 12:06:20',NULL),(339,1,44,'2021-09-14 12:06:20',NULL),(340,1,45,'2021-09-14 12:06:20',NULL),(341,1,46,'2021-09-14 12:06:20',NULL),(342,1,47,'2021-09-14 12:06:20',NULL),(343,1,48,'2021-09-14 12:06:20',NULL),(344,1,49,'2021-09-14 12:06:20',NULL),(345,1,50,'2021-09-14 12:06:20',NULL),(346,1,51,'2021-09-14 12:06:20',NULL),(347,1,52,'2021-09-14 12:06:20',NULL),(348,1,54,'2021-09-14 12:06:20',NULL),(349,1,55,'2021-09-14 12:06:20',NULL),(350,1,56,'2021-09-14 12:06:20',NULL),(351,1,57,'2021-09-14 12:06:20',NULL),(352,1,58,'2021-09-14 12:06:20',NULL),(353,1,59,'2021-09-14 12:06:20',NULL),(354,1,60,'2021-09-14 12:06:20',NULL),(355,1,61,'2021-09-14 12:06:20',NULL),(356,1,62,'2021-09-14 12:06:20',NULL),(357,1,63,'2021-09-14 12:06:20',NULL),(358,1,64,'2021-09-14 12:06:20',NULL),(359,1,65,'2021-09-14 12:06:20',NULL),(360,1,67,'2021-09-14 12:06:20',NULL),(361,1,68,'2021-09-14 12:06:20',NULL),(362,1,69,'2021-09-14 12:06:20',NULL),(363,1,70,'2021-09-14 12:06:20',NULL),(364,1,71,'2021-09-14 12:06:20',NULL),(365,1,72,'2021-09-14 12:06:20',NULL),(366,1,73,'2021-09-14 12:06:20',NULL),(367,1,74,'2021-09-14 12:06:20',NULL),(368,1,76,'2021-09-14 12:06:20',NULL),(369,1,77,'2021-09-14 12:06:20',NULL),(370,1,78,'2021-09-14 12:06:20',NULL),(371,1,80,'2021-09-14 12:06:20',NULL),(372,1,81,'2021-09-14 12:06:20',NULL),(373,1,82,'2021-09-14 12:06:20',NULL),(374,1,83,'2021-09-14 12:06:20',NULL),(375,1,85,'2021-09-14 12:06:20',NULL),(376,1,86,'2021-09-14 12:06:20',NULL),(377,1,87,'2021-09-14 12:06:20',NULL),(378,1,88,'2021-09-14 12:06:20',NULL),(379,1,89,'2021-09-14 12:06:20',NULL),(380,1,90,'2021-09-14 12:06:20',NULL),(381,1,91,'2021-09-14 12:06:20',NULL),(382,1,92,'2021-09-14 12:06:20',NULL),(383,1,93,'2021-09-14 12:06:20',NULL),(384,1,94,'2021-09-14 12:06:20',NULL),(385,1,95,'2021-09-14 12:06:20',NULL),(386,1,96,'2021-09-14 12:06:20',NULL),(387,1,97,'2021-09-14 12:06:20',NULL),(388,1,99,'2021-09-14 12:06:20',NULL),(389,1,100,'2021-09-14 12:06:20',NULL),(390,1,101,'2021-09-14 12:06:20',NULL),(391,1,102,'2021-09-14 12:06:20',NULL),(392,1,103,'2021-09-14 12:06:20',NULL),(393,1,104,'2021-09-14 12:06:20',NULL),(394,1,105,'2021-09-14 12:06:20',NULL),(395,1,106,'2021-09-14 12:06:20',NULL),(396,1,107,'2021-09-14 12:06:20',NULL),(397,1,108,'2021-09-14 12:06:20',NULL),(398,1,109,'2021-09-14 12:06:20',NULL),(399,1,110,'2021-09-14 12:06:20',NULL),(400,1,111,'2021-09-14 12:06:20',NULL),(401,1,112,'2021-09-14 12:06:20',NULL),(402,1,113,'2021-09-14 12:06:20',NULL),(403,1,114,'2021-09-14 12:06:20',NULL),(404,1,115,'2021-09-14 12:06:20',NULL),(405,1,116,'2021-09-14 12:06:20',NULL),(406,1,117,'2021-09-14 12:06:20',NULL),(407,1,119,'2021-09-14 12:06:20',NULL),(408,1,120,'2021-09-14 12:06:20',NULL),(409,1,121,'2021-09-14 12:06:20',NULL),(410,1,122,'2021-09-14 12:06:20',NULL),(411,1,123,'2021-09-14 12:06:20',NULL),(412,1,124,'2021-09-14 12:06:20',NULL),(413,1,125,'2021-09-14 12:06:20',NULL),(414,1,126,'2021-09-14 12:06:20',NULL),(415,1,127,'2021-09-14 12:06:20',NULL),(416,1,128,'2021-09-14 12:06:20',NULL),(417,1,129,'2021-09-14 12:06:20',NULL),(418,1,131,'2021-09-14 12:06:20',NULL),(419,1,133,'2021-09-14 12:06:20',NULL),(420,1,137,'2021-09-14 12:06:20',NULL),(421,1,138,'2021-09-14 12:06:20',NULL),(422,1,139,'2021-09-14 12:06:20',NULL),(423,1,140,'2021-09-14 12:06:20',NULL),(424,1,147,'2021-09-14 12:06:20',NULL),(425,1,148,'2021-09-14 12:06:20',NULL),(426,1,149,'2021-09-14 12:06:20',NULL),(427,1,150,'2021-09-14 12:06:20',NULL),(428,1,151,'2021-09-14 12:06:20',NULL),(429,1,152,'2021-09-14 12:06:20',NULL),(430,1,153,'2021-09-14 12:06:20',NULL),(431,1,157,'2021-09-14 12:06:20',NULL),(432,1,158,'2021-09-14 12:06:20',NULL),(433,1,159,'2021-09-14 12:06:20',NULL),(434,1,161,'2021-09-14 12:06:20',NULL),(435,1,162,'2021-09-14 12:06:20',NULL),(436,1,163,'2021-09-14 12:06:20',NULL),(437,1,164,'2021-09-14 12:06:20',NULL),(438,1,165,'2021-09-14 12:06:20',NULL),(439,1,166,'2021-09-14 12:06:20',NULL),(440,1,156,'2021-09-14 12:06:20',NULL),(441,1,168,'2021-09-14 12:06:20',NULL),(442,1,169,'2021-09-14 12:06:20',NULL),(443,1,170,'2021-09-14 12:06:20',NULL),(444,1,167,'2021-09-14 12:06:20',NULL),(445,1,172,'2021-09-14 12:06:20',NULL),(446,1,173,'2021-09-14 12:06:20',NULL),(449,1,176,'2021-09-23 15:11:48','2021-09-23 15:11:48'),(451,1,178,'2021-09-23 17:50:32','2021-09-23 17:50:32'),(452,1,179,'2021-09-23 17:50:32','2021-09-23 17:50:32'),(453,1,180,'2021-09-23 17:50:32','2021-09-23 17:50:32'),(454,1,181,'2021-09-23 17:50:32','2021-09-23 17:50:32'),(455,1,182,'2021-09-24 02:29:27','2021-09-24 02:29:27'),(456,1,183,'2021-09-24 03:31:05','2021-09-24 03:31:05'),(457,2,176,'2021-09-25 03:08:03','2021-09-25 03:08:03'),(458,2,182,'2021-09-25 03:08:03','2021-09-25 03:08:03'),(459,2,183,'2021-09-25 03:08:03','2021-09-25 03:08:03'),(460,2,184,'2021-09-25 03:08:03','2021-09-25 03:08:03'),(461,1,185,'2021-09-25 08:44:23','2021-09-25 08:44:23'),(462,12,176,'2021-09-25 09:15:11','2021-09-25 09:15:11'),(463,12,182,'2021-09-25 09:15:11','2021-09-25 09:15:11'),(464,12,183,'2021-09-25 09:15:11','2021-09-25 09:15:11'),(465,12,184,'2021-09-25 09:15:11','2021-09-25 09:15:11'),(466,2,186,'2021-09-25 12:39:09','2021-09-25 12:39:09'),(467,1,186,'2021-09-25 13:40:51','2021-09-25 13:40:51'),(468,2,185,'2021-09-26 10:56:22','2021-09-26 10:56:22'),(469,12,185,'2021-09-26 10:56:22','2021-09-26 10:56:22'),(470,2,187,'2021-09-27 14:39:44','2021-09-27 14:39:44'),(471,12,187,'2021-09-27 14:39:44','2021-09-27 14:39:44'),(472,2,189,'2021-09-27 15:30:28','2021-09-27 15:30:28'),(473,12,189,'2021-09-27 15:30:28','2021-09-27 15:30:28'),(474,2,192,'2021-10-01 15:32:13','2021-10-01 15:32:13'),(475,12,192,'2021-10-01 15:32:13','2021-10-01 15:32:13'),(476,1,191,'2021-10-04 08:51:06','2021-10-04 08:51:06'),(477,1,146,'2021-10-11 03:38:53','2021-10-11 03:38:53'),(478,1,147,'2021-10-11 03:38:53','2021-10-11 03:38:53'),(479,1,148,'2021-10-11 03:38:53','2021-10-11 03:38:53'),(480,1,149,'2021-10-11 03:38:53','2021-10-11 03:38:53'),(481,2,193,'2021-10-11 06:45:45','2021-10-11 06:45:45'),(482,2,194,'2021-10-11 06:45:45','2021-10-11 06:45:45'),(483,12,193,'2021-10-11 06:55:39','2021-10-11 06:55:39'),(484,12,194,'2021-10-11 06:55:39','2021-10-11 06:55:39'),(485,2,195,'2021-10-11 07:20:37','2021-10-11 07:20:37'),(486,12,195,'2021-10-11 07:20:37','2021-10-11 07:20:37'),(487,1,198,'2021-10-11 13:11:05','2021-10-11 13:11:05'),(488,2,199,'2021-10-11 14:21:51','2021-10-11 14:21:51'),(489,12,199,'2021-10-11 14:48:02','2021-10-11 14:48:02'),(490,1,200,'2021-10-11 14:48:02','2021-10-11 14:48:02'),(491,1,201,'2021-10-11 14:48:02','2021-10-11 14:48:02'),(492,1,202,'2021-10-11 15:50:34','2021-10-11 15:50:34'),(493,2,203,'2021-10-13 13:14:16','2021-10-13 13:14:16'),(494,12,203,'2021-10-13 14:58:15','2021-10-13 14:58:15'),(495,2,204,'2021-10-13 14:58:15','2021-10-13 14:58:15'),(496,12,204,'2021-10-13 14:58:15','2021-10-13 14:58:15'),(497,2,205,'2021-10-13 15:13:50','2021-10-13 15:13:50'),(498,12,205,'2021-10-13 15:13:50','2021-10-13 15:13:50'),(499,1,206,'2021-10-15 12:24:38','2021-10-15 12:24:38'),(500,1,207,'2021-10-15 12:40:11','2021-10-15 12:40:11'),(501,1,208,'2021-10-15 12:40:11','2021-10-15 12:40:11'),(502,1,209,'2021-10-16 06:19:20','2021-10-16 06:19:20'),(503,13,198,'2021-10-23 09:29:04','2021-10-23 09:29:04');
/*!40000 ALTER TABLE `role_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) DEFAULT NULL,
  `room_description` varchar(500) DEFAULT NULL,
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `total_user` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` varchar(45) DEFAULT NULL,
  `room_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Lớp học 01234','Đây là lớp học sinh tiểu học nhé!!!','2021-08-10 17:00:00.000000','2021-08-11 16:59:59.000000',NULL,1,'2021-08-11 07:38:01.000000','2021-08-15 16:21:35.000000','ACTIVE',NULL),(2,'vanhtTest','Tét','2021-08-11 00:00:00.000000','2022-08-11 00:00:00.000000',NULL,9,'2021-08-14 15:12:01.000000','2021-08-14 15:12:01.000000','DELETED',NULL),(3,'vanhtTest','Tét','2021-08-14 15:12:31.000000','2022-08-14 15:12:31.000000',NULL,9,'2021-08-14 15:13:23.000000','2021-08-14 15:13:23.000000','DELETED',NULL),(4,'vanhtTest','Tét','1970-01-19 19:29:13.000000','1970-01-20 04:14:49.000000',NULL,9,'2021-08-14 15:13:29.000000','2021-08-14 15:13:29.000000','DELETED',NULL),(5,'vanhtTest','Tét','1970-01-19 19:29:13.000000','1970-01-20 04:14:49.000000',NULL,9,'2021-08-14 15:13:49.000000','2021-08-14 15:13:49.000000','DELETED',NULL),(6,'test time','asd','2021-08-15 12:33:13.000000','2021-08-15 12:33:13.000000',NULL,9,'2021-08-15 12:26:22.000000','2021-08-15 12:33:17.000000','DELETED',NULL),(7,'JAVACORE-1','Lớp học KIEMNX','2021-08-15 00:00:00.000000','2021-10-15 00:00:00.000000',2,1,'2021-08-15 14:17:47.000000','2021-08-15 14:17:47.000000','ACTIVE',NULL),(8,'JAVACORE-2','Lớp học KIEMNX 2','2021-08-15 00:00:00.000000','2021-10-15 00:00:00.000000',2,1,'2021-08-15 14:20:21.000000','2021-08-15 14:20:21.000000','ACTIVE',NULL),(9,'test time','asdsadasd','2021-07-31 17:00:00.000000','2021-08-31 16:59:59.000000',NULL,9,'2021-08-15 14:39:47.000000','2021-08-15 16:20:36.000000','DRAFF',NULL),(10,'JAVACORE-2','Lớp học KIEMNX 2','2021-08-15 00:00:00.000000','2021-10-15 00:00:00.000000',2,1,'2021-08-15 14:46:50.000000','2021-08-15 14:46:50.000000','ACTIVE',NULL),(11,'Lớp test','ádsads','2021-08-18 17:00:00.000000','2021-08-19 16:59:59.000000',NULL,9,'2021-08-19 04:14:29.000000','2021-08-19 04:14:29.000000','ACTIVE',NULL),(12,'Lớp testttt','Test method add','2021-08-18 17:00:00.000000','2021-09-15 16:59:59.000000',NULL,8,'2021-08-19 07:36:33.000000','2021-08-19 07:36:33.000000','DELETED',NULL),(13,'Lớp học của Hoàng','Test method add','2021-08-18 17:00:00.000000','2021-09-23 16:59:59.000000',NULL,9,'2021-08-19 08:10:18.000000','2021-08-19 08:12:32.000000','ACTIVE',NULL),(14,NULL,NULL,NULL,NULL,4,NULL,'2021-08-29 03:31:27.000000','2021-09-15 15:17:02.000000','DELETED',NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_mentor`
--

DROP TABLE IF EXISTS `room_mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_mentor`
--

LOCK TABLES `room_mentor` WRITE;
/*!40000 ALTER TABLE `room_mentor` DISABLE KEYS */;
INSERT INTO `room_mentor` VALUES (2,1,2,'SALER','2021-08-17 07:28:01.000000','2021-08-19 08:14:11.000000',NULL),(15,1,4,'SUPPORTER','2021-08-18 12:50:57.000000','2021-08-19 12:10:46.000000',NULL),(16,11,2,'SUPPORTER','2021-08-19 08:08:22.000000','2021-08-19 08:08:22.000000',NULL),(17,13,4,'TEACHER','2021-08-19 08:11:37.000000','2021-08-19 13:57:28.000000',NULL),(19,13,7,'TEACHER','2021-08-20 11:25:28.000000','2021-08-20 11:25:28.000000',NULL);
/*!40000 ALTER TABLE `room_mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_user`
--

DROP TABLE IF EXISTS `room_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_user`
--

LOCK TABLES `room_user` WRITE;
/*!40000 ALTER TABLE `room_user` DISABLE KEYS */;
INSERT INTO `room_user` VALUES (2,1,15,'2021-08-15 16:43:57.978270','2021-08-15 16:43:57.978270'),(6,10,15,'2021-08-18 12:04:50.000000','2021-08-18 12:04:50.000000'),(8,1,14,'2021-08-18 12:55:18.000000','2021-08-18 12:55:18.000000'),(9,11,15,'2021-08-19 08:08:32.000000','2021-08-19 08:08:32.000000'),(12,13,9,'2021-08-20 11:25:50.000000','2021-08-20 11:25:50.000000'),(13,2,15,'2021-09-12 01:14:40.295104','2021-09-12 01:14:40.295104'),(14,3,9,'2021-09-12 01:14:40.311143','2021-09-12 01:14:40.311143'),(15,2,9,'2021-09-12 01:14:40.327160','2021-09-12 01:14:40.327160'),(16,1,25,'2021-09-12 02:32:26.543582','2021-09-12 02:32:26.543582');
/*!40000 ALTER TABLE `room_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_name` varchar(255) DEFAULT NULL,
  `order_in_lesson` int(11) DEFAULT NULL,
  `session_type` varchar(45) DEFAULT NULL,
  `lesson_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'Học Online',1,'INSTRUCTOR',1,'2021-05-28 08:20:24','2021-05-28 08:20:24','ACTIVE'),(2,'Học Online',2,'INSTRUCTOR',2,'2021-05-28 08:20:40','2021-05-28 08:20:40','ACTIVE'),(3,'Học Online',3,'INSTRUCTOR',3,'2021-05-28 08:20:44','2021-05-28 08:20:44','ACTIVE'),(4,'Học Online',4,'INSTRUCTOR',4,'2021-05-29 03:17:51','2021-05-29 03:17:51','ACTIVE'),(5,'Học Online',5,'INSTRUCTOR',5,'2021-05-29 03:17:51','2021-05-29 03:17:51','ACTIVE'),(6,'Học Online1',6,'INSTRUCTOR',6,'2021-05-29 03:23:07','2021-07-21 01:56:30','DRAFF'),(7,'Học Online',7,'INSTRUCTOR',7,'2021-05-29 03:23:32','2021-05-29 03:23:32','ACTIVE'),(8,'Học Online',8,'INSTRUCTOR',8,'2021-05-29 03:24:26','2021-05-29 03:24:26','ACTIVE'),(9,'Học Online',9,'INSTRUCTOR',9,'2021-05-29 03:24:26','2021-05-29 03:24:26','ACTIVE'),(10,'Học Online',10,'INSTRUCTOR',10,'2021-05-29 03:24:26','2021-05-29 03:24:26','ACTIVE'),(11,'Học Online',11,'INSTRUCTOR',11,'2021-05-29 03:46:13','2021-05-29 03:46:13','ACTIVE'),(12,'Học Online',2,'INSTRUCTOR',12,'2021-05-29 03:46:13','2021-05-29 03:46:13','ACTIVE'),(13,'Học Online',3,'INSTRUCTOR',13,'2021-05-29 03:46:13','2021-05-29 03:46:13','ACTIVE'),(14,'Học Online',4,'INSTRUCTOR',14,'2021-05-29 03:46:13','2021-05-29 03:46:13','ACTIVE'),(15,'Học Online',5,'INSTRUCTOR',15,'2021-05-29 03:46:13','2021-05-29 03:46:13','ACTIVE'),(16,'Học Online',NULL,'INSTRUCTOR',15,'2021-05-29 03:46:13','2021-05-29 03:46:13','ACTIVE'),(17,'vanht',NULL,'INSTRUCTOR',22,'2021-07-27 13:14:35','2021-07-27 13:14:35','DRAFF');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_avatar` varchar(255) DEFAULT NULL,
  `slide_detail` text,
  `slide_note` text,
  `slide_video_time` int(11) DEFAULT NULL,
  `slide_chunk` text,
  `order_in_material` int(11) DEFAULT NULL,
  `material_id` int(11) NOT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` VALUES (1,'https://imgur.com/d33HEDl.png','Slide mở đầu buổi học',NULL,NULL,'5',1,1,'2021-05-29 02:41:17','2021-05-29 02:41:17','ACTIVE'),(2,'https://imgur.com/nAkqaQi.png','Giới thiệu giảng viên của khóa',NULL,NULL,'5',2,1,'2021-05-29 02:42:24','2021-05-29 02:42:24','ACTIVE'),(3,'https://imgur.com/SFlbm3I.png','Lộ trình của khóa JavaCore',NULL,NULL,'5',3,1,'2021-05-29 02:43:01','2021-05-29 02:43:01','ACTIVE'),(4,'https://imgur.com/GcfSu0J.png','Lộ trình của khóa Database',NULL,NULL,'5',4,1,'2021-05-29 02:45:25','2021-05-29 02:45:25','ACTIVE'),(5,'https://imgur.com/1Z8Ml57.png','Nội dung chính của buổi học',NULL,NULL,'5',5,1,'2021-05-29 02:46:05','2021-05-29 02:46:05','ACTIVE'),(6,'https://imgur.com/Jol4v6I.png','Mô hình hoạt động của hệ thống',NULL,NULL,'5',6,1,'2021-05-29 02:46:07','2021-05-29 02:46:07','ACTIVE'),(7,'https://imgur.com/5PRNjCw.png','Mô hình các luồng của hệ thống login',NULL,NULL,'5',7,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','DELETED'),(8,'https://imgur.com/iWux6gu.png','Tổng quan về lập trình ứng dụng2',NULL,NULL,'5',8,1,'2021-06-30 03:30:19','2021-07-25 15:32:49','ACTIVE'),(9,'https://imgur.com/DAx2dQT.png','Lập trình là gì?',NULL,NULL,'5',9,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(10,'https://imgur.com/cGPszWf.png','Giới thiệu về Java',NULL,NULL,'5',10,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(11,'https://imgur.com/ljOsXnk.png','Giới thiệu về môi trường: JVM, JRE, JDK',NULL,NULL,'5',11,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(12,'https://imgur.com/eQGnhPk.png','Giới thiệu về môi trường: JVM, JRE, JDK',NULL,NULL,'5',12,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(13,'https://imgur.com/Nc6Dl70.png','Giới thiệu chương trình HelloWorld',NULL,NULL,'5',13,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(14,'https://imgur.com/priwQRs.png','Giới thiệu về IDE (IntelliJ)',NULL,NULL,'5',14,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(15,'https://imgur.com/sOWK99x.png','Giới thiệu về cấu trúc của một chương trình',NULL,NULL,'5',15,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(16,'https://imgur.com/QCsJn8x.png','Chương trình HelloWorld sau khi chạy',NULL,NULL,'5',16,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(17,'https://imgur.com/gFIVcAD.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',17,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(18,'https://imgur.com/Trn5fbC.png','Slide kết thúc buổi học',NULL,NULL,'5',18,1,'2021-06-30 03:30:19','2021-06-30 03:30:19','ACTIVE'),(19,'https://imgur.com/lyUIgTd.png','Slide mở đầu buổi học',NULL,NULL,'5',1,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(20,'https://imgur.com/f9nNmoE.png','Nội dung chính của buổi học',NULL,NULL,'5',2,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(21,'https://imgur.com/rrp8fmE.png','Giới thiệu về biến trong Java',NULL,NULL,'5',3,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(22,'https://imgur.com/RyPJXLv.png','Giới thiệu về các từ khoá trong Java',NULL,NULL,'5',4,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(23,'https://imgur.com/t95Hqk8.png','Giới thiệu về kiểu dữ liệu trong Java',NULL,NULL,'5',5,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(24,'https://imgur.com/4iKgxX8.png','Giới thiệu về các loại biến',NULL,NULL,'5',6,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(25,'https://imgur.com/vr8I88o.png','Ví dụ về biến trong Java',NULL,NULL,'5',7,2,'2021-06-30 08:16:23','2021-06-30 08:16:23','ACTIVE'),(26,'https://imgur.com/vdV6K34.png','Giới thiệu về bộ nhớ Stack, Heap trong Java',NULL,NULL,'5',8,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(27,'https://imgur.com/5VCSgZa.png','Ví dụ về bộ nhớ Stack, Heap',NULL,NULL,'5',9,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(28,'https://imgur.com/FmAjNPJ.png','Giới thiệu về ép kiểu Java (Type casting)',NULL,NULL,'5',10,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(29,'https://imgur.com/19M7UY8.png','Tóm tắt kiến thức 1',NULL,NULL,'5',11,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(30,'https://imgur.com/NN4961U.png','Giới thiệu về toán tử trong Java',NULL,NULL,'5',12,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(31,'https://imgur.com/kI2Qg34.png','Giới thiệu về toán tử trong Java',NULL,NULL,'5',13,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(32,'https://imgur.com/sifXNMX.png','Giới thiệu về toán tử trong Java',NULL,NULL,'5',14,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(33,'https://imgur.com/Jga2CJg.png','Giới thiệu về cách nhập xuất dữ liệu trong console',NULL,NULL,'5',15,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(34,'https://imgur.com/3Cuj2Lq.png','Khái quát quá trình code',NULL,NULL,'5',16,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(35,'https://imgur.com/HQxcZzY.png','Khái quát quá trình code',NULL,NULL,'5',17,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(36,'https://imgur.com/bDoAT5o.png','Giới thiệu về Package',NULL,NULL,'5',18,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(37,'https://imgur.com/uKrlrvb.png','Tóm tắt kiến thức 2',NULL,NULL,'5',19,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(38,'https://imgur.com/LYFsAFl.png','Slide kết thúc buổi học',NULL,NULL,'5',20,2,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(39,'https://imgur.com/6IU3KRE.png','Slide mở đầu buổi học',NULL,NULL,'5',1,3,'2021-06-30 08:16:24','2021-06-30 08:16:24','ACTIVE'),(40,'https://imgur.com/bCAjLrC.png','Nội dung chính của buổi học',NULL,NULL,'5',2,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(41,'https://imgur.com/YgkxFML.png','Câu lệnh điều kiện if',NULL,NULL,'5',3,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(42,'https://imgur.com/u37WMXs.png','Câu lệnh điều kiện if - else',NULL,NULL,'5',4,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(43,'https://imgur.com/MKvHWCB.png','Câu lệnh điều kiện if - else if - else',NULL,NULL,'5',5,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(44,'https://imgur.com/qD6WwKz.png','Câu lệnh điều kiện switch - case - default',NULL,NULL,'5',6,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(45,'https://imgur.com/cMaLPuU.png','Tóm tắt kiến thức 1',NULL,NULL,'5',7,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(46,'https://imgur.com/qWW915q.png','Giới thiệu về vòng lặp',NULL,NULL,'5',8,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(47,'https://imgur.com/0Ce0Epr.png','Câu lệnh vòng lặp for',NULL,NULL,'5',9,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(48,'https://imgur.com/2zZaepO.png','Câu lệnh vòng lặp while',NULL,NULL,'5',10,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(49,'https://imgur.com/mQwwm7V.png','Câu lệnh vòng lặp do while',NULL,NULL,'5',11,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(50,'https://imgur.com/vykD0nC.png','Câu lệnh vòng lặp for each và so sánh',NULL,NULL,'5',12,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(51,'https://imgur.com/3cwK4l5.png','Giới thiệu về từ khoá break',NULL,NULL,'5',13,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(52,'https://imgur.com/WMgHfF1.png','Giới thiệu về từ khoá continue',NULL,NULL,'5',14,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(53,'https://imgur.com/Vra3Lql.png','Tóm tắt kiến thức 2',NULL,NULL,'5',15,3,'2021-06-30 08:53:54','2021-06-30 08:53:54','ACTIVE'),(54,'https://imgur.com/FSqtXpv.png','Slide kết thúc buổi học',NULL,NULL,'5',16,3,'2021-06-30 08:53:55','2021-06-30 08:53:55','ACTIVE'),(55,'https://imgur.com/dHDqq8N.png','Slide mở đầu buổi học',NULL,NULL,'5',1,4,'2021-06-30 08:53:55','2021-06-30 08:53:55','ACTIVE'),(56,'https://imgur.com/7FNQHsf.png','Nội dung chính của buổi học',NULL,NULL,'5',2,4,'2021-06-30 08:53:55','2021-06-30 08:53:55','ACTIVE'),(57,'https://imgur.com/UdR6Lc2.png','Giới thiệu về mảng 1 chiều',NULL,NULL,'5',3,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(58,'https://imgur.com/KZ7lK1n.png','Khai báo, khởi tạo mảng',NULL,NULL,'5',4,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(59,'https://imgur.com/WzFCvCN.png','Lặp và duyệt mảng',NULL,NULL,'5',5,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(60,'https://imgur.com/BT910V6.png','Lỗi khi lặp và duyệt mảng',NULL,NULL,'5',6,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(61,'https://imgur.com/j7JqSoP.png','Mảng 1 chiều - Tham chiếu',NULL,NULL,'5',7,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(62,'https://imgur.com/6cDhJhV.png','Mảng nhiều chiều ',NULL,NULL,'5',8,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(63,'https://imgur.com/eATtvx5.png','Chuỗi - Tạo chuỗi',NULL,NULL,'5',9,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(64,'https://imgur.com/4KbFmmt.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',10,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(65,'https://imgur.com/TlI6dl1.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',11,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(66,'https://imgur.com/PJ9zXN5.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',12,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(67,'https://imgur.com/1TJzY0b.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',13,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(68,'https://imgur.com/HfsAYzp.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',14,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(69,'https://imgur.com/yWibvrW.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',15,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(70,'https://imgur.com/8nVh1v6.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',16,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(71,'https://imgur.com/cCcAefb.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',17,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(72,'https://imgur.com/CiSZfv4.png','Chuỗi - Xử lý chuỗi',NULL,NULL,'5',18,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(73,'https://imgur.com/NkxpD7a.png','Giới thiệu về Enum trong Java',NULL,NULL,'5',19,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(74,'https://imgur.com/Dn00Jd2.png','Giới thiệu về Enum trong Java',NULL,NULL,'5',20,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(75,'https://imgur.com/jLulH4r.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',21,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(76,'https://imgur.com/zWZohqG.png','Slide kết thúc buổi học',NULL,NULL,'5',22,4,'2021-06-30 09:54:25','2021-06-30 09:54:25','ACTIVE'),(77,'https://imgur.com/fLkmYPK.png','Slide mở đầu buổi học',NULL,NULL,'5',1,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(78,'https://imgur.com/S1GN1tW.png','Nội dung chính của buổi học',NULL,NULL,'5',2,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(79,'https://imgur.com/MAJdLcd.png','Giới thiệu chung về OOP và POP',NULL,NULL,'5',3,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(80,'https://imgur.com/D6dIXgi.png','Giới thiệu về Class và Object',NULL,NULL,'5',4,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(81,'https://imgur.com/XuuVwaB.png','Ví dụ về Class và Object',NULL,NULL,'5',5,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(82,'https://imgur.com/UOUDhbk.png','Tìm hiểu về các thành phần của class',NULL,NULL,'5',6,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(83,'https://imgur.com/mzUqUyK.png','Tìm hiểu về các thành phần của class',NULL,NULL,'5',7,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(84,'https://imgur.com/M9V1Rz1.png','Ví dụ về class',NULL,NULL,'5',8,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(85,'https://imgur.com/h6PmMCN.png','Cách khởi tạo và truy xuất trong class',NULL,NULL,'5',9,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(86,'https://imgur.com/9kYz4AR.png','Ví dụ về cách khởi tạo và truy xuất',NULL,NULL,'5',10,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(87,'https://imgur.com/xZgr9ia.png','Giới thiệu và Access Modifiers',NULL,NULL,'5',11,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(88,'https://imgur.com/spT4c0X.png','Giới thiệu về Constructor',NULL,NULL,'5',12,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(89,'https://imgur.com/Y6HGlbW.png','Sự khác nhau giữa Constructor và Function',NULL,NULL,'5',13,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(90,'https://imgur.com/riFnrbK.png','Giới thiệu về phương thức Getters và Setters',NULL,NULL,'5',14,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(91,'https://imgur.com/fS3VKpC.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',15,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(92,'https://imgur.com/wYPRi0y.png','Giới thiệu về kiến thức buổi học tiếp theo',NULL,NULL,'5',16,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(93,'https://imgur.com/DPD6TMX.png','Cách sử dụng từ khoá this',NULL,NULL,'5',17,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(94,'https://imgur.com/LYmcz3J.png','Slide kết thúc buổi học',NULL,NULL,'5',18,5,'2021-06-30 16:42:47','2021-06-30 16:42:47','ACTIVE'),(95,'https://imgur.com/gRefekK.png','Slide mở đầu buổi học',NULL,NULL,'5',1,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(96,'https://imgur.com/2x4mMDM.png','Nội dung chính của buổi học',NULL,NULL,'5',2,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(97,'https://imgur.com/ToB8n1T.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',3,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(98,'https://imgur.com/U8m6XhV.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',4,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(99,'https://imgur.com/FjLREMZ.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',5,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(100,'https://imgur.com/3ggngO9.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',6,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(101,'https://imgur.com/x38ipRO.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',7,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(102,'https://imgur.com/x85Djzf.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',8,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(103,'https://imgur.com/DmBP4qi.png','Giới thiệu về tính kế thừa (Inheritance)',NULL,NULL,'5',9,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(104,'https://imgur.com/2rbRyMv.png','Giới thiệu về tính đa hình (Polymorphism)',NULL,NULL,'5',10,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(105,'https://imgur.com/3y9Mwv7.png','Phân biệt tính kế thừa và tính đa hình',NULL,NULL,'5',11,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(106,'https://imgur.com/NjDgFdx.png','Giới thiệu về Overloading',NULL,NULL,'5',12,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(107,'https://imgur.com/PYrfCQN.png','Giới thiệu về Overriding',NULL,NULL,'5',13,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(108,'https://imgur.com/NusjERS.png','So sánh Overriding vs Overloading',NULL,NULL,'5',14,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(109,'https://imgur.com/cWEpNuB.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',15,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(110,'https://imgur.com/2YNGkEz.png','Slide kết thúc buổi học',NULL,NULL,'5',16,6,'2021-06-30 18:05:40','2021-06-30 18:05:40','ACTIVE'),(111,'https://imgur.com/gPzNgK3.png','Slide mở đầu buổi học',NULL,NULL,'5',1,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(112,'https://imgur.com/Nnh4qUR.png','Nội dung chính của buổi học',NULL,NULL,'5',2,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(113,'https://imgur.com/dGyClzR.png','Giới thiệu về lớp trừu tượng (Abstract class)',NULL,NULL,'5',3,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(114,'https://imgur.com/O2dINbg.png','Giới thiệu về tính trừu tượng (Abstraction)',NULL,NULL,'5',4,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(115,'https://imgur.com/hwYltuV.png','Giới thiệu về Interface',NULL,NULL,'5',5,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(116,'https://imgur.com/z0u749t.png','Sự khác nhau Abstract Class và Interface',NULL,NULL,'5',6,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(117,'https://imgur.com/1c9uSFB.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',7,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(118,'https://imgur.com/38AOnRc.png','Slide kết thúc buổi học',NULL,NULL,'5',8,7,'2021-06-30 18:12:55','2021-06-30 18:12:55','ACTIVE'),(119,'https://imgur.com/Khqn1z1.png','Slide mở đầu buổi học',NULL,NULL,'5',1,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(120,'https://imgur.com/6qEAVOE.png','Nội dung chính của buổi học',NULL,NULL,'5',2,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(121,'https://imgur.com/tmygxDP.png','Giới thiệu về Collection',NULL,NULL,'5',3,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(122,'https://imgur.com/Wo9Dze8.png','Giới thiệu về ArrayList',NULL,NULL,'5',4,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(123,'https://imgur.com/lvMCSao.png','Giới thiệu về LinkedList',NULL,NULL,'5',5,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(124,'https://imgur.com/tYvakx5.png','So sánh ArrayList vs LinkedList',NULL,NULL,'5',6,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(125,'https://imgur.com/BXsjsmi.png','Giới thiệu về Sets',NULL,NULL,'5',7,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(126,'https://imgur.com/w8DSfvl.png','Các phương thức Collection',NULL,NULL,'5',8,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(127,'https://imgur.com/xNZSHiu.png','Giới thiệu về Map',NULL,NULL,'5',9,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(128,'https://imgur.com/oTEX7OR.png','Sắp xếp Collections',NULL,NULL,'5',10,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(129,'https://imgur.com/ucaisgu.png','Sắp xếp Collections',NULL,NULL,'5',11,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(130,'https://imgur.com/Y2fS4PZ.png','Sắp xếp Collections',NULL,NULL,'5',12,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(131,'https://imgur.com/OpAHnrA.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',13,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(132,'https://imgur.com/K8dvbun.png','Slide kết thúc buổi học',NULL,NULL,'5',14,8,'2021-07-01 02:42:17','2021-07-01 02:42:17','ACTIVE'),(133,'https://imgur.com/50Toezz.png','Slide mở đầu buổi học',NULL,NULL,'5',1,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(134,'https://imgur.com/NUxHZYg.png','Nội dung chính của buổi học',NULL,NULL,'5',2,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(135,'https://imgur.com/HnAzMOJ.png','Ngoại lệ là gì?',NULL,NULL,'5',3,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(136,'https://imgur.com/9JxX0I0.png','Các kiểu ngoại lệ trong Java',NULL,NULL,'5',4,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(137,'https://imgur.com/weYj009.png','Các kiểu ngoại lệ trong Java',NULL,NULL,'5',5,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(138,'https://imgur.com/jhgMlV3.png','Phân cấp các Lớp ngoại lệ trong Java',NULL,NULL,'5',6,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(139,'https://imgur.com/6BXkb5v.png','Một vài ngoại lệ thường xảy ra',NULL,NULL,'5',7,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(140,'https://imgur.com/pcOF1yW.png','Xử lý ngoại lệ',NULL,NULL,'5',8,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(141,'https://imgur.com/AJZLjU2.png','Xử lý ngoại lệ',NULL,NULL,'5',9,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(142,'https://imgur.com/gMdjMD6.png','Xử lý ngoại lệ',NULL,NULL,'5',10,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(143,'https://imgur.com/K33gJY4.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',11,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(144,'https://imgur.com/tl8YoTX.png','Slide kết thúc buổi học',NULL,NULL,'5',12,9,'2021-07-01 02:52:39','2021-07-01 02:52:39','ACTIVE'),(145,'https://imgur.com/BlchfS0.png','Slide mở đầu buổi học',NULL,NULL,'5',1,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(146,'https://imgur.com/xzepu1C.png','Nội dung chính của buổi học',NULL,NULL,'5',2,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(147,'https://imgur.com/3csMUEk.png','Các kiểu luồng dữ liệu trong Java',NULL,NULL,'5',3,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(148,'https://imgur.com/2NYiMNE.png','Giới thiệu về đọc file',NULL,NULL,'5',4,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(149,'https://imgur.com/SINdikd.png','InputStream',NULL,NULL,'5',5,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(150,'https://imgur.com/dZZRyNZ.png','InputStream',NULL,NULL,'5',6,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(151,'https://imgur.com/IBwslOK.png','InputStream',NULL,NULL,'5',7,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(152,'https://imgur.com/rJZ3tcB.png','InputStream',NULL,NULL,'5',8,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(153,'https://imgur.com/RMsTVMB.png','InputStream',NULL,NULL,'5',9,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(154,'https://imgur.com/UABYtuv.png','Reader',NULL,NULL,'5',10,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(155,'https://imgur.com/oA0RgBb.png','Reader',NULL,NULL,'5',11,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(156,'https://imgur.com/vbV7bul.png','Giới thiệu về ghi file',NULL,NULL,'5',12,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(157,'https://imgur.com/WjYyRcn.png','OutputStream',NULL,NULL,'5',13,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(158,'https://imgur.com/vmI23Lo.png','Writer',NULL,NULL,'5',14,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(159,'https://imgur.com/hH94leW.png','Writer',NULL,NULL,'5',15,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(160,'https://imgur.com/ThnnQNC.png','Writer',NULL,NULL,'5',16,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(161,'https://imgur.com/GKHRi1S.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',17,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(162,'https://imgur.com/ESndxje.png','Tóm tắt nội dung buổi học',NULL,NULL,'5',18,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(163,'https://imgur.com/NRIEMcc.png','Slide kết thúc buổi học',NULL,NULL,'5',19,10,'2021-07-01 03:02:53','2021-07-01 03:02:53','ACTIVE'),(164,'https://cdn.plusplus.vn/lms/images/20210725/223233491_Screenshot_1.png','aaaaaaaa','aaaaaa',NULL,NULL,NULL,1,'2021-07-25 15:32:38','2021-07-25 15:32:38','DELETED'),(165,'https://cdn-dev.plusplus.vn/lms/images/20210827/203353024_Ekko.png','aaaa',NULL,NULL,NULL,1,16,'2021-08-27 13:33:55','2021-08-27 13:33:55','DELETED'),(166,'https://cdn-dev.plusplus.vn/lms/images/20211005/224801805_6VU6eyL.jpeg','Test 1','sadasd',NULL,NULL,11,3,'2021-10-05 15:48:12','2021-10-05 15:48:12','DELETED'),(167,'https://cdn-dev.plusplus.vn/lms/images/20211005/224852555_5153645.jpg','Test 2','ádasd',NULL,NULL,12,3,'2021-10-05 15:49:01','2021-10-05 15:49:01','DELETED'),(168,'https://cdn-dev.plusplus.vn/lms/images/20211005/225931382_6VU6eyL.jpeg','hihi','ádasd',NULL,NULL,13,4,'2021-10-05 15:59:40','2021-10-05 15:59:40','ACTIVE'),(169,'https://cdn-dev.plusplus.vn/lms/images/20211005/230104865_5153645.jpg','test 2','Test',NULL,NULL,14,4,'2021-10-05 16:01:14','2021-10-05 16:01:14','DELETED'),(170,'https://cdn-dev.plusplus.vn/lms/images/20211005/230229424_braden-jarvis-p.jpg','Test3','dsfdsf',NULL,NULL,11,4,'2021-10-05 16:02:41','2021-10-05 16:02:41','DELETED'),(171,'https://cdn-dev.plusplus.vn/lms/images/20211005/230413119_beata-ratusznia.jpg','Test 23243',NULL,NULL,NULL,13,3,'2021-10-05 16:04:20','2021-10-05 16:04:20','DELETED'),(172,'https://cdn-dev.plusplus.vn/lms/images/20211005/230441490_beautiful-elf-g.jpg','ghfgd','hghh',NULL,NULL,11,3,'2021-10-05 16:04:48','2021-10-05 16:04:48','DELETED'),(173,'https://cdn-dev.plusplus.vn/lms/images/20211005/230509692_darrel-collins-.jpg','ưqewe',NULL,NULL,NULL,6,4,'2021-10-05 16:06:09','2021-10-05 16:06:09','ACTIVE'),(174,'https://cdn-dev.plusplus.vn/lms/images/20211005/230644894_cristina-gottar.jpg','dsfsf','1313',NULL,NULL,13,4,'2021-10-05 16:06:54','2021-10-05 16:06:54','DELETED'),(175,'https://cdn-dev.plusplus.vn/lms/images/20211006/085223650_244503199_18533.jpg','tesst add slide 2',NULL,NULL,NULL,1,11,'2021-10-06 01:52:34','2021-10-06 01:52:57','DELETED'),(176,'https://cdn-dev.plusplus.vn/lms/images/20211006/085336862_243136360_96272.jpg','test add slide 2','aaa',NULL,NULL,2,11,'2021-10-06 01:53:48','2021-10-06 01:53:48','DELETED'),(177,'https://cdn-dev.plusplus.vn/lms/images/20211006/085701915_244503199_18533.jpg','test add slide 3',NULL,NULL,NULL,3,11,'2021-10-06 01:57:13','2021-10-06 01:57:13','DELETED'),(178,'https://cdn-dev.plusplus.vn/lms/images/20211006/085719126_244503199_18533.jpg','test add slide 4',NULL,NULL,NULL,4,11,'2021-10-06 01:57:28','2021-10-06 01:57:28','DELETED'),(179,'https://cdn-dev.plusplus.vn/lms/images/20211006/085756158_244503199_18533.jpg','test add slide 1','a',NULL,NULL,2,11,'2021-10-06 01:58:05','2021-10-06 01:58:22','DELETED'),(180,'https://cdn-dev.plusplus.vn/lms/images/20211006/085811220_244503199_18533.jpg','test add slide 2',NULL,NULL,NULL,1,11,'2021-10-06 01:58:18','2021-10-06 01:58:26','DELETED'),(181,'https://cdn-dev.plusplus.vn/lms/images/20211006/085931846_244503199_18533.jpg','test add slide 1','aaa',NULL,NULL,1,16,'2021-10-06 01:59:40','2021-10-06 01:59:40','DELETED'),(182,'https://cdn-dev.plusplus.vn/lms/images/20211006/085944745_244503199_18533.jpg','test add slide 2','aaa',NULL,NULL,2,16,'2021-10-06 01:59:50','2021-10-06 01:59:55','DELETED'),(183,'https://cdn-dev.plusplus.vn/lms/images/20211006/090010589_ca.PNG','â','aa',NULL,NULL,4,16,'2021-10-06 02:00:16','2021-10-06 02:00:16','DELETED'),(184,'https://imgur.com/5VCSgZa.png',NULL,NULL,NULL,NULL,NULL,2,'2021-10-06 02:32:36','2021-10-06 02:32:36','DELETED'),(185,'https://imgur.com/FmAjNPJ.png','test',NULL,NULL,NULL,NULL,2,'2021-10-06 02:33:37','2021-10-06 02:33:37','DELETED'),(186,'https://imgur.com/5VCSgZa.png','test',NULL,NULL,NULL,NULL,2,'2021-10-06 02:35:37','2021-10-06 02:35:37','DELETED'),(187,'https://imgur.com/FmAjNPJ.png','test',NULL,NULL,NULL,31,2,'2021-10-06 02:36:12','2021-10-06 02:36:12','DELETED'),(188,NULL,'test',NULL,NULL,NULL,NULL,3,'2021-10-06 02:46:02','2021-10-06 02:46:02','DELETED'),(189,'123','12335',NULL,NULL,NULL,NULL,3,'2021-10-06 02:46:10','2021-10-06 02:46:10','DELETED'),(190,'https://imgur.com/FmAjNPJ.png','test',NULL,NULL,NULL,11,3,'2021-10-06 02:47:12','2021-10-06 02:47:12','DELETED'),(191,'https://imgur.com/FmAjNPJ.png','test','abc',NULL,NULL,11,3,'2021-10-06 02:47:39','2021-10-06 02:47:39','DELETED'),(192,'https://imgur.com/5VCSgZa.png','test2','abc',NULL,NULL,12,3,'2021-10-06 02:47:57','2021-10-06 02:47:57','DELETED'),(193,'https://imgur.com/5VCSgZa.png','abc','test',NULL,NULL,14,3,'2021-10-06 02:48:40','2021-10-06 02:48:40','DELETED'),(194,'https://imgur.com/FmAjNPJ.png','test','test',NULL,NULL,15,3,'2021-10-06 02:55:01','2021-10-06 02:55:01','DELETED'),(195,'https://imgur.com/FmAjNPJ.png','test','test',NULL,NULL,11,3,'2021-10-06 02:57:11','2021-10-06 02:57:11','DELETED'),(196,'https://imgur.com/KZ7lK1n.png','test','test',NULL,NULL,14,4,'2021-10-06 02:57:59','2021-10-06 02:57:59','DELETED'),(197,'https://cdn-dev.plusplus.vn/lms/images/20211005/230644894_cristina-gottar.jpg','test','test',NULL,NULL,12,4,'2021-10-06 02:58:41','2021-10-06 02:58:41','DELETED'),(198,'https://cdn-dev.plusplus.vn/lms/images/20211005/230644894_cristina-gottar.jpg','test2','abc',NULL,NULL,14,4,'2021-10-06 02:58:58','2021-10-06 02:58:58','DELETED'),(199,'https://cdn-dev.plusplus.vn/lms/images/20211005/230509692_darrel-collins-.jpg','abc','ág',NULL,NULL,13,4,'2021-10-06 02:59:31','2021-10-06 02:59:31','DELETED'),(200,'https://cdn-dev.plusplus.vn/lms/images/20211005/230509692_darrel-collins-.jpg','ádg','cvbcv',NULL,NULL,16,4,'2021-10-06 03:00:03','2021-10-06 03:00:03','DELETED'),(201,'https://cdn-dev.plusplus.vn/lms/images/20211005/225931382_6VU6eyL.jpeg','test','ahsd',NULL,NULL,7,4,'2021-10-06 03:01:23','2021-10-06 03:01:23','DRAFF'),(202,'https://cdn-dev.plusplus.vn/lms/images/20211005/230644894_cristina-gottar.jpg','rhgf','sad',NULL,NULL,8,4,'2021-10-06 03:01:45','2021-10-06 03:01:45','DRAFF'),(203,'https://cdn-dev.plusplus.vn/lms/images/20211008/125552147_Slide1.PNG',NULL,NULL,NULL,NULL,1,16,'2021-10-08 05:55:59','2021-10-08 05:55:59','ACTIVE'),(204,'https://cdn-dev.plusplus.vn/lms/images/20211008/125608477_Slide2.PNG',NULL,NULL,NULL,NULL,3,16,'2021-10-08 05:56:14','2021-10-08 05:56:14','DRAFF'),(205,'https://cdn-dev.plusplus.vn/lms/images/20211008/125621513_Slide3.PNG',NULL,NULL,NULL,NULL,4,16,'2021-10-08 05:56:24','2021-10-08 05:56:24','DRAFF'),(206,'https://cdn-dev.plusplus.vn/lms/images/20211008/125808586_Slide4.PNG',NULL,NULL,NULL,NULL,5,16,'2021-10-08 05:58:11','2021-10-08 05:58:15','DRAFF'),(207,'https://cdn-dev.plusplus.vn/lms/images/20211008/125912196_Slide5.PNG',NULL,NULL,NULL,NULL,NULL,16,'2021-10-08 05:59:13','2021-10-08 05:59:13','DRAFF');
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `avt_img` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `achievement` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (2,31,'Phan Hoang',NULL,'0967000696','abc@gmail.com','string',NULL,NULL,'2021-09-11 09:40:14','2021-09-11 09:40:14');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,'admin-4c5b8643-6f26-451c-9d8b-79a51923260a','2021-06-12 09:12:31','2021-10-24 13:13:37','2021-10-24 16:13:37',1),(8,'3ef786d0-7ac6-439d-9d9f-f6a9721a0aa7','2021-06-21 16:31:40','2021-06-26 17:19:01','2021-06-26 20:19:01',4),(13,'admin-11992bbb-0577-42e4-acbb-394b826e323d','2021-07-07 06:16:30','2021-10-24 13:14:19','2021-10-24 16:14:19',2),(14,'50f58fb1-4545-4730-890d-ea1f0605a4c9','2021-07-24 16:03:16','2021-07-24 16:03:16','2021-07-24 19:03:16',5),(15,'admin-bf3a7432-c07d-4f82-bead-50d8704b4232','2021-07-25 03:04:19','2021-10-21 17:40:19','2021-10-21 20:40:19',3),(17,'admin-fab66c5d-164e-499e-9e28-e1a4f95968aa','2021-08-08 04:24:35','2021-10-16 14:06:34','2021-10-16 17:06:34',7),(18,'admin-a163e35f-c421-4dc8-9c59-bed3c767b071','2021-08-08 12:27:41','2021-08-08 12:28:39','2021-08-08 15:28:39',8),(19,'user-898b5dd5-7115-40fd-8a59-0a1b06585618','2021-08-08 13:45:29','2021-09-16 11:14:23','2021-09-16 14:14:23',9),(20,'user-48c76107-07e0-45b5-bf91-d63461baf5d0','2021-08-08 14:00:15','2021-08-08 14:00:15','2021-08-08 17:00:15',10),(21,'user-c77df2cc-9a44-4752-a3c4-2b4f1a817620','2021-08-12 07:31:29','2021-10-23 17:16:39','2021-10-23 20:16:39',11),(22,'user-e48636d3-9553-449c-83c9-85052ac2ad82','2021-08-14 15:12:07','2021-10-14 08:47:12','2021-10-14 11:47:12',12),(23,'user-5fd7d13c-7504-478b-9bbb-cd59d6031b82','2021-08-15 10:44:02','2021-10-13 16:44:14','2021-10-13 19:44:14',15),(24,'user-366c5a37-89df-48f6-8d95-83addcd20587','2021-08-15 12:15:08','2021-08-15 12:15:08','2021-08-15 15:15:08',13),(25,'user-1cfe4264-66bc-4581-9cb3-3eecbc787010','2021-08-23 08:14:07','2021-08-26 08:02:28','2021-08-26 11:02:28',14),(26,'admin-e50b161c-a2b2-4c10-89d8-fbd14feb2d9d','2021-09-03 14:46:45','2021-09-08 04:30:49','2021-09-08 07:30:49',17),(27,'admin-4ab27c87-c4c0-4a2c-84fc-f817e63bf52c','2021-09-04 03:12:45','2021-09-08 04:30:45','2021-09-08 07:30:45',19),(28,'admin-6cf99c33-1578-4695-ae0f-937581225c03','2021-09-04 08:00:35','2021-09-08 04:33:39','2021-09-08 07:33:39',20),(29,'user-0aa86c8e-dd86-4584-9f84-f060d4eb2088','2021-09-05 12:20:01','2021-10-16 06:39:50','2021-10-16 09:39:50',21),(30,'user-eef7c43c-18bb-46bb-931e-19de91c209e3','2021-09-06 13:23:08','2021-09-27 07:39:49','2021-09-27 10:39:49',22),(31,'admin-a5d791c2-45f1-4185-8b28-093c678cebf9','2021-09-06 13:29:17','2021-09-17 02:06:02','2021-09-17 05:06:02',23),(32,'admin-c99e5ec5-6f27-4302-b1ec-19d50d26bb1e','2021-09-08 06:07:13','2021-10-23 09:56:39','2021-10-23 12:56:39',24),(33,'admin-c4046cfc-05ee-4763-9637-8bd275fc3581','2021-09-08 06:09:17','2021-10-18 02:23:02','2021-10-18 05:23:02',25),(34,'user-64b6a251-8fde-4a8b-acf4-cfb5cd64c522','2021-09-11 09:42:30','2021-10-13 15:16:13','2021-10-13 18:16:13',30),(35,'user-9178667a-ef40-4adf-a8cd-398a0a2eaab4','2021-09-16 03:56:29','2021-09-16 03:56:29','2021-09-16 06:56:29',32),(36,'user-4b321748-d989-4390-a972-d1edc5a45b59','2021-09-25 02:16:51','2021-10-24 08:53:27','2021-10-24 11:53:27',40),(37,'admin-c5a9b838-3fb8-4971-bfb9-e480e6b39be5','2021-10-11 03:43:25','2021-10-24 13:13:55','2021-10-24 16:13:55',41),(38,'user-5a0a6cd9-dbbf-4a54-8b71-ddba060548ee','2021-10-13 15:00:25','2021-10-13 16:45:05','2021-10-13 19:45:05',31),(39,'user-e3b65c13-3c4c-4158-988a-5555d674877e','2021-10-21 04:55:10','2021-10-22 03:24:56','2021-10-22 06:24:56',42),(40,'user-a13e9cf4-89c3-4557-9969-5459417eee36','2021-10-21 05:05:36','2021-10-21 05:05:36','2021-10-21 08:05:36',43),(41,'user-48494e4d-a53c-462e-8caa-b3df325c2244','2021-10-23 09:13:51','2021-10-23 09:13:51','2021-10-23 12:13:51',44),(42,'user-02792558-db22-43dd-9690-72a6c649ea2f','2021-10-23 16:00:11','2021-10-23 16:00:54','2021-10-23 19:00:54',45);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `achievement` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `mentor_ids_favourite` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(45) DEFAULT NULL,
  `account_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ADMIN',NULL,NULL,'root@gmail.com',NULL,'root','$2a$10$ZXd.wokdXd.Ne8bLqxzpNOyeujMdHUICmIDbVayKWu7pWSfcrlZUi',2,4,'ACTIVE',NULL,'2021-06-21 16:25:36','2021-09-17 08:58:51','MENTOR',NULL),(2,'Phan Hoang','https://cdn-dev.plusplus.vn/lms/images/20210913/212134048_6VU6eyL.jpeg',NULL,'phanhoangbn16@gmail.com',NULL,'phanhoanguet','$2a$10$5q6M5bofVRoAOyyHgfr.cOwsK9/uaIL1NpVK6goPYYd8MU1kP37je',2,4,'ACTIVE',NULL,'2021-06-17 07:50:52','2021-09-27 07:41:11','MENTOR',NULL),(3,'Van Ho',NULL,NULL,NULL,NULL,'vanht','$2a$10$rn/RDe0w8YSYkkr88HdA1ut3I1dKJ4u3ycqrchvPSf2vkPFxk3AkK',4,4,'ACTIVE',NULL,'2021-07-24 16:00:33','2021-09-13 16:36:03','MENTOR',NULL),(7,'Nguyễn Xuân Kiểm Student','https://cdn-dev.plusplus.vn/lms/images/20210805/163729236_Screenshot_1.png','0123456789','kiemnx@gmail.com',NULL,'kiemnx','$2a$10$x/u4MAGXflXr/wW4VCaIM.2D8jkGnGeRD9okHEYEUHmE1ncqKGhIO',6,4,'ACTIVE',NULL,'2021-08-08 03:58:41','2021-09-13 13:08:55','MENTOR',NULL),(8,'Van HT',NULL,NULL,NULL,NULL,'vanht_user','$2a$10$xx3qQDtVyXKb3qAwiGPrquf6CieBrTvzBDrYnnb0lyeS6qGm5vXkW',NULL,NULL,'ACTIVE',NULL,'2021-08-08 12:27:24','2021-08-08 12:27:24','MENTOR',NULL),(9,'Tran Viet Duc',NULL,'0909090909','abc@gmail.com','VietNam','vietduc','$2a$10$aev9adUGrjhtlZ2QGV9eU.qMb6T0RqExTCKurZWcNhHMehj33Gzty',6,NULL,'ACTIVE',NULL,'2021-08-08 12:34:12','2021-08-15 10:03:27','STUDENT',NULL),(11,'Ho Anh Van','https://cdn-dev.plusplus.vn/lms/images/20210830/032007122_test.jpg',NULL,'test@mail.com',NULL,'vanht_student','$2a$10$8MSJA15vQQDAnBWpSSH1TO/T1YlPXLiEWpQsMEk1ZD4q4JQOu/DFm',NULL,NULL,'ACTIVE',NULL,'2021-08-12 07:19:30','2021-08-29 20:20:07','STUDENT',NULL),(12,'Nguyễn Xuân Kiểm Student','https://cdn-dev.plusplus.vn/lms/images/20210913/210049429_Capture.PNG','0979155813',NULL,NULL,'kiemnx_student','$2a$10$actzQWVwX6/dZxhvIVH7BexrYlEFPC6YY6jtpiPEugKzycdQVdgFy',NULL,NULL,'ACTIVE',NULL,'2021-08-14 15:11:43','2021-09-13 14:00:49','STUDENT',NULL),(13,'test',NULL,'0909090909',NULL,NULL,'test','12345',NULL,NULL,'ACTIVE',NULL,'2021-08-14 19:36:28','2021-08-14 19:42:20','STUDENT',NULL),(15,'Phan Nho Hoàng','https://cdn-dev.plusplus.vn/lms/images/20210815/173355359_228240166_20530.png','','abc@gmail.com','VietNam','hoang','$2a$10$AgrBRIEfpCwVxPG4EPl88uw1WpaY6HaCvu/STwCdoPT4aBY4Hk.HC',NULL,NULL,'ACTIVE',NULL,'2021-08-15 10:34:10','2021-08-15 10:34:10','STUDENT',NULL),(21,'Nguyen Xuan Tho',NULL,'0357004230',NULL,NULL,'thotest','$2a$10$VuJps.4FZKQQImig/sFwsu2cmmAQzYOjqeTqfhbushxnwE7/qucD2',NULL,NULL,'DRAFF',NULL,'2021-09-05 12:19:17','2021-09-05 12:19:17','STUDENT',NULL),(22,'Phan Nho Hoàng','https://cdn-dev.plusplus.vn/lms/images/20210906/204445702_bae_photo.jpg','0967000696','abc@gmail.com','VietNam','hoangvip','$2a$10$QlbVH7.dW0YSqy0y6uN8RusaiNUoqZ5t8OPznbHMJ22NWJyHambeO',NULL,NULL,'ACTIVE',NULL,'2021-09-06 13:22:50','2021-09-11 13:32:54','MENTOR',NULL),(23,'abc',NULL,'0967000696','abc@gmail.com','VietNam','test16','$2a$10$XrmBfBOy23V0AhkQ1H/72ulU.X/bsDnJYeXpB4P3i56lzq.PbVIwa',NULL,NULL,'ACTIVE',NULL,'2021-09-06 13:29:01','2021-09-06 13:31:21','MENTOR',NULL),(24,'mentor',NULL,NULL,'alo@gmail.com',NULL,'haint1','$2a$10$kliaZQFUUOnQ1enTrm.1IOu0Lk5sKOEMx7tuC5fDU651qZx92759q',NULL,NULL,'ACTIVE',NULL,'2021-09-08 04:34:24','2021-10-23 09:56:19','MENTOR',NULL),(25,'Hai Dep Zai','string','0337694255','root@gmail.com','string','haint2','$2a$10$nNda7AyLZtxRTncaRnQ73OB4fjAQF7aMrs0AxYeGw4hEJ3JE3pp1K',NULL,NULL,'ACTIVE',NULL,'2021-09-08 06:08:11','2021-09-19 02:48:52','MENTOR',NULL),(30,'Phan Hoang',NULL,'0967000696','abc@gmail.com','string','hoangtest1','$2a$10$iHyrLRyXYXZbQ8NLtNUDkeukPYY.8DZ4749kSxkJBibsSFvJbzx3.',NULL,NULL,'ACTIVE',NULL,'2021-09-11 09:38:23','2021-09-11 09:38:23','MENTOR',NULL),(31,'Phan Hoang',NULL,'0967000696','abc@gmail.com','string','hoangtest2','$2a$10$tcpOOXhQi6S3tAQsQyqNOuZsRy79TS7EC7aWsokoahzPV8d7voeka',NULL,NULL,'ACTIVE','[]','2021-09-11 09:40:14','2021-09-11 09:40:14','STUDENT',NULL),(40,'Huu Thanh',NULL,'0326764188',NULL,'Bac Ninh','thanhst','$2a$10$Jki4be9y1XzcU6Nm1kqs9O/oBlcwIWDXEdc3a1p9BUop8aA9/s5mi',NULL,NULL,'ACTIVE','[3,8,9]','2021-09-25 02:15:42','2021-10-24 08:53:20','STUDENT',NULL),(41,'Huu Thanh',NULL,NULL,'hthanh@gmail.com','Bac Ninh','nhthanh','$2a$10$t0HfOl.W3etZo1rDtv0CDeYIIYdqg6x5IA5Y71f/o72dlmObAXKv6',NULL,NULL,'ACTIVE',NULL,'2021-10-11 03:43:03','2021-10-23 10:08:20','MENTOR',NULL),(42,'nx Kiem','https://lh3.googleusercontent.com/a/AATXAJyQeOd5HuY_5nnRXBbL_EYZW4POh9Qo883WyFty=s96-c',NULL,'kiemnguyenxuan1@gmail.com',NULL,'106042675557843651361',NULL,NULL,NULL,'ACTIVE',NULL,'2021-10-21 04:55:10','2021-10-22 03:24:56','STUDENT','GOOGLE'),(43,'Kiểm Nguyễn','https://lh3.googleusercontent.com/a/AATXAJwwDdnbrAYJG2dy53r1hUOci8aa7RREI9RpwnPnug=s96-c',NULL,'kiemnguyenxuan@gmail.com',NULL,'107355623273344360521',NULL,NULL,NULL,'ACTIVE',NULL,'2021-10-21 05:05:36','2021-10-21 05:05:36','STUDENT','GOOGLE'),(44,'Hải Nguyễn Trọng','https://lh3.googleusercontent.com/a-/AOh14Gi4gHZzGdRTCQoV7i7TA5o_4VNB81H6r2jzXPQO=s96-c',NULL,'daodiencuocdoi1@gmail.com',NULL,'103370543402793541117',NULL,NULL,NULL,'ACTIVE',NULL,'2021-10-23 09:13:51','2021-10-23 09:13:51','STUDENT','GOOGLE'),(45,'Kiểm Nguyễn','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2684868328486434&height=64&width=64&ext=1637596854&hash=AeSFPHoW49ZuY7Ic2oo',NULL,NULL,NULL,'2684868328486434',NULL,NULL,NULL,'ACTIVE',NULL,'2021-10-23 16:00:11','2021-10-23 16:00:54','STUDENT','FACEBOOK');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_course`
--

DROP TABLE IF EXISTS `user_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_course`
--

LOCK TABLES `user_course` WRITE;
/*!40000 ALTER TABLE `user_course` DISABLE KEYS */;
INSERT INTO `user_course` VALUES (1,1,1,'STUDYING','2021-06-12 09:53:29','2021-06-12 09:53:29','ACTIVE',NULL),(2,2,1,'STUDYING','2021-06-17 15:24:43','2021-06-17 15:24:43','ACTIVE',NULL),(3,3,1,'STUDYING','2021-07-25 03:02:07','2021-07-25 03:02:07','DELETED',NULL),(5,11,1,'STUDYING','2021-08-12 07:32:32','2021-08-12 07:32:32','ACTIVE',NULL),(6,11,2,'STUDYING','2021-08-12 07:33:05','2021-08-12 07:33:05','ACTIVE',NULL),(7,11,3,'STUDYING','2021-08-12 07:33:05','2021-08-12 07:33:05','ACTIVE',NULL),(10,4,2,'STUDYING','2021-08-17 10:14:45','2021-08-17 10:20:32','DRAFF','NO_ROOM'),(11,15,2,'STUDYING','2021-08-17 10:14:45','2021-08-19 08:12:14','ACTIVE','NO_ROOM'),(12,14,2,'STUDYING','2021-08-17 10:17:50','2021-08-17 10:17:50','ACTIVE','NO_ROOM'),(13,3,2,'STUDYING','2021-08-17 10:28:11','2021-08-17 10:28:11','ACTIVE','NO_ROOM'),(16,9,9,'STUDYING','2021-08-19 02:53:39','2021-08-19 02:53:39','ACTIVE','NO_ROOM'),(17,3,9,'STUDYING','2021-08-19 02:53:39','2021-08-19 14:02:28','ACTIVE','ROOM'),(21,15,9,'STUDYING','2021-08-19 06:46:56','2021-08-19 12:24:21','ACTIVE','ROOM'),(32,4,9,'STUDYING','2021-08-19 12:34:16','2021-08-19 12:34:16','ACTIVE','ROOM');
/*!40000 ALTER TABLE `user_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_exam`
--

DROP TABLE IF EXISTS `user_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_exam` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `comment` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_exam`
--

LOCK TABLES `user_exam` WRITE;
/*!40000 ALTER TABLE `user_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_exam_answer`
--

DROP TABLE IF EXISTS `user_exam_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_exam_answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exam_question_id` int(11) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_exam_answer`
--

LOCK TABLES `user_exam_answer` WRITE;
/*!40000 ALTER TABLE `user_exam_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_exam_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_lesson`
--

DROP TABLE IF EXISTS `user_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `attend_status` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `mentor_c_user` text,
  `user_c_mentor` text,
  `score` float DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_lesson`
--

LOCK TABLES `user_lesson` WRITE;
/*!40000 ALTER TABLE `user_lesson` DISABLE KEYS */;
INSERT INTO `user_lesson` VALUES (1,23,1,1,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-10 14:01:31','2021-09-10 14:01:31'),(2,23,3,2,'Vắng mặt',NULL,NULL,NULL,NULL,'2021-09-10 14:03:33','2021-09-10 14:30:21'),(18,21,1,2,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 02:25:03','2021-09-29 02:25:03'),(19,30,1,2,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 02:26:21','2021-09-29 02:26:21'),(20,40,2,2,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 02:28:43','2021-09-29 02:28:43'),(21,9,2,2,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 02:32:53','2021-09-29 02:32:53'),(22,9,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:24:34','2021-09-29 07:24:34'),(23,11,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:25:35','2021-09-29 07:25:35'),(24,12,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:28:59','2021-09-29 07:28:59'),(25,21,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:30:45','2021-09-29 07:30:45'),(26,22,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:30:52','2021-09-29 07:30:52'),(27,23,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:30:56','2021-09-29 07:30:56'),(28,24,6,13,'Có mặt',NULL,NULL,NULL,NULL,'2021-09-29 07:32:22','2021-09-29 07:32:22'),(30,43,2,2,'attend',NULL,NULL,NULL,NULL,'2021-10-23 04:28:37','2021-10-23 04:28:37');
/*!40000 ALTER TABLE `user_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_quizz`
--

DROP TABLE IF EXISTS `user_quizz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_quizz` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quizz_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `comment` text,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_quizz`
--

LOCK TABLES `user_quizz` WRITE;
/*!40000 ALTER TABLE `user_quizz` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_quizz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_quizz_answer`
--

DROP TABLE IF EXISTS `user_quizz_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_quizz_answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quizz_question_id` int(11) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_quizz_answer`
--

LOCK TABLES `user_quizz_answer` WRITE;
/*!40000 ALTER TABLE `user_quizz_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_quizz_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1,'2021-08-12 08:19:50','2021-08-12 08:19:50'),(2,2,11,'2021-08-12 08:39:03','2021-08-12 08:39:03'),(3,1,2,'2021-08-12 08:39:03','2021-08-12 08:39:03'),(4,1,3,'2021-08-12 08:40:09','2021-08-12 08:40:09'),(5,2,9,'2021-08-12 09:00:57','2021-08-12 09:00:57'),(6,1,7,'2021-08-12 09:42:02','2021-08-12 09:42:02'),(7,2,12,'2021-08-14 15:11:43','2021-08-14 15:11:43'),(8,2,13,'2021-08-14 19:36:28','2021-08-14 19:36:28'),(9,1,4,'2021-08-15 02:24:19','2021-08-15 02:24:19'),(10,2,4,'2021-08-15 02:24:19','2021-08-15 02:24:19'),(11,2,14,'2021-08-15 10:16:19','2021-08-15 10:16:19'),(12,2,15,'2021-08-15 10:34:10','2021-08-15 10:34:10'),(20,1,20,'2021-09-04 08:06:29','2021-09-04 08:06:29'),(21,2,21,'2021-09-05 12:19:17','2021-09-05 12:19:17'),(24,8,22,'2021-09-06 13:22:50','2021-09-06 13:22:50'),(26,8,23,'2021-09-06 13:31:21','2021-09-06 13:31:21'),(41,1,30,'2021-09-11 09:38:23','2021-09-11 09:38:23'),(42,2,31,'2021-09-11 09:40:14','2021-09-11 09:40:14'),(43,12,30,'2021-09-11 09:41:51','2021-09-11 09:41:51'),(44,12,22,'2021-09-11 13:32:54','2021-09-11 13:32:54'),(46,10,3,'2021-09-12 10:16:18','2021-09-12 10:16:18'),(48,8,7,'2021-09-12 13:38:53','2021-09-12 13:38:53'),(49,10,7,'2021-09-13 13:08:55','2021-09-13 13:08:55'),(50,10,1,'2021-09-13 13:24:19','2021-09-13 13:24:19'),(51,10,2,'2021-09-13 14:14:03','2021-09-13 14:14:03'),(54,2,32,'2021-09-16 02:27:22','2021-09-16 02:27:22'),(55,12,1,'2021-09-17 08:58:51','2021-09-17 08:58:51'),(59,1,33,'2021-09-18 05:59:35','2021-09-18 05:59:35'),(60,3,33,'2021-09-18 05:59:35','2021-09-18 05:59:35'),(61,2,34,'2021-09-18 05:59:45','2021-09-18 05:59:45'),(62,2,36,'2021-09-18 06:01:44','2021-09-18 06:01:44'),(63,2,37,'2021-09-18 06:02:22','2021-09-18 06:02:22'),(64,3,37,'2021-09-18 06:02:22','2021-09-18 06:02:22'),(65,4,38,'2021-09-18 06:03:14','2021-09-18 06:03:14'),(66,2,38,'2021-09-18 06:03:14','2021-09-18 06:03:14'),(67,3,38,'2021-09-18 06:03:14','2021-09-18 06:03:14'),(68,2,39,'2021-09-18 06:04:51','2021-09-18 06:04:51'),(69,3,39,'2021-09-18 06:04:51','2021-09-18 06:04:51'),(72,10,25,'2021-09-19 02:46:12','2021-09-19 02:46:12'),(73,2,40,'2021-09-25 02:15:42','2021-09-25 02:15:42'),(74,12,2,'2021-09-27 07:41:11','2021-09-27 07:41:11'),(75,1,41,'2021-10-11 03:43:03','2021-10-11 03:43:03'),(76,10,41,'2021-10-11 03:43:03','2021-10-11 03:43:03'),(77,12,41,'2021-10-11 03:43:03','2021-10-11 03:43:03'),(78,1,25,'2021-10-15 12:27:19','2021-10-15 12:27:19'),(79,2,42,'2021-10-21 04:55:10','2021-10-21 04:55:10'),(80,2,43,'2021-10-21 05:05:36','2021-10-21 05:05:36'),(81,2,44,'2021-10-23 09:13:51','2021-10-23 09:13:51'),(83,13,24,'2021-10-23 09:32:21','2021-10-23 09:32:21'),(88,13,1,'2021-10-23 10:03:09','2021-10-23 10:03:09'),(89,2,45,'2021-10-23 16:00:11','2021-10-23 16:00:11');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_lesson`
--

DROP TABLE IF EXISTS `video_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `link_video` text NOT NULL,
  `note` text,
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_time` timestamp(6) NULL DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_lesson`
--

LOCK TABLES `video_lesson` WRITE;
/*!40000 ALTER TABLE `video_lesson` DISABLE KEYS */;
INSERT INTO `video_lesson` VALUES (1,1,1,'test update','test update','2021-09-11 10:31:15.000000','2021-09-11 10:37:37.000000','ACTIVE'),(2,3,2,'test',NULL,'2021-09-11 10:31:33.000000',NULL,'ACTIVE'),(3,2,3,'test update','test update','2021-09-11 10:39:15.000000','2021-09-11 10:39:15.000000','ACTIVE'),(4,0,0,'test thêm video',NULL,'2021-09-12 02:44:16.000000',NULL,'ACTIVE'),(5,3,3,'test update video','test thêm','2021-09-12 02:44:35.000000','2021-09-12 03:25:45.000000','DELETED'),(6,3,3,'test thêm video',NULL,'2021-09-12 03:25:12.000000',NULL,'ACTIVE'),(7,3,3,'test thêm video',NULL,'2021-09-12 03:25:15.000000',NULL,'ACTIVE'),(8,3,3,'test thêm video',NULL,'2021-09-12 03:27:44.000000',NULL,'ACTIVE');
/*!40000 ALTER TABLE `video_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_code` varchar(45) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `expired_time` timestamp(6) NULL DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `remain` int(11) DEFAULT NULL,
  `noted` text,
  `course_id_apply` int(11) DEFAULT NULL,
  `user_id_apply` int(11) DEFAULT NULL,
  `updated_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (2,'ABCD123',100,'2021-11-20 16:59:59.000000',4,2,NULL,1,3,'2021-09-28 14:50:41.000000','2021-08-11 07:38:01.000000','ACTIVE'),(3,'testttttttt',10,'2021-10-20 08:51:26.000000',10,4,NULL,8,NULL,'2021-08-20 08:56:45.000000','2021-08-20 08:51:48.000000','ACTIVE'),(4,'abcd',100,'2021-08-20 08:55:43.000000',10,1,NULL,3,1,'2021-08-20 08:56:07.000000','2021-08-20 08:56:07.000000','ACTIVE'),(5,'all',10,'2021-11-20 08:55:43.000000',100,100,NULL,NULL,NULL,'2021-09-28 08:09:01.927997','2021-09-28 08:09:01.927997','ACTIVE'),(6,'test',25,'2021-09-30 16:44:13.000000',100,100,NULL,NULL,3,'2021-09-28 16:44:31.000000','2021-09-28 16:44:31.000000','ACTIVE'),(7,'abc',23,'2021-09-30 16:45:36.000000',10,NULL,NULL,NULL,3,'2021-09-28 16:47:37.000000','2021-09-28 16:47:37.000000','DELETED'),(8,'vanht',34,'2021-09-29 16:50:03.000000',1,1,NULL,NULL,3,'2021-09-28 16:54:17.000000','2021-09-28 16:50:39.000000','ACTIVE'),(9,'abh',23,'2021-09-29 16:54:50.000000',1,NULL,NULL,NULL,3,'2021-09-28 16:58:16.000000','2021-09-28 16:55:13.000000','ACTIVE'),(10,'123',12,'2021-09-28 17:01:12.000000',1,NULL,NULL,NULL,3,'2021-09-28 17:01:28.000000','2021-09-28 17:01:28.000000','ACTIVE'),(11,'hihi',10,'2021-11-11 14:44:26.000000',10,10,NULL,1,2,'2021-10-08 14:45:04.000000','2021-10-08 14:45:04.000000','ACTIVE');
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-24 20:53:20
