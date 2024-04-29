-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 05:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_tasks_m`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `mobile`, `email`, `password`, `images`) VALUES
(1, 'ShubhamK', '8873774282', 'shubhamask2015@gmail.com', '4f7639d2684d9a418ec040e307750ff8c46460ea1d782caf6155cdc067ec8756818ef900375ecc260a16c0d45ab61eda3ff6a6b389209cfdc22fc5b49e1a7f86mO1FZfF/1Q+Vp0iVsf9X1rpz9CsdEhNkd0xjPK9Heh4=', NULL),
(2, 'ShubhamK', '8873774282', 'shubhamask2015@gmail.com', 'ebb66e4fc28ca3aef70533800dd56b050c49fcc5abdf626f35065ef4005f290143b4c552fe4bd1e0236c4f6f8a7079b8b188f6409072f3c397c96a4e1da6eb88ngUsGBMK6vGxucSe47xqZssbjs98kujS9FZasfaEcbM=', NULL),
(3, 'ShubhamT', '8873774282', 'shubhamask2015@gmail.com', '95377942e34172826569b482fac8e24c2e7d3570ce24a23328b884683ca6661d05c98c175fc7abc2da3507bf27ff5772eeae7c4ecc674c3f3cd694d62d53923f/qqcQHB3v7sWtQBy/GWTxC/kpwJb1q6zP+YyJoAa0vU=', NULL),
(4, 'Praveen', '9625433716', 'pinkubulk@gmail.com', '156be7230f903534b544bcfcbfb415f6ab1df567e0d4cad2b81fefa245193467a7864719640c27ba02f72a8169158aae0c9c27d2e31c8c20bc3558406c86aeebXZXN8kXRron8bkvN/IX+aWJA/bj/fyVpiS8yiJDFu+8=', NULL),
(5, 'Shubham', '8873774282', 'shubhamask2015@gmail.com', '89036600eef6d43b9ae8adcd92fa96b0650bc71398d719f595e309032abc21722f940a4ce8a4fe11b39aa3e84b3d6b1f5a683831d04a3ae1178f34076b43767ehhLKlC+43u0D4afWjUMNW8ArxnX41RK2qYettJWgxXw=', NULL),
(6, 'Shubham', '8873774282', 'shubhamask2015@gmail.com', 'bddccde7f8ca548274433ecd99c77050de046af07d8e9d1502f14eaadd5f28391bf890493cea4f1711610aee061fdf818faea19f95a5863db4a6f519fe2ec7ccnsZh3m7Xp3QgDmZorbNAWj5PBj8YX4eS+R29nOC2mCU=', NULL),
(7, 'skt', '8873774282', 'shubhamask2015@gmail.com', 'c7feed23a4b2102f70e72a3daa5660ab00cbd029015b2df6577b35ac160d3c5c6e79e577def4e0161516105dbb2363284e4b5bb3b7f9f38f9f071b98f5f19c0f3CeVfQ9vWLISE4Oxpf3u/szFIgoe9Yi1P1MO967T8Nc=', NULL),
(8, 'Satyam', '8873774282', 'shubhamask2015@gmail.com', '9027695c13dec13ce79dbfc9dd17250115988643e8ad49c3e7da271f68846d6e1722404067ad0ca87b630d70cf9ba6bc5d47f32edfb8f957f1b1654c9bbfefd8MHC/NXiv7iO2sx5MNP2Y5vdaeBxW2oKKYP5dW6EiqlY=', NULL),
(9, 'ShubhamM', '8873774282', 'shubhamask2015@gmail.com', 'dcb18b38190295058b66c3fc760c3549c76c37e39a698eea022d006c96b4bb269fc5e9f3817b32b607790fa9920c2d110c3f5f6262f405a25c5bc07b93292b98yac2gnAfuujUgzIyXqf1QNv03NdqCoWQF5aASUGATJg=', NULL),
(10, 'Onlighten', '8873774282', 'shubhamask2015@gmail.com', '51847280c929496cd3b80fe960825b2ecce151bf5ba5e07cebbb1af799714d3ccb7fbaad71b51aa4b8417720a0e01871a41753eebc795e4a18913a234af33b0f9XSI+4xdXmsU4aRzjO+9hkrc8nS/QcB7jUdbyg3gQ9Y=', NULL),
(11, 'ShubhamP', '8873774282', 'shubhamask2015@gmail.com', '93cdae491a8648d09280e8ef4c5eb268ad7b18a50f8e1b6930f16a55fb80bd955076386bb1a18b7f0ad7ae6c573341267af13e54a1d5d792971afad8fd21eecaeNRBRVvikJ9/WLV+VQieqVx7Dpvd1b00SZCLxZrFJXg=', NULL),
(12, 'ShubhamY', '8873774282', 'shubhamask2015@gmail.com', '1db5a2bd36ea70b103c666c74026d2ed5a36130a8339938e9152c1a4253791922c8c3222442def990998e3d9bb3b47f5092dbfd9f9709db7869fb5059d5234b9wQZTTm4DohQKeVXRMfWQZ/tzUNDgy4TO+GK+yq6F43M=', NULL),
(13, 'ShubhamY', '8873774282', 'shubhamask2015@gmail.com', '0b585b12ffa02de8752b54e4a6e8deef433b1d171c81a0032b221db54b2b43386fa4d060581ad47800fd652eb1a2cb31eabd34ee8462bf6383c76b7835d02a15QtqDh/bt2kY/IyMPOzpmIQe7G4M2h9BHwxOQXLHE670=', NULL),
(14, 'ShubhamY', '8873774282', 'shubhamask2015@gmail.com', '03c160b610d2d56fadc92f6174196efa1cc5ae193d1a1e306f9d0aec77c9bb32896aa5ee7a33cfd34eae75c14be9df2db03e7f4f77906ba2c55e7ce6e1f22a87gi2dBUmBqtTyaysn59XewE5bg8ReeyE5sX0KraR2cEY=', NULL),
(15, 'Shubham', '8873774282', 'shubhamask2015@gmail.com', 'bec061f9eeb24c5ba38906f2e86bd587b0a036688a986cb1f7bb8f4848bdac79cd6d65931cbde2690c3bc4de8339631d3aeb9066cf18198f52c9901b1ba1f786e5Aj5/jGisTtQDx9m5srmXc/ZWuKRRba+0A4AWpmRJE=', NULL),
(16, 'Shubham', '8873774282', 'shubhamask2015@gmail.com', '189c562dddf3b83ac215b8fb842a092d1a71e343a8ede9dc417df4580a72fc69901deea147687182e5ef61fb701bc31c8df638fd6d6b3c7b1155e9647503df71WXlgU6hlYR16/62THTFlIa2CzMQXxipRboyiXSQhq8c=', NULL),
(17, 'wer', '2345678654', 'shubhamask2015@kjh.gt', '85994f21c47df2d74c0e134cb90fb15a08b7202066a689f1a05607e1c65f85efdc74d541036f17723fb591c06bc7cf9981d6a78bbebc7f8c7910919c04a36438lOl1OkLhaCCMM3n5V0KE4xMzlNtsodEFjMuxLJaiNzc=', NULL),
(18, 'ShubhamR', '8873774282', 'shubhamask2015@gmail.com', 'fa0eeef6c833da9eed1eccb997e5e038789a4660c24f44fe50a2e49b89e2ebe6ffba51899d2895ced255b2138011be273358e4e6ac4b046f25c8a65eae6a3e67j4gaNEGc14GS6aMZB4fg0x1V8efk8xHWitEN2s3xBnw=', NULL),
(19, 'Shubham', '8873774282', 'shubhamask2015@gmail.com', '9fa419a03af4395a2974612ea1294727acd08b9a7fee8fca686f6645b9e5d1162a1287cc0cea2713bb92d1e219c1936e44c55a5588c5195f63d646640528721ec51H0OJmvk/5WAZDMeR8R0ZpxeVcO/Mt/zk2JyZfXZY=', NULL),
(20, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'f9ce9cd66d091f2d0125e5bc1fee4f7bda85d9f3149ff4054192c0ccf5e00504666e08300ffc7e764f637546f98fee9c7fc0d5e3bc1b535b5c18d9349ab47fb0g3gcYHXuqDUsnR9ephyVPbMFmoPp+rxhFvU/a0GRU4M=', NULL),
(21, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'c166b8b401e80ad09760037d678bb715db74b402a1415111e4cc7fdc31f43ac0d729cbd6ae52dbb24e056810262df0b3bee66c9b6ffb1a0abd918c61e0cecf69cqSFPeXj2p40ZvP3xYu/xuGLAE0XoHGpOxwgkfDCiFU=', NULL),
(22, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '28a31c231669ba24e0d39fd8b02543e2840489ea3ae90851c5f58bca08f58b1112d5be6be02b980e88b3d230dafd031d90960497be31d83667f53280da9b97001lTX2FR/9W7EgsHXNkDRi8SF8kx2AlcdT1JOH337uYM=', NULL),
(23, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '40c52ef287aaec70064f5b35a382b904f6f4463ebc732943aa4cda62f769717a2d61d1b7c1a422342388c600046e9647eb7fad020b67d0f1690e8933946f54b52vUiTWv18DZyFZ7M7/3y933fpdSwgvvslAXl+eLCCrk=', NULL),
(24, 'Praveen Kumar', '9625433716', 'praveenkr40052@gmail.com', '0e548fcaa11a4ba9fc660fd7d62d1a1fb66df3b0b96179c4efd7ae1b5b0c03a74fd62d47264a439c89f72cb5e2ff343b7b1043bde830612f28f9e21c584b5ae2KZrlSbtsxTLk/1M4USy+XXvKPwlE93Fcavbu2b3Y86U=', NULL),
(25, 'Shubham Kumar', '9865743265', 'shubhamask2015@kjh.mn', '9e91d615e2a0648326948ba5109ce82ed8a7490c7cf49b267705a7e12c01cbeda2a5a01cafbfa0f4c34f0cef189dcafcdc2ad39decf7d94514abd4d81ed8a576Cj23HZ8K/jmtMwIGu0vzKaJXVmwqrEOrBpKm2bexzjs=', NULL),
(26, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'dadc08947112a12cd9075cc6e1d4bb2f50b85b7a6695405c064fb0a26a547b93fd9c46c4feafbb111e02b3160fccfe245921ff5b9f568b11094a114decf01d2enXrGQ3I+Nu9hKoAQnAZEbg+JRBTtM8qIMFg9f/4OToU=', NULL),
(27, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '9368a053386d45236f1f18e3b7331779a52f9b157b1115369b86fda910810e75e1bdc9635ddcb3548b53ee826bf61f6cc8b6b73fac7c4eacb2e1795c584cc710AoKpHLPkBYDAWZBiVIAFOZ5EkRfeGNF5oyvLXUmDo/0=', NULL),
(28, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '8f0eb3989dc98e34770c84d6cff40e31c67405c1c9425c789148f949174ab7ca3b59fb60c9e58f2b5cd9091ef491ea3b2e1f8179a0d8dcd57938d650ccc89e98F+6hHH9jaP3TQbLK6oAV4J0lFTLjwmJT8/ib5581t+o=', NULL),
(29, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '6053b0855d7843d8f18febe6beb77c81ba9b5b25ab4ef82980b31b271b7d4a4be427b754f0a3a21c9ccd7f1514b359c99f7045a203c168c27701ce1d874ee556gemAxuUgJIPBCMJ2t3S3Uiz1+81NcgSujlh6juYlats=', NULL),
(30, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'ba4e74a4a737af1105dbc8225fd4416986a56c1559ec1c0a640b6a2767d1694ac31a4d2a19c4416d5dc6f009c74c9bd820b5ee2c7a8004f6822f4e3ec4a59eeaeMOoQI99qg8Ik4wB+vkm8GLaqlqFND+7AaBX+tfG9kg=', NULL),
(31, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'bf2640e947559ae6934b18b8c5e19ecebb95b1f34c56cf846b2e2b1e45da2ea3153580540ba2bf41455faf593a2001beb2dca5eecb4c80bed283f049f00d69d0eR7RVWStRuogqHstMCcKhwXcv9x+NTQYx4g7/uFRR5g=', NULL),
(32, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'c9cc2b5fb414b9188cce33af6916753336ec97fc40a54340a8b5a36dfc359afc23d11fdb65a592cc74fbf538ee9217ec9c2c6d97cedfc78592346f25edccf809bsB08xhxhHRgfUuNrWNRElG8y3ADQstiTFbn9Efv3xI=', NULL),
(33, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '1115671b07bd95d70ada6519d4570fae4b103c51c674ce6c5e33588caa1e57bb9348ef5367e246a7a87e697f35ad07889a351c6032e2c8b47dd3614fe14ad3d1ecQB3lwQAyNew/90E7huyO7xtkYj7yZPFiAeEXzLT78=', NULL),
(34, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'a7dd055659e0b5c20711f3a7ea001ef48331a005093f7da5d0e744f57a060bcae3d48d2b6061184e8dbf3745b9074ce8d2e276fbea3284216677ed07209ec60fpRP8q9Vb6yxZXL5kjUL95NVTrDLS1d+bsRm4+KRAaZ0=', NULL),
(35, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'e9ac008d041c90ce98b8bbbc810691c481f826837a412ea19c39c8e987d34df5cd2d40f87d025596d01dea9ed847a22faf660f8f157df33fed6cda412aa0939ejz4tUdaxLkh6w9jSIHgO4sWFXb3qA6c53KhWVWFS21c=', NULL),
(36, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '6e59070dd84f0691848db831b908b292cb266040c7b3e4d29fc9c1bc76a7b40c28bef1cda744e9b137186c3d43d53f2599dffc026a9fb3090ecc176a396df3d7h5rwOXx/F7PcuSbI7qT/Af75j/ZeL15v6agzyaNJKf4=', NULL),
(37, 'Shubham Kumar', '2584789635', 'shubhamask2015@kjjtmmmmmmmmmmmm.bom', 'be2d0c0890c4f104f9455ebbc1400e67c1340d4e2f83063eca317da9867b8c24a69346a7f489bab7eb2fe48b6c4b9c1ba563823cac7d19cd7fcee1729508ec50oRTFWDXaCLIC7UnMiVTC6XuMPRhrOoXUFOjqQazgn9A=', NULL),
(38, 'Praveen Kumar', '9625433716', 'praveenkr40052@gmail.com', 'e9720c4264412528f42b533bd9d8092050356c699043f79aaf26cd797d3605ae6a90632312bb41459c6c9ecb44902d0ac2c2e299771745065d8b221ef00d60f3HgnFRJoFp3LALPNTvEQmDwOsOxeeeMNuyW71k0DyVc0=', NULL),
(39, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '5ab7e66ab4449fc1961b7515f7997fe57cf665dc64c458d6b0340c5a52df15d7841a1a0980805f1e4072e0257964ab680750908ad3f74b6b520cb6a9b31987baoECbE4Hl8Xrw05vfIlOykV/S6EVwMrmqBrHYomWSyRc=', NULL),
(40, 'Shubham Kumar ll', '8873774282', 'shubhamask2015@gmail.com', '51a3ff73a0a1d504fd43835c4b052e4414c876d010b474f90391052e321e2b4ca1b86095e8d26c0d53b5f0507d3b598aa3ee9224b9ee2875a0be0a2b686b47a4KugWI0HL7IIWkPnTb7EIKYwhkPf6sUcwm7vPnw+UJQ8=', '[\"\",\"R.jpg\",\"coffee.png\"]'),
(46, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '9b194aad6be6fe7d55080f0a75984e3632ca60437428cae97011efc4035375880048c31414224dc4172d570c6d854522920465a2a8235ce50dc1dbe7e3d13bebTfBIVLUry95bxG4MTeJiOncD3cjRvKQ5xwgevw/b0UI=', '[\"darkBackYellowishTextPdf.png\",\"kidsBook.png\"]'),
(47, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '34976329eab4babff2ee2dc9f3697597cdab7814bde3cbbc6819b7a204d5b1a197d214019124b9e95d5b3d0275e6702687d3b87c1b4928bec3b1ce17659a0847a4WAGAb0+j0+7A6Q1fzqA3gXrNP+lYG7ifh8No4cDUM=', '[\"darkBackYellowishTextPdf.png\"]'),
(48, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '11c5bf6f7d21b5a67e65090eb1f8c76f35d0a94dd01894676ccfdd965f1892c9b24669617e583db8374219ea7154241cfb1f1b0672067caaa9b81af599791191trXxMBEHzP0+L/hZPf1mZeeCgVpIUwW1MARzO2FUt38=', '[\"kidsBook.png\",\"R.jpg\"]'),
(49, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'e0c2b1f8618cff6f525e6f8fac508573cab2e3ab73ee9d835dfb4ea4ce43b76dcf1fff937a668b482502aab62773ecfeac6536229e4c6663b800b8bfbcddbfc2yG1HvWzXR+qHE/c7N8fSmNIkfQ1OIIvCC5AjmENmKuM=', '[]'),
(50, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '436689f39e742ba29fe0d5a7cc4f37879c186c6eb88bd1035894f4b6e5d0d4753c6777fab62d1502adc57a450d6fa6c7d9b25c0e7be44a43ba55000b038c6d26US+vHIFBWZO7usZiEuibKBwoH3M38gu4ywZ/fhFw7lU=', '[]'),
(51, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'fa710267c7853583a275d1026bcacb053090a52626827f261f33d3d4577cba27d40e65c8a92c5a9b1fad4a6df63d8877dff682f3aabe1a1168bdbd21dd10fc1f3X5kmzZQ5Cewk6WOxhb9DCaqf+c0fJV+ddPLHoWqKf8=', '[\"darkBackYellowishTextPdf.png\",\"kidsBook.png\"]'),
(52, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '95c1c5af9f6e1eb981bbe70db1cd977e87f9318b18d81be93563dfd8618b5b10ff1dadcbdad73c1588ef19d051132405651910adf683203014a46488215ec17cLHxAftTJcl/Uj66xxV7picGZ3bv8rqLbklyZDoMeeD8=', '[\"Picture1.png\",\"kidsBook.png\"]'),
(53, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'f1eae90151390a0525309de37b7368e7909349fce01cb2061ce0f4608d005faa3ee89e4a99427b09bc2560ebd12426b14d466294768dad233c4c5133559a0f2bR9Qn6HYyoLzSEawAs5SC0VtT4sGOOiZxxrWiYosu+JI=', '[\"coffee.png\",\"kidsBook.png\"]'),
(54, 'Praveen Kumar', '9625433716', 'praveenkr40052@gmail.com', 'ee91eecd3a08a49f09c882ec178ac2751fdcdb610752b82d47fa1ec2a4e5e62e31adb0dc3dbceed320d52979751f2e415bfc22cc993e8b5ea58cc7d696d72057562asuJ+ZRQv0Dh7HEG0yGuvoW4cPa9Hpg75T47VMNA=', '[\"NormalPdf.png\",\"R.jpg\"]'),
(55, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'ba331f157904daa9a8ae2c84e792234449974d75bed89c70038e240f5fcae643554d91df4104627c6bf8a07456ab2427fb041fb0505299ccb10e08489be3f93aqmCs+j2LQAwPjpfPPVTXl2MLMf7cvpvM0aADco4Cf7M=', '[\"coffee.png\",\"kidsBook.png\"]'),
(56, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '4010f7a4711f95ee63fb18f922ca6beae0b78c89ee5d7657c1d4af77f5178ceda437afcc72c15d62370313d387d4c5889f99f1fd9b5c09dc7cefb5b96ab691d11FvUkwS88hBWzfGFDyZ/uDZAXZUUXbmV9wWLwhB6s9g=', '[\"coffee.png\",\"kidsBook.png\"]'),
(57, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '497a378366d5157f56cf72164d60f83ab74d6722c4d2e69d983cab208abce778b591dc9638863995b624f99a0848ca4bf50853c1e957bcb723e1bbbf9929854e8EgDQcjnYd93+BW+jKd3Ss5hivygPWhCtOr8a5GUgow=', '[\"kidsBook.png\",\"Picture1.png\",\"processing.gif\"]'),
(58, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', '7b6a0b0f4ebe96ecf5ac50b78023b414d77eb9cf44628ad7d6baf729f4b2ed8d51db22106f743e488ee397f1254a7166fec447408fcd8b375f03b68a1d34eae0T2AJd3EcycQ+5pRtRY17aJ5shmdUzJ8/0liFUNQPHko=', '[\"Picture1.png\",\"processing.gif\",\"NormalPdf.png\",\"coffee.png\",\"darkBackYellowishTextPdf.png\"]'),
(59, 'Shubham Kumar', '8873774282', 'shubhamask2015@gmail.com', 'f0a1e2b143fb91b2985ae82a2ac8e82e7ba6dfea0a698406d6a9812c798ec8fd1707e8e13d17b7503b9ba7723c537e91d1332dd40ede546c2dd3f9a2f0264f04b8jGxVRtjnD8KX6FEYuXwT2MLaFOsp3OUSqzt0CRrlI=', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `status`, `location`) VALUES
(1, 'A', '987', 'active', 'Delhi'),
(2, 'B', '987', 'active', 'Chandigarh'),
(3, 'C', '987', 'active', 'Chandigarh'),
(4, 'D', '987', 'active', 'Jaipur'),
(5, 'E', '987', 'inactive', 'Jaipur'),
(6, 'F', '967', 'active', 'Chandigarh'),
(7, 'G', '967', 'active', 'Jaipur'),
(8, 'H', '967', 'inactive', 'Chandigarh'),
(9, 'I', '123', 'active', 'Hajipur'),
(10, 'J', '321', 'inactive', 'Chapra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
