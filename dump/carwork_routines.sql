-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: carwork
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `ranking_montadoras`
--

DROP TABLE IF EXISTS `ranking_montadoras`;
/*!50001 DROP VIEW IF EXISTS `ranking_montadoras`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ranking_montadoras` AS SELECT 
 1 AS `Nome Marca`,
 1 AS `Quantidade de modelos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info`
--

DROP TABLE IF EXISTS `info`;
/*!50001 DROP VIEW IF EXISTS `info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `info` AS SELECT 
 1 AS `Nome do cliente`,
 1 AS `E-mail`,
 1 AS `Telefone`,
 1 AS `ID Cliente`,
 1 AS `ID do carro`,
 1 AS `Versao do carro`,
 1 AS `Modelo do carro`,
 1 AS `Marca do carro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cadastro_cliente`
--

DROP TABLE IF EXISTS `cadastro_cliente`;
/*!50001 DROP VIEW IF EXISTS `cadastro_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cadastro_cliente` AS SELECT 
 1 AS `Nome do cliente`,
 1 AS `E-mail`,
 1 AS `Telefone`,
 1 AS `ID Cliente`,
 1 AS `ID Carro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ranking_oficinas`
--

DROP TABLE IF EXISTS `ranking_oficinas`;
/*!50001 DROP VIEW IF EXISTS `ranking_oficinas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ranking_oficinas` AS SELECT 
 1 AS `Oficina`,
 1 AS `Quantidade de Veiculos`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ranking_montadoras`
--

/*!50001 DROP VIEW IF EXISTS `ranking_montadoras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ranielle`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ranking_montadoras` AS select `m`.`nome_marca` AS `Nome Marca`,count(`mm`.`id_modelo`) AS `Quantidade de modelos` from (`marca` `m` join `modelo` `mm` on((`mm`.`marca_id_marca` = `m`.`id_marca`))) group by `m`.`id_marca` order by count(`mm`.`id_modelo`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info`
--

/*!50001 DROP VIEW IF EXISTS `info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ranielle`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info` AS select `cli`.`nome_cliente` AS `Nome do cliente`,`cli`.`email_cliente` AS `E-mail`,`cli`.`telefone_cliente` AS `Telefone`,`carcli`.`cliente_id_cliente` AS `ID Cliente`,`car`.`id_carro` AS `ID do carro`,`v`.`nome_versao` AS `Versao do carro`,`model`.`nome_modelo` AS `Modelo do carro`,`m`.`nome_marca` AS `Marca do carro` from (((((`cliente` `cli` left join `carro_cliente` `carcli` on((`cli`.`id_cliente` = `carcli`.`cliente_id_cliente`))) left join `carro` `car` on((`carcli`.`carro_id_carro` = `car`.`id_carro`))) left join `versao` `v` on((`v`.`id_versao` = `car`.`versão_id_versao`))) left join `modelo` `model` on((`model`.`id_modelo` = `v`.`modelo_id_modelo`))) left join `marca` `m` on((`m`.`id_marca` = `model`.`marca_id_marca`))) order by `car`.`id_carro` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cadastro_cliente`
--

/*!50001 DROP VIEW IF EXISTS `cadastro_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ranielle`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cadastro_cliente` AS select `cli`.`nome_cliente` AS `Nome do cliente`,`cli`.`email_cliente` AS `E-mail`,`cli`.`telefone_cliente` AS `Telefone`,`cli`.`id_cliente` AS `ID Cliente`,`carcli`.`carro_id_carro` AS `ID Carro` from (`cliente` `cli` left join `carro_cliente` `carcli` on((`cli`.`id_cliente` = `carcli`.`cliente_id_cliente`))) order by `carcli`.`cliente_id_cliente` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ranking_oficinas`
--

/*!50001 DROP VIEW IF EXISTS `ranking_oficinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ranielle`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ranking_oficinas` AS select `o`.`nome_oficina` AS `Oficina`,count(`oc`.`carro_id_carro`) AS `Quantidade de Veiculos` from ((`oficina` `o` join `oficina_carro` `oc` on((`o`.`id_oficina` = `oc`.`oficina_id_oficina`))) join `carro` `c` on((`oc`.`carro_id_carro` = `c`.`id_carro`))) group by `o`.`id_oficina` order by count(`o`.`id_oficina`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'carwork'
--

--
-- Dumping routines for database 'carwork'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-24 10:18:22
