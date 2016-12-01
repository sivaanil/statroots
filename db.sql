-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2016 at 03:34 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_auth_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `fk_user_id_auth_assignment_table` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('user', 2, 1480585811);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `auth_item_type` (`type`),
  KEY `fk_auth_item_table_rule_name` (`rule_name`),
  KEY `fk_auth_item_table_group_code` (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `group_code`, `data`, `created_at`, `updated_at`) VALUES
('/admin', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/#mediafile', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/comment/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/bulk-spam', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/bulk-trash', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/create', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/update', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/comment/default/view', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/default/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/media/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/create', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/album/update', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/create', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/category/update', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/default/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/default/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/default/settings', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/info', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/resize', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/update', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/upload', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/media/manage/uploader', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/menu/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/default/view', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/menu/link/view', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/page/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/create', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/delete', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/update', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/page/default/view', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/post/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/category/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/default/view', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/post/tag/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/settings/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/settings/cache/flush', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/settings/default/*', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/settings/default/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/settings/reading/index', 3, NULL, NULL, NULL, NULL, 1480584510, 1480584510),
('/admin/site/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/translation/*', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/translation/default/*', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/translation/default/index', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/translation/source/*', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/translation/source/create', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/translation/source/delete', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/translation/source/update', 3, NULL, NULL, NULL, NULL, 1480584511, 1480584511),
('/admin/user/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/change-password', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/default/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission-groups/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/refresh-routes', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/set-child-permissions', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/set-child-routes', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/permission/view', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/bulk-delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/create', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/delete', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/set-child-permissions', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/set-child-roles', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/update', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/role/view', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/user-permission/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/user-permission/set', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/user-permission/set-roles', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/visit-log/*', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/visit-log/grid-page-size', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/visit-log/grid-sort', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/visit-log/index', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('/admin/user/visit-log/view', 3, NULL, NULL, NULL, NULL, 1480584509, 1480584509),
('administrator', 1, 'Administrator', NULL, NULL, NULL, 1480584509, 1480584509),
('assignRolesToUsers', 2, 'Assign Roles To Users', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('author', 1, 'Author', NULL, NULL, NULL, 1480584509, 1480584509),
('bindUserToIp', 2, 'Bind User To IP', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('changeGeneralSettings', 2, 'Change General Settings', NULL, 'settings', NULL, 1480584510, 1480584510),
('changeOwnPassword', 2, 'Change Own Password', NULL, 'userCommonPermissions', NULL, 1480584509, 1480584509),
('changeReadingSettings', 2, 'Change Reading Settings', NULL, 'settings', NULL, 1480584510, 1480584510),
('changeUserPassword', 2, 'Change User Password', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('commonPermission', 2, 'Common Permission', NULL, 'userCommonPermissions', NULL, 1480584509, 1480584509),
('createComments', 2, 'Create Comments', NULL, 'commentManagement', NULL, 1480584510, 1480584510),
('createMediaAlbums', 2, 'Create Media Albums', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('createMediaCategories', 2, 'Create Media Categories', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('createMenuLinks', 2, 'Create Menu Links', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('createMenus', 2, 'Create Menus', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('createPages', 2, 'Create Pages', NULL, 'pageManagement', NULL, 1480584510, 1480584510),
('createPostCategories', 2, 'Create Post Categories', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('createPosts', 2, 'Create Posts', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('createPostTags', 2, 'Create Post Tags', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('createSourceMessages', 2, 'Create Source Messages', NULL, 'translations', NULL, 1480584511, 1480584511),
('createUsers', 2, 'Create Users', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('deleteComments', 2, 'Delete Comments', NULL, 'commentManagement', NULL, 1480584510, 1480584510),
('deleteMedia', 2, 'Delete Media', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('deleteMediaAlbums', 2, 'Delete Media Albums', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('deleteMediaCategories', 2, 'Delete Media Categories', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('deleteMenuLinks', 2, 'Delete Menu Links', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('deleteMenus', 2, 'Delete Menus', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('deletePages', 2, 'Delete Pages', NULL, 'pageManagement', NULL, 1480584510, 1480584510),
('deletePostCategories', 2, 'Delete Post Categories', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('deletePosts', 2, 'Delete Posts', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('deletePostTags', 2, 'Delete Post Tags', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('deleteSourceMessages', 2, 'Delete Source Messages', NULL, 'translations', NULL, 1480584511, 1480584511),
('deleteUsers', 2, 'Delete Users', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('editComments', 2, 'Edit Comments', NULL, 'commentManagement', NULL, 1480584510, 1480584510),
('editMedia', 2, 'Edit Media', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('editMediaAlbums', 2, 'Edit Media Albums', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('editMediaCategories', 2, 'Edit Media Categories', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('editMediaSettings', 2, 'Edit Media Settings', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('editMenuLinks', 2, 'Edit Menu Links', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('editMenus', 2, 'Edit Menus', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('editPages', 2, 'Edit Pages', NULL, 'pageManagement', NULL, 1480584510, 1480584510),
('editPostCategories', 2, 'Edit Post Categories', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('editPosts', 2, 'Edit Posts', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('editPostTags', 2, 'Edit Post Tags', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('editUserEmail', 2, 'Edit User Email', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('editUsers', 2, 'Edit Users', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('flushCache', 2, 'Flush Cache', NULL, 'settings', NULL, 1480584510, 1480584510),
('fullMediaAccess', 2, 'Full Media Access', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('fullMediaAlbumAccess', 2, 'Full Media Albums Access', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('fullMediaCategoryAccess', 2, 'Full Media Categories Access', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('fullMenuAccess', 2, 'Full Menu Access', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('fullMenuLinkAccess', 2, 'Full Menu Links Access', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('fullPageAccess', 2, 'Full Page Access', NULL, 'pageManagement', NULL, 1480584510, 1480584510),
('fullPostAccess', 2, 'Full Post Access', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('fullPostCategoryAccess', 2, 'Full Post Categories Access', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('fullPostTagAccess', 2, 'Full Post Tags Access', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('manageRolesAndPermissions', 2, 'Manage Roles And Permissions', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('moderator', 1, 'Moderator', NULL, NULL, NULL, 1480584509, 1480584509),
('updateImmutableSourceMessages', 2, 'Update Immutable Source Messages', NULL, 'translations', NULL, 1480584511, 1480584511),
('updateSourceMessages', 2, 'Update Source Messages', NULL, 'translations', NULL, 1480584511, 1480584511),
('updateTranslations', 2, 'Update Message Translations', NULL, 'translations', NULL, 1480584511, 1480584511),
('uploadMedia', 2, 'Upload Media', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('user', 1, 'User', NULL, NULL, NULL, 1480584509, 1480584509),
('viewComments', 2, 'View Comments', NULL, 'commentManagement', NULL, 1480584510, 1480584510),
('viewDashboard', 2, 'View Dashboard', NULL, 'dashboard', NULL, 1480584509, 1480584509),
('viewMedia', 2, 'View Media', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('viewMediaAlbums', 2, 'View Media Albums', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('viewMediaCategories', 2, 'View Media Categories', NULL, 'mediaManagement', NULL, 1480584510, 1480584510),
('viewMenuLinks', 2, 'View Menu Links', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('viewMenus', 2, 'View Menus', NULL, 'menuManagement', NULL, 1480584509, 1480584509),
('viewPages', 2, 'View Pages', NULL, 'pageManagement', NULL, 1480584510, 1480584510),
('viewPostCategories', 2, 'View Posts', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('viewPosts', 2, 'View Posts', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('viewPostTags', 2, 'View Tags', NULL, 'postManagement', NULL, 1480584509, 1480584509),
('viewRegistrationIp', 2, 'View Registration IP', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('viewRolesAndPermissions', 2, 'View Roles And Permissions', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('viewTranslations', 2, 'View Message Translations', NULL, 'translations', NULL, 1480584511, 1480584511),
('viewUserEmail', 2, 'View User Email', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('viewUserRoles', 2, 'View User Roles', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('viewUsers', 2, 'View Users', NULL, 'userManagement', NULL, 1480584509, 1480584509),
('viewVisitLog', 2, 'View Visit Logs', NULL, 'userManagement', NULL, 1480584509, 1480584509);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_child_auth_item_child_table` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('viewDashboard', '/admin'),
('viewMedia', '/admin/#mediafile'),
('editComments', '/admin/comment/default/bulk-activate'),
('editComments', '/admin/comment/default/bulk-deactivate'),
('deleteComments', '/admin/comment/default/bulk-delete'),
('editComments', '/admin/comment/default/bulk-spam'),
('editComments', '/admin/comment/default/bulk-trash'),
('createComments', '/admin/comment/default/create'),
('deleteComments', '/admin/comment/default/delete'),
('viewComments', '/admin/comment/default/grid-page-size'),
('viewComments', '/admin/comment/default/grid-sort'),
('viewComments', '/admin/comment/default/index'),
('editComments', '/admin/comment/default/toggle-attribute'),
('editComments', '/admin/comment/default/update'),
('viewComments', '/admin/comment/default/view'),
('deleteMediaAlbums', '/admin/media/album/bulk-delete'),
('createMediaAlbums', '/admin/media/album/create'),
('deleteMediaAlbums', '/admin/media/album/delete'),
('viewMediaAlbums', '/admin/media/album/grid-page-size'),
('viewMediaAlbums', '/admin/media/album/grid-sort'),
('viewMediaAlbums', '/admin/media/album/index'),
('editMediaAlbums', '/admin/media/album/toggle-attribute'),
('editMediaAlbums', '/admin/media/album/update'),
('deleteMediaCategories', '/admin/media/category/bulk-delete'),
('createMediaCategories', '/admin/media/category/create'),
('deleteMediaCategories', '/admin/media/category/delete'),
('viewMediaCategories', '/admin/media/category/grid-page-size'),
('viewMediaCategories', '/admin/media/category/grid-sort'),
('viewMediaCategories', '/admin/media/category/index'),
('editMediaCategories', '/admin/media/category/toggle-attribute'),
('editMediaCategories', '/admin/media/category/update'),
('viewMedia', '/admin/media/default/index'),
('editMediaSettings', '/admin/media/default/settings'),
('deleteMedia', '/admin/media/manage/delete'),
('viewMedia', '/admin/media/manage/index'),
('viewMedia', '/admin/media/manage/info'),
('editMediaSettings', '/admin/media/manage/resize'),
('editMedia', '/admin/media/manage/update'),
('uploadMedia', '/admin/media/manage/upload'),
('uploadMedia', '/admin/media/manage/uploader'),
('deleteMenus', '/admin/menu/default/bulk-delete'),
('createMenus', '/admin/menu/default/create'),
('deleteMenus', '/admin/menu/default/delete'),
('viewMenus', '/admin/menu/default/grid-page-size'),
('viewMenus', '/admin/menu/default/grid-sort'),
('viewMenus', '/admin/menu/default/index'),
('editMenus', '/admin/menu/default/update'),
('viewMenus', '/admin/menu/default/view'),
('deleteMenuLinks', '/admin/menu/link/bulk-delete'),
('createMenuLinks', '/admin/menu/link/create'),
('deleteMenuLinks', '/admin/menu/link/delete'),
('viewMenuLinks', '/admin/menu/link/grid-page-size'),
('viewMenuLinks', '/admin/menu/link/grid-sort'),
('viewMenuLinks', '/admin/menu/link/index'),
('editMenuLinks', '/admin/menu/link/update'),
('viewMenuLinks', '/admin/menu/link/view'),
('editPages', '/admin/page/default/bulk-activate'),
('editPages', '/admin/page/default/bulk-deactivate'),
('deletePages', '/admin/page/default/bulk-delete'),
('createPages', '/admin/page/default/create'),
('deletePages', '/admin/page/default/delete'),
('viewPages', '/admin/page/default/grid-page-size'),
('viewPages', '/admin/page/default/grid-sort'),
('viewPages', '/admin/page/default/index'),
('editPages', '/admin/page/default/toggle-attribute'),
('editPages', '/admin/page/default/update'),
('viewPages', '/admin/page/default/view'),
('deletePostCategories', '/admin/post/category/bulk-delete'),
('createPostCategories', '/admin/post/category/create'),
('deletePostCategories', '/admin/post/category/delete'),
('viewPostCategories', '/admin/post/category/grid-page-size'),
('viewPostCategories', '/admin/post/category/grid-sort'),
('viewPostCategories', '/admin/post/category/index'),
('editPostCategories', '/admin/post/category/toggle-attribute'),
('editPostCategories', '/admin/post/category/update'),
('editPosts', '/admin/post/default/bulk-activate'),
('editPosts', '/admin/post/default/bulk-deactivate'),
('deletePosts', '/admin/post/default/bulk-delete'),
('createPosts', '/admin/post/default/create'),
('deletePosts', '/admin/post/default/delete'),
('viewPosts', '/admin/post/default/grid-page-size'),
('viewPosts', '/admin/post/default/grid-sort'),
('viewPosts', '/admin/post/default/index'),
('editPosts', '/admin/post/default/toggle-attribute'),
('editPosts', '/admin/post/default/update'),
('viewPosts', '/admin/post/default/view'),
('deletePostTags', '/admin/post/tag/bulk-delete'),
('createPostTags', '/admin/post/tag/create'),
('deletePostTags', '/admin/post/tag/delete'),
('viewPostTags', '/admin/post/tag/grid-page-size'),
('viewPostTags', '/admin/post/tag/grid-sort'),
('viewPostTags', '/admin/post/tag/index'),
('editPostTags', '/admin/post/tag/toggle-attribute'),
('editPostTags', '/admin/post/tag/update'),
('flushCache', '/admin/settings/cache/flush'),
('changeGeneralSettings', '/admin/settings/default/index'),
('changeReadingSettings', '/admin/settings/reading/index'),
('viewDashboard', '/admin/site/index'),
('viewTranslations', '/admin/translation/default/index'),
('createSourceMessages', '/admin/translation/source/create'),
('deleteSourceMessages', '/admin/translation/source/delete'),
('updateSourceMessages', '/admin/translation/source/update'),
('editUsers', '/admin/user/default/bulk-activate'),
('editUsers', '/admin/user/default/bulk-deactivate'),
('deleteUsers', '/admin/user/default/bulk-delete'),
('changeUserPassword', '/admin/user/default/change-password'),
('createUsers', '/admin/user/default/create'),
('deleteUsers', '/admin/user/default/delete'),
('viewUsers', '/admin/user/default/grid-page-size'),
('viewUsers', '/admin/user/default/grid-sort'),
('viewUsers', '/admin/user/default/index'),
('editUsers', '/admin/user/default/toggle-attribute'),
('editUsers', '/admin/user/default/update'),
('manageRolesAndPermissions', '/admin/user/permission-groups/bulk-delete'),
('manageRolesAndPermissions', '/admin/user/permission-groups/create'),
('manageRolesAndPermissions', '/admin/user/permission-groups/delete'),
('viewRolesAndPermissions', '/admin/user/permission-groups/grid-page-size'),
('viewRolesAndPermissions', '/admin/user/permission-groups/grid-sort'),
('viewRolesAndPermissions', '/admin/user/permission-groups/index'),
('manageRolesAndPermissions', '/admin/user/permission-groups/update'),
('manageRolesAndPermissions', '/admin/user/permission/bulk-delete'),
('manageRolesAndPermissions', '/admin/user/permission/create'),
('manageRolesAndPermissions', '/admin/user/permission/delete'),
('viewRolesAndPermissions', '/admin/user/permission/grid-page-size'),
('viewRolesAndPermissions', '/admin/user/permission/grid-sort'),
('viewRolesAndPermissions', '/admin/user/permission/index'),
('manageRolesAndPermissions', '/admin/user/permission/refresh-routes'),
('manageRolesAndPermissions', '/admin/user/permission/set-child-permissions'),
('manageRolesAndPermissions', '/admin/user/permission/set-child-routes'),
('manageRolesAndPermissions', '/admin/user/permission/update'),
('manageRolesAndPermissions', '/admin/user/permission/view'),
('manageRolesAndPermissions', '/admin/user/role/bulk-delete'),
('manageRolesAndPermissions', '/admin/user/role/create'),
('manageRolesAndPermissions', '/admin/user/role/delete'),
('viewRolesAndPermissions', '/admin/user/role/grid-page-size'),
('viewRolesAndPermissions', '/admin/user/role/grid-sort'),
('viewRolesAndPermissions', '/admin/user/role/index'),
('manageRolesAndPermissions', '/admin/user/role/set-child-permissions'),
('manageRolesAndPermissions', '/admin/user/role/set-child-roles'),
('manageRolesAndPermissions', '/admin/user/role/update'),
('manageRolesAndPermissions', '/admin/user/role/view'),
('assignRolesToUsers', '/admin/user/user-permission/set'),
('assignRolesToUsers', '/admin/user/user-permission/set-roles'),
('viewVisitLog', '/admin/user/visit-log/grid-page-size'),
('viewVisitLog', '/admin/user/visit-log/grid-sort'),
('viewVisitLog', '/admin/user/visit-log/index'),
('viewVisitLog', '/admin/user/visit-log/view'),
('administrator', 'assignRolesToUsers'),
('administrator', 'author'),
('moderator', 'author'),
('administrator', 'bindUserToIp'),
('administrator', 'changeGeneralSettings'),
('user', 'changeOwnPassword'),
('administrator', 'changeReadingSettings'),
('administrator', 'changeUserPassword'),
('moderator', 'createComments'),
('author', 'createMediaAlbums'),
('moderator', 'createMediaCategories'),
('administrator', 'createMenuLinks'),
('administrator', 'createMenus'),
('administrator', 'createPages'),
('moderator', 'createPostCategories'),
('author', 'createPosts'),
('user', 'createPosts'),
('moderator', 'createPostTags'),
('administrator', 'createSourceMessages'),
('administrator', 'createUsers'),
('moderator', 'deleteComments'),
('administrator', 'deleteMedia'),
('administrator', 'deleteMediaAlbums'),
('administrator', 'deleteMediaCategories'),
('administrator', 'deleteMenuLinks'),
('administrator', 'deleteMenus'),
('administrator', 'deletePages'),
('administrator', 'deletePostCategories'),
('moderator', 'deletePosts'),
('administrator', 'deletePostTags'),
('administrator', 'deleteSourceMessages'),
('administrator', 'deleteUsers'),
('moderator', 'editComments'),
('uploadMedia', 'editMedia'),
('moderator', 'editMediaAlbums'),
('moderator', 'editMediaCategories'),
('administrator', 'editMenuLinks'),
('administrator', 'editMenus'),
('administrator', 'editPages'),
('moderator', 'editPostCategories'),
('author', 'editPosts'),
('moderator', 'editPostTags'),
('administrator', 'editUserEmail'),
('administrator', 'editUsers'),
('manageRolesAndPermissions', 'editUsers'),
('administrator', 'flushCache'),
('moderator', 'fullMediaAccess'),
('moderator', 'fullMediaAlbumAccess'),
('moderator', 'fullMediaCategoryAccess'),
('administrator', 'fullMenuAccess'),
('administrator', 'fullMenuLinkAccess'),
('administrator', 'fullPageAccess'),
('moderator', 'fullPostAccess'),
('moderator', 'fullPostCategoryAccess'),
('moderator', 'fullPostTagAccess'),
('administrator', 'manageRolesAndPermissions'),
('administrator', 'moderator'),
('administrator', 'updateSourceMessages'),
('createSourceMessages', 'updateSourceMessages'),
('deleteSourceMessages', 'updateSourceMessages'),
('updateImmutableSourceMessages', 'updateSourceMessages'),
('administrator', 'updateTranslations'),
('updateSourceMessages', 'updateTranslations'),
('author', 'uploadMedia'),
('administrator', 'user'),
('author', 'user'),
('moderator', 'user'),
('createComments', 'viewComments'),
('deleteComments', 'viewComments'),
('editComments', 'viewComments'),
('moderator', 'viewComments'),
('author', 'viewDashboard'),
('deleteMedia', 'viewMedia'),
('editMedia', 'viewMedia'),
('editMediaSettings', 'viewMedia'),
('fullMediaAccess', 'viewMedia'),
('uploadMedia', 'viewMedia'),
('createMediaAlbums', 'viewMediaAlbums'),
('deleteMediaAlbums', 'viewMediaAlbums'),
('editMediaAlbums', 'viewMediaAlbums'),
('createMediaCategories', 'viewMediaCategories'),
('deleteMediaCategories', 'viewMediaCategories'),
('editMediaCategories', 'viewMediaCategories'),
('administrator', 'viewMenuLinks'),
('createMenuLinks', 'viewMenuLinks'),
('deleteMenuLinks', 'viewMenuLinks'),
('editMenuLinks', 'viewMenuLinks'),
('fullMenuLinkAccess', 'viewMenuLinks'),
('administrator', 'viewMenus'),
('createMenus', 'viewMenus'),
('deleteMenus', 'viewMenus'),
('editMenus', 'viewMenus'),
('fullMenuAccess', 'viewMenus'),
('viewMenuLinks', 'viewMenus'),
('administrator', 'viewPages'),
('createPages', 'viewPages'),
('deletePages', 'viewPages'),
('editPages', 'viewPages'),
('author', 'viewPostCategories'),
('author', 'viewPosts'),
('createPostCategories', 'viewPosts'),
('createPosts', 'viewPosts'),
('deletePostCategories', 'viewPosts'),
('deletePosts', 'viewPosts'),
('editPostCategories', 'viewPosts'),
('editPosts', 'viewPosts'),
('viewPostCategories', 'viewPosts'),
('viewPostTags', 'viewPosts'),
('author', 'viewPostTags'),
('createPostTags', 'viewPostTags'),
('deletePostTags', 'viewPostTags'),
('editPostTags', 'viewPostTags'),
('administrator', 'viewRegistrationIp'),
('administrator', 'viewRolesAndPermissions'),
('manageRolesAndPermissions', 'viewRolesAndPermissions'),
('administrator', 'viewTranslations'),
('createSourceMessages', 'viewTranslations'),
('deleteSourceMessages', 'viewTranslations'),
('updateImmutableSourceMessages', 'viewTranslations'),
('updateSourceMessages', 'viewTranslations'),
('updateTranslations', 'viewTranslations'),
('editUserEmail', 'viewUserEmail'),
('moderator', 'viewUserEmail'),
('administrator', 'viewUserRoles'),
('assignRolesToUsers', 'viewUserRoles'),
('viewRolesAndPermissions', 'viewUserRoles'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers'),
('manageRolesAndPermissions', 'viewUsers'),
('moderator', 'viewUsers'),
('viewRolesAndPermissions', 'viewUsers'),
('viewVisitLog', 'viewUsers'),
('administrator', 'viewVisitLog');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_group`
--

CREATE TABLE IF NOT EXISTS `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('commentManagement', 'Comment Management', 1480584510, 1480584510),
('dashboard', 'Dashboard', 1480584509, 1480584509),
('mediaManagement', 'Media Management', 1480584510, 1480584510),
('menuManagement', 'Menu Management', 1480584509, 1480584509),
('pageManagement', 'Page Management', 1480584510, 1480584510),
('postManagement', 'Post Management', 1480584509, 1480584509),
('settings', 'Settings', 1480584510, 1480584510),
('translations', 'Translations', 1480584511, 1480584511),
('userCommonPermissions', 'Common Permissions', 1480584509, 1480584509),
('userManagement', 'User Management', 1480584509, 1480584509);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL DEFAULT '',
  `model_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'null-is not a reply, int-replied comment id',
  `content` text,
  `status` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '0-pending,1-published,2-spam,3-deleted',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `super_parent_id` int(11) DEFAULT NULL COMMENT 'null-has no parent, int-1st level parent id',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_model` (`model`),
  KEY `comment_model_id` (`model`,`model_id`),
  KEY `comment_status` (`status`),
  KEY `comment_reply` (`parent_id`),
  KEY `comment_super_parent_id` (`super_parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `model`, `model_id`, `user_id`, `username`, `email`, `parent_id`, `content`, `status`, `created_at`, `updated_at`, `updated_by`, `user_ip`, `super_parent_id`, `url`) VALUES
(1, 'yeesoft\\post\\models\\Post', 2, 2, NULL, NULL, NULL, 'hi testing', 1, 1480585507, 1480585507, 2, '127.0.0.1', NULL, '/Test%20Post'),
(2, 'yeesoft\\post\\models\\Post', 2, 2, NULL, NULL, 1, 'good dude', 1, 1480585515, 1480585515, 2, '127.0.0.1', 1, '/Test%20Post');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(127) DEFAULT NULL,
  `url` text,
  `size` varchar(127) DEFAULT NULL,
  `thumbs` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_album` (`album_id`),
  KEY `fk_media_created_by` (`created_by`),
  KEY `fk_media_updated_by` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `album_id`, `filename`, `type`, `url`, `size`, `thumbs`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, NULL, '14334721975466459247457342578424163860480n.jpg', 'image/jpeg', '/uploads/2016/12/14334721975466459247457342578424163860480n.jpg', '62733', 'a:3:{s:5:"small";s:70:"/uploads/2016/12/14334721975466459247457342578424163860480n-120x80.jpg";s:6:"medium";s:71:"/uploads/2016/12/14334721975466459247457342578424163860480n-400x300.jpg";s:5:"large";s:71:"/uploads/2016/12/14334721975466459247457342578424163860480n-800x600.jpg";}', 1480585451, 1480585451, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `media_album`
--

CREATE TABLE IF NOT EXISTS `media_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_album_slug` (`slug`),
  KEY `media_album_visible` (`visible`),
  KEY `fk_album_category` (`category_id`),
  KEY `fk_media_album_created_by` (`created_by`),
  KEY `fk_media_album_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_album_lang`
--

CREATE TABLE IF NOT EXISTS `media_album_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_album_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_album_lang_language` (`language`),
  KEY `fk_media_album_lang` (`media_album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_category`
--

CREATE TABLE IF NOT EXISTS `media_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_category_slug` (`slug`),
  KEY `media_category_visible` (`visible`),
  KEY `fk_media_category_created_by` (`created_by`),
  KEY `fk_media_category_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_category_lang`
--

CREATE TABLE IF NOT EXISTS `media_category_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_category_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_category_lang_language` (`language`),
  KEY `fk_media_category_lang` (`media_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_lang`
--

CREATE TABLE IF NOT EXISTS `media_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_lang_language` (`language`),
  KEY `fk_media_lang` (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `media_lang`
--

INSERT INTO `media_lang` (`id`, `media_id`, `language`, `title`, `alt`, `description`) VALUES
(1, 1, 'en-US', '14334721975466459247457342578424163860480n.jpg', '14334721975466459247457342578424163860480n.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_upload`
--

CREATE TABLE IF NOT EXISTS `media_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) NOT NULL,
  `owner_class` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_upload_owner_class` (`owner_class`),
  KEY `media_upload_owner_id` (`owner_id`),
  KEY `fk_media_upload_media_id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_created_by` (`created_by`),
  KEY `fk_menu_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
('admin-menu', NULL, NULL, 1, NULL),
('main-menu', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_lang`
--

CREATE TABLE IF NOT EXISTS `menu_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  PRIMARY KEY (`id`),
  KEY `menu_lang_post_id` (`menu_id`),
  KEY `menu_lang_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menu_lang`
--

INSERT INTO `menu_lang` (`id`, `menu_id`, `language`, `title`) VALUES
(1, 'admin-menu', 'en-US', 'Control Panel Menu'),
(2, 'main-menu', 'en-US', 'Main Menu');

-- --------------------------------------------------------

--
-- Table structure for table `menu_link`
--

CREATE TABLE IF NOT EXISTS `menu_link` (
  `id` varchar(64) NOT NULL,
  `menu_id` varchar(64) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT '',
  `image` varchar(24) DEFAULT NULL,
  `alwaysVisible` int(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_menu_id` (`menu_id`),
  KEY `link_parent_id` (`parent_id`),
  KEY `fk_menu_link_created_by` (`created_by`),
  KEY `fk_menu_link_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_link`
--

INSERT INTO `menu_link` (`id`, `menu_id`, `link`, `parent_id`, `image`, `alwaysVisible`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
('about', 'main-menu', '/site/about', '', NULL, 1, 9, NULL, NULL, 1, NULL),
('comment', 'admin-menu', '/comment/default/index', '', 'comment', 0, 8, NULL, NULL, 1, NULL),
('contact', 'main-menu', '/site/contact', '', NULL, 1, 10, NULL, NULL, 1, NULL),
('dashboard', 'admin-menu', '/', '', 'th', 0, 1, NULL, NULL, 1, NULL),
('home', 'main-menu', '/site/index', '', NULL, 1, 1, NULL, NULL, 1, NULL),
('image-settings', 'admin-menu', '/media/default/settings', 'settings', NULL, 0, 5, NULL, NULL, 1, NULL),
('media', 'admin-menu', NULL, '', 'image', 0, 5, NULL, NULL, 1, NULL),
('media-album', 'admin-menu', '/media/album/index', 'media', NULL, 0, 2, NULL, NULL, 1, NULL),
('media-category', 'admin-menu', '/media/category/index', 'media', NULL, 0, 3, NULL, NULL, 1, NULL),
('media-media', 'admin-menu', '/media/default/index', 'media', NULL, 0, 1, NULL, NULL, 1, NULL),
('media1', 'main-menu', '/site/media', '', 'angellist', 1, 999, 1480586316, 1480586427, 1, 1),
('menu', 'admin-menu', '/menu/default/index', '', 'align-justify', 0, 10, NULL, NULL, 1, NULL),
('page', 'admin-menu', '/page/default/index', '', 'file', 0, 2, NULL, NULL, 1, NULL),
('post', 'admin-menu', NULL, '', 'pencil', 0, 3, NULL, NULL, 1, NULL),
('post-category', 'admin-menu', '/post/category/index', 'post', NULL, 0, 2, NULL, NULL, 1, NULL),
('post-post', 'admin-menu', '/post/default/index', 'post', NULL, 0, 1, NULL, NULL, 1, NULL),
('post-tag', 'admin-menu', '/post/tag/index', 'post', NULL, 0, 2, NULL, NULL, 1, NULL),
('seo', 'admin-menu', '/seo/default/index', '', 'line-chart', 0, 19, NULL, NULL, 1, NULL),
('settings', 'admin-menu', NULL, '', 'cog', 0, 20, NULL, NULL, 1, NULL),
('settings-cache', 'admin-menu', '/settings/cache/flush', 'settings', NULL, 0, 99, NULL, NULL, 1, NULL),
('settings-general', 'admin-menu', '/settings/default/index', 'settings', NULL, 0, 1, NULL, NULL, 1, NULL),
('settings-reading', 'admin-menu', '/settings/reading/index', 'settings', NULL, 0, 2, NULL, NULL, 1, NULL),
('settings-translations', 'admin-menu', '/translation/default/index', 'settings', NULL, 0, 5, NULL, NULL, 1, NULL),
('user', 'admin-menu', NULL, '', 'user', 0, 15, NULL, NULL, 1, NULL),
('user-groups', 'admin-menu', '/user/permission-groups/index', 'user', NULL, 0, 4, NULL, NULL, 1, NULL),
('user-log', 'admin-menu', '/user/visit-log/index', 'user', NULL, 0, 10, NULL, NULL, 1, NULL),
('user-permission', 'admin-menu', '/user/permission/index', 'user', NULL, 0, 3, NULL, NULL, 1, NULL),
('user-role', 'admin-menu', '/user/role/index', 'user', NULL, 0, 2, NULL, NULL, 1, NULL),
('user-user', 'admin-menu', '/user/default/index', 'user', NULL, 0, 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_link_lang`
--

CREATE TABLE IF NOT EXISTS `menu_link_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_link_lang_link_id` (`link_id`),
  KEY `menu_link_lang_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `menu_link_lang`
--

INSERT INTO `menu_link_lang` (`id`, `link_id`, `language`, `label`) VALUES
(1, 'dashboard', 'en-US', 'Dashboard'),
(2, 'settings', 'en-US', 'Settings'),
(3, 'settings-general', 'en-US', 'General Settings'),
(4, 'settings-reading', 'en-US', 'Reading Settings'),
(5, 'settings-cache', 'en-US', 'Flush Cache'),
(6, 'menu', 'en-US', 'Menus'),
(7, 'comment', 'en-US', 'Comments'),
(8, 'user', 'en-US', 'Users'),
(9, 'user-groups', 'en-US', 'Permission groups'),
(10, 'user-log', 'en-US', 'Visit log'),
(11, 'user-permission', 'en-US', 'Permissions'),
(12, 'user-role', 'en-US', 'Roles'),
(13, 'user-user', 'en-US', 'Users'),
(14, 'post', 'en-US', 'Posts'),
(15, 'post-post', 'en-US', 'Posts'),
(16, 'post-category', 'en-US', 'Categories'),
(17, 'media', 'en-US', 'Media'),
(18, 'media-media', 'en-US', 'Media'),
(19, 'media-album', 'en-US', 'Albums'),
(20, 'media-category', 'en-US', 'Categories'),
(21, 'image-settings', 'en-US', 'Image Settings'),
(22, 'page', 'en-US', 'Pages'),
(23, 'settings-translations', 'en-US', 'Message Translation'),
(24, 'seo', 'en-US', 'SEO'),
(25, 'post-tag', 'en-US', 'Tags'),
(26, 'home', 'en-US', 'Home'),
(27, 'about', 'en-US', 'About'),
(29, 'contact', 'en-US', 'Contact'),
(30, 'media1', 'en-US', 'Media');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `language` varchar(16) NOT NULL,
  `translation` text,
  PRIMARY KEY (`id`),
  KEY `message_index` (`source_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_source`
--

CREATE TABLE IF NOT EXISTS `message_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  `message` text,
  `immutable` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=314 ;

--
-- Dumping data for table `message_source`
--

INSERT INTO `message_source` (`id`, `category`, `message`, `immutable`) VALUES
(1, 'yee', '--- With selected ---', 1),
(2, 'yee', 'Activate', 1),
(3, 'yee', 'Active', 1),
(4, 'yee', 'Add New', 1),
(5, 'yee', 'All', 1),
(6, 'yee', 'Always Visible', 1),
(7, 'yee', 'An unknown error occurred.', 1),
(8, 'yee', 'Approved', 1),
(9, 'yee', 'Author', 1),
(10, 'yee', 'Banned', 1),
(11, 'yee', 'Bind to IP', 1),
(12, 'yee', 'Browse', 1),
(13, 'yee', 'Browser', 1),
(14, 'yee', 'Cancel', 1),
(15, 'yee', 'Category', 1),
(16, 'yee', 'Clear filters', 1),
(17, 'yee', 'Closed', 1),
(18, 'yee', 'Code', 1),
(19, 'yee', 'Comment Status', 1),
(20, 'yee', 'Comments Activity', 1),
(21, 'yee', 'Confirm', 1),
(22, 'yee', 'Confirmation Token', 1),
(23, 'yee', 'Content', 1),
(24, 'yee', 'Control Panel', 1),
(25, 'yee', 'Create {item}', 1),
(26, 'yee', 'Create', 1),
(27, 'yee', 'Created By', 1),
(28, 'yee', 'Created', 1),
(29, 'yee', 'Dashboard', 1),
(30, 'yee', 'Data', 1),
(31, 'yee', 'Deactivate', 1),
(32, 'yee', 'Default Language', 1),
(33, 'yee', 'Default Value', 1),
(34, 'yee', 'Delete', 1),
(35, 'yee', 'Description', 1),
(36, 'yee', 'E-mail confirmed', 1),
(37, 'yee', 'E-mail', 1),
(38, 'yee', 'Edit', 1),
(39, 'yee', 'Error', 1),
(40, 'yee', 'For example', 1),
(41, 'yee', 'Group', 1),
(42, 'yee', 'ID', 1),
(43, 'yee', 'IP', 1),
(44, 'yee', 'Icon', 1),
(45, 'yee', 'Inactive', 1),
(46, 'yee', 'Insert', 1),
(47, 'yee', 'Invalid settings for dashboard widgets', 1),
(48, 'yee', 'Key', 1),
(49, 'yee', 'Label', 1),
(50, 'yee', 'Language', 1),
(51, 'yee', 'Link ID can only contain lowercase alphanumeric characters, underscores and dashes.', 1),
(52, 'yee', 'Link', 1),
(53, 'yee', 'Login', 1),
(54, 'yee', 'Logout {username}', 1),
(55, 'yee', 'Menu ID can only contain lowercase alphanumeric characters, underscores and dashes.', 1),
(56, 'yee', 'Menu', 1),
(57, 'yee', 'Name', 1),
(58, 'yee', 'No Parent', 1),
(59, 'yee', 'No comments found.', 1),
(60, 'yee', 'Not Selected', 1),
(61, 'yee', 'OK', 1),
(62, 'yee', 'OS', 1),
(63, 'yee', 'Open', 1),
(64, 'yee', 'Order', 1),
(65, 'yee', 'PHP Version', 1),
(66, 'yee', 'Parent Link', 1),
(67, 'yee', 'Password', 1),
(68, 'yee', 'Pending', 1),
(69, 'yee', 'Processing', 1),
(70, 'yee', 'Publish', 1),
(71, 'yee', 'Published', 1),
(72, 'yee', 'Read more', 1),
(73, 'yee', 'Records per page', 1),
(74, 'yee', 'Registration IP', 1),
(75, 'yee', 'Repeat password', 1),
(76, 'yee', 'Required', 1),
(77, 'yee', 'Revision', 1),
(78, 'yee', 'Role', 1),
(79, 'yee', 'Roles', 1),
(80, 'yee', 'Rule', 1),
(81, 'yee', 'Save All', 1),
(82, 'yee', 'Save', 1),
(83, 'yee', 'Saved', 1),
(84, 'yee', 'Settings', 1),
(85, 'yee', 'Size', 1),
(86, 'yee', 'Slug', 1),
(87, 'yee', 'Spam', 1),
(88, 'yee', 'Start', 1),
(89, 'yee', 'Status', 1),
(90, 'yee', 'Superadmin', 1),
(91, 'yee', 'System Info', 1),
(92, 'yee', 'The changes have been saved.', 1),
(93, 'yee', 'This e-mail already exists', 1),
(94, 'yee', 'Title', 1),
(95, 'yee', 'Token', 1),
(96, 'yee', 'Trash', 1),
(97, 'yee', 'Type', 1),
(98, 'yee', 'URL', 1),
(99, 'yee', 'Unpublish', 1),
(100, 'yee', 'Update "{item}"', 1),
(101, 'yee', 'Update', 1),
(102, 'yee', 'Updated By', 1),
(103, 'yee', 'Updated', 1),
(104, 'yee', 'Uploaded', 1),
(105, 'yee', 'User agent', 1),
(106, 'yee', 'User', 1),
(107, 'yee', 'Username', 1),
(108, 'yee', 'Value', 1),
(109, 'yee', 'View', 1),
(110, 'yee', 'Visible', 1),
(111, 'yee', 'Visit Time', 1),
(112, 'yee', 'Wrong format. Enter valid IPs separated by comma', 1),
(113, 'yee', 'Yee CMS Version', 1),
(114, 'yee', 'Yee Core Version', 1),
(115, 'yee', 'Yii Framework Version', 1),
(116, 'yee', 'Your item has been updated.', 1),
(117, 'yee', 'Your item has been created.', 1),
(118, 'yee', 'Your item has been deleted.', 1),
(119, 'yee', 'Male', 1),
(120, 'yee', 'Female', 1),
(121, 'yee', 'First Name', 1),
(122, 'yee', 'Last Name', 1),
(123, 'yee', 'Skype', 1),
(124, 'yee', 'Phone', 1),
(125, 'yee', 'Gender', 1),
(126, 'yee', 'Birthday', 1),
(127, 'yee', 'Birth month', 1),
(128, 'yee', 'Birth year', 1),
(129, 'yee', 'Short Info', 1),
(130, 'yee/translation', 'Add New Source Message', 1),
(131, 'yee/translation', 'Category', 1),
(132, 'yee/translation', 'Create Message Source', 1),
(133, 'yee/translation', 'Create New Category', 1),
(134, 'yee/translation', 'Immutable', 1),
(135, 'yee/translation', 'Message Translation', 1),
(136, 'yee/translation', 'New Category Name', 1),
(137, 'yee/translation', 'Please, select message group and language to view translations...', 1),
(138, 'yee/translation', 'Source Message', 1),
(139, 'yee/translation', 'Update Message Source', 1),
(140, 'yee/translation', '{n, plural, =1{1 message} other{# messages}}', 1),
(141, 'yee/media', 'Add files', 1),
(142, 'yee/media', 'Album', 1),
(143, 'yee/media', 'Albums', 1),
(144, 'yee/media', 'All Media Items', 1),
(145, 'yee/media', 'Alt Text', 1),
(146, 'yee/media', 'Back to file manager', 1),
(147, 'yee/media', 'Cancel upload', 1),
(148, 'yee/media', 'Categories', 1),
(149, 'yee/media', 'Category', 1),
(150, 'yee/media', 'Changes have been saved.', 1),
(151, 'yee/media', 'Changes haven''t been saved.', 1),
(152, 'yee/media', 'Create Category', 1),
(153, 'yee/media', 'Current thumbnail sizes', 1),
(154, 'yee/media', 'Dimensions', 1),
(155, 'yee/media', 'Do resize thumbnails', 1),
(156, 'yee/media', 'File Size', 1),
(157, 'yee/media', 'Filename', 1),
(158, 'yee/media', 'If you change the thumbnails sizes, it is strongly recommended resize image thumbnails.', 1),
(159, 'yee/media', 'Image Settings', 1),
(160, 'yee/media', 'Large size', 1),
(161, 'yee/media', 'Manage Albums', 1),
(162, 'yee/media', 'Manage Categories', 1),
(163, 'yee/media', 'Media Activity', 1),
(164, 'yee/media', 'Media Details', 1),
(165, 'yee/media', 'Media', 1),
(166, 'yee/media', 'Medium size', 1),
(167, 'yee/media', 'No images found.', 1),
(168, 'yee/media', 'Original', 1),
(169, 'yee/media', 'Please, select file to view details.', 1),
(170, 'yee/media', 'Select image size', 1),
(171, 'yee/media', 'Small size', 1),
(172, 'yee/media', 'Sorry, [{filetype}] file type is not permitted!', 1),
(173, 'yee/media', 'Start upload', 1),
(174, 'yee/media', 'Thumbnails settings', 1),
(175, 'yee/media', 'Thumbnails sizes has been resized successfully!', 1),
(176, 'yee/media', 'Thumbnails', 1),
(177, 'yee/media', 'Update Category', 1),
(178, 'yee/media', 'Updated By', 1),
(179, 'yee/media', 'Upload New File', 1),
(180, 'yee/media', 'Uploaded By', 1),
(181, 'yee/menu', 'Menu', 1),
(182, 'yee/menu', 'Menus', 1),
(183, 'yee/menu', 'Link ID can only contain lowercase alphanumeric characters, underscores and dashes.', 1),
(184, 'yee/menu', 'Parent Link', 1),
(185, 'yee/menu', 'Always Visible', 1),
(186, 'yee/menu', 'No Parent', 1),
(187, 'yee/menu', 'Create Menu Link', 1),
(188, 'yee/menu', 'Update Menu Link', 1),
(189, 'yee/menu', 'Menu Links', 1),
(190, 'yee/menu', 'Add New Menu', 1),
(191, 'yee/menu', 'Add New Link', 1),
(192, 'yee/menu', 'An error occurred during saving menu!', 1),
(193, 'yee/menu', 'The changes have been saved.', 1),
(194, 'yee/menu', 'Please, select menu to view menu links...', 1),
(195, 'yee/menu', 'Selected menu doesn''t contain any link. Click "Add New Link" to create a link for this menu.', 1),
(196, 'yee/page', 'Page', 1),
(197, 'yee/page', 'Pages', 1),
(198, 'yee/page', 'Create Page', 1),
(199, 'yee/post', 'Create Tag', 1),
(200, 'yee/post', 'Update Tag', 1),
(201, 'yee/post', 'No posts found.', 1),
(202, 'yee/post', 'Post', 1),
(203, 'yee/post', 'Posted in', 1),
(204, 'yee/post', 'Posts Activity', 1),
(205, 'yee/post', 'Posts', 1),
(206, 'yee/post', 'Tag', 1),
(207, 'yee/post', 'Tags', 1),
(208, 'yee/post', 'Thumbnail', 1),
(209, 'yee/settings', 'General Settings', 1),
(210, 'yee/settings', 'Reading Settings', 1),
(211, 'yee/settings', 'Site Title', 1),
(212, 'yee/settings', 'Site Description', 1),
(213, 'yee/settings', 'Admin Email', 1),
(214, 'yee/settings', 'Timezone', 1),
(215, 'yee/settings', 'Date Format', 1),
(216, 'yee/settings', 'Time Format', 1),
(217, 'yee/settings', 'Page Size', 1),
(218, 'yee/user', 'Child permissions', 1),
(219, 'yee/user', 'Child roles', 1),
(220, 'yee/user', 'Create Permission Group', 1),
(221, 'yee/user', 'Create Permission', 1),
(222, 'yee/user', 'Create Role', 1),
(223, 'yee/user', 'Create User', 1),
(224, 'yee/user', 'Log №{id}', 1),
(225, 'yee/user', 'No users found.', 1),
(226, 'yee/user', 'Password', 1),
(227, 'yee/user', 'Permission Groups', 1),
(228, 'yee/user', 'Permission', 1),
(229, 'yee/user', 'Permissions for "{role}" role', 1),
(230, 'yee/user', 'Permissions', 1),
(231, 'yee/user', 'Refresh routes', 1),
(232, 'yee/user', 'Registration date', 1),
(233, 'yee/user', 'Role', 1),
(234, 'yee/user', 'Roles and Permissions for "{user}"', 1),
(235, 'yee/user', 'Roles', 1),
(236, 'yee/user', 'Routes', 1),
(237, 'yee/user', 'Search route', 1),
(238, 'yee/user', 'Show all', 1),
(239, 'yee/user', 'Show only selected', 1),
(240, 'yee/user', 'Update Permission Group', 1),
(241, 'yee/user', 'Update Permission', 1),
(242, 'yee/user', 'Update Role', 1),
(243, 'yee/user', 'Update User Password', 1),
(244, 'yee/user', 'Update User', 1),
(245, 'yee/user', 'User not found', 1),
(246, 'yee/user', 'User', 1),
(247, 'yee/user', 'Users', 1),
(248, 'yee/user', 'Visit Log', 1),
(249, 'yee/user', 'You can not change own permissions', 1),
(250, 'yee/user', 'You can''t update own permissions!', 1),
(251, 'yee/user', '{permission} Permission Settings', 1),
(252, 'yee/user', '{permission} Role Settings', 1),
(253, 'yee/auth', 'Are you sure you want to delete your profile picture?', 1),
(254, 'yee/auth', 'Are you sure you want to unlink this authorization?', 1),
(255, 'yee/auth', 'Authentication error occurred.', 1),
(256, 'yee/auth', 'Authorization', 1),
(257, 'yee/auth', 'Authorized Services', 1),
(258, 'yee/auth', 'Captcha', 1),
(259, 'yee/auth', 'Change profile picture', 1),
(260, 'yee/auth', 'Check your E-mail for further instructions', 1),
(261, 'yee/auth', 'Check your e-mail {email} for instructions to activate account', 1),
(262, 'yee/auth', 'Click to connect with service', 1),
(263, 'yee/auth', 'Click to unlink service', 1),
(264, 'yee/auth', 'Confirm E-mail', 1),
(265, 'yee/auth', 'Confirm', 1),
(266, 'yee/auth', 'Could not send confirmation email', 1),
(267, 'yee/auth', 'Current password', 1),
(268, 'yee/auth', 'E-mail confirmation for', 1),
(269, 'yee/auth', 'E-mail confirmed', 1),
(270, 'yee/auth', 'E-mail is invalid', 1),
(271, 'yee/auth', 'E-mail with activation link has been sent to <b>{email}</b>. This link will expire in {minutes} min.', 1),
(272, 'yee/auth', 'E-mail', 1),
(273, 'yee/auth', 'Forgot password?', 1),
(274, 'yee/auth', 'Incorrect username or password', 1),
(275, 'yee/auth', 'Login has been taken', 1),
(276, 'yee/auth', 'Login', 1),
(277, 'yee/auth', 'Logout', 1),
(278, 'yee/auth', 'Non Authorized Services', 1),
(279, 'yee/auth', 'Password has been updated', 1),
(280, 'yee/auth', 'Password recovery', 1),
(281, 'yee/auth', 'Password reset for', 1),
(282, 'yee/auth', 'Password', 1),
(283, 'yee/auth', 'Registration - confirm your e-mail', 1),
(284, 'yee/auth', 'Registration', 1),
(285, 'yee/auth', 'Remember me', 1),
(286, 'yee/auth', 'Remove profile picture', 1),
(287, 'yee/auth', 'Repeat password', 1),
(288, 'yee/auth', 'Reset Password', 1),
(289, 'yee/auth', 'Reset', 1),
(290, 'yee/auth', 'Save Profile', 1),
(291, 'yee/auth', 'Save profile picture', 1),
(292, 'yee/auth', 'Set Password', 1),
(293, 'yee/auth', 'Set Username', 1),
(294, 'yee/auth', 'Signup', 1),
(295, 'yee/auth', 'This E-mail already exists', 1),
(296, 'yee/auth', 'Token not found. It may be expired', 1),
(297, 'yee/auth', 'Token not found. It may be expired. Try reset password once more', 1),
(298, 'yee/auth', 'Too many attempts', 1),
(299, 'yee/auth', 'Unable to send message for email provided', 1),
(300, 'yee/auth', 'Update Password', 1),
(301, 'yee/auth', 'User Profile', 1),
(302, 'yee/auth', 'User with the same email as in {client} account already exists but isn''t linked to it. Login using email first to link it.', 1),
(303, 'yee/auth', 'The username should contain only Latin letters, numbers and the following characters: "-" and "_".', 1),
(304, 'yee/auth', 'Username contains not allowed characters or words.', 1),
(305, 'yee/auth', 'Wrong password', 1),
(306, 'yee/auth', 'You could not login from this IP', 1),
(307, 'yee/seo', 'Create SEO Record', 1),
(308, 'yee/seo', 'Follow', 1),
(309, 'yee/seo', 'Index', 1),
(310, 'yee/seo', 'Keywords', 1),
(311, 'yee/seo', 'SEO', 1),
(312, 'yee/seo', 'Search Engine Optimization', 1),
(313, 'yee/seo', 'Update SEO Record', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `alias`, `apply_time`) VALUES
('m000000_000000_base', '@app/migrations', 1480584488),
('m130524_201442_init', '@app/migrations', 1480584492),
('m150319_150657_alter_user_table', '@yeesoft/yii2-yee-core/migrations/', 1480584493),
('m150319_155941_init_yee_core', '@yeesoft/yii2-yee-core/migrations/', 1480584496),
('m150319_184824_init_settings', '@yeesoft/yii2-yee-core/migrations/', 1480584496),
('m150319_194321_init_menus', '@yeesoft/yii2-yee-core/migrations/', 1480584499),
('m150320_102452_init_translations', '@yeesoft/yii2-yee-translation/migrations/', 1480584500),
('m150628_124401_create_media_table', '@yeesoft/yii2-yee-media/migrations/', 1480584503),
('m150630_121101_create_post_table', '@yeesoft/yii2-yee-post/migrations/', 1480584506),
('m150703_182055_create_auth_table', '@yeesoft/yii2-yee-auth/migrations/', 1480584506),
('m150706_175101_create_comment_table', '@yeesoft/yii2-comments/migrations/', 1480584507),
('m150719_154955_add_setting_menu_links', '@yeesoft/yii2-yee-settings/migrations/', 1480584507),
('m150719_182533_add_menu_and_links', '@yeesoft/yii2-yee-menu/migrations/', 1480584507),
('m150727_175300_add_comments_menu_links', '@yeesoft/yii2-yee-comment/migrations/', 1480584507),
('m150729_121634_add_user_menu_links', '@yeesoft/yii2-yee-user/migrations/', 1480584507),
('m150729_122614_add_post_menu_links', '@yeesoft/yii2-yee-post/migrations/', 1480584508),
('m150729_131014_add_media_menu_links', '@yeesoft/yii2-yee-media/migrations/', 1480584508),
('m150731_150101_create_page_table', '@yeesoft/yii2-yee-page/migrations/', 1480584509),
('m150731_150644_add_page_menu_links', '@yeesoft/yii2-yee-page/migrations/', 1480584509),
('m150821_140141_add_core_permissions', '@yeesoft/yii2-yee-core/migrations/', 1480584509),
('m150825_202231_add_post_permissions', '@yeesoft/yii2-yee-post/migrations/', 1480584509),
('m150825_205531_add_user_permissions', '@yeesoft/yii2-yee-user/migrations/', 1480584509),
('m150825_211322_add_menu_permissions', '@yeesoft/yii2-yee-menu/migrations/', 1480584510),
('m150825_212310_add_settings_permissions', '@yeesoft/yii2-yee-settings/migrations/', 1480584510),
('m150825_212941_add_comments_permissions', '@yeesoft/yii2-yee-comment/migrations/', 1480584510),
('m150825_213610_add_media_permissions', '@yeesoft/yii2-yee-media/migrations/', 1480584510),
('m150825_220620_add_page_permissions', '@yeesoft/yii2-yee-page/migrations/', 1480584510),
('m151116_212614_add_translations_menu_links', '@yeesoft/yii2-yee-translation/migrations/', 1480584511),
('m151121_091144_i18n_yee_source', '@yeesoft/yii2-yee-core/migrations/', 1480584511),
('m151121_131210_add_translation_permissions', '@yeesoft/yii2-yee-translation/migrations/', 1480584511),
('m151121_184634_i18n_yee_translation_source', '@yeesoft/yii2-yee-translation/migrations/', 1480584511),
('m151121_225504_i18n_yee_media_source', '@yeesoft/yii2-yee-media/migrations/', 1480584511),
('m151121_232115_i18n_yee_menu_source', '@yeesoft/yii2-yee-menu/migrations/', 1480584511),
('m151121_233615_i18n_yee_page_source', '@yeesoft/yii2-yee-page/migrations/', 1480584511),
('m151121_233715_i18n_yee_post_source', '@yeesoft/yii2-yee-post/migrations/', 1480584511),
('m151121_235015_i18n_yee_settings_source', '@yeesoft/yii2-yee-settings/migrations/', 1480584511),
('m151121_235512_i18n_yee_user_source', '@yeesoft/yii2-yee-user/migrations/', 1480584511),
('m151126_061233_i18n_yee_auth_source', '@yeesoft/yii2-yee-auth/migrations/', 1480584511),
('m151226_230101_create_seo_table', '@yeesoft/yii2-yee-seo/migrations/', 1480584512),
('m151226_231101_add_seo_menu_links', '@yeesoft/yii2-yee-seo/migrations/', 1480584512),
('m151226_233401_add_seo_permissions', '@yeesoft/yii2-yee-seo/migrations/', 1480584512),
('m151226_234401_i18n_yee_seo_source', '@yeesoft/yii2-yee-seo/migrations/', 1480584512),
('m160207_123123_add_super_parent_id', '@yeesoft/yii2-comments/migrations/', 1480584513),
('m160414_212551_add_view_page', '@yeesoft/yii2-yee-page/migrations/', 1480584513),
('m160414_212558_add_view_post', '@yeesoft/yii2-yee-post/migrations/', 1480584514),
('m160426_122854_create_uploader_images_table', '@yeesoft/yii2-yee-media/migrations/', 1480584514),
('m160530_224510_add_url_field', '@yeesoft/yii2-comments/migrations/', 1480584514),
('m160605_214907_create_tag_table', '@yeesoft/yii2-yee-post/migrations/', 1480584516),
('m160605_215105_init_tag_settings', '@yeesoft/yii2-yee-post/migrations/', 1480584516),
('m160610_120101_init_demo', '@app/migrations', 1480584517),
('m160831_224932_alter_user_table', '@yeesoft/yii2-yee-core/migrations/', 1480584519),
('m160903_113810_update_auth_foreign_key', '@yeesoft/yii2-yee-auth/migrations/', 1480584519);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'page',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  PRIMARY KEY (`id`),
  KEY `page_slug` (`slug`),
  KEY `page_status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `slug`, `status`, `comment_status`, `published_at`, `created_at`, `updated_at`, `created_by`, `updated_by`, `revision`, `view`, `layout`) VALUES
(2, 'Media', 1, 1, 1480550400, 1480585660, 1480586396, 1, 1, 3, 'page', 'main');

-- --------------------------------------------------------

--
-- Table structure for table `page_lang`
--

CREATE TABLE IF NOT EXISTS `page_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `page_lang_post_id` (`page_id`),
  KEY `page_lang_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page_lang`
--

INSERT INTO `page_lang` (`id`, `page_id`, `language`, `title`, `content`) VALUES
(2, 2, 'en-US', 'Media', '<p>Media 1</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `thumbnail` varchar(255) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'post',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  PRIMARY KEY (`id`),
  KEY `post_slug` (`slug`),
  KEY `post_category_id` (`category_id`),
  KEY `post_status` (`status`),
  KEY `fk_page_created_by` (`created_by`),
  KEY `fk_page_updated_by` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `slug`, `category_id`, `status`, `comment_status`, `thumbnail`, `published_at`, `created_at`, `updated_at`, `created_by`, `updated_by`, `revision`, `view`, `layout`) VALUES
(1, 'integer-id-ullamcorper-nibh', 1, 1, 1, NULL, 1440720000, 1440763228, 1440771930, 1, 1, 1, 'post', 'main'),
(2, 'Test Post', 3, 1, 1, '/uploads/2016/12/14334721975466459247457342578424163860480n-400x300.jpg', 1440720000, 1440763228, 1480585481, 2, 1, 3, 'post', 'main');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE IF NOT EXISTS `post_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `left_border` int(11) NOT NULL,
  `right_border` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_category_slug` (`slug`),
  KEY `post_category_visible` (`visible`),
  KEY `left_border` (`left_border`,`right_border`),
  KEY `right_border` (`right_border`),
  KEY `fk_post_category_created_by` (`created_by`),
  KEY `fk_post_category_updated_by` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `visible`, `created_at`, `updated_at`, `created_by`, `updated_by`, `left_border`, `right_border`, `depth`) VALUES
(1, 'root', 0, 1480584504, NULL, NULL, NULL, 0, 2147483647, 0),
(2, 'first-category', 1, 1480584516, 1480584516, 1, 1, 42107523, 84215044, 1),
(3, 'News', 1, 1480585148, 1480585148, 1, 1, 126322567, 168430088, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category_lang`
--

CREATE TABLE IF NOT EXISTS `post_category_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `post_category_lang_id` (`post_category_id`),
  KEY `post_category_lang_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `language`, `title`, `description`) VALUES
(1, 1, 'en-US', 'First Category', NULL),
(2, 3, 'en-US', 'News', 'All news available here');

-- --------------------------------------------------------

--
-- Table structure for table `post_lang`
--

CREATE TABLE IF NOT EXISTS `post_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `post_lang_post_id` (`post_id`),
  KEY `post_lang_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `language`, `title`, `content`) VALUES
(1, 1, 'en-US', 'Integer id ullamcorper nibh', '<p style="text-align: justify;">Integer id ullamcorper nibh, id blandit ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non ante commodo, finibus nibh at, sollicitudin felis. Aliquam interdum eros eget tempor porta. Quisque viverra velit magna, ac eleifend mi vehicula nec. Curabitur sollicitudin metus eget odio posuere pulvinar. Nullam vestibulum massa ac dolor mattis pharetra. Vestibulum finibus non massa ut cursus.</p><p style="text-align: justify;">Proin eget ullamcorper elit, ac luctus ex. Pellentesque mattis nibh nec nunc fermentum lobortis. Cras malesuada ipsum eget massa pulvinar euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque, tortor in efficitur semper, tellus lorem blandit augue, sed euismod purus velit nec libero. Pellentesque dictum faucibus augue, ac rutrum velit. Quisque tristique neque sit amet turpis consectetur rutrum. Aliquam ac vulputate mauris.</p>'),
(2, 2, 'en-US', 'Test Post', '<p>Test Post</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_slug` (`slug`),
  KEY `fk_post_tag_created_by` (`created_by`),
  KEY `fk_post_tag_updated_by` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `slug`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'yee-cms', 1480584516, 1480584516, 1, 1),
(2, 'yii2', 1480584516, 1480584516, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag_lang`
--

CREATE TABLE IF NOT EXISTS `post_tag_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_tag_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_lang_id` (`post_tag_id`),
  KEY `post_tag_lang_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post_tag_lang`
--

INSERT INTO `post_tag_lang` (`id`, `post_tag_id`, `language`, `title`) VALUES
(1, 1, 'en-US', 'YeeCMS'),
(2, 2, 'en-US', 'Yii2');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag_post`
--

CREATE TABLE IF NOT EXISTS `post_tag_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_tag_post_id` (`post_id`),
  KEY `fk_post_tag_tag_id` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `post_tag_post`
--

INSERT INTO `post_tag_post` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE IF NOT EXISTS `seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(127) NOT NULL DEFAULT '',
  `keywords` text,
  `description` text,
  `index` smallint(6) NOT NULL DEFAULT '1',
  `follow` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `seo_url` (`url`),
  KEY `seo_created_by` (`created_by`),
  KEY `seo_author` (`created_by`),
  KEY `fk_seo_updated_by` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `url`, `title`, `author`, `keywords`, `description`, `index`, `follow`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '/en', 'Homepage', 'Site Owner', 'yii2, cms, yeecms', 'Seo meta description', 1, 1, 1452544164, 1452545049, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(64) DEFAULT 'general',
  `key` varchar(64) NOT NULL,
  `language` varchar(6) DEFAULT NULL,
  `value` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `setting_group_lang` (`group`,`key`,`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `group`, `key`, `language`, `value`, `description`) VALUES
(1, 'general', 'title', 'en-US', 'Starroots', NULL),
(2, 'general', 'description', 'en-US', '', NULL),
(3, 'general', 'email', NULL, 'admin@starroots.com', NULL),
(4, 'general', 'timezone', NULL, 'Asia/Kolkata', NULL),
(5, 'general', 'dateformat', NULL, 'medium', NULL),
(6, 'general', 'timeformat', NULL, 'hh:mm a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `superadmin` int(6) DEFAULT '0',
  `registration_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bind_to_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_confirmed` int(1) DEFAULT '0',
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `first_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_day` int(2) DEFAULT NULL,
  `birth_month` int(2) DEFAULT NULL,
  `birth_year` int(4) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `superadmin`, `registration_ip`, `bind_to_ip`, `email_confirmed`, `confirmation_token`, `avatar`, `first_name`, `last_name`, `birth_day`, `birth_month`, `birth_year`, `gender`, `phone`, `skype`, `info`) VALUES
(1, 'root', '', '$2y$13$8XCsAj2v.oOaSonkqlFkw.nD3qNPZQizzRyB1wfEuAJkTd9DGvvtm', NULL, 'admin@starroots.com', 10, 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'sivaanil', 'ZFbvd7Qka36z96h7Ffcf9rMdB6J8JDxI', '$2y$13$/pRLW.VwK8iCSOVKDOKgyu9O9U13/mCc9IY20cTEWLSSYwZ4bKHYC', NULL, 'sivakrishna.alapati@yesgnome.com', 10, 1480585377, 1480585383, 0, '127.0.0.1', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_setting`
--

CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `user_setting_user_key` (`user_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_visit_log`
--

CREATE TABLE IF NOT EXISTS `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` varchar(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `os` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_log_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `browser`, `os`, `user_id`, `visit_time`) VALUES
(1, '583feeeccdaae', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'Chrome', 'Linux', 1, 1480584940),
(2, '583fef6134e96', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'Chrome', 'Linux', 1, 1480585057),
(3, '583fef72a801d', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'Chrome', 'Linux', 1, 1480585074),
(4, '583ff0a7dca53', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'Chrome', 'Linux', 2, 1480585383);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `fk_user_id_auth_assignment_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_item_name_auth_assignment_table` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `fk_auth_item_table_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_table_rule_name` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `fk_child_auth_item_child_table` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_parent_auth_item_child_table` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `fk_media_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media_album` FOREIGN KEY (`album_id`) REFERENCES `media_album` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `media_album`
--
ALTER TABLE `media_album`
  ADD CONSTRAINT `fk_media_album_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_album_category` FOREIGN KEY (`category_id`) REFERENCES `media_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media_album_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `media_album_lang`
--
ALTER TABLE `media_album_lang`
  ADD CONSTRAINT `fk_media_album_lang` FOREIGN KEY (`media_album_id`) REFERENCES `media_album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_category`
--
ALTER TABLE `media_category`
  ADD CONSTRAINT `fk_media_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `media_category_lang`
--
ALTER TABLE `media_category_lang`
  ADD CONSTRAINT `fk_media_category_lang` FOREIGN KEY (`media_category_id`) REFERENCES `media_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_lang`
--
ALTER TABLE `media_lang`
  ADD CONSTRAINT `fk_media_lang` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_upload`
--
ALTER TABLE `media_upload`
  ADD CONSTRAINT `fk_media_upload_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD CONSTRAINT `fk_menu_lang` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_link`
--
ALTER TABLE `menu_link`
  ADD CONSTRAINT `fk_menu_link` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_menu_link_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_menu_link_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_link_lang`
--
ALTER TABLE `menu_link_lang`
  ADD CONSTRAINT `fk_menu_link_lang` FOREIGN KEY (`link_id`) REFERENCES `menu_link` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_message_source_message` FOREIGN KEY (`source_id`) REFERENCES `message_source` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_lang`
--
ALTER TABLE `page_lang`
  ADD CONSTRAINT `fk_page_lang` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_page_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_page_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `post_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `fk_post_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `fk_post_category_lang` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `fk_post_lang` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `fk_post_tag_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_tag_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `post_tag_lang`
--
ALTER TABLE `post_tag_lang`
  ADD CONSTRAINT `fk_post_tag_lang` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tag_post`
--
ALTER TABLE `post_tag_post`
  ADD CONSTRAINT `fk_post_tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `post_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_tag_post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seo`
--
ALTER TABLE `seo`
  ADD CONSTRAINT `fk_seo_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_seo_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `fk_user_id_user_setting_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `fk_user_id_user_visit_log_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
