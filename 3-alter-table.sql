
USE metro_cdmx;

ALTER TABLE `stations`
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id);

--Se puede hancer mas cosas como agregar llaves foraneas con:
--ADD CONSTRAINT `nombre_de_la_llave_foreing`
--FOREING KEY (`llave_a_relacionar`) REFERENCES `tabla` (`campo_de_la_tabla`)