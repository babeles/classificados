-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jul-2019 às 03:01
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `classificados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

CREATE TABLE `anuncios` (
  `anu_iduni` int(11) NOT NULL,
  `anu_iduni_usu` int(11) NOT NULL,
  `anu_iduni_cat` int(11) NOT NULL,
  `anu_dctit` varchar(100) NOT NULL,
  `anu_dc` text NOT NULL,
  `anu_vr` float NOT NULL,
  `anu_dcest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`anu_iduni`, `anu_iduni_usu`, `anu_iduni_cat`, `anu_dctit`, `anu_dc`, `anu_vr`, `anu_dcest`) VALUES
(2, 1, 1, 'Hublot Editado', 'Descubra o mundo dos relÃ³gios suiÃ§os de luxo para homem e mulher. RelÃ³gios Modernos. RelÃ³gios ClÃ¡ssicos. EdiÃ§Ãµes Ãšnicas. EdiÃ§Ãµes Limitadas. RelÃ³gios de Luxo. Categorias: ColeÃ§Ã£o, TÃ©cnica Artesanal, Boutiques.', 5000, 2),
(3, 2, 2, 'CAMISETA UOT PRETA MASCULINA', 'CAMISETA 15 X 16, GOLA POLO 100% ALGODÃƒO', 150, 1),
(4, 1, 2, 'Kit 07 Camisetas Masculinas Blusa Camisa Slim Fit Lisa Basic', 'Utilizamos em nossa confecÃ§Ã£o a malha Premium Ultrafine MoulineÂ®, um tecido leve e extremamente confortÃ¡vel, que nÃ£o encolhe na lavagem e nÃ£o desbota.', 150, 2),
(5, 1, 5, 'Celular Samsung Galaxy S10 Preto 128gb Dual Chip Tela 6', 'Smartphone Samsung Galaxy S10 Preto 128GB Dual Chip Tela 6,1\\\\\\\" OctaCore CÃ¢mera Traseira Tripla', 4999, 2),
(6, 2, 5, 'Notebook Dell Inspiron I15-3567-A15C Intel Core i3 4GB 1TB Tela 15,6', 'Desenvolvido para quem busca um notebook de alta qualidade, com design elegante e detalhes que surpreendem. O Notebook Dell Inspiron I15-3567-A15C Ã© a escolha perfeita, seja para uso individual ou para compartilhar com a famÃ­lia, para navegar em redes sociais e sites de compra online ou para se aprofundar nos estudos, o Inspiron I15-3567-A15C Ã© o companheiro perfeito para pessoas criativas, motivando-as a gerar novas ideias. ConstruÃ­do para encaixar em sua rotina e projetado com atenÃ§Ã£o aos detalhes, Ã© a escolha perfeita para seu dia a dia.', 1934, 1),
(7, 2, 6, 'Ferrari', 'Carro esportivo Vermelho', 50000, 1),
(8, 1, 5, 'Smart TV 4K LED 49â€ Samsung UN49RU7100GXZD - Wi-Fi Conversor Digital 3 HDMI 2 USB', 'Smart TV 4K LED 49â€ Samsung UN49RU7100GXZD - Wi-Fi Conversor Digital 3 HDMI 2 USB\r\nConheÃ§a a Smart TV LED 49\\\" Samsung UN49RU7100GXZD Wi-Fi e Bluetooth, 4K. Com sistema operacional Tizen e resoluÃ§Ã£o 3.840x2.160, um mega contraste e painel 100% RGB, ela Ã© ideal para aproveitar e ver cada detalhe daquela serie que vocÃª adora. AlÃ©m das entradas em HDMI e USB disponÃ­veis, o aparelho conta com a funÃ§Ã£o Espelhamento do Smartphone, ou seja, Ã© o seu celular conectado na sua TV.', 1999, 2),
(9, 3, 9, 'Fritadeira ElÃ©trica Airfryer Viva Philips Walita', 'Com ela, vocÃª prepara o seu arroz do dia a dia com a mÃ¡xima facilidade. O recipiente interno da panela elÃ©trica de arroz tem capacidade para preparar atÃ© com folga atÃ© 3 copos (incluso na panela). E por falar nisso em preparo, a panela Oster conta com uma bandeja para vocÃª prepara legumes, sobremesas e outros alimentos para diversificar no almoÃ§o ou na janta.', 799, 2),
(10, 3, 9, 'Liquidificador 550w Walita Problend 2l Tritura Gelo - 110v', 'Super LÃ¢minas serrilhadas tritura gelo e grÃ£os. Liquidificador Philips Walita Daily 550W Preto 110V - BPA FREE\r\nCom o incrÃ­vel Liquidificador Daily Pro Blend 4 vocÃª terÃ¡ a praticidade para fazer qualquer receita.', 89, 2),
(11, 2, 5, 'Console Playstation 4 Pro 1Tb 4K com Controle PS4 sem fio PS4 Sony', 'Desfrute do mais novo e magnÃ­fico PS4 Pro. Ele vem com uma jogabilidade intensamente vibrante, filmes extraordinariamente nÃ­tidos e detalhes incrÃ­veis em cada momento. O PS4 Pro possui tecnologia para oferecer as experiÃªncias de jogo mais rÃ¡pidas e nÃ­tidas e com melhor capacidade de resposta. \r\nOs jogos tem grÃ¡ficos intensos e detalhes incrivelmente realistas, graÃ§as a uma maior potÃªncia. Com uma TV 4K, os jogos para o PS4 Pro oferecem um visual Ãºnico, com uma resoluÃ§Ã£o de qualidade 4K, proporcionando uma clareza incrÃ­vel atÃ© ao mais pequeno detalhe.', 2598, 1),
(12, 4, 5, 'iPhone 8 Apple 64GB Cinza Espacial 4G Tela 4,7â€ - Retina CÃ¢m. 12MP + Selfie 7MP iOS 11', 'Design inovador, totalmente em vidro. A cÃ¢mera que o mundo inteiro adora, ainda melhor. O chip mais poderoso e inteligente em qualquer smartphone. Recarga sem fio simples de verdade. E experiÃªncias de realidade aumentada envolventes como nunca. O iPhone 8 Ã© brilhante. Ã‰ uma nova geraÃ§Ã£o do iPhone.Design todo em vidro. O vidro mais resistente jÃ¡ usado em um smartphone ', 1000, 0),
(13, 1, 5, 'Carregador Veicular Para Motorola Turbo Power Moto G5 G5 Plus G4', 'Super rÃ¡pido em todos todos os smartphones!Os carregadore TurboPower fornece atÃ© 8 horas de duraÃ§Ã£o da bateria em apenas alguns minutos, tem a tecnologia Qualcomm Quick Charge 2.0 que carregam aparelho com a tecnologia Quick Charge 2.0 em modo turbo, porÃ©m carrega rÃ¡pido qualquer modelo de smartphone ou tablet.Exelente para uso diÃ¡rio.O Carregador TurboPower acompanha o cabo adjunto reforÃ§ado de 1 metro e meio e mais uma entrada Usb extra para encaixar outro cabo, assim carregando atÃ© 2 aparelhos ao mesmo tempo, TambÃ©m Ã© exelente para quem usa para trabalho como Uber e TÃXI. Input: 12v - 3.0AStnd. Output: 5v-3.0ATurbo 1 Output: 9v/12v-15wTurbo 2 Output: 9v/12v-25w', 39, 2),
(14, 1, 5, 'Carregador Turbo Charge Samsung', 'Carga RÃ¡pida \r\nTensÃ£o:5v 2a \r\nBateria 9505 9500 9300 7000 7100 \r\nOutros CompatÃ­vel com Samsung Galaxy Note II 2 \r\nSeries Mobile e outro telefone mÃ³vel da marca : \r\n(CompatÃ­vel com todos os outros 5V 1A ou menos Charger )\r\nSamsung Galaxy Note 2 S4 S5 S6 \r\nS7 J1 J2 J3 J5 J7 Celular Series\r\nGalaxy Note II N7100\r\nGalaxy Note 2 S3 S2', 23, 2),
(15, 3, 11, 'SofÃ¡ RetrÃ¡til e ReclinÃ¡vel 3 Lugares Suede - Phormatta Evolution Somopar', 'Os mÃ³veis da Somopar vÃ£o deixar sua casa mais bonita e decorada. O sofÃ¡ Evolution Ã© retrÃ¡til e reclinÃ¡vel ideal para quem gosta de conforto nas suas horas de lazer. Feito em madeira pinus e eucalipto Ã© 100% reflorestada. Isso sem falar que Ã© super confortÃ¡vel com revestimento suede e acabamento pena. O que garante a beleza e qualidade do produto.', 750, 2),
(16, 3, 2, 'Mala de Viagem Samsonite MÃ©dia 23Kg Expansiva - com Giro 360Âº Lite Plus 90966-1041 Preta', 'A mala de viagem mÃ©dia Lite Plus 90966-1041 da Samsonite Ã© expansiva, rÃ­gida, tem 4 rodas com giro 360Âº multidirecional e capacidade para 23Kg.Na cor preta, Ã© fabricada em ABS, possui na parte interna amplo compartimento, forro em 100% poliÃ©ster, cintas elÃ¡sticas cruzadas com fecho para maior fixaÃ§Ã£o de suas roupas e divisor de compartimento em tecido.Na parte externa tem tambÃ©m, alÃ§a superior e lateral, cadeado TSA embutido e fechamento em zÃ­per.', 474, 2),
(17, 3, 2, 'Mochila Acer Aspire Nitro', 'CaracterÃ­sticas \r\n-Dois compartimentos acolchoados dedicados para notebooks de 15.6â€ e tablets de 10â€\r\n-DurÃ¡vel e resistente a Ã¡gua\r\n-Suporte para as costas acolchoado\r\n-AlÃ§as reforÃ§adas e acolchoadas', 99, 2),
(18, 4, 2, 'Camiseta Unexpected Green - Turwa23', 'Camiseta â€œUnexpected Greenâ€ utiliza uma combinaÃ§Ã£o de tons de verde, azul e roxo, malha em poliÃ©ster e elastano de alta qualidade e requinte com impressÃ£o digital da camiseta toda alÃ©m da barra e gola retas sem costura, dando uma aparÃªncia Ãºnica a peÃ§a.', 79, 0),
(19, 4, 13, 'Bicicleta Caloi Andes Aro 26 21 Marchas - SuspensÃ£o Dianteira Freio V-brake', 'Bicicleta Andes da Caloi.Esta super bicicleta vai deixar os seus passeios muito mais emocionantes. Com 21 marchas e aro 26, ela Ã© tipo MTB com suspensÃ£o dianteira e freios V-Brake em alumÃ­nio, o que proporciona mais conforto na hora de usÃ¡-la.', 598, 0),
(20, 4, 9, 'Aspirador de PÃ³ e Ãgua Wap 1400W GTW 10 - FW005705', 'Com capacidade para 10 litros, o WAP GTW 10 Ã© um aspirador de Ã¡gua e pÃ³ destinado para funÃ§Ãµes domÃ©sticas. Compacto, com uma potÃªncia de 1400W, o produto aspira qualquer tipo de sujeira, tanto em ambientes internos como externos. Tudo isso reunido em um design moderno e funcional.Mas o que mais diferencia o GTW 10 no mercado Ã© sua grande mobilidade e praticidade. Tanto o rodÃ­zio como a alÃ§a ergonÃ´mica permitem que o produto seja transportado para qualquer lugar com grande facilidade. AlÃ©m disso, os bicos (canto e mÃºltiplo) e as extensÃµes que acompanham o produto podem ser guardados em um compartimento prÃ³prio, facilitando o processo de armazenagem. JÃ¡ o filtro espuma aumenta na proteÃ§Ã£o do motor, garantindo um aumento da vida Ãºtil do produto.O GTW 10 ainda possui o bocal de sopro que, alÃ©m de auxiliar na limpeza de lugares inacessÃ­veis, ainda serve para encher inflÃ¡veis, acender churrasqueiras ou soprar folhas. Moderno, Ã¡gil e carregando consigo toda a representatividade e qualidade que sintetizam a marca WAP no mercado, o GTW 10 reÃºne todas as caracterÃ­sticas necessÃ¡rias para garantir a limpeza de modo apropriado.', 218, 0),
(21, 4, 9, 'Micro-ondas Electrolux MEO44 - 34L', 'O Micro-ondas Electrolux MEO44 com capacidade de 34 Litros, vai ser um auxÃ­lio e tanto no preparo de suas receitas. Com ele vocÃª pode fazer desde receitas do dia a dia como um menu Light com receitas mais saudÃ¡veis. E se por acaso ficar aquele odor, com a funÃ§Ã£o tirar odor voc~e nÃ£o vai ter mais esse problema, deixando sua cozinha sempre cheirosa e seu micro-ondas sempre limpinho. isso sem falar que vocÃª pode assistir aos vÃ­deos no seu celular com o QR Code e prepare as receitas preferidas das crianÃ§as com o Menu Kids, com as receitas preferidas dos pequenos, como pipoca e brigadeiro. E a para facilitar ainda mais ele possui a funÃ§Ã£o manter aquecido, seus pratos ficam na temperatura ideal.', 483, 0),
(22, 3, 9, 'Kit Premium Wine Philco com Liquidificador - Batedeira', 'O Kit Premium Wine conta com uma batedeira e um liquidificador da Philco. VocÃª vai fazer deliciosas refeiÃ§Ãµes com esses dois ajudantes na cozinha. A batedeira vem com um tigela de plÃ¡stico de 4L pra vocÃª preparar massas leves, claras em neve e atÃ© fazer a massa da sua pizza favorita. Ela conta com 11 velocidades, alÃ©m da funÃ§Ã£o Turbo. O produto acompanha uma tampa antirrespingos. JÃ¡ com o liquidificador vocÃª vai preparar vitaminas, molhos, sucos e atÃ© sopas. Ele tambÃ©m tem a funÃ§Ã£o Ice, que tritura gelo com mais facilidade e ainda vem com filtro que separa o suco da semente e do bagaÃ§o.', 294, 2),
(23, 3, 9, 'Mixer Lenoxx PMX 403 3 em 1 2 Velocidades - 600W Triturador Copo Batedor de Claras em Neve', 'PrÃ¡tico e rÃ¡pido, o mixer e triturador de alimentos Ã© um aparelho 3 em 1: mixer, triturador e batedor de claras em neve.Ele tem uma montagem simples o que facilita a montagem, limpeza e uso. Ele conta com lÃ¢minas em aÃ§o inox um design moderno que proporciona conforto e seguranÃ§a. O mixer possui 600W de potÃªncia e 2 velocidades para diferentes alimentos.', 89, 2),
(24, 2, 14, 'Headphone JBL TUNE 500 com Microfone - Preto', 'O headphone JBL TUNE 500 tem sonoridade padrÃ£o com desempenho JBL Pure Bass, microfone, design leve e dobrÃ¡vel.Na cor preta, possui tambÃ©m cabo flat emborrachado livre de nÃ³s com plug P2 (3,5mm) e acesso a Siri ou Google Now.', 109, 1),
(25, 2, 14, 'Fone de Ouvido JBL Intra-Auricular - com Microfone Preto T110', 'Os fones intra-auriculares JBL T110 sÃ£o leves, confortÃ¡veis e compactos, e reproduzem o melhor do som com a incrÃ­vel tecnologia Pure Bass, Ã¡udio com incrÃ­vel clareza e graves profundos, onde vocÃª sÃ³ experimentou em salas de concertos, arenas e estÃºdios de gravaÃ§Ã£o em todo o mundo.AlÃ©m disso, possui um controle remoto de um Ãºnico botÃ£o em um cabo plano, livre de emaranhados, que permite que vocÃª controle a reproduÃ§Ã£o de mÃºsica, bem como atender chamadas atravÃ©s de microfone embutido.', 39, 1),
(26, 2, 14, 'Caixa de Som Bluetooth PortÃ¡til JBL Boombox 60W - Ativa Ã  Prova DÃ¡gua', 'A caixa de som portÃ¡til ativa Boombox, da JBL, tem um som poderoso e impressionante. Sua transmissÃ£o via bluetooth conecta atÃ© dois smartphones ou tablets e dÃ¡ pra usar os dois de forma alternada.Use a bateria de 20.000 mAh e curta suas mÃºsicas por atÃ© 24 horas sem precisar recarregar. E tudo com uma potÃªncia que pode chegar atÃ© 60W RMS*. E ela tambÃ©m conta com 2 woofers e 2 tweeters.PortÃ¡til, ela pode ser levada para qualquer lugar. AtÃ© para curtir aquele som tomando aquele sol sem vocÃª precisar se preocupar se a caixa de som vai molhar. Com o certificado IPX7, ela pode tomar chuva, jatos d\\\\\\\'Ã¡gua e atÃ© cair na Ã¡gua sem o menor problema: vocÃª pode submergi-la atÃ© um metro por trinta minutos.E se vocÃª quiser um som ainda mais potente, nÃ£o se preocupe. Com o JBL Connect+, vocÃª pode conectar mais de 100 caixas de som ao mesmo tempo, dando um up na sua festa usando apenas um botÃ£o.* 2 x 30W RMS (modo AC); 2 x 20W RMS (modo bateria).', 1664, 1),
(27, 5, 15, 'Smartphone Motorola Moto G6 Play 32GB Ouro 4G - 3GB RAM Tela 5.7â€ CÃ¢m. 13MP + CÃ¢m. Selfie 8MP', 'O smartphone Moto G6 Play 4G da Motorola Ã© o seu prÃ³ximo telefone. NÃ£o hÃ¡ nada nele que nÃ£o seja incrÃ­vel. Seu desempenho, Ã  partir do processador Qualcomm Snapdragon 430 1.4 GHz Octa-Core, Ã© invejÃ¡vel e - somado Ã  memÃ³ria interna de 32GB e ao RAM de 3GB, leva tudo a um outro nÃ­vel.Tire fotos sensacionais ou selfies divertidas com as cÃ¢meras principal e frontal de 13 e 8 MP respectivamente. Ambas possuem flash, para deixar tudo mais legal. E elas ainda vem com recursos extras que vÃ£o fazer vocÃª se sentir um fotÃ³grafo profissional.Veja o resultado das suas fotos - ou mesmo jogos e vÃ­deos - na tela Max Vision HD+ de 5,7â€ sem bordas, potencializando a sua experiÃªncia. E, pra te dar a liberdade que vocÃª merece, ele Ã© desbloqueado e Dual Chip, o que significa que vocÃª fazer ligaÃ§Ãµes do jeito que quiser. E todo esse potencial sÃ³ Ã© possÃ­vel atravÃ©s do Android 8.0 Oreo, o sistema operacional mais moderno, que garante uma navegaÃ§Ã£o fluÃ­da, rÃ¡pida e tranquila.', 719, 0),
(28, 5, 5, 'Impressora Multifuncional Epson EcoTank L3110 - Tanque de Tinta Colorida USB', 'Se vocÃª tÃ¡ querendo comprar uma impressora ou uma multifuncional incrÃ­vel, vocÃª precisa conhecer a Epson e os produtos que usam a tecnologia EcoTank. A tecnologia EcoTank tem o menor custo de impressÃ£o da categoria. SÃ³ pra vocÃª ter uma ideia, uma garrafa de tinta de 70 ml de rendimento pode imprimir 4.500 pÃ¡ginas em preto e atÃ© 7.500 pÃ¡ginas em cores com alta qualidade! AS impressoras e multifuncionais com essa tecnologia sÃ£o ideais pra quem tÃ¡ querendo um produto pra uso domÃ©stico ou pra quem trabalha em casa. AlÃ©m disso, com toda essa economia e potÃªncia, vocÃª vai conseguir imprimir trabalho por todo o Ensino MÃ©dio e faculdade sem se preocupar se a tinta vai acabar rapidamente! Sendo assim, a Epson EcoTank L3110 Ã© uma impressora Tanque de Tinta colorida, compacta e ideal para vocÃª ter em casa. Ela permite que vocÃª imprima, copie e digitalize vÃ¡rios documentos. Conta com uma entrada USB para proporcionar maior agilidade na impressÃ£o de seus arquivos. ATENÃ‡ÃƒO: NÃƒO tem conexÃ£o sem fio.', 697, 0),
(29, 5, 5, 'Roteador Mercusys 2 Antenas 300MBPS N300 MW301R - D-link', 'O MW301R fornece Wi-Fi rÃ¡pido e estÃ¡vel para seus dispositivos conectados. As velocidades wireless de atÃ© 300Mbps sÃ£o ideais para streaming em HD, jogos online e rÃ¡pidos downloads de arquivos. Com suas duas antenas de 5dBi que trabalham para aumentar a sensibilidade de recepÃ§Ã£o de sinal, o MW301R fornece ampla cobertura wireless.', 55, 0),
(30, 5, 2, 'Jogo de Toalha Santista Royal Knut 4 PeÃ§as - 100 AlgodÃ£o Rosa', 'Toalha Knut da Santista. PrÃ¡ticas e confortÃ¡veis, estas toalhas facilitam o dia a dia com sua maciez e absorÃ§Ã£o. Isso porque conta com composiÃ§Ã£o de 100% AlgodÃ£o. Isso sem falar que tanto a toalha de rosto,quanto a de Banho sÃ£o peÃ§as trabalhadas com acabamento em bainha que proporcionam maior durabilidade e conservaÃ§Ã£o durante o uso.', 45, 0),
(31, 5, 2, 'Cobre Leito Casal Queen Belize Estampado 06 PeÃ§as - Rosa - Decoralle', 'DESCRIÃ‡ÃƒO DO PRODUTO\r\n\r\nCobre Leito Casal Queen Estampado 06 PeÃ§as \r\n\r\n01 Cobre Leito - 2,50m x 2,40m \r\n02 Porta Travesseiro - 70cm x 50cm \r\n01 Capa de Rolinho - Tamanho Irregular \r\n02 Capas de Almofada - 70cm x 50cm\r\n\r\nAtenÃ§Ã£o: NÃ£o acompanha Refil (enchimento) nos Porta Travesseiros, Rolinho e Capas De Almofadas', 130, 0),
(32, 5, 9, 'Geladeira/Refrigerador Electrolux Frost Free - Duplex 382L DF42 Branco', 'Refrigerador com design sofisticado e painel Blue Touch com capacidade para 382 litros. Possui prateleiras de vidro resistente e mais fÃ¡cil de limpar, alÃ©m de serem 100% removÃ­veis. Conta com gavetÃ£o de legumes e frutas com abertura diferenciada para proporcionar melhor organizaÃ§Ã£o e visualizaÃ§Ã£o, tem compartimento para alimentos frescos que conserva melhor os alimentos. O porta-latas Ã© um acessÃ³rio 2 em 1: Porta-latas + cesta multi-uso. Porta-latas com 4 unidades e cesta multi-uso, que pode ser utilizada como porta-condimentos ou cesta de frutas, por exemplo, podem ser utilizados juntos facilitando o transporte de latas. AlÃ©m de todos os diferenciais o refrigerador nÃ£o possui CFC e nÃ£o agride a camada de ozÃ´nio.', 2138, 0),
(33, 1, 9, 'Micro-ondas 25 Litros Espelhado Philco PME25 110V Prata', 'Facilite seu dia-a-dia e economize tempo no preparo dos alimentos com o Micro-ondas PME25 da Philco. Ele conta com capacidade interna de 25 Litros, muitas funÃ§Ãµes especiais que agilizam o preparo dos alimentos e um display digital fÃ¡cil e prÃ¡tico de ser usado. Experimente vocÃª tambÃ©m e melhore suas refeiÃ§Ãµes com esse micro-ondas Philco!', 389, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `cat_iduni` int(11) NOT NULL,
  `cat_nm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`cat_iduni`, `cat_nm`) VALUES
(1, 'Relogios'),
(2, 'Roupas'),
(5, 'Eletronicos'),
(6, 'Carros'),
(9, 'Eletrodomesticos'),
(11, 'Moveis'),
(12, 'Acessorios'),
(13, 'Bicicleta'),
(14, 'Audio'),
(15, 'Celulares');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `img_iduni` int(11) NOT NULL,
  `img_iduni_anu` int(11) NOT NULL,
  `img_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`img_iduni`, `img_iduni_anu`, `img_url`) VALUES
(3, 2, '0d8f0104827f8db9a91c64197947e991.jpg'),
(4, 2, 'b5b909c4330fa19c08e3e35d01bc7c5b.jpg'),
(5, 2, '947142c85a950102d1bb6b107bd24363.jpg'),
(10, 3, 'b284ac138bb794420bc97d981b0f34e0.jpg'),
(11, 4, 'd9978ab4414b2027c33b20a83f463c18.jpg'),
(12, 4, '84907d9c5a01d0019945b132cefc0f8e.jpg'),
(13, 4, '69ea3c45c682357d429afbbdb268b046.jpg'),
(14, 4, '8c8b9bf25c5caf68343576d802484345.jpg'),
(15, 4, '2d8b2b6410fd2ba611eebac14e7df4fa.jpg'),
(16, 4, 'bfa9004395b828cb158ca192563521ad.jpg'),
(17, 4, '5e34c4bcb1b028348bf7b7004f783ab6.jpg'),
(18, 5, '293e95f303ed0ab519044155dda60e9a.jpg'),
(19, 5, '3491f393f0d32c81bbb77e89b937d3db.jpg'),
(20, 5, 'a405a342eade52c5c3400afdb85ac278.jpg'),
(21, 5, '0d0f508b1c0d52ea9c038da7e2882456.jpg'),
(34, 6, 'e9c359d1686a0dc8628c9075ff8ecffa.jpg'),
(35, 6, '099ff837c379e0f6a8a02f4e374fa191.jpg'),
(36, 6, '051e15bb5f24d897bb8db5f00f583e62.jpg'),
(37, 6, '70ad1568f1352622863d695032816d86.jpg'),
(39, 7, 'aa29eadf29b7f6445193d96916ba24e3.jpg'),
(40, 7, '5f9aff0ac77eb8ef5716e913a037dd4c.jpg'),
(41, 7, 'f016a8731f2e21f10bce1295485bbaf5.jpg'),
(48, 8, '5227ce09440a0ed35496dd9583de8f81.jpg'),
(49, 8, '547da7cc6850f65d9cb04a8671751417.jpg'),
(50, 8, 'fdc9ff59c0e8b4666321dcc05c34657d.jpg'),
(51, 8, 'd4f2d61169dfc2bf9c6ec5df4e853d50.jpg'),
(52, 8, '77a0ecf199b9860053788d4d9ca0b840.jpg'),
(54, 9, '75b8d833b85d64ad872216107ecbceef.jpg'),
(55, 9, '84aeaeceba7e41ee07c0255ec92a7d87.jpg'),
(59, 10, '650174238f78a21a0d8bb0f27feea401.jpg'),
(60, 10, 'dbadcf3ac33a2e5832248b8adb4df1db.jpg'),
(61, 10, '974f1ccaa9e4d84443aa617adea40b50.jpg'),
(62, 11, 'acfe8db62b0892ee54a13cd3bb1db52d.jpg'),
(63, 11, 'f9098119cf54a299e71946660f60ebbe.jpg'),
(64, 11, '2611ef2a399c715f7300dc74e4c58af5.jpg'),
(65, 11, 'd97dc9b749cf352f9486f57c5b297dd5.jpg'),
(66, 12, 'fa6ca5f1bc31a88bdba7321ac81ba422.jpg'),
(67, 12, 'd358c5714900002c54b8c452fd012681.jpg'),
(68, 12, '8f59b32bc5a1a7e7e6a1a23f694ff67c.jpg'),
(69, 12, 'b1617100380f03d49460a41769bcf01c.jpg'),
(70, 13, '0db46f552ef58b6b93cebc25d535587c.jpg'),
(71, 13, 'f7a50fdc1ad30a86ed37e3e08baee325.jpg'),
(72, 13, '4306fa18444bc6a39d86011ae615ab15.jpg'),
(73, 13, '15be81eb122ae1e3047b9c90d805e1f8.jpg'),
(74, 14, '8ba9b4461f905e47c288bf2eb3beb7a0.jpg'),
(75, 14, '8f616acf29778b22be06ecd4e50ea7db.jpg'),
(76, 15, '6236637c7a8e768da6c2121fc265a95b.jpg'),
(77, 15, '8009d72f9fc386cab5adf008f3064f59.jpg'),
(78, 15, 'a6b830da109a082c499f4802959b1cc2.jpg'),
(79, 16, '32e8f4460d85abf7018fbe8d4548a671.jpg'),
(80, 16, '754baafb933fd5c6de06387b6f2f52e3.jpg'),
(82, 16, '5d896b2cd7856fadb6e73b8f3dbf1871.jpg'),
(83, 16, 'd65355f191ea13381721246399deb196.jpg'),
(84, 17, '4fea84e5ef9fb93866c7396afef68286.jpg'),
(85, 17, '2ba099d53842360dd827c1f1435aa7b2.jpg'),
(86, 17, 'c046abacfe3396185d587769c327a482.jpg'),
(87, 17, '5f325dd95ee0ac97950f8ebd24b0a098.jpg'),
(88, 18, 'adf1e554d313c19c8bc534f75fa4e927.jpg'),
(89, 18, '0ca8ba6e0c0ba8c99327f663c89b66bb.jpg'),
(90, 19, '6f9b89c07d03e0a102f1b4d5fd1c166a.jpg'),
(91, 19, 'cd812cbbd4fbf691277d544d6c27ae01.jpg'),
(92, 19, '7ea1297ee7e6fe98d4baa51f6e4a353e.jpg'),
(93, 20, 'd85ce05c5b282063ba958cd80614022e.jpg'),
(94, 20, '16693619ab3d9b88330257fa97325e99.jpg'),
(95, 20, 'dd329fa54f0a322da1278bcc43f0800d.jpg'),
(96, 20, '2a2e05ce9640fdd889be5f01a18c5af8.jpg'),
(97, 21, '3ef77d38126a0048168ccce46370c24c.jpg'),
(98, 21, '26ddb92abe3412b26eddf61cf20356fa.jpg'),
(99, 21, '35118f8e3b8921b97c03b39898d5ebd5.jpg'),
(100, 21, '24188396e7d4da7336b4ef50f55c7537.jpg'),
(101, 22, 'c042fa5b60932f48ecc1f2155825841e.jpg'),
(102, 22, '394e288d52f6ecc75a2880ce3b6c32a7.jpg'),
(103, 22, '836374d2ae2cd51e9ebc9e2050531a0a.jpg'),
(104, 22, 'ac9ec25a11a4ec2ec1336cef8e3fd3fc.jpg'),
(105, 23, 'e18b7ae2a6c793970ff2099e96457a70.jpg'),
(106, 23, '0776819bab0a3b8643695af1edf4b89e.jpg'),
(107, 23, '1102c8410d3b4e11c9a3d057c9375993.jpg'),
(108, 24, '06dd5b48cee3578396f8d0f00120d4b2.jpg'),
(109, 24, '7e109437805e640dd1b49e4ad58162f2.jpg'),
(110, 24, 'b45f3f040d9e32df153d941e289a550c.jpg'),
(111, 24, 'd73bb632c84cff2d0c835c25129920ff.jpg'),
(112, 25, '0a6359fe44f52bc0dabdd693ebdc7e0a.jpg'),
(113, 25, 'b3523cbe963b8e844b12b16bcdaf7336.jpg'),
(114, 26, '9d05a5d4a593960e51098b1897e5fd5f.jpg'),
(115, 26, '77cd06b15d6fbcf88e095ccff89d0676.jpg'),
(116, 26, '7a989913bfdd650063f70894d679ee41.jpg'),
(117, 27, '97ccc8f2295de95e1b76f4be8ea391c2.jpg'),
(118, 27, 'dea85616ba8623ffcb8cf8fd401147ff.jpg'),
(119, 27, 'f3fa2e7074537761ad64a44193706fd2.jpg'),
(120, 28, 'dcf5ecff1c6ca87fce516806d3ed9719.jpg'),
(121, 28, 'aa55f58c0e851d05a2db2b5289c109b8.jpg'),
(122, 28, '0cae4a1e35f9a8503a64f28e22db74e4.jpg'),
(123, 29, 'b2a9ea103803827d6b5e649248067c20.jpg'),
(124, 29, '72e71f7b4702e44c14237474bb1a46c0.jpg'),
(125, 29, 'd6f405683df8895158b8d6336e225fa8.jpg'),
(126, 30, 'a7db12313cca7565d4b198e9672afb48.jpg'),
(127, 30, '721fbdf10f8fdebcfe1f430ac4683030.jpg'),
(128, 30, '63b328f54132cf7eeaa006028ac6da88.jpg'),
(129, 31, '0c23e25c9fa47f1267f014e38748bf78.jpg'),
(130, 31, '39ab86613a820ade608334fd0ad8277a.jpg'),
(131, 31, '66c6117cf7c8aa8e8011928f6e1cfb5d.jpg'),
(132, 32, '12ab4c4438bbbdc0c655654feaeed350.jpg'),
(133, 32, 'c68ae7cb248bb1e56d4a415e2ae8a89b.jpg'),
(134, 32, 'a1f45cd32496009edc50f7daeabfef9f.jpg'),
(135, 33, 'e3f6ef964b81f6342a0748747a7dfe16.jpg'),
(136, 33, 'dc953920e32b427d1cafb5a8ac4cc786.jpg'),
(137, 33, '575ba4a7a223c1b431c0eb9e09768426.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_iduni` int(11) NOT NULL,
  `usu_nm` varchar(100) NOT NULL,
  `usu_dcapl` varchar(100) NOT NULL,
  `usu_dceml` varchar(100) NOT NULL,
  `usu_dcsnh` varchar(32) NOT NULL,
  `usu_nrtel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usu_iduni`, `usu_nm`, `usu_dcapl`, `usu_dceml`, `usu_dcsnh`, `usu_nrtel`) VALUES
(1, 'Leandro Babeles', 'Leandro', 'leandrobabeles@gmail.com', '7746000b1e41a04f71b4ca6cf75d8fe5', '27998490701'),
(2, 'Almerindo Urias Franchi Junior', 'Almerindo', 'almerindo_junior2@hotmail.com', '202cb962ac59075b964b07152d234b70', '6666666666'),
(3, 'Maria Das Graã§a Melo Babeles', 'Maria', 'mariagmbabeles@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2799040097'),
(4, 'Anderson Gomes Lima De Brito', 'And', 'gomes@gmail.com', '202cb962ac59075b964b07152d234b70', '27988107650'),
(5, 'Joviene Coelho Andrade', 'Joviene', 'joviene@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '28984857398882');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`anu_iduni`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cat_iduni`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`img_iduni`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_iduni`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `anu_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `img_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_iduni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
