# Create table app_users
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `app_users`;

CREATE TABLE `app_users` (
  `facebook_id` varchar(100) NOT NULL,
  `fb_access_token` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`facebook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table og_actions
# ------------------------------------------------------------
# EXAMPLE : working, enjoying

-- DROP TABLE IF EXISTS `og_actions`;

CREATE TABLE IF NOT EXISTS `og_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,	
  `action_id` int(11) NOT NULL,
  `action_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table og_object_type
# ------------------------------------------------------------
# EXAMPLE : Location

-- DROP TABLE IF EXISTS `og_object_type`;

CREATE TABLE IF NOT EXISTS `og_object_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table og_object_type_properties
# ------------------------------------------------------------
# THIS WILL BE USED LATER WHEN WE ALLOW CUSTOM OBJECT PROPERTIES

-- CREATE TABLE IF NOT EXISTS `og_object_type_properties` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
--   `og_object_type_id` int(11) NOT NULL,
--   `property_name` varchar(30) NOT NULL,    
--   PRIMARY KEY (`id`)
-- ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

 

# Create table og_objects
# ------------------------------------------------------------
# EXAMPLE : chai gali, momo gali, za-bistro, terrace, ruby room

-- DROP TABLE IF EXISTS `og_objects`;

CREATE TABLE IF NOT EXISTS `og_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `url` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (type_id) REFERENCES og_object_type(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table readers_actions
# ------------------------------------------------------------
# LIST OF READER IDS CAN BE OBTAINED THROUGH AN API CALL TO TAGIT.COM

-- DROP TABLE IF EXISTS `readers_actions`;

CREATE TABLE IF NOT EXISTS `readers_action_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` varchar(50) NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (action_id) REFERENCES og_actions(id) ON DELETE CASCADE,
  FOREIGN KEY (object_id) REFERENCES og_objects(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
