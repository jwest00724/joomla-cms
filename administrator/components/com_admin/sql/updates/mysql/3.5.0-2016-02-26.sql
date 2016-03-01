--
-- Create a table for UTF-8 Multibyte (utf8mb4) conversion for MySQL in
-- order to check if the conversion has been performed and if not show a
-- message about database problem in the database schema view. 
--
-- The value of `converted` can be 0 (not converted yet after update),
-- 1 (converted to utf8), 2 (converted to utf8mb4) or 3 (value set on new
-- installation, will be later set to 1 or 2 by the database schema
-- manager according to utf8 support of the database before checking the
-- database)
--

CREATE TABLE IF NOT EXISTS `#__utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE=utf8mb4_unicode_ci;

INSERT INTO `#__utf8_conversion` (`converted`) VALUES (0);
