CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_posts_user_id_users_id` (`user_id`),
  CONSTRAINT `FK_posts_user_id_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
  );

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
  );

CREATE TABLE `post_tags` (
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  KEY `FK_post_tags_tag_id_tags_id` (`tag_id`),
  KEY `FK_post_tags_post_id_posts_id` (`post_id`),
  CONSTRAINT `FK_post_tags_post_id_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_post_tags_tag_id_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
  );