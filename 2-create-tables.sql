-- Crear las tablas
USE metro_cdmx;

CREATE TABLE `lines` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `name` VARCHAR(10) NOT NULL,
    `color` VARCHAR(15) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

--Tabla estaciones

CREATE TABLE `stations` (
    `id` BIGINT(20),

    `name` VARCHAR(50) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

--Tabla trenes

CREATE TABLE `trains` (
    `serial_numb` VARCHAR(10) NOT NULL,

    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (serial_numb),
    CONSTRAINT `trains_line_id_foreing`
    FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

--tabla de delete de pruebas

CREATE TABLE `stations_delete` (
    `id` BIGINT(20),

    `name` VARCHAR(50) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;
