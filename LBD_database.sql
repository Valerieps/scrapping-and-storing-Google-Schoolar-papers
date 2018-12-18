------------------
-- LBD DATABASE --
------------------

CREATE DATABASE IF NOT EXISTS lbd DEFAULT CHARSET = utf8;

USE lbd;


DROP TABLE IF EXISTS `material`
DROP TABLE IF EXISTS `fatiado_em`
DROP TABLE IF EXISTS `keywords`
DROP TABLE IF EXISTS `publicacao_keywords`
DROP TABLE IF EXISTS `producaoAcademica`;
DROP TABLE IF EXISTS `autor_artigo`
DROP TABLE IF EXISTS `artigo`
DROP TABLE IF EXISTS `pesquisador`;
DROP TABLE IF EXISTS `instituicao`;


-- OK - criada e incluida
-----------------------------------------------------------
-- instituicao (nomeInstituicao(nn), pais(nn), cidade) --
-----------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `instituicao` (
  `idInstituicao` int (5) NOT NULL AUTO_INCREMENT,
  `nomeInstituicao` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (idInstituicao)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;


INSERT INTO `instituicao` VALUES ('1', 'ohio State University', 'eua', 'columbus')
INSERT INTO `instituicao` VALUES ('2', 'sao joao del rei', 'brasil', 'são joao del rei')
INSERT INTO `instituicao` VALUES ('3', 'sohag university', 'egito', 'sohag')
INSERT INTO `instituicao` VALUES ('4', 'universidade estadual de campinas', 'brasil', 'campinas')
INSERT INTO `instituicao` VALUES ('5', 'universidade federal de goiania', 'brasil', 'goiania')
INSERT INTO `instituicao` VALUES ('6', 'universidade federal de itajuba', 'brasil', 'itajuba')
INSERT INTO `instituicao` VALUES ('7', 'universidade federal de minas gerais', 'brasil', 'belo horizonte')
INSERT INTO `instituicao` VALUES ('8', 'universidade federal do amazonas', 'brasil', 'manaus')
INSERT INTO `instituicao` VALUES ('9', 'universidade federal do rio de janeiro', 'brasil', 'rio de janeiro')
INSERT INTO `instituicao` VALUES ('10', 'Virginia Polytechnic Institute and State University', 'eua', 'blacksburg')



-- OK - criada e incluida
-----------------------------------------------------------------------------------------------------------------------------
-- pesquisador (idPesquisador(nn), nomePesquisador(nn), sobrenomePesquisador(nn), titulacao, ocupacao, nomeInstituição(nn)) 
------------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `pesquisador` (
  `idPesquisador` int (5) NOT NULL AUTO_INCREMENT,
  `nomePesquisador` varchar(50) NOT NULL,
  `sobrenomePesquisador` varchar(100) NOT NULL,
  `titulacao` varchar(50) DEFAULT NULL,
  `ocupacao` varchar(50) DEFAULT NULL,
  `idInstituicao` int (5) DEFAULT NULL,
  PRIMARY KEY (idPesquisador),
  FOREIGN KEY (idInstituicao) REFERENCES instituicao(idInstituicao)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;

INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('1', 'adriano ', 'veloso', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('2', 'alan', 'aquino de castro junior', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('3', 'alan', 'filipe sant ana', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('4', 'alberto', 'h f laender', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('5', 'alessandra', 'levcovitz', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('6', 'allan', 'j c silva', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('7', 'altigran', 'soares da silva', '8');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('8', 'ana', 'paula de carvalho', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('9', 'anderson', 'almeida ferreira', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('10', 'berthier ', 'ribeiro-neto', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('11', 'caio', 'furtado alves', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('12', 'claudia', 'bauzer medeiros', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('13', 'clodoveu', 'a davis', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('14', 'daniel', 'figueiredo', '9');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('15', 'denilson', 'alves pereira', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('16', 'diego', 'marinho de oliveira', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('17', 'eder', 'f martins', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('18', 'edleno', 'de moura', '8');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('19', 'edward', 'a fox', '10');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('20', 'eveline', 'russo sacramento', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('21', 'fabiano', 'muniz belem', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('22', 'fabricio', 'benevenuto', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('23', 'felipe', 'viegas', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('24', 'fernando', 'mourao', '2');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('25', 'filipe', 'l arcanjo', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('26', 'filipe', 'n ribeiro', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('27', 'gabriel', 'silva gonçalves', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('28', 'giovani', 'sa', '2');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('29', 'gisele', 'lobo papa', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('30', 'guilherme', 'andrade', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('31', 'guilherme', 'tavares de assis', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('32', 'hendrickson', 'reiter langbehn', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('33', 'hugo', 's santos', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('34', 'humberto', 'm almeida', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('35', 'isac', 'sandin', '2');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('37', 'joao', 'palotti', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('36', 'joao', 'marcos bastos cavalcanti', '8');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('38', 'juliano', 'lopes de  oliveira', '5');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('39', 'jussara', 'marques almeida', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('40', 'karine', 'versieux magalhães', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('41', 'katia', 'c lages dos santos', '6');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('42', 'layne', 't watson', '10');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('43', 'lena', 'veiga e silva', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('44', 'leonardo', 'rocha', '2');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('45', 'marcos', 'andré  gonçalves', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('46', 'matheus', 'araujo', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('47', 'mohammed', 'zakib', '3');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('48', 'moises', 'gomes de  carvalho', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('49', 'neill', 'a kipp', '10');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('50', 'nivio ', 'ziviani', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('51', 'patricia', 'correia saraiva', '8');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('52', 'peterson', 'sampaio procópio júnior', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('53', 'pollyana', 'goncalves', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('54', 'ricardo', 's das torres', '4');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('55', 'ricardo', 'goncalves cota', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('56', 'rodrygo', 'l t santos', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('57', 'saulo', 'm r ricci', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('58', 'soraya', 'miriam varela marinho', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('59', 'srinivasan', 'parthasarathy', '1');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('60', 'tales', 'mota machado', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('61', 'thiago', 'salles', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('62', 'thiago ', 'cardoso', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('63', 'thomaz', 'phillipe c silva', '8');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('64', 'vinicius', 'rodrigo dos santos silva', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('65', 'vitor', 'oliveira', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('66', 'wagner ', 'meira jr', '7');
INSERT INTO `pesquisador` (`idPesquisador`, `nomePesquisador`, `sobrenomePesquisador`,`idInstituicao`) VALUES ('67', 'waister', 'silva martins', '7');




-- OK criada e povoada
-----------------------------------------------------------------------------------------------------------------------------
-- producaoAcademica (idProdAcademica (nn), idPesquisador (nn), ano (nn), titulo (nn), resumo, urlProdAcademica, doi, grau (nn), orientador (nn), coorientador, instituicao (nn), financiadora)
-----------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `producaoAcademica` (
  `idProdAcademica` int(5) NOT NULL AUTO_INCREMENT,
  `idPesquisador` int (5) NOT NULL,
  `ano` int(4) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumo` text(500) DEFAULT NULL,
  `urlProdAcademica` varchar(200) DEFAULT NULL,
  `doi` varchar(10) DEFAULT NULL,
  `grau` varchar(20) NOT NULL,
  `idOrientador` int (5) DEFAULT NULL,
  `idCoorientador` int (5) DEFAULT NULL,
  `idInstituicao` int (5) DEFAULT NULL,
  `financiadora`varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idProdAcademica`),
  FOREIGN KEY (idPesquisador) REFERENCES pesquisador(idPesquisador),
  FOREIGN KEY (idOrientador) REFERENCES pesquisador(idPesquisador),
  FOREIGN KEY (idCoorientador) REFERENCES pesquisador(idPesquisador),
  FOREIGN KEY (idInstituicao) REFERENCES instituicao(idInstituicao),
  UNIQUE(titulo, ano)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;

INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('2', '20', '1994', 'Uma Abordagem Orientada a Objetos para Projeto Lógico de Bancos de Dados Relacionais', 'Mestrado', '4', '7', 'cnpq');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('10', '48', '2009', 'Evolutionary Approaches to Data Integration Related Problems', 'Doutorado', '4', '7', 'cnpq');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('14', '3', '2015', 'Heurísticas para Desambiguação de Nomes de Autores em Referências Bibliográficas', 'Mestrado', '45', '7', 'cnpq');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('12', '9', '2012', 'Contributions for Solving the Author Name Ambiguity Problem in Bibliographic Citations', 'Doutorado', '4', '7', 'capes');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('8', '31', '2008', 'A Genre-Aware Approach to Focused Crawling of Web Pages', 'Doutorado', '4', '7', 'capes');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('5', '40', '2001', 'Uma Abordagem para Armazenamento de Dados Semi-Estruturados em Bancos de Dados Relacionais', 'Mestrado', '4', '7', 'capes');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('11', '16', '2012', 'Uma Abordagem Baseada em Fluxo de Filtros para o Reconhecimento de Entidades em Mensagens do Twitter', 'Mestrado', '4', '7', 'fapemig');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('13', '2', '2014', 'Mapeamento de Circuitos de Telecomunicações utilizando NoSQL', 'Graduação', '4', '7', '');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('1', '5', '1987', 'Um Processador de Esquemas Conceituais de Bancos de Dados', 'Graduação', '4', '7', '');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('3', '7', '1995', 'Contribuições para o Problema de Manutenção de Representações Relacionais Otimizadas de Esquemas Entidade Relacionamento', 'Mestrado', '4', '7', '');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('4', '58', '1998', 'Proposta de um Ambiente para Utilização Compartilhada de uma Base de Dados Geográfica de Âmbito Estadual', 'Mestrado', '4', '7', '');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('7', '55', '2008', 'Um Metodo de Agrupamento Hierarquico para Resolucao de Ambiguidade entre Nomes de Autores em Citacoes Bibliograficas', 'Mestrado', '45', '7', '');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('6', '64', '2006', 'Uma ferramenta para Comunicacao para Repositorios Institucionais', 'Graduação', '45', '7', '');
INSERT INTO `producaoAcademica` (`idProdAcademica`, `idPesquisador`, `ano`,`titulo`, `grau`, `idOrientador`, `idInstituicao`, `financiadora`) VALUES ('9', '67', '2009', 'Abordagens para Avaliacao Automatica de Conferencias Cnetificas: Um estudo de Caso em', 'Mestrado', '45', '7', '');

-- OK criada e povoada
-----------------------------------------------------------------------------------------------------------------
-- artigo (idArtigo, ano (nn), titulo (nn), resumo, urlArtigo (nn), ISSN, evento/periodico (nn), financiadora) --
-----------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `artigo` (
  `idArtigo` int(5) NOT NULL AUTO_INCREMENT,
  `ano` int(4) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `resumo` text(500) DEFAULT NULL,
  `urlArtigo` varchar(200) DEFAULT NULL,
  `doi` varchar(200) DEFAULT NULL,
  `evento_periodico` varchar(300) NOT NULL, 
  `financiadora`varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idArtigo`),
  UNIQUE(titulo, ano)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;


INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('1' , '1999' , 'A Framework for Designing and Implementing the User Interface of a Geographic Digital Library' , 'Geographic data are useful for a large set of applications, such as urban planning and environmental control. These data are, however, very expensive to acquire and maintain. Moreover, their use is of' ,'https://link.springer.com/article/10.1007/s007990050047' , 'International Journal on Digital Libraries,  v 2,  n 2-3, p 190-206');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('2' , '2004' , 'Streams, structures, spaces, scenarios, societies (5s)' , 'Digital libraries (DLs) are complex information systems and therefore demand formal foundations lest development efforts diverge and interoperability suffers. In this article, we propose the fundament' ,'https://dl.acm.org/citation.cfm?id=984325' ,'10.1145/984321.984325' , 'ACM Transactions on Information Systems,  v 22,  n 4,  p  270-312');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('3' , '2007' , 'Evaluating a Digital Library Self-Archiving Service: The BDBComp Usability Study' , 'In this article, we present an overview of a self-archiving service for the Brazilian Digital Library of Computing (BDBComp) and describe a user experiment conducted to evaluate it. This experiment in' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0306457306000987' , 'Information Processing & Management,  v 43,  p  1103-1120');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('4' , '2008' , 'Towards a Digital Library Theory: A Formal Digital Library Ontology' , 'Digital libraries (DLs) have eluded definitional consensus and lack agreement on common theories and frameworks. This makes comparison of DLs extremely difficult, promotes ad-hoc development, and impe' ,'https://link-springer-com.ez27.periodicos.capes.gov.br/article/10.1007/s00799-008-0033-1' , 'International Journal on Digital Libraries,  v 8,  p  91-14');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('5' , '2009' , 'An evolutionary approach for combining different sources of evidence in search engines' , 'Modern Web search engines use different strategies to improve the overall quality of their document rankings. Usually the strategy adopted involves the combination of multiple sources of relevance int' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S030643790800063X' , 'Information Systems,  v 34,  p  276-289');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('6' , '2010' , 'A Multi-view Approach for Detecting Non-Cooperative Users in Online Video Sharing Systems' , 'Most online video sharing systems (OVSSs), such as YouTube and Yahoo! Video, have several mechanisms for supporting interactions among users. One such mechanism is the  video response feature in YouTu' ,'https://seer.ufmg.br/index.php/jidm/article/view/81' , 'Journal of Information and Data Management - JIDM,  v 1,  p  313-328');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('7' , '2010' , 'Automatic Selection of Training Examples for a Record Deduplication Method Based on Genetic Programming' , 'Recently, machine learning techniques have been used to solve the record deduplication problem. However, these techniques require examples, manually generated in most cases, for training purposes. Thi' ,'https://seer.ufmg.br/index.php/jidm/article/view/59' , 'Journal of Information and Data Management - JIDM,  v 1,  p  213-228');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('8' , '2010' , 'Estimating the Credibility of Examples in Automatic Document Classification' , 'Abstract. Classification algorithms usually assume that any example in the raining set should contribute equally to the classification model being generated. However, this is not always the case. This' ,'https://seer.ufmg.br/index.php/jidm/article/view/85' , 'Journal of Information and Data Management - JIDM,  v 1,  p  439-454');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('9' , '2010' , 'PaMS: A component-based service for finding the missing full text of articles cataloged in a digital library' , 'Providing access to the full text of cataloged articles is a highly desirable feature for a digital library. However, in many such systems, not all metadata records have (a direct pointer to) a corres' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0306437909000404' , 'Information Systems (Oxford),  v 35,  p  544-556');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('10' , '2011' , 'A generic Web-based entity resolution framework' , 'Web data repositories usually contain references to thousands of real‐world entities from multiple sources. It is not uncommon that multiple entities share the same label (polysemes) and that distinct' ,'https://onlinelibrary-wiley.ez27.periodicos.capes.gov.br/doi/abs/10.1002/asi.21518' , 'Journal of the American Society for Information Science and Technology (Print),  v 62,  p  919-932');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('11' , '2011' , 'Calibrated lazy associative classification' , 'Classification is a popular machine learning task. Given an example x and a class c, a classifier usually works by estimating the probability of x being member of c (i.e., membership probability). Wel' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0020025510001192' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1016/j.ins.2010.03.007' , 'Information Sciences,  v 181,  p  2656-2670');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('12' , '2011' , 'Incremental Unsupervised Name Disambiguation in Cleaned Digital Libraries' , 'Name ambiguity in the context of bibliographic citations is one of the hardest problems currently faced by the Digital Library (DL) community. Here we deal with the problem of disambiguating new citat' ,'https://seer.ufmg.br/index.php/jidm/article/view/151' , 'Journal of Information and Data Management - JIDM,  v 2,  p  289-304');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('13' , '2011' , 'Tackling Temporal Effects in Automatic Document Classification Through Cascaded Temporal Smoothing' , 'Automatic Document Classification (ADC) has become an important research topic due the rapid growth in volume and complexity of data produced nowadays. ADC usually employs a supervised learning strate' ,'https://seer.ufmg.br/index.php/jidm/article/view/165' , 'Journal of Information and Data Management - JIDM,  v 2,  p  417-432');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('14' , '2012' , 'A Genetic Programming Approach to Record Deduplication' , 'Several systems that rely on consistent data to offer high-quality services, such as digital libraries and e-commerce brokers, may be affected by the existence of duplicates, quasi replicas, or near-d' ,'https://ieeexplore-ieee-org.ez27.periodicos.capes.gov.br/abstract/document/5645623' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1109/TKDE.2010.234' , 'IEEE Transactions on Knowledge and Data Engineering (Print),  v 24,  p  399-412');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('15' , '2012' , 'Improving Author Name Disambiguation with User Relevance Feedback' , 'Author name ambiguity in the context of bibliographic citations is a very hard problem. It occurs when there are citation records of a same author under distinct names or when there exists citation re' ,'https://seer.ufmg.br/index.php/jidm/article/view/200' , 'Journal of Information and Data Management - JIDM,  v 3,  p  332-347');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('16' , '2012' , 'Time-Aware Ranking in Sport Social Networks' , 'Sport social networks concern different types of relationship among athletes or teams in specific sports. Such networks have recently been used to address problems related to prediction of results of ' ,'https://seer.ufmg.br/index.php/jidm/article/view/209' , 'Journal of Information and Data Management - JIDM,  v 3,  p  195-210');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('17' , '2013' , 'Evaluation of parameters for combining multiple textual sources of evidence for Web image retrieval using Genetic Programming' , 'Web image retrieval is a research area that is receiving a lot of attention in the last few years due to the growing availability of images on the Web. Since content-based image retrieval is still con' ,'https://link-springer-com.ez27.periodicos.capes.gov.br/article/10.1007/s13173-012-0087-1' , 'Journal of the Brazilian Computer Society (Impresso),  v 19,  p  147-160');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('18' , '2014' , 'Disambiguating Author Names using Minimum Bibliographic Information' , 'Name ambiguity in the context of bibliographic citation records is a hard problem that affects the quality of services and content in Digital Libraries (DL) and similar systems. The challenges of deal' ,'https://content.iospress.com/articles/world-digital-libraries-an-international-journal/wdl120115' , 'World Digital Libraries,  v 7,  p  71-84');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('19' , '2014' , 'Personalized and object-centered tag recommendation methods for Web 2' , 'Several Web 2.0 applications allow users to assign keywords (or tags) to provide better organization and description of the shared content. Tag recommendation methods may assist users in this task, im' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0306457314000181' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1016/j.ipm.2014.03.002' , '0 applications Information Processing & Management,  v  50,  p  524-553');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('20' , '2015' , 'A Spatiotemporal Analysis of Brazilian Science from the Perspective of Researchers? Career Trajectories' , 'The growth of Brazilian scientific production in recent years is remarkable, which motivates an investigation on the factors, inside and outside the country, that helped shape this wealthy research en' ,'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0141528' ,'https://doi.org/10.1371/journal.pone.0141528' , 'Plos One,  v 10,  p  e0141528');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('21' , '2016' , 'A quantitative analysis of the temporal effects on automatic text classification' , 'Automatic text classification (TC) continues to be a relevant research topic and several TC algorithms have been proposed. However, the majority of TC algorithms assume that the underlying data distri' ,'https://onlinelibrary-wiley.ez27.periodicos.capes.gov.br/doi/abs/10.1002/asi.23452' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1002/asi.23452' , 'Journal of the Association for Information Science and Technology,  v 67,  p  1639-1667');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `evento_periodico`) VALUES ('22' , '2016' , 'SentiBench - A Benchmark Comparison of State-of-the-Practice Sentiment Analysis Methods' , 'In the last few years thousands of scientific papers have investigated sentiment analysis, several startups that measure opinions on real data have emerged and a number of innovative products related ' ,'https://link-springer-com.ez27.periodicos.capes.gov.br/content/pdf/10.1140/epjds/s13688-016-0085-1.pdf' , 'EPJ Data Science,  v 5,  p  23');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('23' , '2017' , 'A Two-Stage Machine Learning Approach for Temporally-Robust Text Classification' , 'One of the most relevant research topics in Information Retrieval is Automatic Document Classification (ADC). Several ADC algorithms have been proposed in the literature. However, the majority of thes' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0306437917301801' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1016/j.is.2017.04.004' , 'INFORMATION SYSTEMS,  v 59,  p  40-58');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('24' , '2018' , 'A Genetic Programming Approach for Feature Selection in Highly Dimensional Skewed Data Neurocomputing' , 'High dimensionality, also known as the curse of dimensionality, is still a major challenge for automatic classification solutions. Accordingly, several feature selection (FS) strategies have been prop' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0925231217314716' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1016/j.neucom.2017.08.050' , 'NEUROCOMPUTING,  v 273,  p  554-569');
INSERT INTO `artigo` (`idArtigo`, `ano`, `titulo`,`resumo`, `urlArtigo`, `doi`, `evento_periodico`) VALUES ('25' , '2018' , 'NetClass: A Network-Based Relational Model for Document Classification' , 'Aiming to handle the complexity inherent to the human textual communication, Automatic Document Classification (ADC) methods often adopt several simplifications. One such simplification is to consider' ,'https://www-sciencedirect.ez27.periodicos.capes.gov.br/science/article/pii/S0020025516312488' ,'https://doi-org.ez27.periodicos.capes.gov.br/10.1016/j.ins.2018.08.027' , 'INFORMATION SCIENCES,  v 469,  p  60-78');



-- OK criada e povoada
-----------------------------------------------------------------------------------------------------------------------------
-- autor_artigo (idArtigo, idPesquisador) 
-----------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `autor_artigo` (
  `idArtigo` int(5) NOT NULL,
  `idPesquisador` int (5) NOT NULL,
  PRIMARY KEY (`idArtigo`, `idPesquisador`),
  FOREIGN KEY (idArtigo) REFERENCES artigo(idArtigo),
  FOREIGN KEY (idPesquisador) REFERENCES pesquisador(idPesquisador)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;

INSERT INTO `autor_artigo`  VALUES ('1', '12');
INSERT INTO `autor_artigo`  VALUES ('1', '38');
INSERT INTO `autor_artigo`  VALUES ('1', '45');
INSERT INTO `autor_artigo`  VALUES ('2', '19');
INSERT INTO `autor_artigo`  VALUES ('2', '42');
INSERT INTO `autor_artigo`  VALUES ('2', '45');
INSERT INTO `autor_artigo`  VALUES ('2', '49');
INSERT INTO `autor_artigo`  VALUES ('3', '4');
INSERT INTO `autor_artigo`  VALUES ('3', '43');
INSERT INTO `autor_artigo`  VALUES ('3', '45');
INSERT INTO `autor_artigo`  VALUES ('4', '19');
INSERT INTO `autor_artigo`  VALUES ('4', '42');
INSERT INTO `autor_artigo`  VALUES ('4', '45');
INSERT INTO `autor_artigo`  VALUES ('5', '7');
INSERT INTO `autor_artigo`  VALUES ('5', '18');
INSERT INTO `autor_artigo`  VALUES ('5', '36');
INSERT INTO `autor_artigo`  VALUES ('5', '45');
INSERT INTO `autor_artigo`  VALUES ('5', '48');
INSERT INTO `autor_artigo`  VALUES ('5', '63');
INSERT INTO `autor_artigo`  VALUES ('6', '22');
INSERT INTO `autor_artigo`  VALUES ('6', '29');
INSERT INTO `autor_artigo`  VALUES ('6', '32');
INSERT INTO `autor_artigo`  VALUES ('6', '39');
INSERT INTO `autor_artigo`  VALUES ('6', '45');
INSERT INTO `autor_artigo`  VALUES ('6', '57');
INSERT INTO `autor_artigo`  VALUES ('7', '4');
INSERT INTO `autor_artigo`  VALUES ('7', '27');
INSERT INTO `autor_artigo`  VALUES ('7', '45');
INSERT INTO `autor_artigo`  VALUES ('7', '48');
INSERT INTO `autor_artigo`  VALUES ('8', '25');
INSERT INTO `autor_artigo`  VALUES ('8', '29');
INSERT INTO `autor_artigo`  VALUES ('8', '37');
INSERT INTO `autor_artigo`  VALUES ('8', '45');
INSERT INTO `autor_artigo`  VALUES ('8', '61');
INSERT INTO `autor_artigo`  VALUES ('8', '66');
INSERT INTO `autor_artigo`  VALUES ('9', '4');
INSERT INTO `autor_artigo`  VALUES ('9', '6');
INSERT INTO `autor_artigo`  VALUES ('9', '33');
INSERT INTO `autor_artigo`  VALUES ('9', '45');
INSERT INTO `autor_artigo`  VALUES ('9', '56');
INSERT INTO `autor_artigo`  VALUES ('10', '4');
INSERT INTO `autor_artigo`  VALUES ('10', '10');
INSERT INTO `autor_artigo`  VALUES ('10', '15');
INSERT INTO `autor_artigo`  VALUES ('10', '45');
INSERT INTO `autor_artigo`  VALUES ('10', '50');
INSERT INTO `autor_artigo`  VALUES ('11', '1');
INSERT INTO `autor_artigo`  VALUES ('11', '34');
INSERT INTO `autor_artigo`  VALUES ('11', '45');
INSERT INTO `autor_artigo`  VALUES ('11', '47');
INSERT INTO `autor_artigo`  VALUES ('11', '66');
INSERT INTO `autor_artigo`  VALUES ('12', '4');
INSERT INTO `autor_artigo`  VALUES ('12', '8');
INSERT INTO `autor_artigo`  VALUES ('12', '9');
INSERT INTO `autor_artigo`  VALUES ('12', '45');
INSERT INTO `autor_artigo`  VALUES ('13', '44');
INSERT INTO `autor_artigo`  VALUES ('13', '45');
INSERT INTO `autor_artigo`  VALUES ('13', '61');
INSERT INTO `autor_artigo`  VALUES ('13', '62');
INSERT INTO `autor_artigo`  VALUES ('13', '65');
INSERT INTO `autor_artigo`  VALUES ('14', '4');
INSERT INTO `autor_artigo`  VALUES ('14', '7');
INSERT INTO `autor_artigo`  VALUES ('14', '45');
INSERT INTO `autor_artigo`  VALUES ('15', '9');
INSERT INTO `autor_artigo`  VALUES ('15', '45');
INSERT INTO `autor_artigo`  VALUES ('15', '48');
INSERT INTO `autor_artigo`  VALUES ('15', '60');
INSERT INTO `autor_artigo`  VALUES ('16', '4');
INSERT INTO `autor_artigo`  VALUES ('16', '14');
INSERT INTO `autor_artigo`  VALUES ('16', '45');
INSERT INTO `autor_artigo`  VALUES ('16', '52');
INSERT INTO `autor_artigo`  VALUES ('16', '61');
INSERT INTO `autor_artigo`  VALUES ('17', '18');
INSERT INTO `autor_artigo`  VALUES ('17', '36');
INSERT INTO `autor_artigo`  VALUES ('17', '41');
INSERT INTO `autor_artigo`  VALUES ('17', '45');
INSERT INTO `autor_artigo`  VALUES ('17', '51');
INSERT INTO `autor_artigo`  VALUES ('17', '54');
INSERT INTO `autor_artigo`  VALUES ('18', '4');
INSERT INTO `autor_artigo`  VALUES ('18', '9');
INSERT INTO `autor_artigo`  VALUES ('18', '45');
INSERT INTO `autor_artigo`  VALUES ('19', '17');
INSERT INTO `autor_artigo`  VALUES ('19', '21');
INSERT INTO `autor_artigo`  VALUES ('19', '39');
INSERT INTO `autor_artigo`  VALUES ('19', '45');
INSERT INTO `autor_artigo`  VALUES ('20', '11');
INSERT INTO `autor_artigo`  VALUES ('20', '13');
INSERT INTO `autor_artigo`  VALUES ('20', '39');
INSERT INTO `autor_artigo`  VALUES ('20', '45');
INSERT INTO `autor_artigo`  VALUES ('21', '23');
INSERT INTO `autor_artigo`  VALUES ('21', '24');
INSERT INTO `autor_artigo`  VALUES ('21', '39');
INSERT INTO `autor_artigo`  VALUES ('21', '44');
INSERT INTO `autor_artigo`  VALUES ('21', '45');
INSERT INTO `autor_artigo`  VALUES ('21', '61');
INSERT INTO `autor_artigo`  VALUES ('21', '66');
INSERT INTO `autor_artigo`  VALUES ('22', '22');
INSERT INTO `autor_artigo`  VALUES ('22', '26');
INSERT INTO `autor_artigo`  VALUES ('22', '45');
INSERT INTO `autor_artigo`  VALUES ('22', '46');
INSERT INTO `autor_artigo`  VALUES ('22', '53');
INSERT INTO `autor_artigo`  VALUES ('23', '23');
INSERT INTO `autor_artigo`  VALUES ('23', '24');
INSERT INTO `autor_artigo`  VALUES ('23', '44');
INSERT INTO `autor_artigo`  VALUES ('23', '45');
INSERT INTO `autor_artigo`  VALUES ('23', '61');
INSERT INTO `autor_artigo`  VALUES ('23', '66');
INSERT INTO `autor_artigo`  VALUES ('24', '23');
INSERT INTO `autor_artigo`  VALUES ('24', '24');
INSERT INTO `autor_artigo`  VALUES ('24', '28');
INSERT INTO `autor_artigo`  VALUES ('24', '30');
INSERT INTO `autor_artigo`  VALUES ('24', '35');
INSERT INTO `autor_artigo`  VALUES ('24', '44');
INSERT INTO `autor_artigo`  VALUES ('24', '45');
INSERT INTO `autor_artigo`  VALUES ('24', '61');
INSERT INTO `autor_artigo`  VALUES ('25', '23');
INSERT INTO `autor_artigo`  VALUES ('25', '24');
INSERT INTO `autor_artigo`  VALUES ('25', '44');
INSERT INTO `autor_artigo`  VALUES ('25', '45');
INSERT INTO `autor_artigo`  VALUES ('25', '59');
INSERT INTO `autor_artigo`  VALUES ('25', '61');

-- OK criada e povoada
-----------------------------------------------------------------------------------------------------------------------------
-- fatiado_em (idArtigo, idPesquisador) 
-----------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `fatiado_em` (
  `idArtigo` int(5) NOT NULL,
  `idProdAcademica` int (5) NOT NULL,
  PRIMARY KEY (`idArtigo`, `idProdAcademica`),
  FOREIGN KEY (idArtigo) REFERENCES artigo(idArtigo),
  FOREIGN KEY (idProdAcademica) REFERENCES producaoAcademica(idProdAcademica)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;


INSERT INTO `fatiado_em`  VALUES ('5', '3');
INSERT INTO `fatiado_em`  VALUES ('14', '3');
INSERT INTO `fatiado_em`  VALUES ('12', '12');
INSERT INTO `fatiado_em`  VALUES ('15', '12');
INSERT INTO `fatiado_em`  VALUES ('18', '12');
INSERT INTO `fatiado_em`  VALUES ('5', '10');
INSERT INTO `fatiado_em`  VALUES ('7', '10');
INSERT INTO `fatiado_em`  VALUES ('15', '10');

-- OK criada e povoada
-----------------------------------------------------------------------------------------------------------------------------
-- keywords (idKeyword(nn), word(nn) )
-----------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `keywords` (
  `idKeyword` int(5) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL,
  PRIMARY KEY (`idKeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;


INSERT INTO `keywords`  VALUES ('1', 'artificial intelligence');
INSERT INTO `keywords`  VALUES ('2', 'author name ambiguity');
INSERT INTO `keywords`  VALUES ('3', 'automatic document classification');
INSERT INTO `keywords`  VALUES ('4', 'automatic name disambiguation');
INSERT INTO `keywords`  VALUES ('5', 'benchmark');
INSERT INTO `keywords`  VALUES ('6', 'bibliographic citation');
INSERT INTO `keywords`  VALUES ('7', 'bibliographic repository');
INSERT INTO `keywords`  VALUES ('8', 'calibration');
INSERT INTO `keywords`  VALUES ('9', 'classification');
INSERT INTO `keywords`  VALUES ('10', 'combining sources of evidence');
INSERT INTO `keywords`  VALUES ('11', 'complex networks');
INSERT INTO `keywords`  VALUES ('12', 'component-based software development');
INSERT INTO `keywords`  VALUES ('13', 'creational service ');
INSERT INTO `keywords`  VALUES ('14', 'credibility');
INSERT INTO `keywords`  VALUES ('15', 'data mining');
INSERT INTO `keywords`  VALUES ('16', 'databases');
INSERT INTO `keywords`  VALUES ('17', 'digital libraries');
INSERT INTO `keywords`  VALUES ('18', 'digital library ');
INSERT INTO `keywords`  VALUES ('19', 'digital object  ');
INSERT INTO `keywords`  VALUES ('20', 'feature selection');
INSERT INTO `keywords`  VALUES ('21', 'fully-automated machine learning process');
INSERT INTO `keywords`  VALUES ('22', 'genetic programming ');
INSERT INTO `keywords`  VALUES ('23', 'geographic data');
INSERT INTO `keywords`  VALUES ('24', 'hypermedia models');
INSERT INTO `keywords`  VALUES ('25', 'information storage and retrieval');
INSERT INTO `keywords`  VALUES ('26', 'linguistic');
INSERT INTO `keywords`  VALUES ('27', 'machine learning');
INSERT INTO `keywords`  VALUES ('28', 'mdl');
INSERT INTO `keywords`  VALUES ('29', 'meta-search');
INSERT INTO `keywords`  VALUES ('30', 'methods evaluation');
INSERT INTO `keywords`  VALUES ('31', 'multi-view classification');
INSERT INTO `keywords`  VALUES ('32', 'name disambiguation');
INSERT INTO `keywords`  VALUES ('33', 'none');
INSERT INTO `keywords`  VALUES ('34', 'oversampling');
INSERT INTO `keywords`  VALUES ('35', 'personalization');
INSERT INTO `keywords`  VALUES ('36', 'probabilistic logic');
INSERT INTO `keywords`  VALUES ('37', 'ranking functions');
INSERT INTO `keywords`  VALUES ('38', 'relevance feedback');
INSERT INTO `keywords`  VALUES ('39', 'relevance metrics');
INSERT INTO `keywords`  VALUES ('40', 'self-archiving');
INSERT INTO `keywords`  VALUES ('41', 'sentiment analysis');
INSERT INTO `keywords`  VALUES ('42', 'service manager ');
INSERT INTO `keywords`  VALUES ('43', 'smart object');
INSERT INTO `keywords`  VALUES ('44', 'social networks');
INSERT INTO `keywords`  VALUES ('45', 'sport social networks');
INSERT INTO `keywords`  VALUES ('46', 'tag recommendation');
INSERT INTO `keywords`  VALUES ('47', 'temporal effects');
INSERT INTO `keywords`  VALUES ('48', 'temporal factors');
INSERT INTO `keywords`  VALUES ('49', 'temporal weighting function');
INSERT INTO `keywords`  VALUES ('50', 'term network modeling');
INSERT INTO `keywords`  VALUES ('51', 'theory');
INSERT INTO `keywords`  VALUES ('52', 'training');
INSERT INTO `keywords`  VALUES ('53', 'usability study');
INSERT INTO `keywords`  VALUES ('54', 'user interfaces');
INSERT INTO `keywords`  VALUES ('55', 'video pollution');
INSERT INTO `keywords`  VALUES ('56', 'web image retrieval');


-- OK Criada e povoada
-----------------------------------------------------------------------------------------------------------------------------
-- artigo_keywords (idKeyword(nn), idArtigo, idProdAcademica)
-----------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `artigo_keywords` (
  `idArtigo` int(5) NOT NULL,
  `idKeyword` int(5) NOT NULL,
  PRIMARY KEY (`idArtigo`, `idKeyword`),
  FOREIGN KEY (idArtigo) REFERENCES artigo(idArtigo),
  FOREIGN KEY (idKeyword) REFERENCES keywords(idKeyword)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;

INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('1', '17');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('1', '23');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('1', '24');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('1', '54');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('2', '17');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('2', '51');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('3', '17');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('3', '40');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('3', '53');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('4', '13');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('4', '18');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('4', '19');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('4', '42');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('4', '43');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('5', '10');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('5', '22');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('5', '37');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('6', '31');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('6', '44');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('6', '55');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('7', '1');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('7', '25');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('8', '3');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('8', '14');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('8', '22');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('9', '12');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('9', '17');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('9', '29');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('10', '33');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('11', '8');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('11', '9');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('11', '28');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('12', '6');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('12', '18');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('12', '32');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('12', '38');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('13', '3');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('13', '34');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('13', '47');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('14', '15');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('14', '16');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('14', '22');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('14', '27');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('14', '36');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('14', '52');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('15', '6');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('15', '18');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('15', '32');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('15', '38');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('16', '11');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('16', '45');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('16', '48');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('17', '22');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('17', '56');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('18', '2');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('18', '4');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('18', '6');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('18', '7');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('19', '35');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('19', '39');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('19', '46');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('20', '33');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('21', '9');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('22', '5');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('22', '30');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('22', '41');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('23', '3');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('23', '21');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('23', '49');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('24', '9');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('24', '20');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('24', '22');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('25', '9');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('25', '26');
INSERT INTO `artigo_keywords` (`idArtigo`, `idKeyword`) VALUES ('25', '50');

-- OK criada e povoada
-----------------------------------------------------------------------------------------------------------------------------
-- material (idMaterial, idArtigo, idProdAcademica, tipoMaterial, urlMaterial)
-----------------------------------------------------------------------------------------------------------------------------
SET @saved_cs_client = @@character_set_client; SET character_set_client = utf8;
CREATE TABLE `material` (
  `idMaterial` int(5) NOT NULL AUTO_INCREMENT,
  `idArtigo` int(5) NOT NULL,
  `idProdAcademica` int(5) NOT NULL,
  `tipoMaterial` varchar(50) NOT NULL,
  `urlMaterial` varchar(50) NOT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; SET character_set_client = @saved_cs_client;

INSERT INTO `material` (`idMaterial`, `idArtigo`, `tipoMaterial`, `urlMaterial`) VALUES ('1', '1', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idArtigo`, `tipoMaterial`, `urlMaterial`) VALUES ('2', '3', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idArtigo`, `tipoMaterial`, `urlMaterial`) VALUES ('3', '5', 'slide', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idArtigo`, `tipoMaterial`, `urlMaterial`) VALUES ('4', '5', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idArtigo`, `tipoMaterial`, `urlMaterial`) VALUES ('5', '7', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idArtigo`, `tipoMaterial`, `urlMaterial`) VALUES ('6', '9', 'slide', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('7', '2', 'slide', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('8', '4', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('9', '6', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('10', '4', 'slide', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('11', '6', 'slide', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('12', '8', 'poster', 'www.algumlugar.com');
INSERT INTO `material` (`idMaterial`, `idProdAcademica`, `tipoMaterial`, `urlMaterial`) VALUES ('13', '10', 'slide', 'www.algumlugar.com');
