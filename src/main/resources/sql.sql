CREATE TABLE `futao_user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1






CREATE TABLE `futao_article` (
  `id`             varchar(32) NOT NULL,
  `title`          varchar(100)         DEFAULT NULL,
  `description`    varchar(300)         DEFAULT NULL,
  `content`        varchar(3)           DEFAULT NULL,
  `createTime`     timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)
