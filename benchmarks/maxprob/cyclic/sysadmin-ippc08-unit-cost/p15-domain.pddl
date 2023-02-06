(define (domain sysadmin-nocount)
(:requirements :probabilistic-effects :negative-preconditions :typing)
(:types computer - object)
(:constants
  comp0 comp1 comp2 comp3 comp4 comp5 comp6 comp7 comp8 comp9 comp10 comp11 comp12 comp13 comp14 comp15 comp16 comp17 comp18 comp19 comp20 comp21 comp22 comp23 comp24 comp25 comp26 comp27 comp28 comp29 comp30 comp31 comp32 comp33 comp34 comp35 comp36 comp37 comp38 comp39 comp40 comp41 comp42 comp43 comp44 comp45 comp46 comp47 comp48 comp49 comp50 comp51 comp52 comp53 comp54 comp55 comp56 comp57 comp58 comp59 comp60 comp61 comp62 comp63 comp64 comp65 comp66 comp67 comp68 comp69 comp70 comp71 comp72 comp73 comp74 comp75 comp76 comp77 comp78 comp79 comp80 comp81 comp82 comp83 comp84 comp85 comp86 comp87 comp88 comp89 comp90 comp91 comp92 comp93 comp94 comp95 comp96 comp97 comp98 comp99 comp100 comp101 comp102 comp103 comp104 comp105 comp106 comp107 comp108 comp109 comp110 comp111 comp112 comp113 comp114 comp115 comp116 comp117 comp118 comp119 comp120 comp121 comp122 comp123 comp124 comp125 comp126 comp127 comp128 comp129 comp130 comp131 comp132 comp133 comp134 comp135 comp136 comp137 comp138 comp139 comp140 comp141 comp142 comp143 comp144 comp145 comp146 comp147 comp148 comp149 comp150 comp151 comp152 comp153 comp154 comp155 comp156 comp157 comp158 comp159 comp160 comp161 comp162 comp163 comp164 comp165 comp166 comp167 comp168 comp169 comp170 comp171 comp172 comp173 comp174 comp175 comp176 comp177 comp178 comp179 comp180 comp181 comp182 comp183 comp184 comp185 comp186 comp187 comp188 comp189 comp190 comp191 comp192 comp193 comp194 comp195 comp196 comp197 comp198 comp199 comp200 comp201 comp202 comp203 comp204 comp205 comp206 comp207 comp208 comp209 comp210 comp211 comp212 comp213 comp214 comp215 comp216 comp217 comp218 comp219 comp220 comp221 comp222 comp223 comp224 comp225 comp226 comp227 comp228 comp229 comp230 comp231 comp232 comp233 comp234 comp235 comp236 comp237 comp238 comp239 comp240 comp241 comp242 comp243 comp244 comp245 comp246 comp247 comp248 comp249 comp250 comp251 comp252 comp253 comp254 comp255 comp256 comp257 comp258 comp259 comp260 comp261 comp262 comp263 comp264 comp265 comp266 comp267 comp268 comp269 comp270 comp271 comp272 comp273 comp274 comp275 comp276 comp277 comp278 comp279 comp280 comp281 comp282 comp283 comp284 comp285 comp286 comp287 comp288 comp289 comp290 comp291 comp292 comp293 comp294 comp295 comp296 comp297 comp298 comp299 comp300 comp301 comp302 comp303 comp304 comp305 comp306 comp307 comp308 comp309 comp310 comp311 comp312 comp313 comp314 comp315 comp316 comp317 comp318 comp319 comp320 comp321 comp322 comp323 comp324 comp325 comp326 comp327 comp328 comp329 comp330 comp331 comp332 comp333 comp334 comp335 comp336 comp337 comp338 comp339 comp340 comp341 comp342 comp343 comp344 comp345 comp346 comp347 comp348 comp349 comp350 comp351 comp352 comp353 comp354 comp355 comp356 comp357 comp358 comp359 comp360 comp361 comp362 comp363 comp364 comp365 comp366 comp367 comp368 comp369 comp370 comp371 comp372 comp373 comp374 comp375 comp376 comp377 comp378 comp379 comp380 comp381 comp382 comp383 comp384 comp385 comp386 comp387 comp388 comp389 comp390 comp391 comp392 comp393 comp394 comp395 comp396 comp397 comp398 comp399 comp400 comp401 comp402 comp403 comp404 comp405 comp406 comp407 comp408 comp409 comp410 comp411 comp412 comp413 comp414 comp415 comp416 comp417 comp418 comp419 comp420 comp421 comp422 comp423 comp424 comp425 comp426 comp427 comp428 comp429 comp430 comp431 comp432 comp433 comp434 comp435 comp436 comp437 comp438 comp439 comp440 comp441 comp442 comp443 comp444 comp445 comp446 comp447 comp448 comp449 comp450 comp451 comp452 comp453 comp454 comp455 comp456 comp457 comp458 comp459 comp460 comp461 comp462 comp463 comp464 comp465 comp466 comp467 comp468 comp469 comp470 comp471 comp472 comp473 comp474 comp475 comp476 comp477 comp478 comp479 comp480 comp481 comp482 comp483 comp484 comp485 comp486 comp487 comp488 comp489 comp490 comp491 comp492 comp493 comp494 comp495 comp496 comp497 comp498 comp499 comp500 comp501 comp502 comp503 comp504 comp505 comp506 comp507 comp508 comp509 comp510 comp511 comp512 comp513 comp514 comp515 comp516 comp517 comp518 comp519 comp520 comp521 comp522 comp523 comp524 comp525 comp526 comp527 comp528 comp529 comp530 comp531 comp532 comp533 comp534 comp535 comp536 comp537 comp538 comp539 comp540 comp541 comp542 comp543 comp544 comp545 comp546 comp547 comp548 comp549 comp550 comp551 comp552 comp553 comp554 comp555 comp556 comp557 comp558 comp559 comp560 comp561 comp562 comp563 comp564 comp565 comp566 comp567 comp568 comp569 comp570 comp571 comp572 comp573 comp574 comp575 comp576 comp577 comp578 comp579 comp580 comp581 comp582 comp583 comp584 comp585 comp586 comp587 comp588 comp589 comp590 comp591 comp592 comp593 comp594 comp595 comp596 comp597 comp598 comp599 comp600 comp601 comp602 comp603 comp604 comp605 comp606 comp607 comp608 comp609 comp610 comp611 comp612 comp613 comp614 comp615 comp616 comp617 comp618 comp619 comp620 comp621 comp622 comp623 comp624 comp625 comp626 comp627 comp628 comp629 comp630 comp631 comp632 comp633 comp634 comp635 comp636 comp637 comp638 comp639 comp640 comp641 comp642 comp643 comp644 comp645 comp646 comp647 comp648 comp649 comp650 comp651 comp652 comp653 comp654 comp655 comp656 comp657 comp658 comp659 comp660 comp661 comp662 comp663 comp664 comp665 comp666 comp667 comp668 comp669 comp670 comp671 comp672 comp673 comp674 comp675 comp676 comp677 comp678 comp679 comp680 comp681 comp682 comp683 comp684 comp685 comp686 comp687 comp688 comp689 comp690 comp691 comp692 comp693 comp694 comp695 comp696 comp697 comp698 comp699 comp700 comp701 comp702 comp703 comp704 comp705 comp706 comp707 comp708 comp709 comp710 comp711 comp712 comp713 comp714 comp715 comp716 comp717 comp718 comp719 comp720 comp721 comp722 comp723 comp724 comp725 comp726 comp727 comp728 comp729 comp730 comp731 comp732 comp733 comp734 comp735 comp736 comp737 comp738 comp739 comp740 comp741 comp742 comp743 comp744 comp745 comp746 comp747 comp748 comp749 comp750 comp751 comp752 comp753 comp754 comp755 comp756 comp757 comp758 comp759 comp760 comp761 comp762 comp763 comp764 comp765 comp766 comp767 comp768 comp769 comp770 comp771 comp772 comp773 comp774 comp775 comp776 comp777 comp778 comp779 comp780 comp781 comp782 comp783 comp784 comp785 comp786 comp787 comp788 comp789 comp790 comp791 comp792 comp793 comp794 comp795 comp796 comp797 comp798 comp799 comp800 comp801 comp802 comp803 comp804 comp805 comp806 comp807 comp808 comp809 comp810 comp811 comp812 comp813 comp814 comp815 comp816 comp817 comp818 comp819 comp820 comp821 comp822 comp823 comp824 comp825 comp826 comp827 comp828 comp829 comp830 comp831 comp832 comp833 comp834 comp835 comp836 comp837 comp838 comp839 comp840 comp841 comp842 comp843 comp844 comp845 comp846 comp847 comp848 comp849 comp850 comp851 comp852 comp853 comp854 comp855 comp856 comp857 comp858 comp859 comp860 comp861 comp862 comp863 comp864 comp865 comp866 comp867 comp868 comp869 comp870 comp871 comp872 comp873 comp874 comp875 comp876 comp877 comp878 comp879 comp880 comp881 comp882 comp883 comp884 comp885 comp886 comp887 comp888 comp889 comp890 comp891 comp892 comp893 comp894 comp895 comp896 comp897 comp898 comp899 comp900 comp901 comp902 comp903 comp904 comp905 comp906 comp907 comp908 comp909 comp910 comp911 comp912 comp913 comp914 comp915 comp916 comp917 comp918 comp919 comp920 comp921 comp922 comp923 comp924 comp925 comp926 comp927 comp928 comp929 comp930 comp931 comp932 comp933 comp934 comp935 comp936 comp937 comp938 comp939 comp940 comp941 comp942 comp943 comp944 comp945 comp946 comp947 comp948 comp949 comp950 comp951 comp952 comp953 comp954 comp955 comp956 comp957 comp958 comp959 comp960 comp961 comp962 comp963 comp964 comp965 comp966 comp967 comp968 comp969 comp970 comp971 comp972 comp973 comp974 comp975 comp976 comp977 comp978 comp979 comp980 comp981 comp982 comp983 comp984 comp985 comp986 comp987 comp988 comp989 comp990 comp991 comp992 comp993 comp994 comp995 comp996 comp997 comp998 comp999 comp1000 comp1001 comp1002 comp1003 comp1004 comp1005 comp1006 comp1007 comp1008 comp1009 comp1010 comp1011 comp1012 comp1013 comp1014 comp1015 comp1016 comp1017 comp1018 comp1019 comp1020 comp1021 comp1022 comp1023 comp1024 comp1025 comp1026 comp1027 comp1028 comp1029 comp1030 comp1031 comp1032 comp1033 comp1034 comp1035 comp1036 comp1037 comp1038 comp1039 comp1040 comp1041 comp1042 comp1043 comp1044 comp1045 comp1046 comp1047 comp1048 comp1049 comp1050 comp1051 comp1052 comp1053 comp1054 comp1055 comp1056 comp1057 comp1058 comp1059 comp1060 comp1061 comp1062 comp1063 comp1064 comp1065 comp1066 comp1067 comp1068 comp1069 comp1070 comp1071 comp1072 comp1073 comp1074 comp1075 comp1076 comp1077 comp1078 comp1079 comp1080 comp1081 comp1082 comp1083 comp1084 comp1085 comp1086 comp1087 comp1088 comp1089 comp1090 comp1091 comp1092 comp1093 comp1094 comp1095 comp1096 comp1097 comp1098 comp1099 comp1100 comp1101 comp1102 comp1103 comp1104 comp1105 comp1106 comp1107 comp1108 comp1109 comp1110 comp1111 comp1112 comp1113 comp1114 comp1115 comp1116 comp1117 comp1118 comp1119 comp1120 comp1121 comp1122 comp1123 comp1124 comp1125 comp1126 comp1127 comp1128 comp1129 comp1130 comp1131 comp1132 comp1133 comp1134 comp1135 comp1136 comp1137 comp1138 comp1139 comp1140 comp1141 comp1142 comp1143 comp1144 comp1145 comp1146 comp1147 comp1148 comp1149 comp1150 comp1151 comp1152 comp1153 comp1154 comp1155 comp1156 comp1157 comp1158 comp1159 comp1160 comp1161 comp1162 comp1163 comp1164 comp1165 comp1166 comp1167 comp1168 comp1169 comp1170 comp1171 comp1172 comp1173 comp1174 comp1175 comp1176 comp1177 comp1178 comp1179 comp1180 comp1181 comp1182 comp1183 comp1184 comp1185 comp1186 comp1187 comp1188 comp1189 comp1190 comp1191 comp1192 comp1193 comp1194 comp1195 comp1196 comp1197 comp1198 comp1199 comp1200 comp1201 comp1202 comp1203 comp1204 comp1205 comp1206 comp1207 comp1208 comp1209 comp1210 comp1211 comp1212 comp1213 comp1214 comp1215 comp1216 comp1217 comp1218 comp1219 comp1220 comp1221 comp1222 comp1223 comp1224 comp1225 comp1226 comp1227 comp1228 comp1229 comp1230 comp1231 comp1232 comp1233 comp1234 comp1235 comp1236 comp1237 comp1238 comp1239 comp1240 comp1241 comp1242 comp1243 comp1244 comp1245 comp1246 comp1247 comp1248 comp1249 comp1250 comp1251 comp1252 comp1253 comp1254 comp1255 comp1256 comp1257 comp1258 comp1259 comp1260 comp1261 comp1262 comp1263 comp1264 comp1265 comp1266 comp1267 comp1268 comp1269 comp1270 comp1271 comp1272 comp1273 comp1274 comp1275 comp1276 comp1277 comp1278 comp1279 comp1280 comp1281 comp1282 comp1283 comp1284 comp1285 comp1286 comp1287 comp1288 comp1289 comp1290 comp1291 comp1292 comp1293 comp1294 comp1295 comp1296 comp1297 comp1298 comp1299 comp1300 comp1301 comp1302 comp1303 comp1304 comp1305 comp1306 comp1307 comp1308 comp1309 comp1310 comp1311 comp1312 comp1313 comp1314 comp1315 comp1316 comp1317 comp1318 comp1319 comp1320 comp1321 comp1322 comp1323 comp1324 comp1325 comp1326 comp1327 comp1328 comp1329 comp1330 comp1331 comp1332 comp1333 comp1334 comp1335 comp1336 comp1337 comp1338 comp1339 comp1340 comp1341 comp1342 comp1343 comp1344 comp1345 comp1346 comp1347 comp1348 comp1349 comp1350 comp1351 comp1352 comp1353 comp1354 comp1355 comp1356 comp1357 comp1358 comp1359 comp1360 comp1361 comp1362 comp1363 comp1364 comp1365 comp1366 comp1367 comp1368 comp1369 comp1370 comp1371 comp1372 comp1373 comp1374 comp1375 comp1376 comp1377 comp1378 comp1379 comp1380 comp1381 comp1382 comp1383 comp1384 comp1385 comp1386 comp1387 comp1388 comp1389 comp1390 comp1391 comp1392 comp1393 comp1394 comp1395 comp1396 comp1397 comp1398 comp1399 comp1400 comp1401 comp1402 comp1403 comp1404 comp1405 comp1406 comp1407 comp1408 comp1409 comp1410 comp1411 comp1412 comp1413 comp1414 comp1415 comp1416 comp1417 comp1418 comp1419 comp1420 comp1421 comp1422 comp1423 comp1424 comp1425 comp1426 comp1427 comp1428 comp1429 comp1430 comp1431 comp1432 comp1433 comp1434 comp1435 comp1436 comp1437 comp1438 comp1439 comp1440 comp1441 comp1442 comp1443 comp1444 comp1445 comp1446 comp1447 comp1448 comp1449 comp1450 comp1451 comp1452 comp1453 comp1454 comp1455 comp1456 comp1457 comp1458 comp1459 comp1460 comp1461 comp1462 comp1463 comp1464 comp1465 comp1466 comp1467 comp1468 comp1469 comp1470 comp1471 comp1472 comp1473 comp1474 comp1475 comp1476 comp1477 comp1478 comp1479 comp1480 comp1481 comp1482 comp1483 comp1484 comp1485 comp1486 comp1487 comp1488 comp1489 comp1490 comp1491 comp1492 comp1493 comp1494 comp1495 comp1496 comp1497 comp1498 comp1499 comp1500 comp1501 comp1502 comp1503 comp1504 comp1505 comp1506 comp1507 comp1508 comp1509 comp1510 comp1511 comp1512 comp1513 comp1514 comp1515 comp1516 comp1517 comp1518 comp1519 comp1520 comp1521 comp1522 comp1523 comp1524 comp1525 comp1526 comp1527 comp1528 comp1529 comp1530 comp1531 comp1532 comp1533 comp1534 comp1535 comp1536 comp1537 comp1538 comp1539 comp1540 comp1541 comp1542 comp1543 comp1544 comp1545 comp1546 comp1547 comp1548 comp1549 comp1550 comp1551 comp1552 comp1553 comp1554 comp1555 comp1556 comp1557 comp1558 comp1559 comp1560 comp1561 comp1562 comp1563 comp1564 comp1565 comp1566 comp1567 comp1568 comp1569 comp1570 comp1571 comp1572 comp1573 comp1574 comp1575 comp1576 comp1577 comp1578 comp1579 comp1580 comp1581 comp1582 comp1583 comp1584 comp1585 comp1586 comp1587 comp1588 comp1589 comp1590 comp1591 comp1592 comp1593 comp1594 comp1595 comp1596 comp1597 comp1598 comp1599 comp1600 comp1601 comp1602 comp1603 comp1604 comp1605 comp1606 comp1607 comp1608 comp1609 comp1610 comp1611 comp1612 comp1613 comp1614 comp1615 comp1616 comp1617 comp1618 comp1619 comp1620 comp1621 comp1622 comp1623 comp1624 comp1625 comp1626 comp1627 comp1628 comp1629 comp1630 comp1631 comp1632 comp1633 comp1634 comp1635 comp1636 comp1637 comp1638 comp1639 comp1640 comp1641 comp1642 comp1643 comp1644 comp1645 comp1646 comp1647 comp1648 comp1649 comp1650 comp1651 comp1652 comp1653 comp1654 comp1655 comp1656 comp1657 comp1658 comp1659 comp1660 comp1661 comp1662 comp1663 comp1664 comp1665 comp1666 comp1667 comp1668 comp1669 comp1670 comp1671 comp1672 comp1673 comp1674 comp1675 comp1676 comp1677 comp1678 comp1679 comp1680 comp1681 comp1682 comp1683 comp1684 comp1685 comp1686 comp1687 comp1688 comp1689 comp1690 comp1691 comp1692 comp1693 comp1694 comp1695 comp1696 comp1697 comp1698 comp1699 comp1700 comp1701 comp1702 comp1703 comp1704 comp1705 comp1706 comp1707 comp1708 comp1709 comp1710 comp1711 comp1712 comp1713 comp1714 comp1715 comp1716 comp1717 comp1718 comp1719 comp1720 comp1721 comp1722 comp1723 comp1724 comp1725 comp1726 comp1727 comp1728 comp1729 comp1730 comp1731 comp1732 comp1733 comp1734 comp1735 comp1736 comp1737 comp1738 comp1739 comp1740 comp1741 comp1742 comp1743 comp1744 comp1745 comp1746 comp1747 comp1748 comp1749 comp1750 comp1751 comp1752 comp1753 comp1754 comp1755 comp1756 comp1757 comp1758 comp1759 comp1760 comp1761 comp1762 comp1763 comp1764 comp1765 comp1766 comp1767 comp1768 comp1769 comp1770 comp1771 comp1772 comp1773 comp1774 comp1775 comp1776 comp1777 comp1778 comp1779 comp1780 comp1781 comp1782 comp1783 comp1784 comp1785 comp1786 comp1787 comp1788 comp1789 comp1790 comp1791 comp1792 comp1793 comp1794 comp1795 comp1796 comp1797 comp1798 comp1799 comp1800 comp1801 comp1802 comp1803 comp1804 comp1805 comp1806 comp1807 comp1808 comp1809 comp1810 comp1811 comp1812 comp1813 comp1814 comp1815 comp1816 comp1817 comp1818 comp1819 comp1820 comp1821 comp1822 comp1823 comp1824 comp1825 comp1826 comp1827 comp1828 comp1829 comp1830 comp1831 comp1832 comp1833 comp1834 comp1835 comp1836 comp1837 comp1838 comp1839 comp1840 comp1841 comp1842 comp1843 comp1844 comp1845 comp1846 comp1847 comp1848 comp1849 comp1850 comp1851 comp1852 comp1853 comp1854 comp1855 comp1856 comp1857 comp1858 comp1859 comp1860 comp1861 comp1862 comp1863 comp1864 comp1865 comp1866 comp1867 comp1868 comp1869 comp1870 comp1871 comp1872 comp1873 comp1874 comp1875 comp1876 comp1877 comp1878 comp1879 comp1880 comp1881 comp1882 comp1883 comp1884 comp1885 comp1886 comp1887 comp1888 comp1889 comp1890 comp1891 comp1892 comp1893 comp1894 comp1895 comp1896 comp1897 comp1898 comp1899 comp1900 comp1901 comp1902 comp1903 comp1904 comp1905 comp1906 comp1907 comp1908 comp1909 comp1910 comp1911 comp1912 comp1913 comp1914 comp1915 comp1916 comp1917 comp1918 comp1919 - computer
)
(:predicates
  (running ?c - computer)
  (rebooted ?c - computer)
  (evaluate ?c - computer)
  (update-status ?c - computer)
  (one-off ?c - computer)
  (all-on ?c - computer)
  (all-updated)
)
(:action reboot
  :parameters (?c - computer)
  :precondition (and
    (all-updated)
  )
  :effect (and
    (increase (total-cost) 1)
    (not (all-updated))
    (evaluate comp0)
    (rebooted ?c)
  )
)
(:action evaluate-comp0-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (rebooted comp0)
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
  )
)
(:action evaluate-comp0-all-on
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (not (rebooted comp0))
    (running comp1919)
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
    (all-on comp0)
  )
)
(:action evaluate-comp0-off-comp1919
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (not (rebooted comp0))
    (not (running comp1919))
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
    (one-off comp0)
  )
)
(:action evaluate-comp1-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1)
    (rebooted comp1)
  )
  :effect (and
    (not (evaluate comp1))
    (evaluate comp2)
  )
)
(:action evaluate-comp1-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1)
    (not (rebooted comp1))
    (running comp0)
  )
  :effect (and
    (not (evaluate comp1))
    (evaluate comp2)
    (all-on comp1)
  )
)
(:action evaluate-comp1-off-comp0
  :parameters ()
  :precondition (and
    (evaluate comp1)
    (not (rebooted comp1))
    (not (running comp0))
  )
  :effect (and
    (not (evaluate comp1))
    (evaluate comp2)
    (one-off comp1)
  )
)
(:action evaluate-comp2-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (rebooted comp2)
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
  )
)
(:action evaluate-comp2-all-on
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (not (rebooted comp2))
    (running comp1)
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
    (all-on comp2)
  )
)
(:action evaluate-comp2-off-comp1
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (not (rebooted comp2))
    (not (running comp1))
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
    (one-off comp2)
  )
)
(:action evaluate-comp3-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (rebooted comp3)
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
  )
)
(:action evaluate-comp3-all-on
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (not (rebooted comp3))
    (running comp2)
    (running comp814)
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
    (all-on comp3)
  )
)
(:action evaluate-comp3-off-comp2
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (not (rebooted comp3))
    (not (running comp2))
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
    (one-off comp3)
  )
)
(:action evaluate-comp3-off-comp814
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (not (rebooted comp3))
    (not (running comp814))
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
    (one-off comp3)
  )
)
(:action evaluate-comp4-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (rebooted comp4)
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
  )
)
(:action evaluate-comp4-all-on
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (not (rebooted comp4))
    (running comp3)
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
    (all-on comp4)
  )
)
(:action evaluate-comp4-off-comp3
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (not (rebooted comp4))
    (not (running comp3))
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
    (one-off comp4)
  )
)
(:action evaluate-comp5-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (rebooted comp5)
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
  )
)
(:action evaluate-comp5-all-on
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (not (rebooted comp5))
    (running comp4)
    (running comp375)
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
    (all-on comp5)
  )
)
(:action evaluate-comp5-off-comp4
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (not (rebooted comp5))
    (not (running comp4))
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
    (one-off comp5)
  )
)
(:action evaluate-comp5-off-comp375
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (not (rebooted comp5))
    (not (running comp375))
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
    (one-off comp5)
  )
)
(:action evaluate-comp6-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (rebooted comp6)
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
  )
)
(:action evaluate-comp6-all-on
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (running comp5)
    (running comp584)
    (running comp1407)
    (running comp1570)
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (all-on comp6)
  )
)
(:action evaluate-comp6-off-comp5
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (not (running comp5))
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (one-off comp6)
  )
)
(:action evaluate-comp6-off-comp584
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (not (running comp584))
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (one-off comp6)
  )
)
(:action evaluate-comp6-off-comp1407
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (not (running comp1407))
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (one-off comp6)
  )
)
(:action evaluate-comp6-off-comp1570
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (not (running comp1570))
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (one-off comp6)
  )
)
(:action evaluate-comp7-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (rebooted comp7)
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
  )
)
(:action evaluate-comp7-all-on
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (not (rebooted comp7))
    (running comp6)
    (running comp213)
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
    (all-on comp7)
  )
)
(:action evaluate-comp7-off-comp6
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (not (rebooted comp7))
    (not (running comp6))
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
    (one-off comp7)
  )
)
(:action evaluate-comp7-off-comp213
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (not (rebooted comp7))
    (not (running comp213))
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
    (one-off comp7)
  )
)
(:action evaluate-comp8-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (rebooted comp8)
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
  )
)
(:action evaluate-comp8-all-on
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (not (rebooted comp8))
    (running comp7)
    (running comp1806)
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
    (all-on comp8)
  )
)
(:action evaluate-comp8-off-comp7
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (not (rebooted comp8))
    (not (running comp7))
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
    (one-off comp8)
  )
)
(:action evaluate-comp8-off-comp1806
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (not (rebooted comp8))
    (not (running comp1806))
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
    (one-off comp8)
  )
)
(:action evaluate-comp9-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (rebooted comp9)
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
  )
)
(:action evaluate-comp9-all-on
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (not (rebooted comp9))
    (running comp8)
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
    (all-on comp9)
  )
)
(:action evaluate-comp9-off-comp8
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (not (rebooted comp9))
    (not (running comp8))
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
    (one-off comp9)
  )
)
(:action evaluate-comp10-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (rebooted comp10)
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
  )
)
(:action evaluate-comp10-all-on
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (not (rebooted comp10))
    (running comp9)
    (running comp662)
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
    (all-on comp10)
  )
)
(:action evaluate-comp10-off-comp9
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (not (rebooted comp10))
    (not (running comp9))
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
    (one-off comp10)
  )
)
(:action evaluate-comp10-off-comp662
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (not (rebooted comp10))
    (not (running comp662))
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
    (one-off comp10)
  )
)
(:action evaluate-comp11-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (rebooted comp11)
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
  )
)
(:action evaluate-comp11-all-on
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (not (rebooted comp11))
    (running comp10)
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
    (all-on comp11)
  )
)
(:action evaluate-comp11-off-comp10
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (not (rebooted comp11))
    (not (running comp10))
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
    (one-off comp11)
  )
)
(:action evaluate-comp12-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp12)
    (rebooted comp12)
  )
  :effect (and
    (not (evaluate comp12))
    (evaluate comp13)
  )
)
(:action evaluate-comp12-all-on
  :parameters ()
  :precondition (and
    (evaluate comp12)
    (not (rebooted comp12))
    (running comp11)
  )
  :effect (and
    (not (evaluate comp12))
    (evaluate comp13)
    (all-on comp12)
  )
)
(:action evaluate-comp12-off-comp11
  :parameters ()
  :precondition (and
    (evaluate comp12)
    (not (rebooted comp12))
    (not (running comp11))
  )
  :effect (and
    (not (evaluate comp12))
    (evaluate comp13)
    (one-off comp12)
  )
)
(:action evaluate-comp13-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp13)
    (rebooted comp13)
  )
  :effect (and
    (not (evaluate comp13))
    (evaluate comp14)
  )
)
(:action evaluate-comp13-all-on
  :parameters ()
  :precondition (and
    (evaluate comp13)
    (not (rebooted comp13))
    (running comp12)
  )
  :effect (and
    (not (evaluate comp13))
    (evaluate comp14)
    (all-on comp13)
  )
)
(:action evaluate-comp13-off-comp12
  :parameters ()
  :precondition (and
    (evaluate comp13)
    (not (rebooted comp13))
    (not (running comp12))
  )
  :effect (and
    (not (evaluate comp13))
    (evaluate comp14)
    (one-off comp13)
  )
)
(:action evaluate-comp14-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (rebooted comp14)
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
  )
)
(:action evaluate-comp14-all-on
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (not (rebooted comp14))
    (running comp13)
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
    (all-on comp14)
  )
)
(:action evaluate-comp14-off-comp13
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (not (rebooted comp14))
    (not (running comp13))
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
    (one-off comp14)
  )
)
(:action evaluate-comp15-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp15)
    (rebooted comp15)
  )
  :effect (and
    (not (evaluate comp15))
    (evaluate comp16)
  )
)
(:action evaluate-comp15-all-on
  :parameters ()
  :precondition (and
    (evaluate comp15)
    (not (rebooted comp15))
    (running comp14)
  )
  :effect (and
    (not (evaluate comp15))
    (evaluate comp16)
    (all-on comp15)
  )
)
(:action evaluate-comp15-off-comp14
  :parameters ()
  :precondition (and
    (evaluate comp15)
    (not (rebooted comp15))
    (not (running comp14))
  )
  :effect (and
    (not (evaluate comp15))
    (evaluate comp16)
    (one-off comp15)
  )
)
(:action evaluate-comp16-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (rebooted comp16)
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
  )
)
(:action evaluate-comp16-all-on
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (running comp15)
    (running comp30)
    (running comp193)
    (running comp955)
    (running comp1312)
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (all-on comp16)
  )
)
(:action evaluate-comp16-off-comp15
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp15))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp16-off-comp30
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp30))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp16-off-comp193
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp193))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp16-off-comp955
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp955))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp16-off-comp1312
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp1312))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp17-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp17)
    (rebooted comp17)
  )
  :effect (and
    (not (evaluate comp17))
    (evaluate comp18)
  )
)
(:action evaluate-comp17-all-on
  :parameters ()
  :precondition (and
    (evaluate comp17)
    (not (rebooted comp17))
    (running comp16)
  )
  :effect (and
    (not (evaluate comp17))
    (evaluate comp18)
    (all-on comp17)
  )
)
(:action evaluate-comp17-off-comp16
  :parameters ()
  :precondition (and
    (evaluate comp17)
    (not (rebooted comp17))
    (not (running comp16))
  )
  :effect (and
    (not (evaluate comp17))
    (evaluate comp18)
    (one-off comp17)
  )
)
(:action evaluate-comp18-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (rebooted comp18)
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
  )
)
(:action evaluate-comp18-all-on
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (not (rebooted comp18))
    (running comp17)
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
    (all-on comp18)
  )
)
(:action evaluate-comp18-off-comp17
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (not (rebooted comp18))
    (not (running comp17))
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
    (one-off comp18)
  )
)
(:action evaluate-comp19-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp19)
    (rebooted comp19)
  )
  :effect (and
    (not (evaluate comp19))
    (evaluate comp20)
  )
)
(:action evaluate-comp19-all-on
  :parameters ()
  :precondition (and
    (evaluate comp19)
    (not (rebooted comp19))
    (running comp18)
  )
  :effect (and
    (not (evaluate comp19))
    (evaluate comp20)
    (all-on comp19)
  )
)
(:action evaluate-comp19-off-comp18
  :parameters ()
  :precondition (and
    (evaluate comp19)
    (not (rebooted comp19))
    (not (running comp18))
  )
  :effect (and
    (not (evaluate comp19))
    (evaluate comp20)
    (one-off comp19)
  )
)
(:action evaluate-comp20-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (rebooted comp20)
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
  )
)
(:action evaluate-comp20-all-on
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (not (rebooted comp20))
    (running comp19)
    (running comp800)
    (running comp988)
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
    (all-on comp20)
  )
)
(:action evaluate-comp20-off-comp19
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (not (rebooted comp20))
    (not (running comp19))
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
    (one-off comp20)
  )
)
(:action evaluate-comp20-off-comp800
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (not (rebooted comp20))
    (not (running comp800))
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
    (one-off comp20)
  )
)
(:action evaluate-comp20-off-comp988
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (not (rebooted comp20))
    (not (running comp988))
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
    (one-off comp20)
  )
)
(:action evaluate-comp21-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (rebooted comp21)
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
  )
)
(:action evaluate-comp21-all-on
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (not (rebooted comp21))
    (running comp20)
    (running comp1159)
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
    (all-on comp21)
  )
)
(:action evaluate-comp21-off-comp20
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (not (rebooted comp21))
    (not (running comp20))
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
    (one-off comp21)
  )
)
(:action evaluate-comp21-off-comp1159
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (not (rebooted comp21))
    (not (running comp1159))
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
    (one-off comp21)
  )
)
(:action evaluate-comp22-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (rebooted comp22)
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
  )
)
(:action evaluate-comp22-all-on
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (not (rebooted comp22))
    (running comp21)
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
    (all-on comp22)
  )
)
(:action evaluate-comp22-off-comp21
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (not (rebooted comp22))
    (not (running comp21))
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
    (one-off comp22)
  )
)
(:action evaluate-comp23-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (rebooted comp23)
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
  )
)
(:action evaluate-comp23-all-on
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (not (rebooted comp23))
    (running comp22)
    (running comp504)
    (running comp1773)
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
    (all-on comp23)
  )
)
(:action evaluate-comp23-off-comp22
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (not (rebooted comp23))
    (not (running comp22))
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
    (one-off comp23)
  )
)
(:action evaluate-comp23-off-comp504
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (not (rebooted comp23))
    (not (running comp504))
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
    (one-off comp23)
  )
)
(:action evaluate-comp23-off-comp1773
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (not (rebooted comp23))
    (not (running comp1773))
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
    (one-off comp23)
  )
)
(:action evaluate-comp24-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (rebooted comp24)
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
  )
)
(:action evaluate-comp24-all-on
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (not (rebooted comp24))
    (running comp23)
    (running comp1205)
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
    (all-on comp24)
  )
)
(:action evaluate-comp24-off-comp23
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (not (rebooted comp24))
    (not (running comp23))
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
    (one-off comp24)
  )
)
(:action evaluate-comp24-off-comp1205
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (not (rebooted comp24))
    (not (running comp1205))
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
    (one-off comp24)
  )
)
(:action evaluate-comp25-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp25)
    (rebooted comp25)
  )
  :effect (and
    (not (evaluate comp25))
    (evaluate comp26)
  )
)
(:action evaluate-comp25-all-on
  :parameters ()
  :precondition (and
    (evaluate comp25)
    (not (rebooted comp25))
    (running comp24)
  )
  :effect (and
    (not (evaluate comp25))
    (evaluate comp26)
    (all-on comp25)
  )
)
(:action evaluate-comp25-off-comp24
  :parameters ()
  :precondition (and
    (evaluate comp25)
    (not (rebooted comp25))
    (not (running comp24))
  )
  :effect (and
    (not (evaluate comp25))
    (evaluate comp26)
    (one-off comp25)
  )
)
(:action evaluate-comp26-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (rebooted comp26)
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
  )
)
(:action evaluate-comp26-all-on
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (not (rebooted comp26))
    (running comp25)
    (running comp1326)
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
    (all-on comp26)
  )
)
(:action evaluate-comp26-off-comp25
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (not (rebooted comp26))
    (not (running comp25))
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
    (one-off comp26)
  )
)
(:action evaluate-comp26-off-comp1326
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (not (rebooted comp26))
    (not (running comp1326))
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
    (one-off comp26)
  )
)
(:action evaluate-comp27-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp27)
    (rebooted comp27)
  )
  :effect (and
    (not (evaluate comp27))
    (evaluate comp28)
  )
)
(:action evaluate-comp27-all-on
  :parameters ()
  :precondition (and
    (evaluate comp27)
    (not (rebooted comp27))
    (running comp26)
  )
  :effect (and
    (not (evaluate comp27))
    (evaluate comp28)
    (all-on comp27)
  )
)
(:action evaluate-comp27-off-comp26
  :parameters ()
  :precondition (and
    (evaluate comp27)
    (not (rebooted comp27))
    (not (running comp26))
  )
  :effect (and
    (not (evaluate comp27))
    (evaluate comp28)
    (one-off comp27)
  )
)
(:action evaluate-comp28-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp28)
    (rebooted comp28)
  )
  :effect (and
    (not (evaluate comp28))
    (evaluate comp29)
  )
)
(:action evaluate-comp28-all-on
  :parameters ()
  :precondition (and
    (evaluate comp28)
    (not (rebooted comp28))
    (running comp27)
  )
  :effect (and
    (not (evaluate comp28))
    (evaluate comp29)
    (all-on comp28)
  )
)
(:action evaluate-comp28-off-comp27
  :parameters ()
  :precondition (and
    (evaluate comp28)
    (not (rebooted comp28))
    (not (running comp27))
  )
  :effect (and
    (not (evaluate comp28))
    (evaluate comp29)
    (one-off comp28)
  )
)
(:action evaluate-comp29-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (rebooted comp29)
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
  )
)
(:action evaluate-comp29-all-on
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (not (rebooted comp29))
    (running comp28)
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
    (all-on comp29)
  )
)
(:action evaluate-comp29-off-comp28
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (not (rebooted comp29))
    (not (running comp28))
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
    (one-off comp29)
  )
)
(:action evaluate-comp30-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (rebooted comp30)
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
  )
)
(:action evaluate-comp30-all-on
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (not (rebooted comp30))
    (running comp29)
    (running comp539)
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
    (all-on comp30)
  )
)
(:action evaluate-comp30-off-comp29
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (not (rebooted comp30))
    (not (running comp29))
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
    (one-off comp30)
  )
)
(:action evaluate-comp30-off-comp539
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (not (rebooted comp30))
    (not (running comp539))
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
    (one-off comp30)
  )
)
(:action evaluate-comp31-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp31)
    (rebooted comp31)
  )
  :effect (and
    (not (evaluate comp31))
    (evaluate comp32)
  )
)
(:action evaluate-comp31-all-on
  :parameters ()
  :precondition (and
    (evaluate comp31)
    (not (rebooted comp31))
    (running comp30)
  )
  :effect (and
    (not (evaluate comp31))
    (evaluate comp32)
    (all-on comp31)
  )
)
(:action evaluate-comp31-off-comp30
  :parameters ()
  :precondition (and
    (evaluate comp31)
    (not (rebooted comp31))
    (not (running comp30))
  )
  :effect (and
    (not (evaluate comp31))
    (evaluate comp32)
    (one-off comp31)
  )
)
(:action evaluate-comp32-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp32)
    (rebooted comp32)
  )
  :effect (and
    (not (evaluate comp32))
    (evaluate comp33)
  )
)
(:action evaluate-comp32-all-on
  :parameters ()
  :precondition (and
    (evaluate comp32)
    (not (rebooted comp32))
    (running comp31)
  )
  :effect (and
    (not (evaluate comp32))
    (evaluate comp33)
    (all-on comp32)
  )
)
(:action evaluate-comp32-off-comp31
  :parameters ()
  :precondition (and
    (evaluate comp32)
    (not (rebooted comp32))
    (not (running comp31))
  )
  :effect (and
    (not (evaluate comp32))
    (evaluate comp33)
    (one-off comp32)
  )
)
(:action evaluate-comp33-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp33)
    (rebooted comp33)
  )
  :effect (and
    (not (evaluate comp33))
    (evaluate comp34)
  )
)
(:action evaluate-comp33-all-on
  :parameters ()
  :precondition (and
    (evaluate comp33)
    (not (rebooted comp33))
    (running comp32)
  )
  :effect (and
    (not (evaluate comp33))
    (evaluate comp34)
    (all-on comp33)
  )
)
(:action evaluate-comp33-off-comp32
  :parameters ()
  :precondition (and
    (evaluate comp33)
    (not (rebooted comp33))
    (not (running comp32))
  )
  :effect (and
    (not (evaluate comp33))
    (evaluate comp34)
    (one-off comp33)
  )
)
(:action evaluate-comp34-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (rebooted comp34)
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
  )
)
(:action evaluate-comp34-all-on
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (not (rebooted comp34))
    (running comp33)
    (running comp580)
    (running comp730)
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
    (all-on comp34)
  )
)
(:action evaluate-comp34-off-comp33
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (not (rebooted comp34))
    (not (running comp33))
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
    (one-off comp34)
  )
)
(:action evaluate-comp34-off-comp580
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (not (rebooted comp34))
    (not (running comp580))
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
    (one-off comp34)
  )
)
(:action evaluate-comp34-off-comp730
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (not (rebooted comp34))
    (not (running comp730))
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
    (one-off comp34)
  )
)
(:action evaluate-comp35-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp35)
    (rebooted comp35)
  )
  :effect (and
    (not (evaluate comp35))
    (evaluate comp36)
  )
)
(:action evaluate-comp35-all-on
  :parameters ()
  :precondition (and
    (evaluate comp35)
    (not (rebooted comp35))
    (running comp34)
  )
  :effect (and
    (not (evaluate comp35))
    (evaluate comp36)
    (all-on comp35)
  )
)
(:action evaluate-comp35-off-comp34
  :parameters ()
  :precondition (and
    (evaluate comp35)
    (not (rebooted comp35))
    (not (running comp34))
  )
  :effect (and
    (not (evaluate comp35))
    (evaluate comp36)
    (one-off comp35)
  )
)
(:action evaluate-comp36-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (rebooted comp36)
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
  )
)
(:action evaluate-comp36-all-on
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (running comp35)
    (running comp600)
    (running comp889)
    (running comp891)
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (all-on comp36)
  )
)
(:action evaluate-comp36-off-comp35
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (not (running comp35))
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (one-off comp36)
  )
)
(:action evaluate-comp36-off-comp600
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (not (running comp600))
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (one-off comp36)
  )
)
(:action evaluate-comp36-off-comp889
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (not (running comp889))
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (one-off comp36)
  )
)
(:action evaluate-comp36-off-comp891
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (not (running comp891))
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (one-off comp36)
  )
)
(:action evaluate-comp37-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (rebooted comp37)
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
  )
)
(:action evaluate-comp37-all-on
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (not (rebooted comp37))
    (running comp36)
    (running comp1026)
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
    (all-on comp37)
  )
)
(:action evaluate-comp37-off-comp36
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (not (rebooted comp37))
    (not (running comp36))
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
    (one-off comp37)
  )
)
(:action evaluate-comp37-off-comp1026
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (not (rebooted comp37))
    (not (running comp1026))
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
    (one-off comp37)
  )
)
(:action evaluate-comp38-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (rebooted comp38)
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
  )
)
(:action evaluate-comp38-all-on
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (not (rebooted comp38))
    (running comp37)
    (running comp1410)
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
    (all-on comp38)
  )
)
(:action evaluate-comp38-off-comp37
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (not (rebooted comp38))
    (not (running comp37))
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
    (one-off comp38)
  )
)
(:action evaluate-comp38-off-comp1410
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (not (rebooted comp38))
    (not (running comp1410))
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
    (one-off comp38)
  )
)
(:action evaluate-comp39-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp39)
    (rebooted comp39)
  )
  :effect (and
    (not (evaluate comp39))
    (evaluate comp40)
  )
)
(:action evaluate-comp39-all-on
  :parameters ()
  :precondition (and
    (evaluate comp39)
    (not (rebooted comp39))
    (running comp38)
  )
  :effect (and
    (not (evaluate comp39))
    (evaluate comp40)
    (all-on comp39)
  )
)
(:action evaluate-comp39-off-comp38
  :parameters ()
  :precondition (and
    (evaluate comp39)
    (not (rebooted comp39))
    (not (running comp38))
  )
  :effect (and
    (not (evaluate comp39))
    (evaluate comp40)
    (one-off comp39)
  )
)
(:action evaluate-comp40-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp40)
    (rebooted comp40)
  )
  :effect (and
    (not (evaluate comp40))
    (evaluate comp41)
  )
)
(:action evaluate-comp40-all-on
  :parameters ()
  :precondition (and
    (evaluate comp40)
    (not (rebooted comp40))
    (running comp39)
  )
  :effect (and
    (not (evaluate comp40))
    (evaluate comp41)
    (all-on comp40)
  )
)
(:action evaluate-comp40-off-comp39
  :parameters ()
  :precondition (and
    (evaluate comp40)
    (not (rebooted comp40))
    (not (running comp39))
  )
  :effect (and
    (not (evaluate comp40))
    (evaluate comp41)
    (one-off comp40)
  )
)
(:action evaluate-comp41-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp41)
    (rebooted comp41)
  )
  :effect (and
    (not (evaluate comp41))
    (evaluate comp42)
  )
)
(:action evaluate-comp41-all-on
  :parameters ()
  :precondition (and
    (evaluate comp41)
    (not (rebooted comp41))
    (running comp40)
  )
  :effect (and
    (not (evaluate comp41))
    (evaluate comp42)
    (all-on comp41)
  )
)
(:action evaluate-comp41-off-comp40
  :parameters ()
  :precondition (and
    (evaluate comp41)
    (not (rebooted comp41))
    (not (running comp40))
  )
  :effect (and
    (not (evaluate comp41))
    (evaluate comp42)
    (one-off comp41)
  )
)
(:action evaluate-comp42-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (rebooted comp42)
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
  )
)
(:action evaluate-comp42-all-on
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (running comp41)
    (running comp832)
    (running comp842)
    (running comp1678)
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (all-on comp42)
  )
)
(:action evaluate-comp42-off-comp41
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (not (running comp41))
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (one-off comp42)
  )
)
(:action evaluate-comp42-off-comp832
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (not (running comp832))
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (one-off comp42)
  )
)
(:action evaluate-comp42-off-comp842
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (not (running comp842))
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (one-off comp42)
  )
)
(:action evaluate-comp42-off-comp1678
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (not (running comp1678))
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (one-off comp42)
  )
)
(:action evaluate-comp43-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (rebooted comp43)
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
  )
)
(:action evaluate-comp43-all-on
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (running comp42)
    (running comp128)
    (running comp1063)
    (running comp1424)
    (running comp1721)
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (all-on comp43)
  )
)
(:action evaluate-comp43-off-comp42
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp42))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp43-off-comp128
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp128))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp43-off-comp1063
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp1063))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp43-off-comp1424
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp1424))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp43-off-comp1721
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp1721))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp44-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (rebooted comp44)
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
  )
)
(:action evaluate-comp44-all-on
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (not (rebooted comp44))
    (running comp43)
    (running comp1724)
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
    (all-on comp44)
  )
)
(:action evaluate-comp44-off-comp43
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (not (rebooted comp44))
    (not (running comp43))
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
    (one-off comp44)
  )
)
(:action evaluate-comp44-off-comp1724
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (not (rebooted comp44))
    (not (running comp1724))
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
    (one-off comp44)
  )
)
(:action evaluate-comp45-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (rebooted comp45)
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
  )
)
(:action evaluate-comp45-all-on
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (not (rebooted comp45))
    (running comp44)
    (running comp271)
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
    (all-on comp45)
  )
)
(:action evaluate-comp45-off-comp44
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (not (rebooted comp45))
    (not (running comp44))
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
    (one-off comp45)
  )
)
(:action evaluate-comp45-off-comp271
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (not (rebooted comp45))
    (not (running comp271))
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
    (one-off comp45)
  )
)
(:action evaluate-comp46-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp46)
    (rebooted comp46)
  )
  :effect (and
    (not (evaluate comp46))
    (evaluate comp47)
  )
)
(:action evaluate-comp46-all-on
  :parameters ()
  :precondition (and
    (evaluate comp46)
    (not (rebooted comp46))
    (running comp45)
  )
  :effect (and
    (not (evaluate comp46))
    (evaluate comp47)
    (all-on comp46)
  )
)
(:action evaluate-comp46-off-comp45
  :parameters ()
  :precondition (and
    (evaluate comp46)
    (not (rebooted comp46))
    (not (running comp45))
  )
  :effect (and
    (not (evaluate comp46))
    (evaluate comp47)
    (one-off comp46)
  )
)
(:action evaluate-comp47-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (rebooted comp47)
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
  )
)
(:action evaluate-comp47-all-on
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (running comp46)
    (running comp1769)
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (all-on comp47)
  )
)
(:action evaluate-comp47-off-comp46
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (not (running comp46))
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (one-off comp47)
  )
)
(:action evaluate-comp47-off-comp1769
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (not (running comp1769))
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (one-off comp47)
  )
)
(:action evaluate-comp48-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (rebooted comp48)
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
  )
)
(:action evaluate-comp48-all-on
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (not (rebooted comp48))
    (running comp47)
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
    (all-on comp48)
  )
)
(:action evaluate-comp48-off-comp47
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (not (rebooted comp48))
    (not (running comp47))
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
    (one-off comp48)
  )
)
(:action evaluate-comp49-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp49)
    (rebooted comp49)
  )
  :effect (and
    (not (evaluate comp49))
    (evaluate comp50)
  )
)
(:action evaluate-comp49-all-on
  :parameters ()
  :precondition (and
    (evaluate comp49)
    (not (rebooted comp49))
    (running comp48)
  )
  :effect (and
    (not (evaluate comp49))
    (evaluate comp50)
    (all-on comp49)
  )
)
(:action evaluate-comp49-off-comp48
  :parameters ()
  :precondition (and
    (evaluate comp49)
    (not (rebooted comp49))
    (not (running comp48))
  )
  :effect (and
    (not (evaluate comp49))
    (evaluate comp50)
    (one-off comp49)
  )
)
(:action evaluate-comp50-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (rebooted comp50)
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
  )
)
(:action evaluate-comp50-all-on
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (not (rebooted comp50))
    (running comp49)
    (running comp1707)
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
    (all-on comp50)
  )
)
(:action evaluate-comp50-off-comp49
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (not (rebooted comp50))
    (not (running comp49))
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
    (one-off comp50)
  )
)
(:action evaluate-comp50-off-comp1707
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (not (rebooted comp50))
    (not (running comp1707))
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
    (one-off comp50)
  )
)
(:action evaluate-comp51-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (rebooted comp51)
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
  )
)
(:action evaluate-comp51-all-on
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (not (rebooted comp51))
    (running comp50)
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
    (all-on comp51)
  )
)
(:action evaluate-comp51-off-comp50
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (not (rebooted comp51))
    (not (running comp50))
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
    (one-off comp51)
  )
)
(:action evaluate-comp52-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp52)
    (rebooted comp52)
  )
  :effect (and
    (not (evaluate comp52))
    (evaluate comp53)
  )
)
(:action evaluate-comp52-all-on
  :parameters ()
  :precondition (and
    (evaluate comp52)
    (not (rebooted comp52))
    (running comp51)
  )
  :effect (and
    (not (evaluate comp52))
    (evaluate comp53)
    (all-on comp52)
  )
)
(:action evaluate-comp52-off-comp51
  :parameters ()
  :precondition (and
    (evaluate comp52)
    (not (rebooted comp52))
    (not (running comp51))
  )
  :effect (and
    (not (evaluate comp52))
    (evaluate comp53)
    (one-off comp52)
  )
)
(:action evaluate-comp53-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (rebooted comp53)
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
  )
)
(:action evaluate-comp53-all-on
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (not (rebooted comp53))
    (running comp52)
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
    (all-on comp53)
  )
)
(:action evaluate-comp53-off-comp52
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (not (rebooted comp53))
    (not (running comp52))
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
    (one-off comp53)
  )
)
(:action evaluate-comp54-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (rebooted comp54)
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
  )
)
(:action evaluate-comp54-all-on
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (not (rebooted comp54))
    (running comp53)
    (running comp986)
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
    (all-on comp54)
  )
)
(:action evaluate-comp54-off-comp53
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (not (rebooted comp54))
    (not (running comp53))
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
    (one-off comp54)
  )
)
(:action evaluate-comp54-off-comp986
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (not (rebooted comp54))
    (not (running comp986))
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
    (one-off comp54)
  )
)
(:action evaluate-comp55-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (rebooted comp55)
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
  )
)
(:action evaluate-comp55-all-on
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (running comp54)
    (running comp534)
    (running comp1042)
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (all-on comp55)
  )
)
(:action evaluate-comp55-off-comp54
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (not (running comp54))
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (one-off comp55)
  )
)
(:action evaluate-comp55-off-comp534
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (not (running comp534))
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (one-off comp55)
  )
)
(:action evaluate-comp55-off-comp1042
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (not (running comp1042))
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (one-off comp55)
  )
)
(:action evaluate-comp56-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (rebooted comp56)
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
  )
)
(:action evaluate-comp56-all-on
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (running comp55)
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (all-on comp56)
  )
)
(:action evaluate-comp56-off-comp55
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (not (running comp55))
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (one-off comp56)
  )
)
(:action evaluate-comp57-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (rebooted comp57)
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
  )
)
(:action evaluate-comp57-all-on
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (not (rebooted comp57))
    (running comp56)
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
    (all-on comp57)
  )
)
(:action evaluate-comp57-off-comp56
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (not (rebooted comp57))
    (not (running comp56))
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
    (one-off comp57)
  )
)
(:action evaluate-comp58-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (rebooted comp58)
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
  )
)
(:action evaluate-comp58-all-on
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (not (rebooted comp58))
    (running comp44)
    (running comp57)
    (running comp1083)
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
    (all-on comp58)
  )
)
(:action evaluate-comp58-off-comp44
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (not (rebooted comp58))
    (not (running comp44))
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
    (one-off comp58)
  )
)
(:action evaluate-comp58-off-comp57
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (not (rebooted comp58))
    (not (running comp57))
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
    (one-off comp58)
  )
)
(:action evaluate-comp58-off-comp1083
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (not (rebooted comp58))
    (not (running comp1083))
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
    (one-off comp58)
  )
)
(:action evaluate-comp59-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (rebooted comp59)
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
  )
)
(:action evaluate-comp59-all-on
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (not (rebooted comp59))
    (running comp58)
    (running comp1662)
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
    (all-on comp59)
  )
)
(:action evaluate-comp59-off-comp58
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (not (rebooted comp59))
    (not (running comp58))
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
    (one-off comp59)
  )
)
(:action evaluate-comp59-off-comp1662
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (not (rebooted comp59))
    (not (running comp1662))
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
    (one-off comp59)
  )
)
(:action evaluate-comp60-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (rebooted comp60)
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
  )
)
(:action evaluate-comp60-all-on
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (not (rebooted comp60))
    (running comp59)
    (running comp92)
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
    (all-on comp60)
  )
)
(:action evaluate-comp60-off-comp59
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (not (rebooted comp60))
    (not (running comp59))
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
    (one-off comp60)
  )
)
(:action evaluate-comp60-off-comp92
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (not (rebooted comp60))
    (not (running comp92))
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
    (one-off comp60)
  )
)
(:action evaluate-comp61-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (rebooted comp61)
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
  )
)
(:action evaluate-comp61-all-on
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (not (rebooted comp61))
    (running comp60)
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
    (all-on comp61)
  )
)
(:action evaluate-comp61-off-comp60
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (not (rebooted comp61))
    (not (running comp60))
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
    (one-off comp61)
  )
)
(:action evaluate-comp62-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (rebooted comp62)
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
  )
)
(:action evaluate-comp62-all-on
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (running comp61)
    (running comp1255)
    (running comp1581)
    (running comp1855)
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (all-on comp62)
  )
)
(:action evaluate-comp62-off-comp61
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp61))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp62-off-comp1255
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp1255))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp62-off-comp1581
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp1581))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp62-off-comp1855
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp1855))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp63-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (rebooted comp63)
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
  )
)
(:action evaluate-comp63-all-on
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (not (rebooted comp63))
    (running comp62)
    (running comp644)
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
    (all-on comp63)
  )
)
(:action evaluate-comp63-off-comp62
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (not (rebooted comp63))
    (not (running comp62))
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
    (one-off comp63)
  )
)
(:action evaluate-comp63-off-comp644
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (not (rebooted comp63))
    (not (running comp644))
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
    (one-off comp63)
  )
)
(:action evaluate-comp64-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (rebooted comp64)
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
  )
)
(:action evaluate-comp64-all-on
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (not (rebooted comp64))
    (running comp63)
    (running comp983)
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
    (all-on comp64)
  )
)
(:action evaluate-comp64-off-comp63
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (not (rebooted comp64))
    (not (running comp63))
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
    (one-off comp64)
  )
)
(:action evaluate-comp64-off-comp983
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (not (rebooted comp64))
    (not (running comp983))
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
    (one-off comp64)
  )
)
(:action evaluate-comp65-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (rebooted comp65)
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
  )
)
(:action evaluate-comp65-all-on
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (not (rebooted comp65))
    (running comp64)
    (running comp506)
    (running comp1302)
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
    (all-on comp65)
  )
)
(:action evaluate-comp65-off-comp64
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (not (rebooted comp65))
    (not (running comp64))
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
    (one-off comp65)
  )
)
(:action evaluate-comp65-off-comp506
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (not (rebooted comp65))
    (not (running comp506))
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
    (one-off comp65)
  )
)
(:action evaluate-comp65-off-comp1302
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (not (rebooted comp65))
    (not (running comp1302))
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
    (one-off comp65)
  )
)
(:action evaluate-comp66-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (rebooted comp66)
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
  )
)
(:action evaluate-comp66-all-on
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (running comp65)
    (running comp261)
    (running comp1649)
    (running comp1844)
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (all-on comp66)
  )
)
(:action evaluate-comp66-off-comp65
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (not (running comp65))
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (one-off comp66)
  )
)
(:action evaluate-comp66-off-comp261
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (not (running comp261))
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (one-off comp66)
  )
)
(:action evaluate-comp66-off-comp1649
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (not (running comp1649))
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (one-off comp66)
  )
)
(:action evaluate-comp66-off-comp1844
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (not (running comp1844))
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (one-off comp66)
  )
)
(:action evaluate-comp67-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (rebooted comp67)
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
  )
)
(:action evaluate-comp67-all-on
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (not (rebooted comp67))
    (running comp66)
    (running comp1321)
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
    (all-on comp67)
  )
)
(:action evaluate-comp67-off-comp66
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (not (rebooted comp67))
    (not (running comp66))
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
    (one-off comp67)
  )
)
(:action evaluate-comp67-off-comp1321
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (not (rebooted comp67))
    (not (running comp1321))
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
    (one-off comp67)
  )
)
(:action evaluate-comp68-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (rebooted comp68)
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
  )
)
(:action evaluate-comp68-all-on
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (running comp67)
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (all-on comp68)
  )
)
(:action evaluate-comp68-off-comp67
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (not (running comp67))
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (one-off comp68)
  )
)
(:action evaluate-comp69-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (rebooted comp69)
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
  )
)
(:action evaluate-comp69-all-on
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (not (rebooted comp69))
    (running comp68)
    (running comp583)
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
    (all-on comp69)
  )
)
(:action evaluate-comp69-off-comp68
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (not (rebooted comp69))
    (not (running comp68))
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
    (one-off comp69)
  )
)
(:action evaluate-comp69-off-comp583
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (not (rebooted comp69))
    (not (running comp583))
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
    (one-off comp69)
  )
)
(:action evaluate-comp70-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp70)
    (rebooted comp70)
  )
  :effect (and
    (not (evaluate comp70))
    (evaluate comp71)
  )
)
(:action evaluate-comp70-all-on
  :parameters ()
  :precondition (and
    (evaluate comp70)
    (not (rebooted comp70))
    (running comp69)
  )
  :effect (and
    (not (evaluate comp70))
    (evaluate comp71)
    (all-on comp70)
  )
)
(:action evaluate-comp70-off-comp69
  :parameters ()
  :precondition (and
    (evaluate comp70)
    (not (rebooted comp70))
    (not (running comp69))
  )
  :effect (and
    (not (evaluate comp70))
    (evaluate comp71)
    (one-off comp70)
  )
)
(:action evaluate-comp71-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (rebooted comp71)
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
  )
)
(:action evaluate-comp71-all-on
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (not (rebooted comp71))
    (running comp70)
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
    (all-on comp71)
  )
)
(:action evaluate-comp71-off-comp70
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (not (rebooted comp71))
    (not (running comp70))
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
    (one-off comp71)
  )
)
(:action evaluate-comp72-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (rebooted comp72)
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
  )
)
(:action evaluate-comp72-all-on
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (not (rebooted comp72))
    (running comp71)
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
    (all-on comp72)
  )
)
(:action evaluate-comp72-off-comp71
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (not (rebooted comp72))
    (not (running comp71))
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
    (one-off comp72)
  )
)
(:action evaluate-comp73-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (rebooted comp73)
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
  )
)
(:action evaluate-comp73-all-on
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (not (rebooted comp73))
    (running comp72)
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
    (all-on comp73)
  )
)
(:action evaluate-comp73-off-comp72
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (not (rebooted comp73))
    (not (running comp72))
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
    (one-off comp73)
  )
)
(:action evaluate-comp74-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (rebooted comp74)
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
  )
)
(:action evaluate-comp74-all-on
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (not (rebooted comp74))
    (running comp73)
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
    (all-on comp74)
  )
)
(:action evaluate-comp74-off-comp73
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (not (rebooted comp74))
    (not (running comp73))
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
    (one-off comp74)
  )
)
(:action evaluate-comp75-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp75)
    (rebooted comp75)
  )
  :effect (and
    (not (evaluate comp75))
    (evaluate comp76)
  )
)
(:action evaluate-comp75-all-on
  :parameters ()
  :precondition (and
    (evaluate comp75)
    (not (rebooted comp75))
    (running comp74)
  )
  :effect (and
    (not (evaluate comp75))
    (evaluate comp76)
    (all-on comp75)
  )
)
(:action evaluate-comp75-off-comp74
  :parameters ()
  :precondition (and
    (evaluate comp75)
    (not (rebooted comp75))
    (not (running comp74))
  )
  :effect (and
    (not (evaluate comp75))
    (evaluate comp76)
    (one-off comp75)
  )
)
(:action evaluate-comp76-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (rebooted comp76)
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
  )
)
(:action evaluate-comp76-all-on
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (not (rebooted comp76))
    (running comp75)
    (running comp1476)
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
    (all-on comp76)
  )
)
(:action evaluate-comp76-off-comp75
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (not (rebooted comp76))
    (not (running comp75))
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
    (one-off comp76)
  )
)
(:action evaluate-comp76-off-comp1476
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (not (rebooted comp76))
    (not (running comp1476))
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
    (one-off comp76)
  )
)
(:action evaluate-comp77-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (rebooted comp77)
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
  )
)
(:action evaluate-comp77-all-on
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (not (rebooted comp77))
    (running comp76)
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
    (all-on comp77)
  )
)
(:action evaluate-comp77-off-comp76
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (not (rebooted comp77))
    (not (running comp76))
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
    (one-off comp77)
  )
)
(:action evaluate-comp78-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (rebooted comp78)
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
  )
)
(:action evaluate-comp78-all-on
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (not (rebooted comp78))
    (running comp77)
    (running comp231)
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
    (all-on comp78)
  )
)
(:action evaluate-comp78-off-comp77
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (not (rebooted comp78))
    (not (running comp77))
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
    (one-off comp78)
  )
)
(:action evaluate-comp78-off-comp231
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (not (rebooted comp78))
    (not (running comp231))
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
    (one-off comp78)
  )
)
(:action evaluate-comp79-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (rebooted comp79)
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
  )
)
(:action evaluate-comp79-all-on
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (not (rebooted comp79))
    (running comp78)
    (running comp1671)
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
    (all-on comp79)
  )
)
(:action evaluate-comp79-off-comp78
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (not (rebooted comp79))
    (not (running comp78))
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
    (one-off comp79)
  )
)
(:action evaluate-comp79-off-comp1671
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (not (rebooted comp79))
    (not (running comp1671))
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
    (one-off comp79)
  )
)
(:action evaluate-comp80-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (rebooted comp80)
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
  )
)
(:action evaluate-comp80-all-on
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (not (rebooted comp80))
    (running comp79)
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
    (all-on comp80)
  )
)
(:action evaluate-comp80-off-comp79
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (not (rebooted comp80))
    (not (running comp79))
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
    (one-off comp80)
  )
)
(:action evaluate-comp81-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (rebooted comp81)
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
  )
)
(:action evaluate-comp81-all-on
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (not (rebooted comp81))
    (running comp80)
    (running comp361)
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
    (all-on comp81)
  )
)
(:action evaluate-comp81-off-comp80
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (not (rebooted comp81))
    (not (running comp80))
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
    (one-off comp81)
  )
)
(:action evaluate-comp81-off-comp361
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (not (rebooted comp81))
    (not (running comp361))
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
    (one-off comp81)
  )
)
(:action evaluate-comp82-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (rebooted comp82)
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
  )
)
(:action evaluate-comp82-all-on
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (not (rebooted comp82))
    (running comp81)
    (running comp845)
    (running comp1787)
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
    (all-on comp82)
  )
)
(:action evaluate-comp82-off-comp81
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (not (rebooted comp82))
    (not (running comp81))
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
    (one-off comp82)
  )
)
(:action evaluate-comp82-off-comp845
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (not (rebooted comp82))
    (not (running comp845))
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
    (one-off comp82)
  )
)
(:action evaluate-comp82-off-comp1787
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (not (rebooted comp82))
    (not (running comp1787))
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
    (one-off comp82)
  )
)
(:action evaluate-comp83-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (rebooted comp83)
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
  )
)
(:action evaluate-comp83-all-on
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (not (rebooted comp83))
    (running comp82)
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
    (all-on comp83)
  )
)
(:action evaluate-comp83-off-comp82
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (not (rebooted comp83))
    (not (running comp82))
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
    (one-off comp83)
  )
)
(:action evaluate-comp84-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp84)
    (rebooted comp84)
  )
  :effect (and
    (not (evaluate comp84))
    (evaluate comp85)
  )
)
(:action evaluate-comp84-all-on
  :parameters ()
  :precondition (and
    (evaluate comp84)
    (not (rebooted comp84))
    (running comp83)
  )
  :effect (and
    (not (evaluate comp84))
    (evaluate comp85)
    (all-on comp84)
  )
)
(:action evaluate-comp84-off-comp83
  :parameters ()
  :precondition (and
    (evaluate comp84)
    (not (rebooted comp84))
    (not (running comp83))
  )
  :effect (and
    (not (evaluate comp84))
    (evaluate comp85)
    (one-off comp84)
  )
)
(:action evaluate-comp85-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp85)
    (rebooted comp85)
  )
  :effect (and
    (not (evaluate comp85))
    (evaluate comp86)
  )
)
(:action evaluate-comp85-all-on
  :parameters ()
  :precondition (and
    (evaluate comp85)
    (not (rebooted comp85))
    (running comp84)
  )
  :effect (and
    (not (evaluate comp85))
    (evaluate comp86)
    (all-on comp85)
  )
)
(:action evaluate-comp85-off-comp84
  :parameters ()
  :precondition (and
    (evaluate comp85)
    (not (rebooted comp85))
    (not (running comp84))
  )
  :effect (and
    (not (evaluate comp85))
    (evaluate comp86)
    (one-off comp85)
  )
)
(:action evaluate-comp86-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (rebooted comp86)
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
  )
)
(:action evaluate-comp86-all-on
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (not (rebooted comp86))
    (running comp85)
    (running comp842)
    (running comp1170)
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
    (all-on comp86)
  )
)
(:action evaluate-comp86-off-comp85
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (not (rebooted comp86))
    (not (running comp85))
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
    (one-off comp86)
  )
)
(:action evaluate-comp86-off-comp842
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (not (rebooted comp86))
    (not (running comp842))
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
    (one-off comp86)
  )
)
(:action evaluate-comp86-off-comp1170
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (not (rebooted comp86))
    (not (running comp1170))
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
    (one-off comp86)
  )
)
(:action evaluate-comp87-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (rebooted comp87)
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
  )
)
(:action evaluate-comp87-all-on
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (not (rebooted comp87))
    (running comp86)
    (running comp1899)
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
    (all-on comp87)
  )
)
(:action evaluate-comp87-off-comp86
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (not (rebooted comp87))
    (not (running comp86))
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
    (one-off comp87)
  )
)
(:action evaluate-comp87-off-comp1899
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (not (rebooted comp87))
    (not (running comp1899))
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
    (one-off comp87)
  )
)
(:action evaluate-comp88-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (rebooted comp88)
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
  )
)
(:action evaluate-comp88-all-on
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (not (rebooted comp88))
    (running comp87)
    (running comp1748)
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
    (all-on comp88)
  )
)
(:action evaluate-comp88-off-comp87
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (not (rebooted comp88))
    (not (running comp87))
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
    (one-off comp88)
  )
)
(:action evaluate-comp88-off-comp1748
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (not (rebooted comp88))
    (not (running comp1748))
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
    (one-off comp88)
  )
)
(:action evaluate-comp89-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp89)
    (rebooted comp89)
  )
  :effect (and
    (not (evaluate comp89))
    (evaluate comp90)
  )
)
(:action evaluate-comp89-all-on
  :parameters ()
  :precondition (and
    (evaluate comp89)
    (not (rebooted comp89))
    (running comp88)
  )
  :effect (and
    (not (evaluate comp89))
    (evaluate comp90)
    (all-on comp89)
  )
)
(:action evaluate-comp89-off-comp88
  :parameters ()
  :precondition (and
    (evaluate comp89)
    (not (rebooted comp89))
    (not (running comp88))
  )
  :effect (and
    (not (evaluate comp89))
    (evaluate comp90)
    (one-off comp89)
  )
)
(:action evaluate-comp90-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp90)
    (rebooted comp90)
  )
  :effect (and
    (not (evaluate comp90))
    (evaluate comp91)
  )
)
(:action evaluate-comp90-all-on
  :parameters ()
  :precondition (and
    (evaluate comp90)
    (not (rebooted comp90))
    (running comp89)
  )
  :effect (and
    (not (evaluate comp90))
    (evaluate comp91)
    (all-on comp90)
  )
)
(:action evaluate-comp90-off-comp89
  :parameters ()
  :precondition (and
    (evaluate comp90)
    (not (rebooted comp90))
    (not (running comp89))
  )
  :effect (and
    (not (evaluate comp90))
    (evaluate comp91)
    (one-off comp90)
  )
)
(:action evaluate-comp91-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp91)
    (rebooted comp91)
  )
  :effect (and
    (not (evaluate comp91))
    (evaluate comp92)
  )
)
(:action evaluate-comp91-all-on
  :parameters ()
  :precondition (and
    (evaluate comp91)
    (not (rebooted comp91))
    (running comp90)
  )
  :effect (and
    (not (evaluate comp91))
    (evaluate comp92)
    (all-on comp91)
  )
)
(:action evaluate-comp91-off-comp90
  :parameters ()
  :precondition (and
    (evaluate comp91)
    (not (rebooted comp91))
    (not (running comp90))
  )
  :effect (and
    (not (evaluate comp91))
    (evaluate comp92)
    (one-off comp91)
  )
)
(:action evaluate-comp92-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (rebooted comp92)
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
  )
)
(:action evaluate-comp92-all-on
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (not (rebooted comp92))
    (running comp91)
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
    (all-on comp92)
  )
)
(:action evaluate-comp92-off-comp91
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (not (rebooted comp92))
    (not (running comp91))
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
    (one-off comp92)
  )
)
(:action evaluate-comp93-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp93)
    (rebooted comp93)
  )
  :effect (and
    (not (evaluate comp93))
    (evaluate comp94)
  )
)
(:action evaluate-comp93-all-on
  :parameters ()
  :precondition (and
    (evaluate comp93)
    (not (rebooted comp93))
    (running comp92)
  )
  :effect (and
    (not (evaluate comp93))
    (evaluate comp94)
    (all-on comp93)
  )
)
(:action evaluate-comp93-off-comp92
  :parameters ()
  :precondition (and
    (evaluate comp93)
    (not (rebooted comp93))
    (not (running comp92))
  )
  :effect (and
    (not (evaluate comp93))
    (evaluate comp94)
    (one-off comp93)
  )
)
(:action evaluate-comp94-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (rebooted comp94)
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
  )
)
(:action evaluate-comp94-all-on
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (not (rebooted comp94))
    (running comp93)
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
    (all-on comp94)
  )
)
(:action evaluate-comp94-off-comp93
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (not (rebooted comp94))
    (not (running comp93))
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
    (one-off comp94)
  )
)
(:action evaluate-comp95-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp95)
    (rebooted comp95)
  )
  :effect (and
    (not (evaluate comp95))
    (evaluate comp96)
  )
)
(:action evaluate-comp95-all-on
  :parameters ()
  :precondition (and
    (evaluate comp95)
    (not (rebooted comp95))
    (running comp94)
  )
  :effect (and
    (not (evaluate comp95))
    (evaluate comp96)
    (all-on comp95)
  )
)
(:action evaluate-comp95-off-comp94
  :parameters ()
  :precondition (and
    (evaluate comp95)
    (not (rebooted comp95))
    (not (running comp94))
  )
  :effect (and
    (not (evaluate comp95))
    (evaluate comp96)
    (one-off comp95)
  )
)
(:action evaluate-comp96-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (rebooted comp96)
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
  )
)
(:action evaluate-comp96-all-on
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (running comp95)
    (running comp1830)
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (all-on comp96)
  )
)
(:action evaluate-comp96-off-comp95
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (not (running comp95))
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (one-off comp96)
  )
)
(:action evaluate-comp96-off-comp1830
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (not (running comp1830))
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (one-off comp96)
  )
)
(:action evaluate-comp97-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (rebooted comp97)
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
  )
)
(:action evaluate-comp97-all-on
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (not (rebooted comp97))
    (running comp96)
    (running comp1856)
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
    (all-on comp97)
  )
)
(:action evaluate-comp97-off-comp96
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (not (rebooted comp97))
    (not (running comp96))
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
    (one-off comp97)
  )
)
(:action evaluate-comp97-off-comp1856
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (not (rebooted comp97))
    (not (running comp1856))
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
    (one-off comp97)
  )
)
(:action evaluate-comp98-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp98)
    (rebooted comp98)
  )
  :effect (and
    (not (evaluate comp98))
    (evaluate comp99)
  )
)
(:action evaluate-comp98-all-on
  :parameters ()
  :precondition (and
    (evaluate comp98)
    (not (rebooted comp98))
    (running comp97)
  )
  :effect (and
    (not (evaluate comp98))
    (evaluate comp99)
    (all-on comp98)
  )
)
(:action evaluate-comp98-off-comp97
  :parameters ()
  :precondition (and
    (evaluate comp98)
    (not (rebooted comp98))
    (not (running comp97))
  )
  :effect (and
    (not (evaluate comp98))
    (evaluate comp99)
    (one-off comp98)
  )
)
(:action evaluate-comp99-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (rebooted comp99)
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
  )
)
(:action evaluate-comp99-all-on
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (not (rebooted comp99))
    (running comp98)
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
    (all-on comp99)
  )
)
(:action evaluate-comp99-off-comp98
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (not (rebooted comp99))
    (not (running comp98))
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
    (one-off comp99)
  )
)
(:action evaluate-comp100-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (rebooted comp100)
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
  )
)
(:action evaluate-comp100-all-on
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (not (rebooted comp100))
    (running comp99)
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
    (all-on comp100)
  )
)
(:action evaluate-comp100-off-comp99
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (not (rebooted comp100))
    (not (running comp99))
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
    (one-off comp100)
  )
)
(:action evaluate-comp101-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (rebooted comp101)
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
  )
)
(:action evaluate-comp101-all-on
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (not (rebooted comp101))
    (running comp100)
    (running comp996)
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
    (all-on comp101)
  )
)
(:action evaluate-comp101-off-comp100
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (not (rebooted comp101))
    (not (running comp100))
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
    (one-off comp101)
  )
)
(:action evaluate-comp101-off-comp996
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (not (rebooted comp101))
    (not (running comp996))
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
    (one-off comp101)
  )
)
(:action evaluate-comp102-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (rebooted comp102)
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
  )
)
(:action evaluate-comp102-all-on
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (not (rebooted comp102))
    (running comp101)
    (running comp118)
    (running comp1239)
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
    (all-on comp102)
  )
)
(:action evaluate-comp102-off-comp101
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (not (rebooted comp102))
    (not (running comp101))
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
    (one-off comp102)
  )
)
(:action evaluate-comp102-off-comp118
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (not (rebooted comp102))
    (not (running comp118))
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
    (one-off comp102)
  )
)
(:action evaluate-comp102-off-comp1239
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (not (rebooted comp102))
    (not (running comp1239))
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
    (one-off comp102)
  )
)
(:action evaluate-comp103-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp103)
    (rebooted comp103)
  )
  :effect (and
    (not (evaluate comp103))
    (evaluate comp104)
  )
)
(:action evaluate-comp103-all-on
  :parameters ()
  :precondition (and
    (evaluate comp103)
    (not (rebooted comp103))
    (running comp102)
  )
  :effect (and
    (not (evaluate comp103))
    (evaluate comp104)
    (all-on comp103)
  )
)
(:action evaluate-comp103-off-comp102
  :parameters ()
  :precondition (and
    (evaluate comp103)
    (not (rebooted comp103))
    (not (running comp102))
  )
  :effect (and
    (not (evaluate comp103))
    (evaluate comp104)
    (one-off comp103)
  )
)
(:action evaluate-comp104-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (rebooted comp104)
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
  )
)
(:action evaluate-comp104-all-on
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (not (rebooted comp104))
    (running comp103)
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
    (all-on comp104)
  )
)
(:action evaluate-comp104-off-comp103
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (not (rebooted comp104))
    (not (running comp103))
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
    (one-off comp104)
  )
)
(:action evaluate-comp105-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (rebooted comp105)
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
  )
)
(:action evaluate-comp105-all-on
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (not (rebooted comp105))
    (running comp104)
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
    (all-on comp105)
  )
)
(:action evaluate-comp105-off-comp104
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (not (rebooted comp105))
    (not (running comp104))
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
    (one-off comp105)
  )
)
(:action evaluate-comp106-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp106)
    (rebooted comp106)
  )
  :effect (and
    (not (evaluate comp106))
    (evaluate comp107)
  )
)
(:action evaluate-comp106-all-on
  :parameters ()
  :precondition (and
    (evaluate comp106)
    (not (rebooted comp106))
    (running comp105)
  )
  :effect (and
    (not (evaluate comp106))
    (evaluate comp107)
    (all-on comp106)
  )
)
(:action evaluate-comp106-off-comp105
  :parameters ()
  :precondition (and
    (evaluate comp106)
    (not (rebooted comp106))
    (not (running comp105))
  )
  :effect (and
    (not (evaluate comp106))
    (evaluate comp107)
    (one-off comp106)
  )
)
(:action evaluate-comp107-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (rebooted comp107)
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
  )
)
(:action evaluate-comp107-all-on
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (not (rebooted comp107))
    (running comp106)
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
    (all-on comp107)
  )
)
(:action evaluate-comp107-off-comp106
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (not (rebooted comp107))
    (not (running comp106))
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
    (one-off comp107)
  )
)
(:action evaluate-comp108-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp108)
    (rebooted comp108)
  )
  :effect (and
    (not (evaluate comp108))
    (evaluate comp109)
  )
)
(:action evaluate-comp108-all-on
  :parameters ()
  :precondition (and
    (evaluate comp108)
    (not (rebooted comp108))
    (running comp107)
  )
  :effect (and
    (not (evaluate comp108))
    (evaluate comp109)
    (all-on comp108)
  )
)
(:action evaluate-comp108-off-comp107
  :parameters ()
  :precondition (and
    (evaluate comp108)
    (not (rebooted comp108))
    (not (running comp107))
  )
  :effect (and
    (not (evaluate comp108))
    (evaluate comp109)
    (one-off comp108)
  )
)
(:action evaluate-comp109-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (rebooted comp109)
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
  )
)
(:action evaluate-comp109-all-on
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (not (rebooted comp109))
    (running comp108)
    (running comp1673)
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
    (all-on comp109)
  )
)
(:action evaluate-comp109-off-comp108
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (not (rebooted comp109))
    (not (running comp108))
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
    (one-off comp109)
  )
)
(:action evaluate-comp109-off-comp1673
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (not (rebooted comp109))
    (not (running comp1673))
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
    (one-off comp109)
  )
)
(:action evaluate-comp110-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (rebooted comp110)
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
  )
)
(:action evaluate-comp110-all-on
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (not (rebooted comp110))
    (running comp109)
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
    (all-on comp110)
  )
)
(:action evaluate-comp110-off-comp109
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (not (rebooted comp110))
    (not (running comp109))
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
    (one-off comp110)
  )
)
(:action evaluate-comp111-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp111)
    (rebooted comp111)
  )
  :effect (and
    (not (evaluate comp111))
    (evaluate comp112)
  )
)
(:action evaluate-comp111-all-on
  :parameters ()
  :precondition (and
    (evaluate comp111)
    (not (rebooted comp111))
    (running comp110)
  )
  :effect (and
    (not (evaluate comp111))
    (evaluate comp112)
    (all-on comp111)
  )
)
(:action evaluate-comp111-off-comp110
  :parameters ()
  :precondition (and
    (evaluate comp111)
    (not (rebooted comp111))
    (not (running comp110))
  )
  :effect (and
    (not (evaluate comp111))
    (evaluate comp112)
    (one-off comp111)
  )
)
(:action evaluate-comp112-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (rebooted comp112)
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
  )
)
(:action evaluate-comp112-all-on
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (running comp111)
    (running comp1734)
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (all-on comp112)
  )
)
(:action evaluate-comp112-off-comp111
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (not (running comp111))
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (one-off comp112)
  )
)
(:action evaluate-comp112-off-comp1734
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (not (running comp1734))
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (one-off comp112)
  )
)
(:action evaluate-comp113-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (rebooted comp113)
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
  )
)
(:action evaluate-comp113-all-on
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (not (rebooted comp113))
    (running comp112)
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
    (all-on comp113)
  )
)
(:action evaluate-comp113-off-comp112
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (not (rebooted comp113))
    (not (running comp112))
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
    (one-off comp113)
  )
)
(:action evaluate-comp114-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (rebooted comp114)
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
  )
)
(:action evaluate-comp114-all-on
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (not (rebooted comp114))
    (running comp113)
    (running comp202)
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
    (all-on comp114)
  )
)
(:action evaluate-comp114-off-comp113
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (not (rebooted comp114))
    (not (running comp113))
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
    (one-off comp114)
  )
)
(:action evaluate-comp114-off-comp202
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (not (rebooted comp114))
    (not (running comp202))
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
    (one-off comp114)
  )
)
(:action evaluate-comp115-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp115)
    (rebooted comp115)
  )
  :effect (and
    (not (evaluate comp115))
    (evaluate comp116)
  )
)
(:action evaluate-comp115-all-on
  :parameters ()
  :precondition (and
    (evaluate comp115)
    (not (rebooted comp115))
    (running comp114)
  )
  :effect (and
    (not (evaluate comp115))
    (evaluate comp116)
    (all-on comp115)
  )
)
(:action evaluate-comp115-off-comp114
  :parameters ()
  :precondition (and
    (evaluate comp115)
    (not (rebooted comp115))
    (not (running comp114))
  )
  :effect (and
    (not (evaluate comp115))
    (evaluate comp116)
    (one-off comp115)
  )
)
(:action evaluate-comp116-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp116)
    (rebooted comp116)
  )
  :effect (and
    (not (evaluate comp116))
    (evaluate comp117)
  )
)
(:action evaluate-comp116-all-on
  :parameters ()
  :precondition (and
    (evaluate comp116)
    (not (rebooted comp116))
    (running comp115)
  )
  :effect (and
    (not (evaluate comp116))
    (evaluate comp117)
    (all-on comp116)
  )
)
(:action evaluate-comp116-off-comp115
  :parameters ()
  :precondition (and
    (evaluate comp116)
    (not (rebooted comp116))
    (not (running comp115))
  )
  :effect (and
    (not (evaluate comp116))
    (evaluate comp117)
    (one-off comp116)
  )
)
(:action evaluate-comp117-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (rebooted comp117)
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
  )
)
(:action evaluate-comp117-all-on
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (not (rebooted comp117))
    (running comp116)
    (running comp139)
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
    (all-on comp117)
  )
)
(:action evaluate-comp117-off-comp116
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (not (rebooted comp117))
    (not (running comp116))
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
    (one-off comp117)
  )
)
(:action evaluate-comp117-off-comp139
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (not (rebooted comp117))
    (not (running comp139))
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
    (one-off comp117)
  )
)
(:action evaluate-comp118-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (rebooted comp118)
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
  )
)
(:action evaluate-comp118-all-on
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (not (rebooted comp118))
    (running comp117)
    (running comp1827)
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
    (all-on comp118)
  )
)
(:action evaluate-comp118-off-comp117
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (not (rebooted comp118))
    (not (running comp117))
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
    (one-off comp118)
  )
)
(:action evaluate-comp118-off-comp1827
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (not (rebooted comp118))
    (not (running comp1827))
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
    (one-off comp118)
  )
)
(:action evaluate-comp119-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (rebooted comp119)
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
  )
)
(:action evaluate-comp119-all-on
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (not (rebooted comp119))
    (running comp118)
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
    (all-on comp119)
  )
)
(:action evaluate-comp119-off-comp118
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (not (rebooted comp119))
    (not (running comp118))
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
    (one-off comp119)
  )
)
(:action evaluate-comp120-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (rebooted comp120)
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
  )
)
(:action evaluate-comp120-all-on
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (not (rebooted comp120))
    (running comp119)
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
    (all-on comp120)
  )
)
(:action evaluate-comp120-off-comp119
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (not (rebooted comp120))
    (not (running comp119))
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
    (one-off comp120)
  )
)
(:action evaluate-comp121-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (rebooted comp121)
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
  )
)
(:action evaluate-comp121-all-on
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (not (rebooted comp121))
    (running comp120)
    (running comp540)
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
    (all-on comp121)
  )
)
(:action evaluate-comp121-off-comp120
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (not (rebooted comp121))
    (not (running comp120))
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
    (one-off comp121)
  )
)
(:action evaluate-comp121-off-comp540
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (not (rebooted comp121))
    (not (running comp540))
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
    (one-off comp121)
  )
)
(:action evaluate-comp122-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp122)
    (rebooted comp122)
  )
  :effect (and
    (not (evaluate comp122))
    (evaluate comp123)
  )
)
(:action evaluate-comp122-all-on
  :parameters ()
  :precondition (and
    (evaluate comp122)
    (not (rebooted comp122))
    (running comp121)
  )
  :effect (and
    (not (evaluate comp122))
    (evaluate comp123)
    (all-on comp122)
  )
)
(:action evaluate-comp122-off-comp121
  :parameters ()
  :precondition (and
    (evaluate comp122)
    (not (rebooted comp122))
    (not (running comp121))
  )
  :effect (and
    (not (evaluate comp122))
    (evaluate comp123)
    (one-off comp122)
  )
)
(:action evaluate-comp123-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (rebooted comp123)
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
  )
)
(:action evaluate-comp123-all-on
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (not (rebooted comp123))
    (running comp122)
    (running comp860)
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
    (all-on comp123)
  )
)
(:action evaluate-comp123-off-comp122
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (not (rebooted comp123))
    (not (running comp122))
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
    (one-off comp123)
  )
)
(:action evaluate-comp123-off-comp860
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (not (rebooted comp123))
    (not (running comp860))
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
    (one-off comp123)
  )
)
(:action evaluate-comp124-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp124)
    (rebooted comp124)
  )
  :effect (and
    (not (evaluate comp124))
    (evaluate comp125)
  )
)
(:action evaluate-comp124-all-on
  :parameters ()
  :precondition (and
    (evaluate comp124)
    (not (rebooted comp124))
    (running comp123)
  )
  :effect (and
    (not (evaluate comp124))
    (evaluate comp125)
    (all-on comp124)
  )
)
(:action evaluate-comp124-off-comp123
  :parameters ()
  :precondition (and
    (evaluate comp124)
    (not (rebooted comp124))
    (not (running comp123))
  )
  :effect (and
    (not (evaluate comp124))
    (evaluate comp125)
    (one-off comp124)
  )
)
(:action evaluate-comp125-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (rebooted comp125)
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
  )
)
(:action evaluate-comp125-all-on
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (not (rebooted comp125))
    (running comp124)
    (running comp1616)
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
    (all-on comp125)
  )
)
(:action evaluate-comp125-off-comp124
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (not (rebooted comp125))
    (not (running comp124))
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
    (one-off comp125)
  )
)
(:action evaluate-comp125-off-comp1616
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (not (rebooted comp125))
    (not (running comp1616))
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
    (one-off comp125)
  )
)
(:action evaluate-comp126-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (rebooted comp126)
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
  )
)
(:action evaluate-comp126-all-on
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (not (rebooted comp126))
    (running comp125)
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
    (all-on comp126)
  )
)
(:action evaluate-comp126-off-comp125
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (not (rebooted comp126))
    (not (running comp125))
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
    (one-off comp126)
  )
)
(:action evaluate-comp127-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp127)
    (rebooted comp127)
  )
  :effect (and
    (not (evaluate comp127))
    (evaluate comp128)
  )
)
(:action evaluate-comp127-all-on
  :parameters ()
  :precondition (and
    (evaluate comp127)
    (not (rebooted comp127))
    (running comp126)
  )
  :effect (and
    (not (evaluate comp127))
    (evaluate comp128)
    (all-on comp127)
  )
)
(:action evaluate-comp127-off-comp126
  :parameters ()
  :precondition (and
    (evaluate comp127)
    (not (rebooted comp127))
    (not (running comp126))
  )
  :effect (and
    (not (evaluate comp127))
    (evaluate comp128)
    (one-off comp127)
  )
)
(:action evaluate-comp128-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp128)
    (rebooted comp128)
  )
  :effect (and
    (not (evaluate comp128))
    (evaluate comp129)
  )
)
(:action evaluate-comp128-all-on
  :parameters ()
  :precondition (and
    (evaluate comp128)
    (not (rebooted comp128))
    (running comp127)
  )
  :effect (and
    (not (evaluate comp128))
    (evaluate comp129)
    (all-on comp128)
  )
)
(:action evaluate-comp128-off-comp127
  :parameters ()
  :precondition (and
    (evaluate comp128)
    (not (rebooted comp128))
    (not (running comp127))
  )
  :effect (and
    (not (evaluate comp128))
    (evaluate comp129)
    (one-off comp128)
  )
)
(:action evaluate-comp129-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp129)
    (rebooted comp129)
  )
  :effect (and
    (not (evaluate comp129))
    (evaluate comp130)
  )
)
(:action evaluate-comp129-all-on
  :parameters ()
  :precondition (and
    (evaluate comp129)
    (not (rebooted comp129))
    (running comp128)
  )
  :effect (and
    (not (evaluate comp129))
    (evaluate comp130)
    (all-on comp129)
  )
)
(:action evaluate-comp129-off-comp128
  :parameters ()
  :precondition (and
    (evaluate comp129)
    (not (rebooted comp129))
    (not (running comp128))
  )
  :effect (and
    (not (evaluate comp129))
    (evaluate comp130)
    (one-off comp129)
  )
)
(:action evaluate-comp130-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (rebooted comp130)
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
  )
)
(:action evaluate-comp130-all-on
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (not (rebooted comp130))
    (running comp129)
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
    (all-on comp130)
  )
)
(:action evaluate-comp130-off-comp129
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (not (rebooted comp130))
    (not (running comp129))
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
    (one-off comp130)
  )
)
(:action evaluate-comp131-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp131)
    (rebooted comp131)
  )
  :effect (and
    (not (evaluate comp131))
    (evaluate comp132)
  )
)
(:action evaluate-comp131-all-on
  :parameters ()
  :precondition (and
    (evaluate comp131)
    (not (rebooted comp131))
    (running comp130)
  )
  :effect (and
    (not (evaluate comp131))
    (evaluate comp132)
    (all-on comp131)
  )
)
(:action evaluate-comp131-off-comp130
  :parameters ()
  :precondition (and
    (evaluate comp131)
    (not (rebooted comp131))
    (not (running comp130))
  )
  :effect (and
    (not (evaluate comp131))
    (evaluate comp132)
    (one-off comp131)
  )
)
(:action evaluate-comp132-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (rebooted comp132)
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
  )
)
(:action evaluate-comp132-all-on
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (running comp131)
    (running comp363)
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (all-on comp132)
  )
)
(:action evaluate-comp132-off-comp131
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (not (running comp131))
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (one-off comp132)
  )
)
(:action evaluate-comp132-off-comp363
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (not (running comp363))
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (one-off comp132)
  )
)
(:action evaluate-comp133-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp133)
    (rebooted comp133)
  )
  :effect (and
    (not (evaluate comp133))
    (evaluate comp134)
  )
)
(:action evaluate-comp133-all-on
  :parameters ()
  :precondition (and
    (evaluate comp133)
    (not (rebooted comp133))
    (running comp132)
  )
  :effect (and
    (not (evaluate comp133))
    (evaluate comp134)
    (all-on comp133)
  )
)
(:action evaluate-comp133-off-comp132
  :parameters ()
  :precondition (and
    (evaluate comp133)
    (not (rebooted comp133))
    (not (running comp132))
  )
  :effect (and
    (not (evaluate comp133))
    (evaluate comp134)
    (one-off comp133)
  )
)
(:action evaluate-comp134-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp134)
    (rebooted comp134)
  )
  :effect (and
    (not (evaluate comp134))
    (evaluate comp135)
  )
)
(:action evaluate-comp134-all-on
  :parameters ()
  :precondition (and
    (evaluate comp134)
    (not (rebooted comp134))
    (running comp133)
  )
  :effect (and
    (not (evaluate comp134))
    (evaluate comp135)
    (all-on comp134)
  )
)
(:action evaluate-comp134-off-comp133
  :parameters ()
  :precondition (and
    (evaluate comp134)
    (not (rebooted comp134))
    (not (running comp133))
  )
  :effect (and
    (not (evaluate comp134))
    (evaluate comp135)
    (one-off comp134)
  )
)
(:action evaluate-comp135-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (rebooted comp135)
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
  )
)
(:action evaluate-comp135-all-on
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (not (rebooted comp135))
    (running comp134)
    (running comp1182)
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
    (all-on comp135)
  )
)
(:action evaluate-comp135-off-comp134
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (not (rebooted comp135))
    (not (running comp134))
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
    (one-off comp135)
  )
)
(:action evaluate-comp135-off-comp1182
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (not (rebooted comp135))
    (not (running comp1182))
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
    (one-off comp135)
  )
)
(:action evaluate-comp136-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (rebooted comp136)
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
  )
)
(:action evaluate-comp136-all-on
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (not (rebooted comp136))
    (running comp135)
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
    (all-on comp136)
  )
)
(:action evaluate-comp136-off-comp135
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (not (rebooted comp136))
    (not (running comp135))
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
    (one-off comp136)
  )
)
(:action evaluate-comp137-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (rebooted comp137)
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
  )
)
(:action evaluate-comp137-all-on
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (not (rebooted comp137))
    (running comp136)
    (running comp1582)
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
    (all-on comp137)
  )
)
(:action evaluate-comp137-off-comp136
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (not (rebooted comp137))
    (not (running comp136))
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
    (one-off comp137)
  )
)
(:action evaluate-comp137-off-comp1582
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (not (rebooted comp137))
    (not (running comp1582))
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
    (one-off comp137)
  )
)
(:action evaluate-comp138-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp138)
    (rebooted comp138)
  )
  :effect (and
    (not (evaluate comp138))
    (evaluate comp139)
  )
)
(:action evaluate-comp138-all-on
  :parameters ()
  :precondition (and
    (evaluate comp138)
    (not (rebooted comp138))
    (running comp137)
  )
  :effect (and
    (not (evaluate comp138))
    (evaluate comp139)
    (all-on comp138)
  )
)
(:action evaluate-comp138-off-comp137
  :parameters ()
  :precondition (and
    (evaluate comp138)
    (not (rebooted comp138))
    (not (running comp137))
  )
  :effect (and
    (not (evaluate comp138))
    (evaluate comp139)
    (one-off comp138)
  )
)
(:action evaluate-comp139-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp139)
    (rebooted comp139)
  )
  :effect (and
    (not (evaluate comp139))
    (evaluate comp140)
  )
)
(:action evaluate-comp139-all-on
  :parameters ()
  :precondition (and
    (evaluate comp139)
    (not (rebooted comp139))
    (running comp138)
  )
  :effect (and
    (not (evaluate comp139))
    (evaluate comp140)
    (all-on comp139)
  )
)
(:action evaluate-comp139-off-comp138
  :parameters ()
  :precondition (and
    (evaluate comp139)
    (not (rebooted comp139))
    (not (running comp138))
  )
  :effect (and
    (not (evaluate comp139))
    (evaluate comp140)
    (one-off comp139)
  )
)
(:action evaluate-comp140-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (rebooted comp140)
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
  )
)
(:action evaluate-comp140-all-on
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (not (rebooted comp140))
    (running comp139)
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
    (all-on comp140)
  )
)
(:action evaluate-comp140-off-comp139
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (not (rebooted comp140))
    (not (running comp139))
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
    (one-off comp140)
  )
)
(:action evaluate-comp141-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp141)
    (rebooted comp141)
  )
  :effect (and
    (not (evaluate comp141))
    (evaluate comp142)
  )
)
(:action evaluate-comp141-all-on
  :parameters ()
  :precondition (and
    (evaluate comp141)
    (not (rebooted comp141))
    (running comp140)
  )
  :effect (and
    (not (evaluate comp141))
    (evaluate comp142)
    (all-on comp141)
  )
)
(:action evaluate-comp141-off-comp140
  :parameters ()
  :precondition (and
    (evaluate comp141)
    (not (rebooted comp141))
    (not (running comp140))
  )
  :effect (and
    (not (evaluate comp141))
    (evaluate comp142)
    (one-off comp141)
  )
)
(:action evaluate-comp142-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (rebooted comp142)
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
  )
)
(:action evaluate-comp142-all-on
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (not (rebooted comp142))
    (running comp141)
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
    (all-on comp142)
  )
)
(:action evaluate-comp142-off-comp141
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (not (rebooted comp142))
    (not (running comp141))
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
    (one-off comp142)
  )
)
(:action evaluate-comp143-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (rebooted comp143)
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
  )
)
(:action evaluate-comp143-all-on
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (not (rebooted comp143))
    (running comp142)
    (running comp587)
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
    (all-on comp143)
  )
)
(:action evaluate-comp143-off-comp142
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (not (rebooted comp143))
    (not (running comp142))
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
    (one-off comp143)
  )
)
(:action evaluate-comp143-off-comp587
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (not (rebooted comp143))
    (not (running comp587))
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
    (one-off comp143)
  )
)
(:action evaluate-comp144-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp144)
    (rebooted comp144)
  )
  :effect (and
    (not (evaluate comp144))
    (evaluate comp145)
  )
)
(:action evaluate-comp144-all-on
  :parameters ()
  :precondition (and
    (evaluate comp144)
    (not (rebooted comp144))
    (running comp143)
  )
  :effect (and
    (not (evaluate comp144))
    (evaluate comp145)
    (all-on comp144)
  )
)
(:action evaluate-comp144-off-comp143
  :parameters ()
  :precondition (and
    (evaluate comp144)
    (not (rebooted comp144))
    (not (running comp143))
  )
  :effect (and
    (not (evaluate comp144))
    (evaluate comp145)
    (one-off comp144)
  )
)
(:action evaluate-comp145-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp145)
    (rebooted comp145)
  )
  :effect (and
    (not (evaluate comp145))
    (evaluate comp146)
  )
)
(:action evaluate-comp145-all-on
  :parameters ()
  :precondition (and
    (evaluate comp145)
    (not (rebooted comp145))
    (running comp144)
  )
  :effect (and
    (not (evaluate comp145))
    (evaluate comp146)
    (all-on comp145)
  )
)
(:action evaluate-comp145-off-comp144
  :parameters ()
  :precondition (and
    (evaluate comp145)
    (not (rebooted comp145))
    (not (running comp144))
  )
  :effect (and
    (not (evaluate comp145))
    (evaluate comp146)
    (one-off comp145)
  )
)
(:action evaluate-comp146-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp146)
    (rebooted comp146)
  )
  :effect (and
    (not (evaluate comp146))
    (evaluate comp147)
  )
)
(:action evaluate-comp146-all-on
  :parameters ()
  :precondition (and
    (evaluate comp146)
    (not (rebooted comp146))
    (running comp145)
  )
  :effect (and
    (not (evaluate comp146))
    (evaluate comp147)
    (all-on comp146)
  )
)
(:action evaluate-comp146-off-comp145
  :parameters ()
  :precondition (and
    (evaluate comp146)
    (not (rebooted comp146))
    (not (running comp145))
  )
  :effect (and
    (not (evaluate comp146))
    (evaluate comp147)
    (one-off comp146)
  )
)
(:action evaluate-comp147-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (rebooted comp147)
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
  )
)
(:action evaluate-comp147-all-on
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (not (rebooted comp147))
    (running comp146)
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
    (all-on comp147)
  )
)
(:action evaluate-comp147-off-comp146
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (not (rebooted comp147))
    (not (running comp146))
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
    (one-off comp147)
  )
)
(:action evaluate-comp148-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp148)
    (rebooted comp148)
  )
  :effect (and
    (not (evaluate comp148))
    (evaluate comp149)
  )
)
(:action evaluate-comp148-all-on
  :parameters ()
  :precondition (and
    (evaluate comp148)
    (not (rebooted comp148))
    (running comp147)
  )
  :effect (and
    (not (evaluate comp148))
    (evaluate comp149)
    (all-on comp148)
  )
)
(:action evaluate-comp148-off-comp147
  :parameters ()
  :precondition (and
    (evaluate comp148)
    (not (rebooted comp148))
    (not (running comp147))
  )
  :effect (and
    (not (evaluate comp148))
    (evaluate comp149)
    (one-off comp148)
  )
)
(:action evaluate-comp149-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (rebooted comp149)
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
  )
)
(:action evaluate-comp149-all-on
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (not (rebooted comp149))
    (running comp148)
    (running comp179)
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
    (all-on comp149)
  )
)
(:action evaluate-comp149-off-comp148
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (not (rebooted comp149))
    (not (running comp148))
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
    (one-off comp149)
  )
)
(:action evaluate-comp149-off-comp179
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (not (rebooted comp149))
    (not (running comp179))
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
    (one-off comp149)
  )
)
(:action evaluate-comp150-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (rebooted comp150)
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
  )
)
(:action evaluate-comp150-all-on
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (not (rebooted comp150))
    (running comp149)
    (running comp224)
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
    (all-on comp150)
  )
)
(:action evaluate-comp150-off-comp149
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (not (rebooted comp150))
    (not (running comp149))
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
    (one-off comp150)
  )
)
(:action evaluate-comp150-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (not (rebooted comp150))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
    (one-off comp150)
  )
)
(:action evaluate-comp151-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (rebooted comp151)
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
  )
)
(:action evaluate-comp151-all-on
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (not (rebooted comp151))
    (running comp150)
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
    (all-on comp151)
  )
)
(:action evaluate-comp151-off-comp150
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (not (rebooted comp151))
    (not (running comp150))
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
    (one-off comp151)
  )
)
(:action evaluate-comp152-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (rebooted comp152)
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
  )
)
(:action evaluate-comp152-all-on
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (not (rebooted comp152))
    (running comp151)
    (running comp824)
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
    (all-on comp152)
  )
)
(:action evaluate-comp152-off-comp151
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (not (rebooted comp152))
    (not (running comp151))
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
    (one-off comp152)
  )
)
(:action evaluate-comp152-off-comp824
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (not (rebooted comp152))
    (not (running comp824))
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
    (one-off comp152)
  )
)
(:action evaluate-comp153-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (rebooted comp153)
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
  )
)
(:action evaluate-comp153-all-on
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (not (rebooted comp153))
    (running comp152)
    (running comp690)
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
    (all-on comp153)
  )
)
(:action evaluate-comp153-off-comp152
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (not (rebooted comp153))
    (not (running comp152))
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
    (one-off comp153)
  )
)
(:action evaluate-comp153-off-comp690
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (not (rebooted comp153))
    (not (running comp690))
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
    (one-off comp153)
  )
)
(:action evaluate-comp154-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp154)
    (rebooted comp154)
  )
  :effect (and
    (not (evaluate comp154))
    (evaluate comp155)
  )
)
(:action evaluate-comp154-all-on
  :parameters ()
  :precondition (and
    (evaluate comp154)
    (not (rebooted comp154))
    (running comp153)
  )
  :effect (and
    (not (evaluate comp154))
    (evaluate comp155)
    (all-on comp154)
  )
)
(:action evaluate-comp154-off-comp153
  :parameters ()
  :precondition (and
    (evaluate comp154)
    (not (rebooted comp154))
    (not (running comp153))
  )
  :effect (and
    (not (evaluate comp154))
    (evaluate comp155)
    (one-off comp154)
  )
)
(:action evaluate-comp155-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (rebooted comp155)
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
  )
)
(:action evaluate-comp155-all-on
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (not (rebooted comp155))
    (running comp154)
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
    (all-on comp155)
  )
)
(:action evaluate-comp155-off-comp154
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (not (rebooted comp155))
    (not (running comp154))
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
    (one-off comp155)
  )
)
(:action evaluate-comp156-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (rebooted comp156)
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
  )
)
(:action evaluate-comp156-all-on
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (not (rebooted comp156))
    (running comp155)
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
    (all-on comp156)
  )
)
(:action evaluate-comp156-off-comp155
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (not (rebooted comp156))
    (not (running comp155))
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
    (one-off comp156)
  )
)
(:action evaluate-comp157-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (rebooted comp157)
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
  )
)
(:action evaluate-comp157-all-on
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (not (rebooted comp157))
    (running comp156)
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
    (all-on comp157)
  )
)
(:action evaluate-comp157-off-comp156
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (not (rebooted comp157))
    (not (running comp156))
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
    (one-off comp157)
  )
)
(:action evaluate-comp158-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (rebooted comp158)
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
  )
)
(:action evaluate-comp158-all-on
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (running comp157)
    (running comp433)
    (running comp732)
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (all-on comp158)
  )
)
(:action evaluate-comp158-off-comp157
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (not (running comp157))
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (one-off comp158)
  )
)
(:action evaluate-comp158-off-comp433
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (not (running comp433))
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (one-off comp158)
  )
)
(:action evaluate-comp158-off-comp732
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (not (running comp732))
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (one-off comp158)
  )
)
(:action evaluate-comp159-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (rebooted comp159)
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
  )
)
(:action evaluate-comp159-all-on
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (not (rebooted comp159))
    (running comp158)
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
    (all-on comp159)
  )
)
(:action evaluate-comp159-off-comp158
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (not (rebooted comp159))
    (not (running comp158))
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
    (one-off comp159)
  )
)
(:action evaluate-comp160-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp160)
    (rebooted comp160)
  )
  :effect (and
    (not (evaluate comp160))
    (evaluate comp161)
  )
)
(:action evaluate-comp160-all-on
  :parameters ()
  :precondition (and
    (evaluate comp160)
    (not (rebooted comp160))
    (running comp159)
  )
  :effect (and
    (not (evaluate comp160))
    (evaluate comp161)
    (all-on comp160)
  )
)
(:action evaluate-comp160-off-comp159
  :parameters ()
  :precondition (and
    (evaluate comp160)
    (not (rebooted comp160))
    (not (running comp159))
  )
  :effect (and
    (not (evaluate comp160))
    (evaluate comp161)
    (one-off comp160)
  )
)
(:action evaluate-comp161-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (rebooted comp161)
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
  )
)
(:action evaluate-comp161-all-on
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (not (rebooted comp161))
    (running comp160)
    (running comp1085)
    (running comp1408)
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
    (all-on comp161)
  )
)
(:action evaluate-comp161-off-comp160
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (not (rebooted comp161))
    (not (running comp160))
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
    (one-off comp161)
  )
)
(:action evaluate-comp161-off-comp1085
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (not (rebooted comp161))
    (not (running comp1085))
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
    (one-off comp161)
  )
)
(:action evaluate-comp161-off-comp1408
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (not (rebooted comp161))
    (not (running comp1408))
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
    (one-off comp161)
  )
)
(:action evaluate-comp162-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (rebooted comp162)
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
  )
)
(:action evaluate-comp162-all-on
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (not (rebooted comp162))
    (running comp161)
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
    (all-on comp162)
  )
)
(:action evaluate-comp162-off-comp161
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (not (rebooted comp162))
    (not (running comp161))
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
    (one-off comp162)
  )
)
(:action evaluate-comp163-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (rebooted comp163)
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
  )
)
(:action evaluate-comp163-all-on
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (not (rebooted comp163))
    (running comp162)
    (running comp1023)
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
    (all-on comp163)
  )
)
(:action evaluate-comp163-off-comp162
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (not (rebooted comp163))
    (not (running comp162))
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
    (one-off comp163)
  )
)
(:action evaluate-comp163-off-comp1023
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (not (rebooted comp163))
    (not (running comp1023))
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
    (one-off comp163)
  )
)
(:action evaluate-comp164-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp164)
    (rebooted comp164)
  )
  :effect (and
    (not (evaluate comp164))
    (evaluate comp165)
  )
)
(:action evaluate-comp164-all-on
  :parameters ()
  :precondition (and
    (evaluate comp164)
    (not (rebooted comp164))
    (running comp163)
  )
  :effect (and
    (not (evaluate comp164))
    (evaluate comp165)
    (all-on comp164)
  )
)
(:action evaluate-comp164-off-comp163
  :parameters ()
  :precondition (and
    (evaluate comp164)
    (not (rebooted comp164))
    (not (running comp163))
  )
  :effect (and
    (not (evaluate comp164))
    (evaluate comp165)
    (one-off comp164)
  )
)
(:action evaluate-comp165-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (rebooted comp165)
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
  )
)
(:action evaluate-comp165-all-on
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (not (rebooted comp165))
    (running comp164)
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
    (all-on comp165)
  )
)
(:action evaluate-comp165-off-comp164
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (not (rebooted comp165))
    (not (running comp164))
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
    (one-off comp165)
  )
)
(:action evaluate-comp166-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp166)
    (rebooted comp166)
  )
  :effect (and
    (not (evaluate comp166))
    (evaluate comp167)
  )
)
(:action evaluate-comp166-all-on
  :parameters ()
  :precondition (and
    (evaluate comp166)
    (not (rebooted comp166))
    (running comp165)
  )
  :effect (and
    (not (evaluate comp166))
    (evaluate comp167)
    (all-on comp166)
  )
)
(:action evaluate-comp166-off-comp165
  :parameters ()
  :precondition (and
    (evaluate comp166)
    (not (rebooted comp166))
    (not (running comp165))
  )
  :effect (and
    (not (evaluate comp166))
    (evaluate comp167)
    (one-off comp166)
  )
)
(:action evaluate-comp167-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (rebooted comp167)
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
  )
)
(:action evaluate-comp167-all-on
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (not (rebooted comp167))
    (running comp166)
    (running comp782)
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
    (all-on comp167)
  )
)
(:action evaluate-comp167-off-comp166
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (not (rebooted comp167))
    (not (running comp166))
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
    (one-off comp167)
  )
)
(:action evaluate-comp167-off-comp782
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (not (rebooted comp167))
    (not (running comp782))
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
    (one-off comp167)
  )
)
(:action evaluate-comp168-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (rebooted comp168)
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
  )
)
(:action evaluate-comp168-all-on
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (not (rebooted comp168))
    (running comp167)
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
    (all-on comp168)
  )
)
(:action evaluate-comp168-off-comp167
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (not (rebooted comp168))
    (not (running comp167))
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
    (one-off comp168)
  )
)
(:action evaluate-comp169-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp169)
    (rebooted comp169)
  )
  :effect (and
    (not (evaluate comp169))
    (evaluate comp170)
  )
)
(:action evaluate-comp169-all-on
  :parameters ()
  :precondition (and
    (evaluate comp169)
    (not (rebooted comp169))
    (running comp168)
  )
  :effect (and
    (not (evaluate comp169))
    (evaluate comp170)
    (all-on comp169)
  )
)
(:action evaluate-comp169-off-comp168
  :parameters ()
  :precondition (and
    (evaluate comp169)
    (not (rebooted comp169))
    (not (running comp168))
  )
  :effect (and
    (not (evaluate comp169))
    (evaluate comp170)
    (one-off comp169)
  )
)
(:action evaluate-comp170-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp170)
    (rebooted comp170)
  )
  :effect (and
    (not (evaluate comp170))
    (evaluate comp171)
  )
)
(:action evaluate-comp170-all-on
  :parameters ()
  :precondition (and
    (evaluate comp170)
    (not (rebooted comp170))
    (running comp169)
  )
  :effect (and
    (not (evaluate comp170))
    (evaluate comp171)
    (all-on comp170)
  )
)
(:action evaluate-comp170-off-comp169
  :parameters ()
  :precondition (and
    (evaluate comp170)
    (not (rebooted comp170))
    (not (running comp169))
  )
  :effect (and
    (not (evaluate comp170))
    (evaluate comp171)
    (one-off comp170)
  )
)
(:action evaluate-comp171-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp171)
    (rebooted comp171)
  )
  :effect (and
    (not (evaluate comp171))
    (evaluate comp172)
  )
)
(:action evaluate-comp171-all-on
  :parameters ()
  :precondition (and
    (evaluate comp171)
    (not (rebooted comp171))
    (running comp170)
  )
  :effect (and
    (not (evaluate comp171))
    (evaluate comp172)
    (all-on comp171)
  )
)
(:action evaluate-comp171-off-comp170
  :parameters ()
  :precondition (and
    (evaluate comp171)
    (not (rebooted comp171))
    (not (running comp170))
  )
  :effect (and
    (not (evaluate comp171))
    (evaluate comp172)
    (one-off comp171)
  )
)
(:action evaluate-comp172-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp172)
    (rebooted comp172)
  )
  :effect (and
    (not (evaluate comp172))
    (evaluate comp173)
  )
)
(:action evaluate-comp172-all-on
  :parameters ()
  :precondition (and
    (evaluate comp172)
    (not (rebooted comp172))
    (running comp171)
  )
  :effect (and
    (not (evaluate comp172))
    (evaluate comp173)
    (all-on comp172)
  )
)
(:action evaluate-comp172-off-comp171
  :parameters ()
  :precondition (and
    (evaluate comp172)
    (not (rebooted comp172))
    (not (running comp171))
  )
  :effect (and
    (not (evaluate comp172))
    (evaluate comp173)
    (one-off comp172)
  )
)
(:action evaluate-comp173-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp173)
    (rebooted comp173)
  )
  :effect (and
    (not (evaluate comp173))
    (evaluate comp174)
  )
)
(:action evaluate-comp173-all-on
  :parameters ()
  :precondition (and
    (evaluate comp173)
    (not (rebooted comp173))
    (running comp172)
  )
  :effect (and
    (not (evaluate comp173))
    (evaluate comp174)
    (all-on comp173)
  )
)
(:action evaluate-comp173-off-comp172
  :parameters ()
  :precondition (and
    (evaluate comp173)
    (not (rebooted comp173))
    (not (running comp172))
  )
  :effect (and
    (not (evaluate comp173))
    (evaluate comp174)
    (one-off comp173)
  )
)
(:action evaluate-comp174-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (rebooted comp174)
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
  )
)
(:action evaluate-comp174-all-on
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (not (rebooted comp174))
    (running comp173)
    (running comp791)
    (running comp1380)
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
    (all-on comp174)
  )
)
(:action evaluate-comp174-off-comp173
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (not (rebooted comp174))
    (not (running comp173))
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
    (one-off comp174)
  )
)
(:action evaluate-comp174-off-comp791
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (not (rebooted comp174))
    (not (running comp791))
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
    (one-off comp174)
  )
)
(:action evaluate-comp174-off-comp1380
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (not (rebooted comp174))
    (not (running comp1380))
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
    (one-off comp174)
  )
)
(:action evaluate-comp175-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (rebooted comp175)
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
  )
)
(:action evaluate-comp175-all-on
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (not (rebooted comp175))
    (running comp109)
    (running comp174)
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
    (all-on comp175)
  )
)
(:action evaluate-comp175-off-comp109
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (not (rebooted comp175))
    (not (running comp109))
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
    (one-off comp175)
  )
)
(:action evaluate-comp175-off-comp174
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (not (rebooted comp175))
    (not (running comp174))
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
    (one-off comp175)
  )
)
(:action evaluate-comp176-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp176)
    (rebooted comp176)
  )
  :effect (and
    (not (evaluate comp176))
    (evaluate comp177)
  )
)
(:action evaluate-comp176-all-on
  :parameters ()
  :precondition (and
    (evaluate comp176)
    (not (rebooted comp176))
    (running comp175)
  )
  :effect (and
    (not (evaluate comp176))
    (evaluate comp177)
    (all-on comp176)
  )
)
(:action evaluate-comp176-off-comp175
  :parameters ()
  :precondition (and
    (evaluate comp176)
    (not (rebooted comp176))
    (not (running comp175))
  )
  :effect (and
    (not (evaluate comp176))
    (evaluate comp177)
    (one-off comp176)
  )
)
(:action evaluate-comp177-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (rebooted comp177)
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
  )
)
(:action evaluate-comp177-all-on
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (not (rebooted comp177))
    (running comp176)
    (running comp1183)
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
    (all-on comp177)
  )
)
(:action evaluate-comp177-off-comp176
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (not (rebooted comp177))
    (not (running comp176))
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
    (one-off comp177)
  )
)
(:action evaluate-comp177-off-comp1183
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (not (rebooted comp177))
    (not (running comp1183))
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
    (one-off comp177)
  )
)
(:action evaluate-comp178-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp178)
    (rebooted comp178)
  )
  :effect (and
    (not (evaluate comp178))
    (evaluate comp179)
  )
)
(:action evaluate-comp178-all-on
  :parameters ()
  :precondition (and
    (evaluate comp178)
    (not (rebooted comp178))
    (running comp177)
  )
  :effect (and
    (not (evaluate comp178))
    (evaluate comp179)
    (all-on comp178)
  )
)
(:action evaluate-comp178-off-comp177
  :parameters ()
  :precondition (and
    (evaluate comp178)
    (not (rebooted comp178))
    (not (running comp177))
  )
  :effect (and
    (not (evaluate comp178))
    (evaluate comp179)
    (one-off comp178)
  )
)
(:action evaluate-comp179-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (rebooted comp179)
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
  )
)
(:action evaluate-comp179-all-on
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (not (rebooted comp179))
    (running comp178)
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
    (all-on comp179)
  )
)
(:action evaluate-comp179-off-comp178
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (not (rebooted comp179))
    (not (running comp178))
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
    (one-off comp179)
  )
)
(:action evaluate-comp180-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (rebooted comp180)
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
  )
)
(:action evaluate-comp180-all-on
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (running comp179)
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (all-on comp180)
  )
)
(:action evaluate-comp180-off-comp179
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (not (running comp179))
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (one-off comp180)
  )
)
(:action evaluate-comp181-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (rebooted comp181)
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
  )
)
(:action evaluate-comp181-all-on
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (not (rebooted comp181))
    (running comp180)
    (running comp1763)
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
    (all-on comp181)
  )
)
(:action evaluate-comp181-off-comp180
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (not (rebooted comp181))
    (not (running comp180))
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
    (one-off comp181)
  )
)
(:action evaluate-comp181-off-comp1763
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (not (rebooted comp181))
    (not (running comp1763))
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
    (one-off comp181)
  )
)
(:action evaluate-comp182-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (rebooted comp182)
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
  )
)
(:action evaluate-comp182-all-on
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (running comp181)
    (running comp1562)
    (running comp1858)
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (all-on comp182)
  )
)
(:action evaluate-comp182-off-comp181
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (not (running comp181))
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (one-off comp182)
  )
)
(:action evaluate-comp182-off-comp1562
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (not (running comp1562))
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (one-off comp182)
  )
)
(:action evaluate-comp182-off-comp1858
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (not (running comp1858))
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (one-off comp182)
  )
)
(:action evaluate-comp183-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp183)
    (rebooted comp183)
  )
  :effect (and
    (not (evaluate comp183))
    (evaluate comp184)
  )
)
(:action evaluate-comp183-all-on
  :parameters ()
  :precondition (and
    (evaluate comp183)
    (not (rebooted comp183))
    (running comp182)
  )
  :effect (and
    (not (evaluate comp183))
    (evaluate comp184)
    (all-on comp183)
  )
)
(:action evaluate-comp183-off-comp182
  :parameters ()
  :precondition (and
    (evaluate comp183)
    (not (rebooted comp183))
    (not (running comp182))
  )
  :effect (and
    (not (evaluate comp183))
    (evaluate comp184)
    (one-off comp183)
  )
)
(:action evaluate-comp184-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (rebooted comp184)
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
  )
)
(:action evaluate-comp184-all-on
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (not (rebooted comp184))
    (running comp183)
    (running comp1743)
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
    (all-on comp184)
  )
)
(:action evaluate-comp184-off-comp183
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (not (rebooted comp184))
    (not (running comp183))
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
    (one-off comp184)
  )
)
(:action evaluate-comp184-off-comp1743
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (not (rebooted comp184))
    (not (running comp1743))
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
    (one-off comp184)
  )
)
(:action evaluate-comp185-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (rebooted comp185)
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
  )
)
(:action evaluate-comp185-all-on
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (not (rebooted comp185))
    (running comp184)
    (running comp516)
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
    (all-on comp185)
  )
)
(:action evaluate-comp185-off-comp184
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (not (rebooted comp185))
    (not (running comp184))
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
    (one-off comp185)
  )
)
(:action evaluate-comp185-off-comp516
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (not (rebooted comp185))
    (not (running comp516))
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
    (one-off comp185)
  )
)
(:action evaluate-comp186-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (rebooted comp186)
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
  )
)
(:action evaluate-comp186-all-on
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (not (rebooted comp186))
    (running comp185)
    (running comp1283)
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
    (all-on comp186)
  )
)
(:action evaluate-comp186-off-comp185
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (not (rebooted comp186))
    (not (running comp185))
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
    (one-off comp186)
  )
)
(:action evaluate-comp186-off-comp1283
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (not (rebooted comp186))
    (not (running comp1283))
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
    (one-off comp186)
  )
)
(:action evaluate-comp187-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (rebooted comp187)
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
  )
)
(:action evaluate-comp187-all-on
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (not (rebooted comp187))
    (running comp186)
    (running comp756)
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
    (all-on comp187)
  )
)
(:action evaluate-comp187-off-comp186
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (not (rebooted comp187))
    (not (running comp186))
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
    (one-off comp187)
  )
)
(:action evaluate-comp187-off-comp756
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (not (rebooted comp187))
    (not (running comp756))
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
    (one-off comp187)
  )
)
(:action evaluate-comp188-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp188)
    (rebooted comp188)
  )
  :effect (and
    (not (evaluate comp188))
    (evaluate comp189)
  )
)
(:action evaluate-comp188-all-on
  :parameters ()
  :precondition (and
    (evaluate comp188)
    (not (rebooted comp188))
    (running comp187)
  )
  :effect (and
    (not (evaluate comp188))
    (evaluate comp189)
    (all-on comp188)
  )
)
(:action evaluate-comp188-off-comp187
  :parameters ()
  :precondition (and
    (evaluate comp188)
    (not (rebooted comp188))
    (not (running comp187))
  )
  :effect (and
    (not (evaluate comp188))
    (evaluate comp189)
    (one-off comp188)
  )
)
(:action evaluate-comp189-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp189)
    (rebooted comp189)
  )
  :effect (and
    (not (evaluate comp189))
    (evaluate comp190)
  )
)
(:action evaluate-comp189-all-on
  :parameters ()
  :precondition (and
    (evaluate comp189)
    (not (rebooted comp189))
    (running comp188)
  )
  :effect (and
    (not (evaluate comp189))
    (evaluate comp190)
    (all-on comp189)
  )
)
(:action evaluate-comp189-off-comp188
  :parameters ()
  :precondition (and
    (evaluate comp189)
    (not (rebooted comp189))
    (not (running comp188))
  )
  :effect (and
    (not (evaluate comp189))
    (evaluate comp190)
    (one-off comp189)
  )
)
(:action evaluate-comp190-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp190)
    (rebooted comp190)
  )
  :effect (and
    (not (evaluate comp190))
    (evaluate comp191)
  )
)
(:action evaluate-comp190-all-on
  :parameters ()
  :precondition (and
    (evaluate comp190)
    (not (rebooted comp190))
    (running comp189)
  )
  :effect (and
    (not (evaluate comp190))
    (evaluate comp191)
    (all-on comp190)
  )
)
(:action evaluate-comp190-off-comp189
  :parameters ()
  :precondition (and
    (evaluate comp190)
    (not (rebooted comp190))
    (not (running comp189))
  )
  :effect (and
    (not (evaluate comp190))
    (evaluate comp191)
    (one-off comp190)
  )
)
(:action evaluate-comp191-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (rebooted comp191)
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
  )
)
(:action evaluate-comp191-all-on
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (not (rebooted comp191))
    (running comp190)
    (running comp1064)
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
    (all-on comp191)
  )
)
(:action evaluate-comp191-off-comp190
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (not (rebooted comp191))
    (not (running comp190))
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
    (one-off comp191)
  )
)
(:action evaluate-comp191-off-comp1064
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (not (rebooted comp191))
    (not (running comp1064))
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
    (one-off comp191)
  )
)
(:action evaluate-comp192-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (rebooted comp192)
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
  )
)
(:action evaluate-comp192-all-on
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (not (rebooted comp192))
    (running comp191)
    (running comp601)
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
    (all-on comp192)
  )
)
(:action evaluate-comp192-off-comp191
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (not (rebooted comp192))
    (not (running comp191))
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
    (one-off comp192)
  )
)
(:action evaluate-comp192-off-comp601
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (not (rebooted comp192))
    (not (running comp601))
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
    (one-off comp192)
  )
)
(:action evaluate-comp193-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (rebooted comp193)
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
  )
)
(:action evaluate-comp193-all-on
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (not (rebooted comp193))
    (running comp192)
    (running comp1592)
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
    (all-on comp193)
  )
)
(:action evaluate-comp193-off-comp192
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (not (rebooted comp193))
    (not (running comp192))
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
    (one-off comp193)
  )
)
(:action evaluate-comp193-off-comp1592
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (not (rebooted comp193))
    (not (running comp1592))
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
    (one-off comp193)
  )
)
(:action evaluate-comp194-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (rebooted comp194)
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
  )
)
(:action evaluate-comp194-all-on
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (not (rebooted comp194))
    (running comp193)
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
    (all-on comp194)
  )
)
(:action evaluate-comp194-off-comp193
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (not (rebooted comp194))
    (not (running comp193))
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
    (one-off comp194)
  )
)
(:action evaluate-comp195-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (rebooted comp195)
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
  )
)
(:action evaluate-comp195-all-on
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (not (rebooted comp195))
    (running comp194)
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
    (all-on comp195)
  )
)
(:action evaluate-comp195-off-comp194
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (not (rebooted comp195))
    (not (running comp194))
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
    (one-off comp195)
  )
)
(:action evaluate-comp196-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (rebooted comp196)
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
  )
)
(:action evaluate-comp196-all-on
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (not (rebooted comp196))
    (running comp195)
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
    (all-on comp196)
  )
)
(:action evaluate-comp196-off-comp195
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (not (rebooted comp196))
    (not (running comp195))
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
    (one-off comp196)
  )
)
(:action evaluate-comp197-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp197)
    (rebooted comp197)
  )
  :effect (and
    (not (evaluate comp197))
    (evaluate comp198)
  )
)
(:action evaluate-comp197-all-on
  :parameters ()
  :precondition (and
    (evaluate comp197)
    (not (rebooted comp197))
    (running comp196)
  )
  :effect (and
    (not (evaluate comp197))
    (evaluate comp198)
    (all-on comp197)
  )
)
(:action evaluate-comp197-off-comp196
  :parameters ()
  :precondition (and
    (evaluate comp197)
    (not (rebooted comp197))
    (not (running comp196))
  )
  :effect (and
    (not (evaluate comp197))
    (evaluate comp198)
    (one-off comp197)
  )
)
(:action evaluate-comp198-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp198)
    (rebooted comp198)
  )
  :effect (and
    (not (evaluate comp198))
    (evaluate comp199)
  )
)
(:action evaluate-comp198-all-on
  :parameters ()
  :precondition (and
    (evaluate comp198)
    (not (rebooted comp198))
    (running comp197)
  )
  :effect (and
    (not (evaluate comp198))
    (evaluate comp199)
    (all-on comp198)
  )
)
(:action evaluate-comp198-off-comp197
  :parameters ()
  :precondition (and
    (evaluate comp198)
    (not (rebooted comp198))
    (not (running comp197))
  )
  :effect (and
    (not (evaluate comp198))
    (evaluate comp199)
    (one-off comp198)
  )
)
(:action evaluate-comp199-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (rebooted comp199)
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
  )
)
(:action evaluate-comp199-all-on
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (not (rebooted comp199))
    (running comp198)
    (running comp1855)
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
    (all-on comp199)
  )
)
(:action evaluate-comp199-off-comp198
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (not (rebooted comp199))
    (not (running comp198))
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
    (one-off comp199)
  )
)
(:action evaluate-comp199-off-comp1855
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (not (rebooted comp199))
    (not (running comp1855))
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
    (one-off comp199)
  )
)
(:action evaluate-comp200-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (rebooted comp200)
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
  )
)
(:action evaluate-comp200-all-on
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (not (rebooted comp200))
    (running comp64)
    (running comp199)
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
    (all-on comp200)
  )
)
(:action evaluate-comp200-off-comp64
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (not (rebooted comp200))
    (not (running comp64))
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
    (one-off comp200)
  )
)
(:action evaluate-comp200-off-comp199
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (not (rebooted comp200))
    (not (running comp199))
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
    (one-off comp200)
  )
)
(:action evaluate-comp201-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp201)
    (rebooted comp201)
  )
  :effect (and
    (not (evaluate comp201))
    (evaluate comp202)
  )
)
(:action evaluate-comp201-all-on
  :parameters ()
  :precondition (and
    (evaluate comp201)
    (not (rebooted comp201))
    (running comp200)
  )
  :effect (and
    (not (evaluate comp201))
    (evaluate comp202)
    (all-on comp201)
  )
)
(:action evaluate-comp201-off-comp200
  :parameters ()
  :precondition (and
    (evaluate comp201)
    (not (rebooted comp201))
    (not (running comp200))
  )
  :effect (and
    (not (evaluate comp201))
    (evaluate comp202)
    (one-off comp201)
  )
)
(:action evaluate-comp202-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp202)
    (rebooted comp202)
  )
  :effect (and
    (not (evaluate comp202))
    (evaluate comp203)
  )
)
(:action evaluate-comp202-all-on
  :parameters ()
  :precondition (and
    (evaluate comp202)
    (not (rebooted comp202))
    (running comp201)
  )
  :effect (and
    (not (evaluate comp202))
    (evaluate comp203)
    (all-on comp202)
  )
)
(:action evaluate-comp202-off-comp201
  :parameters ()
  :precondition (and
    (evaluate comp202)
    (not (rebooted comp202))
    (not (running comp201))
  )
  :effect (and
    (not (evaluate comp202))
    (evaluate comp203)
    (one-off comp202)
  )
)
(:action evaluate-comp203-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (rebooted comp203)
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
  )
)
(:action evaluate-comp203-all-on
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (not (rebooted comp203))
    (running comp202)
    (running comp1879)
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
    (all-on comp203)
  )
)
(:action evaluate-comp203-off-comp202
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (not (rebooted comp203))
    (not (running comp202))
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
    (one-off comp203)
  )
)
(:action evaluate-comp203-off-comp1879
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (not (rebooted comp203))
    (not (running comp1879))
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
    (one-off comp203)
  )
)
(:action evaluate-comp204-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (rebooted comp204)
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
  )
)
(:action evaluate-comp204-all-on
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (not (rebooted comp204))
    (running comp203)
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
    (all-on comp204)
  )
)
(:action evaluate-comp204-off-comp203
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (not (rebooted comp204))
    (not (running comp203))
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
    (one-off comp204)
  )
)
(:action evaluate-comp205-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (rebooted comp205)
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
  )
)
(:action evaluate-comp205-all-on
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (not (rebooted comp205))
    (running comp204)
    (running comp1492)
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
    (all-on comp205)
  )
)
(:action evaluate-comp205-off-comp204
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (not (rebooted comp205))
    (not (running comp204))
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
    (one-off comp205)
  )
)
(:action evaluate-comp205-off-comp1492
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (not (rebooted comp205))
    (not (running comp1492))
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
    (one-off comp205)
  )
)
(:action evaluate-comp206-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (rebooted comp206)
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
  )
)
(:action evaluate-comp206-all-on
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (not (rebooted comp206))
    (running comp205)
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
    (all-on comp206)
  )
)
(:action evaluate-comp206-off-comp205
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (not (rebooted comp206))
    (not (running comp205))
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
    (one-off comp206)
  )
)
(:action evaluate-comp207-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (rebooted comp207)
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
  )
)
(:action evaluate-comp207-all-on
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (not (rebooted comp207))
    (running comp206)
    (running comp1288)
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
    (all-on comp207)
  )
)
(:action evaluate-comp207-off-comp206
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (not (rebooted comp207))
    (not (running comp206))
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
    (one-off comp207)
  )
)
(:action evaluate-comp207-off-comp1288
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (not (rebooted comp207))
    (not (running comp1288))
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
    (one-off comp207)
  )
)
(:action evaluate-comp208-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp208)
    (rebooted comp208)
  )
  :effect (and
    (not (evaluate comp208))
    (evaluate comp209)
  )
)
(:action evaluate-comp208-all-on
  :parameters ()
  :precondition (and
    (evaluate comp208)
    (not (rebooted comp208))
    (running comp207)
  )
  :effect (and
    (not (evaluate comp208))
    (evaluate comp209)
    (all-on comp208)
  )
)
(:action evaluate-comp208-off-comp207
  :parameters ()
  :precondition (and
    (evaluate comp208)
    (not (rebooted comp208))
    (not (running comp207))
  )
  :effect (and
    (not (evaluate comp208))
    (evaluate comp209)
    (one-off comp208)
  )
)
(:action evaluate-comp209-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (rebooted comp209)
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
  )
)
(:action evaluate-comp209-all-on
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (not (rebooted comp209))
    (running comp208)
    (running comp839)
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
    (all-on comp209)
  )
)
(:action evaluate-comp209-off-comp208
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (not (rebooted comp209))
    (not (running comp208))
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
    (one-off comp209)
  )
)
(:action evaluate-comp209-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (not (rebooted comp209))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
    (one-off comp209)
  )
)
(:action evaluate-comp210-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (rebooted comp210)
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
  )
)
(:action evaluate-comp210-all-on
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (not (rebooted comp210))
    (running comp209)
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
    (all-on comp210)
  )
)
(:action evaluate-comp210-off-comp209
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (not (rebooted comp210))
    (not (running comp209))
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
    (one-off comp210)
  )
)
(:action evaluate-comp211-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (rebooted comp211)
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
  )
)
(:action evaluate-comp211-all-on
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (running comp210)
    (running comp1345)
    (running comp1455)
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (all-on comp211)
  )
)
(:action evaluate-comp211-off-comp210
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp210))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp211-off-comp1345
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp1345))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp211-off-comp1455
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp1455))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp212-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (rebooted comp212)
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
  )
)
(:action evaluate-comp212-all-on
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (not (rebooted comp212))
    (running comp103)
    (running comp211)
    (running comp284)
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
    (all-on comp212)
  )
)
(:action evaluate-comp212-off-comp103
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (not (rebooted comp212))
    (not (running comp103))
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
    (one-off comp212)
  )
)
(:action evaluate-comp212-off-comp211
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (not (rebooted comp212))
    (not (running comp211))
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
    (one-off comp212)
  )
)
(:action evaluate-comp212-off-comp284
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (not (rebooted comp212))
    (not (running comp284))
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
    (one-off comp212)
  )
)
(:action evaluate-comp213-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (rebooted comp213)
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
  )
)
(:action evaluate-comp213-all-on
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (not (rebooted comp213))
    (running comp212)
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
    (all-on comp213)
  )
)
(:action evaluate-comp213-off-comp212
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (not (rebooted comp213))
    (not (running comp212))
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
    (one-off comp213)
  )
)
(:action evaluate-comp214-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (rebooted comp214)
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
  )
)
(:action evaluate-comp214-all-on
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (not (rebooted comp214))
    (running comp213)
    (running comp1626)
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
    (all-on comp214)
  )
)
(:action evaluate-comp214-off-comp213
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (not (rebooted comp214))
    (not (running comp213))
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
    (one-off comp214)
  )
)
(:action evaluate-comp214-off-comp1626
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (not (rebooted comp214))
    (not (running comp1626))
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
    (one-off comp214)
  )
)
(:action evaluate-comp215-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (rebooted comp215)
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
  )
)
(:action evaluate-comp215-all-on
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (not (rebooted comp215))
    (running comp214)
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
    (all-on comp215)
  )
)
(:action evaluate-comp215-off-comp214
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (not (rebooted comp215))
    (not (running comp214))
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
    (one-off comp215)
  )
)
(:action evaluate-comp216-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (rebooted comp216)
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
  )
)
(:action evaluate-comp216-all-on
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (not (rebooted comp216))
    (running comp215)
    (running comp1494)
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
    (all-on comp216)
  )
)
(:action evaluate-comp216-off-comp215
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (not (rebooted comp216))
    (not (running comp215))
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
    (one-off comp216)
  )
)
(:action evaluate-comp216-off-comp1494
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (not (rebooted comp216))
    (not (running comp1494))
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
    (one-off comp216)
  )
)
(:action evaluate-comp217-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp217)
    (rebooted comp217)
  )
  :effect (and
    (not (evaluate comp217))
    (evaluate comp218)
  )
)
(:action evaluate-comp217-all-on
  :parameters ()
  :precondition (and
    (evaluate comp217)
    (not (rebooted comp217))
    (running comp216)
  )
  :effect (and
    (not (evaluate comp217))
    (evaluate comp218)
    (all-on comp217)
  )
)
(:action evaluate-comp217-off-comp216
  :parameters ()
  :precondition (and
    (evaluate comp217)
    (not (rebooted comp217))
    (not (running comp216))
  )
  :effect (and
    (not (evaluate comp217))
    (evaluate comp218)
    (one-off comp217)
  )
)
(:action evaluate-comp218-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (rebooted comp218)
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
  )
)
(:action evaluate-comp218-all-on
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (not (rebooted comp218))
    (running comp217)
    (running comp819)
    (running comp1714)
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
    (all-on comp218)
  )
)
(:action evaluate-comp218-off-comp217
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (not (rebooted comp218))
    (not (running comp217))
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
    (one-off comp218)
  )
)
(:action evaluate-comp218-off-comp819
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (not (rebooted comp218))
    (not (running comp819))
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
    (one-off comp218)
  )
)
(:action evaluate-comp218-off-comp1714
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (not (rebooted comp218))
    (not (running comp1714))
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
    (one-off comp218)
  )
)
(:action evaluate-comp219-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (rebooted comp219)
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
  )
)
(:action evaluate-comp219-all-on
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (not (rebooted comp219))
    (running comp218)
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
    (all-on comp219)
  )
)
(:action evaluate-comp219-off-comp218
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (not (rebooted comp219))
    (not (running comp218))
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
    (one-off comp219)
  )
)
(:action evaluate-comp220-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp220)
    (rebooted comp220)
  )
  :effect (and
    (not (evaluate comp220))
    (evaluate comp221)
  )
)
(:action evaluate-comp220-all-on
  :parameters ()
  :precondition (and
    (evaluate comp220)
    (not (rebooted comp220))
    (running comp219)
  )
  :effect (and
    (not (evaluate comp220))
    (evaluate comp221)
    (all-on comp220)
  )
)
(:action evaluate-comp220-off-comp219
  :parameters ()
  :precondition (and
    (evaluate comp220)
    (not (rebooted comp220))
    (not (running comp219))
  )
  :effect (and
    (not (evaluate comp220))
    (evaluate comp221)
    (one-off comp220)
  )
)
(:action evaluate-comp221-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp221)
    (rebooted comp221)
  )
  :effect (and
    (not (evaluate comp221))
    (evaluate comp222)
  )
)
(:action evaluate-comp221-all-on
  :parameters ()
  :precondition (and
    (evaluate comp221)
    (not (rebooted comp221))
    (running comp220)
  )
  :effect (and
    (not (evaluate comp221))
    (evaluate comp222)
    (all-on comp221)
  )
)
(:action evaluate-comp221-off-comp220
  :parameters ()
  :precondition (and
    (evaluate comp221)
    (not (rebooted comp221))
    (not (running comp220))
  )
  :effect (and
    (not (evaluate comp221))
    (evaluate comp222)
    (one-off comp221)
  )
)
(:action evaluate-comp222-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (rebooted comp222)
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
  )
)
(:action evaluate-comp222-all-on
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (not (rebooted comp222))
    (running comp221)
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
    (all-on comp222)
  )
)
(:action evaluate-comp222-off-comp221
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (not (rebooted comp222))
    (not (running comp221))
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
    (one-off comp222)
  )
)
(:action evaluate-comp223-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (rebooted comp223)
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
  )
)
(:action evaluate-comp223-all-on
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (running comp222)
    (running comp261)
    (running comp1439)
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (all-on comp223)
  )
)
(:action evaluate-comp223-off-comp222
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (not (running comp222))
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (one-off comp223)
  )
)
(:action evaluate-comp223-off-comp261
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (not (running comp261))
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (one-off comp223)
  )
)
(:action evaluate-comp223-off-comp1439
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (not (running comp1439))
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (one-off comp223)
  )
)
(:action evaluate-comp224-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (rebooted comp224)
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
  )
)
(:action evaluate-comp224-all-on
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (running comp223)
    (running comp716)
    (running comp797)
    (running comp1007)
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (all-on comp224)
  )
)
(:action evaluate-comp224-off-comp223
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (not (running comp223))
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (one-off comp224)
  )
)
(:action evaluate-comp224-off-comp716
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (not (running comp716))
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (one-off comp224)
  )
)
(:action evaluate-comp224-off-comp797
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (not (running comp797))
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (one-off comp224)
  )
)
(:action evaluate-comp224-off-comp1007
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (not (running comp1007))
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (one-off comp224)
  )
)
(:action evaluate-comp225-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (rebooted comp225)
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
  )
)
(:action evaluate-comp225-all-on
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (not (rebooted comp225))
    (running comp224)
    (running comp1191)
    (running comp1672)
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
    (all-on comp225)
  )
)
(:action evaluate-comp225-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (not (rebooted comp225))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
    (one-off comp225)
  )
)
(:action evaluate-comp225-off-comp1191
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (not (rebooted comp225))
    (not (running comp1191))
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
    (one-off comp225)
  )
)
(:action evaluate-comp225-off-comp1672
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (not (rebooted comp225))
    (not (running comp1672))
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
    (one-off comp225)
  )
)
(:action evaluate-comp226-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (rebooted comp226)
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
  )
)
(:action evaluate-comp226-all-on
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (not (rebooted comp226))
    (running comp225)
    (running comp907)
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
    (all-on comp226)
  )
)
(:action evaluate-comp226-off-comp225
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (not (rebooted comp226))
    (not (running comp225))
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
    (one-off comp226)
  )
)
(:action evaluate-comp226-off-comp907
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (not (rebooted comp226))
    (not (running comp907))
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
    (one-off comp226)
  )
)
(:action evaluate-comp227-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp227)
    (rebooted comp227)
  )
  :effect (and
    (not (evaluate comp227))
    (evaluate comp228)
  )
)
(:action evaluate-comp227-all-on
  :parameters ()
  :precondition (and
    (evaluate comp227)
    (not (rebooted comp227))
    (running comp226)
  )
  :effect (and
    (not (evaluate comp227))
    (evaluate comp228)
    (all-on comp227)
  )
)
(:action evaluate-comp227-off-comp226
  :parameters ()
  :precondition (and
    (evaluate comp227)
    (not (rebooted comp227))
    (not (running comp226))
  )
  :effect (and
    (not (evaluate comp227))
    (evaluate comp228)
    (one-off comp227)
  )
)
(:action evaluate-comp228-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp228)
    (rebooted comp228)
  )
  :effect (and
    (not (evaluate comp228))
    (evaluate comp229)
  )
)
(:action evaluate-comp228-all-on
  :parameters ()
  :precondition (and
    (evaluate comp228)
    (not (rebooted comp228))
    (running comp227)
  )
  :effect (and
    (not (evaluate comp228))
    (evaluate comp229)
    (all-on comp228)
  )
)
(:action evaluate-comp228-off-comp227
  :parameters ()
  :precondition (and
    (evaluate comp228)
    (not (rebooted comp228))
    (not (running comp227))
  )
  :effect (and
    (not (evaluate comp228))
    (evaluate comp229)
    (one-off comp228)
  )
)
(:action evaluate-comp229-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (rebooted comp229)
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
  )
)
(:action evaluate-comp229-all-on
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (not (rebooted comp229))
    (running comp228)
    (running comp270)
    (running comp1370)
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
    (all-on comp229)
  )
)
(:action evaluate-comp229-off-comp228
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (not (rebooted comp229))
    (not (running comp228))
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
    (one-off comp229)
  )
)
(:action evaluate-comp229-off-comp270
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (not (rebooted comp229))
    (not (running comp270))
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
    (one-off comp229)
  )
)
(:action evaluate-comp229-off-comp1370
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (not (rebooted comp229))
    (not (running comp1370))
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
    (one-off comp229)
  )
)
(:action evaluate-comp230-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (rebooted comp230)
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
  )
)
(:action evaluate-comp230-all-on
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (not (rebooted comp230))
    (running comp229)
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
    (all-on comp230)
  )
)
(:action evaluate-comp230-off-comp229
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (not (rebooted comp230))
    (not (running comp229))
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
    (one-off comp230)
  )
)
(:action evaluate-comp231-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (rebooted comp231)
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
  )
)
(:action evaluate-comp231-all-on
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (not (rebooted comp231))
    (running comp230)
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
    (all-on comp231)
  )
)
(:action evaluate-comp231-off-comp230
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (not (rebooted comp231))
    (not (running comp230))
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
    (one-off comp231)
  )
)
(:action evaluate-comp232-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (rebooted comp232)
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
  )
)
(:action evaluate-comp232-all-on
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (running comp231)
    (running comp505)
    (running comp1180)
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (all-on comp232)
  )
)
(:action evaluate-comp232-off-comp231
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (not (running comp231))
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (one-off comp232)
  )
)
(:action evaluate-comp232-off-comp505
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (not (running comp505))
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (one-off comp232)
  )
)
(:action evaluate-comp232-off-comp1180
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (not (running comp1180))
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (one-off comp232)
  )
)
(:action evaluate-comp233-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (rebooted comp233)
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
  )
)
(:action evaluate-comp233-all-on
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (not (rebooted comp233))
    (running comp232)
    (running comp808)
    (running comp921)
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
    (all-on comp233)
  )
)
(:action evaluate-comp233-off-comp232
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (not (rebooted comp233))
    (not (running comp232))
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
    (one-off comp233)
  )
)
(:action evaluate-comp233-off-comp808
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (not (rebooted comp233))
    (not (running comp808))
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
    (one-off comp233)
  )
)
(:action evaluate-comp233-off-comp921
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (not (rebooted comp233))
    (not (running comp921))
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
    (one-off comp233)
  )
)
(:action evaluate-comp234-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp234)
    (rebooted comp234)
  )
  :effect (and
    (not (evaluate comp234))
    (evaluate comp235)
  )
)
(:action evaluate-comp234-all-on
  :parameters ()
  :precondition (and
    (evaluate comp234)
    (not (rebooted comp234))
    (running comp233)
  )
  :effect (and
    (not (evaluate comp234))
    (evaluate comp235)
    (all-on comp234)
  )
)
(:action evaluate-comp234-off-comp233
  :parameters ()
  :precondition (and
    (evaluate comp234)
    (not (rebooted comp234))
    (not (running comp233))
  )
  :effect (and
    (not (evaluate comp234))
    (evaluate comp235)
    (one-off comp234)
  )
)
(:action evaluate-comp235-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (rebooted comp235)
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
  )
)
(:action evaluate-comp235-all-on
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (not (rebooted comp235))
    (running comp13)
    (running comp234)
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
    (all-on comp235)
  )
)
(:action evaluate-comp235-off-comp13
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (not (rebooted comp235))
    (not (running comp13))
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
    (one-off comp235)
  )
)
(:action evaluate-comp235-off-comp234
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (not (rebooted comp235))
    (not (running comp234))
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
    (one-off comp235)
  )
)
(:action evaluate-comp236-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (rebooted comp236)
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
  )
)
(:action evaluate-comp236-all-on
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (not (rebooted comp236))
    (running comp235)
    (running comp1698)
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
    (all-on comp236)
  )
)
(:action evaluate-comp236-off-comp235
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (not (rebooted comp236))
    (not (running comp235))
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
    (one-off comp236)
  )
)
(:action evaluate-comp236-off-comp1698
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (not (rebooted comp236))
    (not (running comp1698))
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
    (one-off comp236)
  )
)
(:action evaluate-comp237-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp237)
    (rebooted comp237)
  )
  :effect (and
    (not (evaluate comp237))
    (evaluate comp238)
  )
)
(:action evaluate-comp237-all-on
  :parameters ()
  :precondition (and
    (evaluate comp237)
    (not (rebooted comp237))
    (running comp236)
  )
  :effect (and
    (not (evaluate comp237))
    (evaluate comp238)
    (all-on comp237)
  )
)
(:action evaluate-comp237-off-comp236
  :parameters ()
  :precondition (and
    (evaluate comp237)
    (not (rebooted comp237))
    (not (running comp236))
  )
  :effect (and
    (not (evaluate comp237))
    (evaluate comp238)
    (one-off comp237)
  )
)
(:action evaluate-comp238-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (rebooted comp238)
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
  )
)
(:action evaluate-comp238-all-on
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (not (rebooted comp238))
    (running comp237)
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
    (all-on comp238)
  )
)
(:action evaluate-comp238-off-comp237
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (not (rebooted comp238))
    (not (running comp237))
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
    (one-off comp238)
  )
)
(:action evaluate-comp239-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (rebooted comp239)
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
  )
)
(:action evaluate-comp239-all-on
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (not (rebooted comp239))
    (running comp238)
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
    (all-on comp239)
  )
)
(:action evaluate-comp239-off-comp238
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (not (rebooted comp239))
    (not (running comp238))
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
    (one-off comp239)
  )
)
(:action evaluate-comp240-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (rebooted comp240)
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
  )
)
(:action evaluate-comp240-all-on
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (not (rebooted comp240))
    (running comp239)
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
    (all-on comp240)
  )
)
(:action evaluate-comp240-off-comp239
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (not (rebooted comp240))
    (not (running comp239))
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
    (one-off comp240)
  )
)
(:action evaluate-comp241-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (rebooted comp241)
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
  )
)
(:action evaluate-comp241-all-on
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (not (rebooted comp241))
    (running comp240)
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
    (all-on comp241)
  )
)
(:action evaluate-comp241-off-comp240
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (not (rebooted comp241))
    (not (running comp240))
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
    (one-off comp241)
  )
)
(:action evaluate-comp242-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp242)
    (rebooted comp242)
  )
  :effect (and
    (not (evaluate comp242))
    (evaluate comp243)
  )
)
(:action evaluate-comp242-all-on
  :parameters ()
  :precondition (and
    (evaluate comp242)
    (not (rebooted comp242))
    (running comp241)
  )
  :effect (and
    (not (evaluate comp242))
    (evaluate comp243)
    (all-on comp242)
  )
)
(:action evaluate-comp242-off-comp241
  :parameters ()
  :precondition (and
    (evaluate comp242)
    (not (rebooted comp242))
    (not (running comp241))
  )
  :effect (and
    (not (evaluate comp242))
    (evaluate comp243)
    (one-off comp242)
  )
)
(:action evaluate-comp243-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp243)
    (rebooted comp243)
  )
  :effect (and
    (not (evaluate comp243))
    (evaluate comp244)
  )
)
(:action evaluate-comp243-all-on
  :parameters ()
  :precondition (and
    (evaluate comp243)
    (not (rebooted comp243))
    (running comp242)
  )
  :effect (and
    (not (evaluate comp243))
    (evaluate comp244)
    (all-on comp243)
  )
)
(:action evaluate-comp243-off-comp242
  :parameters ()
  :precondition (and
    (evaluate comp243)
    (not (rebooted comp243))
    (not (running comp242))
  )
  :effect (and
    (not (evaluate comp243))
    (evaluate comp244)
    (one-off comp243)
  )
)
(:action evaluate-comp244-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (rebooted comp244)
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
  )
)
(:action evaluate-comp244-all-on
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (not (rebooted comp244))
    (running comp243)
    (running comp251)
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
    (all-on comp244)
  )
)
(:action evaluate-comp244-off-comp243
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (not (rebooted comp244))
    (not (running comp243))
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
    (one-off comp244)
  )
)
(:action evaluate-comp244-off-comp251
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (not (rebooted comp244))
    (not (running comp251))
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
    (one-off comp244)
  )
)
(:action evaluate-comp245-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (rebooted comp245)
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
  )
)
(:action evaluate-comp245-all-on
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (not (rebooted comp245))
    (running comp244)
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
    (all-on comp245)
  )
)
(:action evaluate-comp245-off-comp244
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (not (rebooted comp245))
    (not (running comp244))
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
    (one-off comp245)
  )
)
(:action evaluate-comp246-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (rebooted comp246)
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
  )
)
(:action evaluate-comp246-all-on
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (not (rebooted comp246))
    (running comp128)
    (running comp245)
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
    (all-on comp246)
  )
)
(:action evaluate-comp246-off-comp128
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (not (rebooted comp246))
    (not (running comp128))
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
    (one-off comp246)
  )
)
(:action evaluate-comp246-off-comp245
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (not (rebooted comp246))
    (not (running comp245))
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
    (one-off comp246)
  )
)
(:action evaluate-comp247-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (rebooted comp247)
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
  )
)
(:action evaluate-comp247-all-on
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (not (rebooted comp247))
    (running comp246)
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
    (all-on comp247)
  )
)
(:action evaluate-comp247-off-comp246
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (not (rebooted comp247))
    (not (running comp246))
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
    (one-off comp247)
  )
)
(:action evaluate-comp248-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (rebooted comp248)
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
  )
)
(:action evaluate-comp248-all-on
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (not (rebooted comp248))
    (running comp247)
    (running comp378)
    (running comp482)
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
    (all-on comp248)
  )
)
(:action evaluate-comp248-off-comp247
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (not (rebooted comp248))
    (not (running comp247))
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
    (one-off comp248)
  )
)
(:action evaluate-comp248-off-comp378
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (not (rebooted comp248))
    (not (running comp378))
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
    (one-off comp248)
  )
)
(:action evaluate-comp248-off-comp482
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (not (rebooted comp248))
    (not (running comp482))
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
    (one-off comp248)
  )
)
(:action evaluate-comp249-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (rebooted comp249)
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
  )
)
(:action evaluate-comp249-all-on
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (running comp248)
    (running comp399)
    (running comp854)
    (running comp1303)
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (all-on comp249)
  )
)
(:action evaluate-comp249-off-comp248
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (not (running comp248))
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (one-off comp249)
  )
)
(:action evaluate-comp249-off-comp399
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (not (running comp399))
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (one-off comp249)
  )
)
(:action evaluate-comp249-off-comp854
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (not (running comp854))
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (one-off comp249)
  )
)
(:action evaluate-comp249-off-comp1303
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (not (running comp1303))
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (one-off comp249)
  )
)
(:action evaluate-comp250-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (rebooted comp250)
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
  )
)
(:action evaluate-comp250-all-on
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (not (rebooted comp250))
    (running comp249)
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
    (all-on comp250)
  )
)
(:action evaluate-comp250-off-comp249
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (not (rebooted comp250))
    (not (running comp249))
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
    (one-off comp250)
  )
)
(:action evaluate-comp251-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (rebooted comp251)
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
  )
)
(:action evaluate-comp251-all-on
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (not (rebooted comp251))
    (running comp250)
    (running comp414)
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
    (all-on comp251)
  )
)
(:action evaluate-comp251-off-comp250
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (not (rebooted comp251))
    (not (running comp250))
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
    (one-off comp251)
  )
)
(:action evaluate-comp251-off-comp414
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (not (rebooted comp251))
    (not (running comp414))
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
    (one-off comp251)
  )
)
(:action evaluate-comp252-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (rebooted comp252)
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
  )
)
(:action evaluate-comp252-all-on
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (not (rebooted comp252))
    (running comp251)
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
    (all-on comp252)
  )
)
(:action evaluate-comp252-off-comp251
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (not (rebooted comp252))
    (not (running comp251))
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
    (one-off comp252)
  )
)
(:action evaluate-comp253-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (rebooted comp253)
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
  )
)
(:action evaluate-comp253-all-on
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (not (rebooted comp253))
    (running comp252)
    (running comp1474)
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
    (all-on comp253)
  )
)
(:action evaluate-comp253-off-comp252
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (not (rebooted comp253))
    (not (running comp252))
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
    (one-off comp253)
  )
)
(:action evaluate-comp253-off-comp1474
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (not (rebooted comp253))
    (not (running comp1474))
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
    (one-off comp253)
  )
)
(:action evaluate-comp254-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (rebooted comp254)
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
  )
)
(:action evaluate-comp254-all-on
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (not (rebooted comp254))
    (running comp253)
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
    (all-on comp254)
  )
)
(:action evaluate-comp254-off-comp253
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (not (rebooted comp254))
    (not (running comp253))
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
    (one-off comp254)
  )
)
(:action evaluate-comp255-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (rebooted comp255)
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
  )
)
(:action evaluate-comp255-all-on
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (not (rebooted comp255))
    (running comp254)
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
    (all-on comp255)
  )
)
(:action evaluate-comp255-off-comp254
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (not (rebooted comp255))
    (not (running comp254))
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
    (one-off comp255)
  )
)
(:action evaluate-comp256-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (rebooted comp256)
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
  )
)
(:action evaluate-comp256-all-on
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (not (rebooted comp256))
    (running comp255)
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
    (all-on comp256)
  )
)
(:action evaluate-comp256-off-comp255
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (not (rebooted comp256))
    (not (running comp255))
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
    (one-off comp256)
  )
)
(:action evaluate-comp257-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (rebooted comp257)
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
  )
)
(:action evaluate-comp257-all-on
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (not (rebooted comp257))
    (running comp256)
    (running comp1300)
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
    (all-on comp257)
  )
)
(:action evaluate-comp257-off-comp256
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (not (rebooted comp257))
    (not (running comp256))
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
    (one-off comp257)
  )
)
(:action evaluate-comp257-off-comp1300
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (not (rebooted comp257))
    (not (running comp1300))
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
    (one-off comp257)
  )
)
(:action evaluate-comp258-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (rebooted comp258)
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
  )
)
(:action evaluate-comp258-all-on
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (not (rebooted comp258))
    (running comp257)
    (running comp1495)
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
    (all-on comp258)
  )
)
(:action evaluate-comp258-off-comp257
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (not (rebooted comp258))
    (not (running comp257))
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
    (one-off comp258)
  )
)
(:action evaluate-comp258-off-comp1495
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (not (rebooted comp258))
    (not (running comp1495))
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
    (one-off comp258)
  )
)
(:action evaluate-comp259-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (rebooted comp259)
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
  )
)
(:action evaluate-comp259-all-on
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (not (rebooted comp259))
    (running comp258)
    (running comp860)
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
    (all-on comp259)
  )
)
(:action evaluate-comp259-off-comp258
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (not (rebooted comp259))
    (not (running comp258))
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
    (one-off comp259)
  )
)
(:action evaluate-comp259-off-comp860
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (not (rebooted comp259))
    (not (running comp860))
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
    (one-off comp259)
  )
)
(:action evaluate-comp260-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (rebooted comp260)
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
  )
)
(:action evaluate-comp260-all-on
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (not (rebooted comp260))
    (running comp259)
    (running comp933)
    (running comp1331)
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
    (all-on comp260)
  )
)
(:action evaluate-comp260-off-comp259
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (not (rebooted comp260))
    (not (running comp259))
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
    (one-off comp260)
  )
)
(:action evaluate-comp260-off-comp933
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (not (rebooted comp260))
    (not (running comp933))
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
    (one-off comp260)
  )
)
(:action evaluate-comp260-off-comp1331
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (not (rebooted comp260))
    (not (running comp1331))
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
    (one-off comp260)
  )
)
(:action evaluate-comp261-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (rebooted comp261)
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
  )
)
(:action evaluate-comp261-all-on
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (not (rebooted comp261))
    (running comp260)
    (running comp447)
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
    (all-on comp261)
  )
)
(:action evaluate-comp261-off-comp260
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (not (rebooted comp261))
    (not (running comp260))
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
    (one-off comp261)
  )
)
(:action evaluate-comp261-off-comp447
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (not (rebooted comp261))
    (not (running comp447))
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
    (one-off comp261)
  )
)
(:action evaluate-comp262-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (rebooted comp262)
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
  )
)
(:action evaluate-comp262-all-on
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (not (rebooted comp262))
    (running comp67)
    (running comp261)
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
    (all-on comp262)
  )
)
(:action evaluate-comp262-off-comp67
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (not (rebooted comp262))
    (not (running comp67))
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
    (one-off comp262)
  )
)
(:action evaluate-comp262-off-comp261
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (not (rebooted comp262))
    (not (running comp261))
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
    (one-off comp262)
  )
)
(:action evaluate-comp263-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp263)
    (rebooted comp263)
  )
  :effect (and
    (not (evaluate comp263))
    (evaluate comp264)
  )
)
(:action evaluate-comp263-all-on
  :parameters ()
  :precondition (and
    (evaluate comp263)
    (not (rebooted comp263))
    (running comp262)
  )
  :effect (and
    (not (evaluate comp263))
    (evaluate comp264)
    (all-on comp263)
  )
)
(:action evaluate-comp263-off-comp262
  :parameters ()
  :precondition (and
    (evaluate comp263)
    (not (rebooted comp263))
    (not (running comp262))
  )
  :effect (and
    (not (evaluate comp263))
    (evaluate comp264)
    (one-off comp263)
  )
)
(:action evaluate-comp264-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp264)
    (rebooted comp264)
  )
  :effect (and
    (not (evaluate comp264))
    (evaluate comp265)
  )
)
(:action evaluate-comp264-all-on
  :parameters ()
  :precondition (and
    (evaluate comp264)
    (not (rebooted comp264))
    (running comp263)
  )
  :effect (and
    (not (evaluate comp264))
    (evaluate comp265)
    (all-on comp264)
  )
)
(:action evaluate-comp264-off-comp263
  :parameters ()
  :precondition (and
    (evaluate comp264)
    (not (rebooted comp264))
    (not (running comp263))
  )
  :effect (and
    (not (evaluate comp264))
    (evaluate comp265)
    (one-off comp264)
  )
)
(:action evaluate-comp265-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (rebooted comp265)
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
  )
)
(:action evaluate-comp265-all-on
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (not (rebooted comp265))
    (running comp264)
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
    (all-on comp265)
  )
)
(:action evaluate-comp265-off-comp264
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (not (rebooted comp265))
    (not (running comp264))
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
    (one-off comp265)
  )
)
(:action evaluate-comp266-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (rebooted comp266)
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
  )
)
(:action evaluate-comp266-all-on
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (not (rebooted comp266))
    (running comp265)
    (running comp376)
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
    (all-on comp266)
  )
)
(:action evaluate-comp266-off-comp265
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (not (rebooted comp266))
    (not (running comp265))
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
    (one-off comp266)
  )
)
(:action evaluate-comp266-off-comp376
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (not (rebooted comp266))
    (not (running comp376))
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
    (one-off comp266)
  )
)
(:action evaluate-comp267-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (rebooted comp267)
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
  )
)
(:action evaluate-comp267-all-on
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (not (rebooted comp267))
    (running comp266)
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
    (all-on comp267)
  )
)
(:action evaluate-comp267-off-comp266
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (not (rebooted comp267))
    (not (running comp266))
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
    (one-off comp267)
  )
)
(:action evaluate-comp268-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (rebooted comp268)
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
  )
)
(:action evaluate-comp268-all-on
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (not (rebooted comp268))
    (running comp43)
    (running comp267)
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
    (all-on comp268)
  )
)
(:action evaluate-comp268-off-comp43
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (not (rebooted comp268))
    (not (running comp43))
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
    (one-off comp268)
  )
)
(:action evaluate-comp268-off-comp267
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (not (rebooted comp268))
    (not (running comp267))
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
    (one-off comp268)
  )
)
(:action evaluate-comp269-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (rebooted comp269)
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
  )
)
(:action evaluate-comp269-all-on
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (not (rebooted comp269))
    (running comp268)
    (running comp373)
    (running comp1696)
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
    (all-on comp269)
  )
)
(:action evaluate-comp269-off-comp268
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (not (rebooted comp269))
    (not (running comp268))
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
    (one-off comp269)
  )
)
(:action evaluate-comp269-off-comp373
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (not (rebooted comp269))
    (not (running comp373))
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
    (one-off comp269)
  )
)
(:action evaluate-comp269-off-comp1696
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (not (rebooted comp269))
    (not (running comp1696))
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
    (one-off comp269)
  )
)
(:action evaluate-comp270-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp270)
    (rebooted comp270)
  )
  :effect (and
    (not (evaluate comp270))
    (evaluate comp271)
  )
)
(:action evaluate-comp270-all-on
  :parameters ()
  :precondition (and
    (evaluate comp270)
    (not (rebooted comp270))
    (running comp269)
  )
  :effect (and
    (not (evaluate comp270))
    (evaluate comp271)
    (all-on comp270)
  )
)
(:action evaluate-comp270-off-comp269
  :parameters ()
  :precondition (and
    (evaluate comp270)
    (not (rebooted comp270))
    (not (running comp269))
  )
  :effect (and
    (not (evaluate comp270))
    (evaluate comp271)
    (one-off comp270)
  )
)
(:action evaluate-comp271-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (rebooted comp271)
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
  )
)
(:action evaluate-comp271-all-on
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (not (rebooted comp271))
    (running comp270)
    (running comp857)
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
    (all-on comp271)
  )
)
(:action evaluate-comp271-off-comp270
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (not (rebooted comp271))
    (not (running comp270))
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
    (one-off comp271)
  )
)
(:action evaluate-comp271-off-comp857
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (not (rebooted comp271))
    (not (running comp857))
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
    (one-off comp271)
  )
)
(:action evaluate-comp272-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (rebooted comp272)
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
  )
)
(:action evaluate-comp272-all-on
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (not (rebooted comp272))
    (running comp117)
    (running comp271)
    (running comp1330)
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
    (all-on comp272)
  )
)
(:action evaluate-comp272-off-comp117
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (not (rebooted comp272))
    (not (running comp117))
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
    (one-off comp272)
  )
)
(:action evaluate-comp272-off-comp271
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (not (rebooted comp272))
    (not (running comp271))
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
    (one-off comp272)
  )
)
(:action evaluate-comp272-off-comp1330
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (not (rebooted comp272))
    (not (running comp1330))
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
    (one-off comp272)
  )
)
(:action evaluate-comp273-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (rebooted comp273)
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
  )
)
(:action evaluate-comp273-all-on
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (not (rebooted comp273))
    (running comp272)
    (running comp1442)
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
    (all-on comp273)
  )
)
(:action evaluate-comp273-off-comp272
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (not (rebooted comp273))
    (not (running comp272))
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
    (one-off comp273)
  )
)
(:action evaluate-comp273-off-comp1442
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (not (rebooted comp273))
    (not (running comp1442))
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
    (one-off comp273)
  )
)
(:action evaluate-comp274-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (rebooted comp274)
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
  )
)
(:action evaluate-comp274-all-on
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (not (rebooted comp274))
    (running comp273)
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
    (all-on comp274)
  )
)
(:action evaluate-comp274-off-comp273
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (not (rebooted comp274))
    (not (running comp273))
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
    (one-off comp274)
  )
)
(:action evaluate-comp275-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (rebooted comp275)
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
  )
)
(:action evaluate-comp275-all-on
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (not (rebooted comp275))
    (running comp274)
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
    (all-on comp275)
  )
)
(:action evaluate-comp275-off-comp274
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (not (rebooted comp275))
    (not (running comp274))
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
    (one-off comp275)
  )
)
(:action evaluate-comp276-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (rebooted comp276)
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
  )
)
(:action evaluate-comp276-all-on
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (not (rebooted comp276))
    (running comp275)
    (running comp1115)
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
    (all-on comp276)
  )
)
(:action evaluate-comp276-off-comp275
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (not (rebooted comp276))
    (not (running comp275))
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
    (one-off comp276)
  )
)
(:action evaluate-comp276-off-comp1115
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (not (rebooted comp276))
    (not (running comp1115))
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
    (one-off comp276)
  )
)
(:action evaluate-comp277-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp277)
    (rebooted comp277)
  )
  :effect (and
    (not (evaluate comp277))
    (evaluate comp278)
  )
)
(:action evaluate-comp277-all-on
  :parameters ()
  :precondition (and
    (evaluate comp277)
    (not (rebooted comp277))
    (running comp276)
  )
  :effect (and
    (not (evaluate comp277))
    (evaluate comp278)
    (all-on comp277)
  )
)
(:action evaluate-comp277-off-comp276
  :parameters ()
  :precondition (and
    (evaluate comp277)
    (not (rebooted comp277))
    (not (running comp276))
  )
  :effect (and
    (not (evaluate comp277))
    (evaluate comp278)
    (one-off comp277)
  )
)
(:action evaluate-comp278-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (rebooted comp278)
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
  )
)
(:action evaluate-comp278-all-on
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (not (rebooted comp278))
    (running comp245)
    (running comp277)
    (running comp1092)
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
    (all-on comp278)
  )
)
(:action evaluate-comp278-off-comp245
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (not (rebooted comp278))
    (not (running comp245))
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
    (one-off comp278)
  )
)
(:action evaluate-comp278-off-comp277
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (not (rebooted comp278))
    (not (running comp277))
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
    (one-off comp278)
  )
)
(:action evaluate-comp278-off-comp1092
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (not (rebooted comp278))
    (not (running comp1092))
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
    (one-off comp278)
  )
)
(:action evaluate-comp279-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (rebooted comp279)
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
  )
)
(:action evaluate-comp279-all-on
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (not (rebooted comp279))
    (running comp278)
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
    (all-on comp279)
  )
)
(:action evaluate-comp279-off-comp278
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (not (rebooted comp279))
    (not (running comp278))
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
    (one-off comp279)
  )
)
(:action evaluate-comp280-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (rebooted comp280)
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
  )
)
(:action evaluate-comp280-all-on
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (not (rebooted comp280))
    (running comp279)
    (running comp1838)
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
    (all-on comp280)
  )
)
(:action evaluate-comp280-off-comp279
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (not (rebooted comp280))
    (not (running comp279))
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
    (one-off comp280)
  )
)
(:action evaluate-comp280-off-comp1838
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (not (rebooted comp280))
    (not (running comp1838))
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
    (one-off comp280)
  )
)
(:action evaluate-comp281-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (rebooted comp281)
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
  )
)
(:action evaluate-comp281-all-on
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (not (rebooted comp281))
    (running comp280)
    (running comp921)
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
    (all-on comp281)
  )
)
(:action evaluate-comp281-off-comp280
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (not (rebooted comp281))
    (not (running comp280))
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
    (one-off comp281)
  )
)
(:action evaluate-comp281-off-comp921
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (not (rebooted comp281))
    (not (running comp921))
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
    (one-off comp281)
  )
)
(:action evaluate-comp282-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (rebooted comp282)
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
  )
)
(:action evaluate-comp282-all-on
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (not (rebooted comp282))
    (running comp281)
    (running comp409)
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
    (all-on comp282)
  )
)
(:action evaluate-comp282-off-comp281
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (not (rebooted comp282))
    (not (running comp281))
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
    (one-off comp282)
  )
)
(:action evaluate-comp282-off-comp409
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (not (rebooted comp282))
    (not (running comp409))
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
    (one-off comp282)
  )
)
(:action evaluate-comp283-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (rebooted comp283)
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
  )
)
(:action evaluate-comp283-all-on
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (not (rebooted comp283))
    (running comp282)
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
    (all-on comp283)
  )
)
(:action evaluate-comp283-off-comp282
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (not (rebooted comp283))
    (not (running comp282))
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
    (one-off comp283)
  )
)
(:action evaluate-comp284-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp284)
    (rebooted comp284)
  )
  :effect (and
    (not (evaluate comp284))
    (evaluate comp285)
  )
)
(:action evaluate-comp284-all-on
  :parameters ()
  :precondition (and
    (evaluate comp284)
    (not (rebooted comp284))
    (running comp283)
  )
  :effect (and
    (not (evaluate comp284))
    (evaluate comp285)
    (all-on comp284)
  )
)
(:action evaluate-comp284-off-comp283
  :parameters ()
  :precondition (and
    (evaluate comp284)
    (not (rebooted comp284))
    (not (running comp283))
  )
  :effect (and
    (not (evaluate comp284))
    (evaluate comp285)
    (one-off comp284)
  )
)
(:action evaluate-comp285-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (rebooted comp285)
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
  )
)
(:action evaluate-comp285-all-on
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (not (rebooted comp285))
    (running comp284)
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
    (all-on comp285)
  )
)
(:action evaluate-comp285-off-comp284
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (not (rebooted comp285))
    (not (running comp284))
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
    (one-off comp285)
  )
)
(:action evaluate-comp286-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (rebooted comp286)
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
  )
)
(:action evaluate-comp286-all-on
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (running comp285)
    (running comp754)
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (all-on comp286)
  )
)
(:action evaluate-comp286-off-comp285
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (not (running comp285))
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (one-off comp286)
  )
)
(:action evaluate-comp286-off-comp754
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (not (running comp754))
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (one-off comp286)
  )
)
(:action evaluate-comp287-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (rebooted comp287)
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
  )
)
(:action evaluate-comp287-all-on
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (running comp286)
    (running comp1023)
    (running comp1328)
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (all-on comp287)
  )
)
(:action evaluate-comp287-off-comp286
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (not (running comp286))
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (one-off comp287)
  )
)
(:action evaluate-comp287-off-comp1023
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (not (running comp1023))
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (one-off comp287)
  )
)
(:action evaluate-comp287-off-comp1328
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (not (running comp1328))
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (one-off comp287)
  )
)
(:action evaluate-comp288-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (rebooted comp288)
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
  )
)
(:action evaluate-comp288-all-on
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (not (rebooted comp288))
    (running comp287)
    (running comp455)
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
    (all-on comp288)
  )
)
(:action evaluate-comp288-off-comp287
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (not (rebooted comp288))
    (not (running comp287))
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
    (one-off comp288)
  )
)
(:action evaluate-comp288-off-comp455
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (not (rebooted comp288))
    (not (running comp455))
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
    (one-off comp288)
  )
)
(:action evaluate-comp289-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (rebooted comp289)
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
  )
)
(:action evaluate-comp289-all-on
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (not (rebooted comp289))
    (running comp288)
    (running comp1326)
    (running comp1789)
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
    (all-on comp289)
  )
)
(:action evaluate-comp289-off-comp288
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (not (rebooted comp289))
    (not (running comp288))
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
    (one-off comp289)
  )
)
(:action evaluate-comp289-off-comp1326
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (not (rebooted comp289))
    (not (running comp1326))
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
    (one-off comp289)
  )
)
(:action evaluate-comp289-off-comp1789
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (not (rebooted comp289))
    (not (running comp1789))
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
    (one-off comp289)
  )
)
(:action evaluate-comp290-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (rebooted comp290)
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
  )
)
(:action evaluate-comp290-all-on
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (not (rebooted comp290))
    (running comp289)
    (running comp1823)
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
    (all-on comp290)
  )
)
(:action evaluate-comp290-off-comp289
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (not (rebooted comp290))
    (not (running comp289))
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
    (one-off comp290)
  )
)
(:action evaluate-comp290-off-comp1823
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (not (rebooted comp290))
    (not (running comp1823))
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
    (one-off comp290)
  )
)
(:action evaluate-comp291-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (rebooted comp291)
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
  )
)
(:action evaluate-comp291-all-on
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (not (rebooted comp291))
    (running comp290)
    (running comp1061)
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
    (all-on comp291)
  )
)
(:action evaluate-comp291-off-comp290
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (not (rebooted comp291))
    (not (running comp290))
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
    (one-off comp291)
  )
)
(:action evaluate-comp291-off-comp1061
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (not (rebooted comp291))
    (not (running comp1061))
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
    (one-off comp291)
  )
)
(:action evaluate-comp292-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp292)
    (rebooted comp292)
  )
  :effect (and
    (not (evaluate comp292))
    (evaluate comp293)
  )
)
(:action evaluate-comp292-all-on
  :parameters ()
  :precondition (and
    (evaluate comp292)
    (not (rebooted comp292))
    (running comp291)
  )
  :effect (and
    (not (evaluate comp292))
    (evaluate comp293)
    (all-on comp292)
  )
)
(:action evaluate-comp292-off-comp291
  :parameters ()
  :precondition (and
    (evaluate comp292)
    (not (rebooted comp292))
    (not (running comp291))
  )
  :effect (and
    (not (evaluate comp292))
    (evaluate comp293)
    (one-off comp292)
  )
)
(:action evaluate-comp293-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp293)
    (rebooted comp293)
  )
  :effect (and
    (not (evaluate comp293))
    (evaluate comp294)
  )
)
(:action evaluate-comp293-all-on
  :parameters ()
  :precondition (and
    (evaluate comp293)
    (not (rebooted comp293))
    (running comp292)
  )
  :effect (and
    (not (evaluate comp293))
    (evaluate comp294)
    (all-on comp293)
  )
)
(:action evaluate-comp293-off-comp292
  :parameters ()
  :precondition (and
    (evaluate comp293)
    (not (rebooted comp293))
    (not (running comp292))
  )
  :effect (and
    (not (evaluate comp293))
    (evaluate comp294)
    (one-off comp293)
  )
)
(:action evaluate-comp294-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (rebooted comp294)
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
  )
)
(:action evaluate-comp294-all-on
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (not (rebooted comp294))
    (running comp293)
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
    (all-on comp294)
  )
)
(:action evaluate-comp294-off-comp293
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (not (rebooted comp294))
    (not (running comp293))
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
    (one-off comp294)
  )
)
(:action evaluate-comp295-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (rebooted comp295)
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
  )
)
(:action evaluate-comp295-all-on
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (not (rebooted comp295))
    (running comp294)
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
    (all-on comp295)
  )
)
(:action evaluate-comp295-off-comp294
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (not (rebooted comp295))
    (not (running comp294))
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
    (one-off comp295)
  )
)
(:action evaluate-comp296-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp296)
    (rebooted comp296)
  )
  :effect (and
    (not (evaluate comp296))
    (evaluate comp297)
  )
)
(:action evaluate-comp296-all-on
  :parameters ()
  :precondition (and
    (evaluate comp296)
    (not (rebooted comp296))
    (running comp295)
  )
  :effect (and
    (not (evaluate comp296))
    (evaluate comp297)
    (all-on comp296)
  )
)
(:action evaluate-comp296-off-comp295
  :parameters ()
  :precondition (and
    (evaluate comp296)
    (not (rebooted comp296))
    (not (running comp295))
  )
  :effect (and
    (not (evaluate comp296))
    (evaluate comp297)
    (one-off comp296)
  )
)
(:action evaluate-comp297-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (rebooted comp297)
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
  )
)
(:action evaluate-comp297-all-on
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (not (rebooted comp297))
    (running comp41)
    (running comp296)
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
    (all-on comp297)
  )
)
(:action evaluate-comp297-off-comp41
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (not (rebooted comp297))
    (not (running comp41))
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
    (one-off comp297)
  )
)
(:action evaluate-comp297-off-comp296
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (not (rebooted comp297))
    (not (running comp296))
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
    (one-off comp297)
  )
)
(:action evaluate-comp298-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (rebooted comp298)
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
  )
)
(:action evaluate-comp298-all-on
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (not (rebooted comp298))
    (running comp297)
    (running comp1049)
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
    (all-on comp298)
  )
)
(:action evaluate-comp298-off-comp297
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (not (rebooted comp298))
    (not (running comp297))
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
    (one-off comp298)
  )
)
(:action evaluate-comp298-off-comp1049
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (not (rebooted comp298))
    (not (running comp1049))
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
    (one-off comp298)
  )
)
(:action evaluate-comp299-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (rebooted comp299)
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
  )
)
(:action evaluate-comp299-all-on
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (not (rebooted comp299))
    (running comp298)
    (running comp720)
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
    (all-on comp299)
  )
)
(:action evaluate-comp299-off-comp298
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (not (rebooted comp299))
    (not (running comp298))
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
    (one-off comp299)
  )
)
(:action evaluate-comp299-off-comp720
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (not (rebooted comp299))
    (not (running comp720))
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
    (one-off comp299)
  )
)
(:action evaluate-comp300-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp300)
    (rebooted comp300)
  )
  :effect (and
    (not (evaluate comp300))
    (evaluate comp301)
  )
)
(:action evaluate-comp300-all-on
  :parameters ()
  :precondition (and
    (evaluate comp300)
    (not (rebooted comp300))
    (running comp299)
  )
  :effect (and
    (not (evaluate comp300))
    (evaluate comp301)
    (all-on comp300)
  )
)
(:action evaluate-comp300-off-comp299
  :parameters ()
  :precondition (and
    (evaluate comp300)
    (not (rebooted comp300))
    (not (running comp299))
  )
  :effect (and
    (not (evaluate comp300))
    (evaluate comp301)
    (one-off comp300)
  )
)
(:action evaluate-comp301-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp301)
    (rebooted comp301)
  )
  :effect (and
    (not (evaluate comp301))
    (evaluate comp302)
  )
)
(:action evaluate-comp301-all-on
  :parameters ()
  :precondition (and
    (evaluate comp301)
    (not (rebooted comp301))
    (running comp300)
  )
  :effect (and
    (not (evaluate comp301))
    (evaluate comp302)
    (all-on comp301)
  )
)
(:action evaluate-comp301-off-comp300
  :parameters ()
  :precondition (and
    (evaluate comp301)
    (not (rebooted comp301))
    (not (running comp300))
  )
  :effect (and
    (not (evaluate comp301))
    (evaluate comp302)
    (one-off comp301)
  )
)
(:action evaluate-comp302-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp302)
    (rebooted comp302)
  )
  :effect (and
    (not (evaluate comp302))
    (evaluate comp303)
  )
)
(:action evaluate-comp302-all-on
  :parameters ()
  :precondition (and
    (evaluate comp302)
    (not (rebooted comp302))
    (running comp301)
  )
  :effect (and
    (not (evaluate comp302))
    (evaluate comp303)
    (all-on comp302)
  )
)
(:action evaluate-comp302-off-comp301
  :parameters ()
  :precondition (and
    (evaluate comp302)
    (not (rebooted comp302))
    (not (running comp301))
  )
  :effect (and
    (not (evaluate comp302))
    (evaluate comp303)
    (one-off comp302)
  )
)
(:action evaluate-comp303-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp303)
    (rebooted comp303)
  )
  :effect (and
    (not (evaluate comp303))
    (evaluate comp304)
  )
)
(:action evaluate-comp303-all-on
  :parameters ()
  :precondition (and
    (evaluate comp303)
    (not (rebooted comp303))
    (running comp302)
  )
  :effect (and
    (not (evaluate comp303))
    (evaluate comp304)
    (all-on comp303)
  )
)
(:action evaluate-comp303-off-comp302
  :parameters ()
  :precondition (and
    (evaluate comp303)
    (not (rebooted comp303))
    (not (running comp302))
  )
  :effect (and
    (not (evaluate comp303))
    (evaluate comp304)
    (one-off comp303)
  )
)
(:action evaluate-comp304-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (rebooted comp304)
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
  )
)
(:action evaluate-comp304-all-on
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (not (rebooted comp304))
    (running comp303)
    (running comp981)
    (running comp1887)
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
    (all-on comp304)
  )
)
(:action evaluate-comp304-off-comp303
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (not (rebooted comp304))
    (not (running comp303))
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
    (one-off comp304)
  )
)
(:action evaluate-comp304-off-comp981
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (not (rebooted comp304))
    (not (running comp981))
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
    (one-off comp304)
  )
)
(:action evaluate-comp304-off-comp1887
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (not (rebooted comp304))
    (not (running comp1887))
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
    (one-off comp304)
  )
)
(:action evaluate-comp305-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (rebooted comp305)
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
  )
)
(:action evaluate-comp305-all-on
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (not (rebooted comp305))
    (running comp304)
    (running comp1399)
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
    (all-on comp305)
  )
)
(:action evaluate-comp305-off-comp304
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (not (rebooted comp305))
    (not (running comp304))
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
    (one-off comp305)
  )
)
(:action evaluate-comp305-off-comp1399
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (not (rebooted comp305))
    (not (running comp1399))
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
    (one-off comp305)
  )
)
(:action evaluate-comp306-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (rebooted comp306)
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
  )
)
(:action evaluate-comp306-all-on
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (not (rebooted comp306))
    (running comp305)
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
    (all-on comp306)
  )
)
(:action evaluate-comp306-off-comp305
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (not (rebooted comp306))
    (not (running comp305))
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
    (one-off comp306)
  )
)
(:action evaluate-comp307-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp307)
    (rebooted comp307)
  )
  :effect (and
    (not (evaluate comp307))
    (evaluate comp308)
  )
)
(:action evaluate-comp307-all-on
  :parameters ()
  :precondition (and
    (evaluate comp307)
    (not (rebooted comp307))
    (running comp306)
  )
  :effect (and
    (not (evaluate comp307))
    (evaluate comp308)
    (all-on comp307)
  )
)
(:action evaluate-comp307-off-comp306
  :parameters ()
  :precondition (and
    (evaluate comp307)
    (not (rebooted comp307))
    (not (running comp306))
  )
  :effect (and
    (not (evaluate comp307))
    (evaluate comp308)
    (one-off comp307)
  )
)
(:action evaluate-comp308-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (rebooted comp308)
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
  )
)
(:action evaluate-comp308-all-on
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (not (rebooted comp308))
    (running comp307)
    (running comp332)
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
    (all-on comp308)
  )
)
(:action evaluate-comp308-off-comp307
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (not (rebooted comp308))
    (not (running comp307))
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
    (one-off comp308)
  )
)
(:action evaluate-comp308-off-comp332
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (not (rebooted comp308))
    (not (running comp332))
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
    (one-off comp308)
  )
)
(:action evaluate-comp309-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp309)
    (rebooted comp309)
  )
  :effect (and
    (not (evaluate comp309))
    (evaluate comp310)
  )
)
(:action evaluate-comp309-all-on
  :parameters ()
  :precondition (and
    (evaluate comp309)
    (not (rebooted comp309))
    (running comp308)
  )
  :effect (and
    (not (evaluate comp309))
    (evaluate comp310)
    (all-on comp309)
  )
)
(:action evaluate-comp309-off-comp308
  :parameters ()
  :precondition (and
    (evaluate comp309)
    (not (rebooted comp309))
    (not (running comp308))
  )
  :effect (and
    (not (evaluate comp309))
    (evaluate comp310)
    (one-off comp309)
  )
)
(:action evaluate-comp310-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (rebooted comp310)
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
  )
)
(:action evaluate-comp310-all-on
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (not (rebooted comp310))
    (running comp309)
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
    (all-on comp310)
  )
)
(:action evaluate-comp310-off-comp309
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (not (rebooted comp310))
    (not (running comp309))
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
    (one-off comp310)
  )
)
(:action evaluate-comp311-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp311)
    (rebooted comp311)
  )
  :effect (and
    (not (evaluate comp311))
    (evaluate comp312)
  )
)
(:action evaluate-comp311-all-on
  :parameters ()
  :precondition (and
    (evaluate comp311)
    (not (rebooted comp311))
    (running comp310)
  )
  :effect (and
    (not (evaluate comp311))
    (evaluate comp312)
    (all-on comp311)
  )
)
(:action evaluate-comp311-off-comp310
  :parameters ()
  :precondition (and
    (evaluate comp311)
    (not (rebooted comp311))
    (not (running comp310))
  )
  :effect (and
    (not (evaluate comp311))
    (evaluate comp312)
    (one-off comp311)
  )
)
(:action evaluate-comp312-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp312)
    (rebooted comp312)
  )
  :effect (and
    (not (evaluate comp312))
    (evaluate comp313)
  )
)
(:action evaluate-comp312-all-on
  :parameters ()
  :precondition (and
    (evaluate comp312)
    (not (rebooted comp312))
    (running comp311)
  )
  :effect (and
    (not (evaluate comp312))
    (evaluate comp313)
    (all-on comp312)
  )
)
(:action evaluate-comp312-off-comp311
  :parameters ()
  :precondition (and
    (evaluate comp312)
    (not (rebooted comp312))
    (not (running comp311))
  )
  :effect (and
    (not (evaluate comp312))
    (evaluate comp313)
    (one-off comp312)
  )
)
(:action evaluate-comp313-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (rebooted comp313)
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
  )
)
(:action evaluate-comp313-all-on
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (not (rebooted comp313))
    (running comp312)
    (running comp808)
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
    (all-on comp313)
  )
)
(:action evaluate-comp313-off-comp312
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (not (rebooted comp313))
    (not (running comp312))
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
    (one-off comp313)
  )
)
(:action evaluate-comp313-off-comp808
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (not (rebooted comp313))
    (not (running comp808))
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
    (one-off comp313)
  )
)
(:action evaluate-comp314-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (rebooted comp314)
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
  )
)
(:action evaluate-comp314-all-on
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (not (rebooted comp314))
    (running comp33)
    (running comp313)
    (running comp1553)
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
    (all-on comp314)
  )
)
(:action evaluate-comp314-off-comp33
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (not (rebooted comp314))
    (not (running comp33))
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
    (one-off comp314)
  )
)
(:action evaluate-comp314-off-comp313
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (not (rebooted comp314))
    (not (running comp313))
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
    (one-off comp314)
  )
)
(:action evaluate-comp314-off-comp1553
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (not (rebooted comp314))
    (not (running comp1553))
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
    (one-off comp314)
  )
)
(:action evaluate-comp315-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (rebooted comp315)
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
  )
)
(:action evaluate-comp315-all-on
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (not (rebooted comp315))
    (running comp314)
    (running comp1895)
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
    (all-on comp315)
  )
)
(:action evaluate-comp315-off-comp314
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (not (rebooted comp315))
    (not (running comp314))
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
    (one-off comp315)
  )
)
(:action evaluate-comp315-off-comp1895
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (not (rebooted comp315))
    (not (running comp1895))
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
    (one-off comp315)
  )
)
(:action evaluate-comp316-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp316)
    (rebooted comp316)
  )
  :effect (and
    (not (evaluate comp316))
    (evaluate comp317)
  )
)
(:action evaluate-comp316-all-on
  :parameters ()
  :precondition (and
    (evaluate comp316)
    (not (rebooted comp316))
    (running comp315)
  )
  :effect (and
    (not (evaluate comp316))
    (evaluate comp317)
    (all-on comp316)
  )
)
(:action evaluate-comp316-off-comp315
  :parameters ()
  :precondition (and
    (evaluate comp316)
    (not (rebooted comp316))
    (not (running comp315))
  )
  :effect (and
    (not (evaluate comp316))
    (evaluate comp317)
    (one-off comp316)
  )
)
(:action evaluate-comp317-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (rebooted comp317)
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
  )
)
(:action evaluate-comp317-all-on
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (running comp316)
    (running comp1146)
    (running comp1276)
    (running comp1290)
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (all-on comp317)
  )
)
(:action evaluate-comp317-off-comp316
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (not (running comp316))
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (one-off comp317)
  )
)
(:action evaluate-comp317-off-comp1146
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (not (running comp1146))
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (one-off comp317)
  )
)
(:action evaluate-comp317-off-comp1276
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (not (running comp1276))
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (one-off comp317)
  )
)
(:action evaluate-comp317-off-comp1290
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (not (running comp1290))
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (one-off comp317)
  )
)
(:action evaluate-comp318-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp318)
    (rebooted comp318)
  )
  :effect (and
    (not (evaluate comp318))
    (evaluate comp319)
  )
)
(:action evaluate-comp318-all-on
  :parameters ()
  :precondition (and
    (evaluate comp318)
    (not (rebooted comp318))
    (running comp317)
  )
  :effect (and
    (not (evaluate comp318))
    (evaluate comp319)
    (all-on comp318)
  )
)
(:action evaluate-comp318-off-comp317
  :parameters ()
  :precondition (and
    (evaluate comp318)
    (not (rebooted comp318))
    (not (running comp317))
  )
  :effect (and
    (not (evaluate comp318))
    (evaluate comp319)
    (one-off comp318)
  )
)
(:action evaluate-comp319-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (rebooted comp319)
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
  )
)
(:action evaluate-comp319-all-on
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (not (rebooted comp319))
    (running comp318)
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
    (all-on comp319)
  )
)
(:action evaluate-comp319-off-comp318
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (not (rebooted comp319))
    (not (running comp318))
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
    (one-off comp319)
  )
)
(:action evaluate-comp320-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp320)
    (rebooted comp320)
  )
  :effect (and
    (not (evaluate comp320))
    (evaluate comp321)
  )
)
(:action evaluate-comp320-all-on
  :parameters ()
  :precondition (and
    (evaluate comp320)
    (not (rebooted comp320))
    (running comp319)
  )
  :effect (and
    (not (evaluate comp320))
    (evaluate comp321)
    (all-on comp320)
  )
)
(:action evaluate-comp320-off-comp319
  :parameters ()
  :precondition (and
    (evaluate comp320)
    (not (rebooted comp320))
    (not (running comp319))
  )
  :effect (and
    (not (evaluate comp320))
    (evaluate comp321)
    (one-off comp320)
  )
)
(:action evaluate-comp321-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp321)
    (rebooted comp321)
  )
  :effect (and
    (not (evaluate comp321))
    (evaluate comp322)
  )
)
(:action evaluate-comp321-all-on
  :parameters ()
  :precondition (and
    (evaluate comp321)
    (not (rebooted comp321))
    (running comp320)
  )
  :effect (and
    (not (evaluate comp321))
    (evaluate comp322)
    (all-on comp321)
  )
)
(:action evaluate-comp321-off-comp320
  :parameters ()
  :precondition (and
    (evaluate comp321)
    (not (rebooted comp321))
    (not (running comp320))
  )
  :effect (and
    (not (evaluate comp321))
    (evaluate comp322)
    (one-off comp321)
  )
)
(:action evaluate-comp322-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp322)
    (rebooted comp322)
  )
  :effect (and
    (not (evaluate comp322))
    (evaluate comp323)
  )
)
(:action evaluate-comp322-all-on
  :parameters ()
  :precondition (and
    (evaluate comp322)
    (not (rebooted comp322))
    (running comp321)
  )
  :effect (and
    (not (evaluate comp322))
    (evaluate comp323)
    (all-on comp322)
  )
)
(:action evaluate-comp322-off-comp321
  :parameters ()
  :precondition (and
    (evaluate comp322)
    (not (rebooted comp322))
    (not (running comp321))
  )
  :effect (and
    (not (evaluate comp322))
    (evaluate comp323)
    (one-off comp322)
  )
)
(:action evaluate-comp323-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (rebooted comp323)
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
  )
)
(:action evaluate-comp323-all-on
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (not (rebooted comp323))
    (running comp322)
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
    (all-on comp323)
  )
)
(:action evaluate-comp323-off-comp322
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (not (rebooted comp323))
    (not (running comp322))
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
    (one-off comp323)
  )
)
(:action evaluate-comp324-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (rebooted comp324)
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
  )
)
(:action evaluate-comp324-all-on
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (not (rebooted comp324))
    (running comp323)
    (running comp957)
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
    (all-on comp324)
  )
)
(:action evaluate-comp324-off-comp323
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (not (rebooted comp324))
    (not (running comp323))
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
    (one-off comp324)
  )
)
(:action evaluate-comp324-off-comp957
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (not (rebooted comp324))
    (not (running comp957))
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
    (one-off comp324)
  )
)
(:action evaluate-comp325-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (rebooted comp325)
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
  )
)
(:action evaluate-comp325-all-on
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (not (rebooted comp325))
    (running comp324)
    (running comp1193)
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
    (all-on comp325)
  )
)
(:action evaluate-comp325-off-comp324
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (not (rebooted comp325))
    (not (running comp324))
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
    (one-off comp325)
  )
)
(:action evaluate-comp325-off-comp1193
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (not (rebooted comp325))
    (not (running comp1193))
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
    (one-off comp325)
  )
)
(:action evaluate-comp326-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (rebooted comp326)
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
  )
)
(:action evaluate-comp326-all-on
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (not (rebooted comp326))
    (running comp307)
    (running comp325)
    (running comp575)
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
    (all-on comp326)
  )
)
(:action evaluate-comp326-off-comp307
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (not (rebooted comp326))
    (not (running comp307))
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
    (one-off comp326)
  )
)
(:action evaluate-comp326-off-comp325
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (not (rebooted comp326))
    (not (running comp325))
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
    (one-off comp326)
  )
)
(:action evaluate-comp326-off-comp575
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (not (rebooted comp326))
    (not (running comp575))
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
    (one-off comp326)
  )
)
(:action evaluate-comp327-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (rebooted comp327)
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
  )
)
(:action evaluate-comp327-all-on
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (not (rebooted comp327))
    (running comp326)
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
    (all-on comp327)
  )
)
(:action evaluate-comp327-off-comp326
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (not (rebooted comp327))
    (not (running comp326))
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
    (one-off comp327)
  )
)
(:action evaluate-comp328-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (rebooted comp328)
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
  )
)
(:action evaluate-comp328-all-on
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (not (rebooted comp328))
    (running comp327)
    (running comp1910)
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
    (all-on comp328)
  )
)
(:action evaluate-comp328-off-comp327
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (not (rebooted comp328))
    (not (running comp327))
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
    (one-off comp328)
  )
)
(:action evaluate-comp328-off-comp1910
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (not (rebooted comp328))
    (not (running comp1910))
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
    (one-off comp328)
  )
)
(:action evaluate-comp329-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (rebooted comp329)
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
  )
)
(:action evaluate-comp329-all-on
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (not (rebooted comp329))
    (running comp328)
    (running comp428)
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
    (all-on comp329)
  )
)
(:action evaluate-comp329-off-comp328
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (not (rebooted comp329))
    (not (running comp328))
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
    (one-off comp329)
  )
)
(:action evaluate-comp329-off-comp428
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (not (rebooted comp329))
    (not (running comp428))
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
    (one-off comp329)
  )
)
(:action evaluate-comp330-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (rebooted comp330)
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
  )
)
(:action evaluate-comp330-all-on
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (not (rebooted comp330))
    (running comp329)
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
    (all-on comp330)
  )
)
(:action evaluate-comp330-off-comp329
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (not (rebooted comp330))
    (not (running comp329))
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
    (one-off comp330)
  )
)
(:action evaluate-comp331-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (rebooted comp331)
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
  )
)
(:action evaluate-comp331-all-on
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (not (rebooted comp331))
    (running comp330)
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
    (all-on comp331)
  )
)
(:action evaluate-comp331-off-comp330
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (not (rebooted comp331))
    (not (running comp330))
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
    (one-off comp331)
  )
)
(:action evaluate-comp332-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp332)
    (rebooted comp332)
  )
  :effect (and
    (not (evaluate comp332))
    (evaluate comp333)
  )
)
(:action evaluate-comp332-all-on
  :parameters ()
  :precondition (and
    (evaluate comp332)
    (not (rebooted comp332))
    (running comp331)
  )
  :effect (and
    (not (evaluate comp332))
    (evaluate comp333)
    (all-on comp332)
  )
)
(:action evaluate-comp332-off-comp331
  :parameters ()
  :precondition (and
    (evaluate comp332)
    (not (rebooted comp332))
    (not (running comp331))
  )
  :effect (and
    (not (evaluate comp332))
    (evaluate comp333)
    (one-off comp332)
  )
)
(:action evaluate-comp333-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp333)
    (rebooted comp333)
  )
  :effect (and
    (not (evaluate comp333))
    (evaluate comp334)
  )
)
(:action evaluate-comp333-all-on
  :parameters ()
  :precondition (and
    (evaluate comp333)
    (not (rebooted comp333))
    (running comp332)
  )
  :effect (and
    (not (evaluate comp333))
    (evaluate comp334)
    (all-on comp333)
  )
)
(:action evaluate-comp333-off-comp332
  :parameters ()
  :precondition (and
    (evaluate comp333)
    (not (rebooted comp333))
    (not (running comp332))
  )
  :effect (and
    (not (evaluate comp333))
    (evaluate comp334)
    (one-off comp333)
  )
)
(:action evaluate-comp334-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (rebooted comp334)
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
  )
)
(:action evaluate-comp334-all-on
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (not (rebooted comp334))
    (running comp333)
    (running comp1620)
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
    (all-on comp334)
  )
)
(:action evaluate-comp334-off-comp333
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (not (rebooted comp334))
    (not (running comp333))
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
    (one-off comp334)
  )
)
(:action evaluate-comp334-off-comp1620
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (not (rebooted comp334))
    (not (running comp1620))
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
    (one-off comp334)
  )
)
(:action evaluate-comp335-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (rebooted comp335)
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
  )
)
(:action evaluate-comp335-all-on
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (not (rebooted comp335))
    (running comp334)
    (running comp1424)
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
    (all-on comp335)
  )
)
(:action evaluate-comp335-off-comp334
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (not (rebooted comp335))
    (not (running comp334))
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
    (one-off comp335)
  )
)
(:action evaluate-comp335-off-comp1424
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (not (rebooted comp335))
    (not (running comp1424))
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
    (one-off comp335)
  )
)
(:action evaluate-comp336-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (rebooted comp336)
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
  )
)
(:action evaluate-comp336-all-on
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (not (rebooted comp336))
    (running comp335)
    (running comp1668)
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
    (all-on comp336)
  )
)
(:action evaluate-comp336-off-comp335
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (not (rebooted comp336))
    (not (running comp335))
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
    (one-off comp336)
  )
)
(:action evaluate-comp336-off-comp1668
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (not (rebooted comp336))
    (not (running comp1668))
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
    (one-off comp336)
  )
)
(:action evaluate-comp337-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp337)
    (rebooted comp337)
  )
  :effect (and
    (not (evaluate comp337))
    (evaluate comp338)
  )
)
(:action evaluate-comp337-all-on
  :parameters ()
  :precondition (and
    (evaluate comp337)
    (not (rebooted comp337))
    (running comp336)
  )
  :effect (and
    (not (evaluate comp337))
    (evaluate comp338)
    (all-on comp337)
  )
)
(:action evaluate-comp337-off-comp336
  :parameters ()
  :precondition (and
    (evaluate comp337)
    (not (rebooted comp337))
    (not (running comp336))
  )
  :effect (and
    (not (evaluate comp337))
    (evaluate comp338)
    (one-off comp337)
  )
)
(:action evaluate-comp338-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (rebooted comp338)
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
  )
)
(:action evaluate-comp338-all-on
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (not (rebooted comp338))
    (running comp337)
    (running comp1394)
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
    (all-on comp338)
  )
)
(:action evaluate-comp338-off-comp337
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (not (rebooted comp338))
    (not (running comp337))
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
    (one-off comp338)
  )
)
(:action evaluate-comp338-off-comp1394
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (not (rebooted comp338))
    (not (running comp1394))
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
    (one-off comp338)
  )
)
(:action evaluate-comp339-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp339)
    (rebooted comp339)
  )
  :effect (and
    (not (evaluate comp339))
    (evaluate comp340)
  )
)
(:action evaluate-comp339-all-on
  :parameters ()
  :precondition (and
    (evaluate comp339)
    (not (rebooted comp339))
    (running comp338)
  )
  :effect (and
    (not (evaluate comp339))
    (evaluate comp340)
    (all-on comp339)
  )
)
(:action evaluate-comp339-off-comp338
  :parameters ()
  :precondition (and
    (evaluate comp339)
    (not (rebooted comp339))
    (not (running comp338))
  )
  :effect (and
    (not (evaluate comp339))
    (evaluate comp340)
    (one-off comp339)
  )
)
(:action evaluate-comp340-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (rebooted comp340)
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
  )
)
(:action evaluate-comp340-all-on
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (not (rebooted comp340))
    (running comp339)
    (running comp739)
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
    (all-on comp340)
  )
)
(:action evaluate-comp340-off-comp339
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (not (rebooted comp340))
    (not (running comp339))
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
    (one-off comp340)
  )
)
(:action evaluate-comp340-off-comp739
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (not (rebooted comp340))
    (not (running comp739))
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
    (one-off comp340)
  )
)
(:action evaluate-comp341-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp341)
    (rebooted comp341)
  )
  :effect (and
    (not (evaluate comp341))
    (evaluate comp342)
  )
)
(:action evaluate-comp341-all-on
  :parameters ()
  :precondition (and
    (evaluate comp341)
    (not (rebooted comp341))
    (running comp340)
  )
  :effect (and
    (not (evaluate comp341))
    (evaluate comp342)
    (all-on comp341)
  )
)
(:action evaluate-comp341-off-comp340
  :parameters ()
  :precondition (and
    (evaluate comp341)
    (not (rebooted comp341))
    (not (running comp340))
  )
  :effect (and
    (not (evaluate comp341))
    (evaluate comp342)
    (one-off comp341)
  )
)
(:action evaluate-comp342-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp342)
    (rebooted comp342)
  )
  :effect (and
    (not (evaluate comp342))
    (evaluate comp343)
  )
)
(:action evaluate-comp342-all-on
  :parameters ()
  :precondition (and
    (evaluate comp342)
    (not (rebooted comp342))
    (running comp341)
  )
  :effect (and
    (not (evaluate comp342))
    (evaluate comp343)
    (all-on comp342)
  )
)
(:action evaluate-comp342-off-comp341
  :parameters ()
  :precondition (and
    (evaluate comp342)
    (not (rebooted comp342))
    (not (running comp341))
  )
  :effect (and
    (not (evaluate comp342))
    (evaluate comp343)
    (one-off comp342)
  )
)
(:action evaluate-comp343-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (rebooted comp343)
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
  )
)
(:action evaluate-comp343-all-on
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (not (rebooted comp343))
    (running comp342)
    (running comp1228)
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
    (all-on comp343)
  )
)
(:action evaluate-comp343-off-comp342
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (not (rebooted comp343))
    (not (running comp342))
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
    (one-off comp343)
  )
)
(:action evaluate-comp343-off-comp1228
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (not (rebooted comp343))
    (not (running comp1228))
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
    (one-off comp343)
  )
)
(:action evaluate-comp344-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp344)
    (rebooted comp344)
  )
  :effect (and
    (not (evaluate comp344))
    (evaluate comp345)
  )
)
(:action evaluate-comp344-all-on
  :parameters ()
  :precondition (and
    (evaluate comp344)
    (not (rebooted comp344))
    (running comp343)
  )
  :effect (and
    (not (evaluate comp344))
    (evaluate comp345)
    (all-on comp344)
  )
)
(:action evaluate-comp344-off-comp343
  :parameters ()
  :precondition (and
    (evaluate comp344)
    (not (rebooted comp344))
    (not (running comp343))
  )
  :effect (and
    (not (evaluate comp344))
    (evaluate comp345)
    (one-off comp344)
  )
)
(:action evaluate-comp345-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (rebooted comp345)
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
  )
)
(:action evaluate-comp345-all-on
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (not (rebooted comp345))
    (running comp344)
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
    (all-on comp345)
  )
)
(:action evaluate-comp345-off-comp344
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (not (rebooted comp345))
    (not (running comp344))
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
    (one-off comp345)
  )
)
(:action evaluate-comp346-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (rebooted comp346)
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
  )
)
(:action evaluate-comp346-all-on
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (not (rebooted comp346))
    (running comp345)
    (running comp472)
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
    (all-on comp346)
  )
)
(:action evaluate-comp346-off-comp345
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (not (rebooted comp346))
    (not (running comp345))
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
    (one-off comp346)
  )
)
(:action evaluate-comp346-off-comp472
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (not (rebooted comp346))
    (not (running comp472))
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
    (one-off comp346)
  )
)
(:action evaluate-comp347-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (rebooted comp347)
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
  )
)
(:action evaluate-comp347-all-on
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (not (rebooted comp347))
    (running comp346)
    (running comp1443)
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
    (all-on comp347)
  )
)
(:action evaluate-comp347-off-comp346
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (not (rebooted comp347))
    (not (running comp346))
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
    (one-off comp347)
  )
)
(:action evaluate-comp347-off-comp1443
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (not (rebooted comp347))
    (not (running comp1443))
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
    (one-off comp347)
  )
)
(:action evaluate-comp348-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (rebooted comp348)
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
  )
)
(:action evaluate-comp348-all-on
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (not (rebooted comp348))
    (running comp347)
    (running comp635)
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
    (all-on comp348)
  )
)
(:action evaluate-comp348-off-comp347
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (not (rebooted comp348))
    (not (running comp347))
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
    (one-off comp348)
  )
)
(:action evaluate-comp348-off-comp635
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (not (rebooted comp348))
    (not (running comp635))
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
    (one-off comp348)
  )
)
(:action evaluate-comp349-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (rebooted comp349)
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
  )
)
(:action evaluate-comp349-all-on
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (not (rebooted comp349))
    (running comp348)
    (running comp1777)
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
    (all-on comp349)
  )
)
(:action evaluate-comp349-off-comp348
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (not (rebooted comp349))
    (not (running comp348))
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
    (one-off comp349)
  )
)
(:action evaluate-comp349-off-comp1777
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (not (rebooted comp349))
    (not (running comp1777))
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
    (one-off comp349)
  )
)
(:action evaluate-comp350-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (rebooted comp350)
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
  )
)
(:action evaluate-comp350-all-on
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (not (rebooted comp350))
    (running comp349)
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
    (all-on comp350)
  )
)
(:action evaluate-comp350-off-comp349
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (not (rebooted comp350))
    (not (running comp349))
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
    (one-off comp350)
  )
)
(:action evaluate-comp351-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp351)
    (rebooted comp351)
  )
  :effect (and
    (not (evaluate comp351))
    (evaluate comp352)
  )
)
(:action evaluate-comp351-all-on
  :parameters ()
  :precondition (and
    (evaluate comp351)
    (not (rebooted comp351))
    (running comp350)
  )
  :effect (and
    (not (evaluate comp351))
    (evaluate comp352)
    (all-on comp351)
  )
)
(:action evaluate-comp351-off-comp350
  :parameters ()
  :precondition (and
    (evaluate comp351)
    (not (rebooted comp351))
    (not (running comp350))
  )
  :effect (and
    (not (evaluate comp351))
    (evaluate comp352)
    (one-off comp351)
  )
)
(:action evaluate-comp352-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (rebooted comp352)
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
  )
)
(:action evaluate-comp352-all-on
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (not (rebooted comp352))
    (running comp351)
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
    (all-on comp352)
  )
)
(:action evaluate-comp352-off-comp351
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (not (rebooted comp352))
    (not (running comp351))
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
    (one-off comp352)
  )
)
(:action evaluate-comp353-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (rebooted comp353)
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
  )
)
(:action evaluate-comp353-all-on
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (not (rebooted comp353))
    (running comp352)
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
    (all-on comp353)
  )
)
(:action evaluate-comp353-off-comp352
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (not (rebooted comp353))
    (not (running comp352))
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
    (one-off comp353)
  )
)
(:action evaluate-comp354-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp354)
    (rebooted comp354)
  )
  :effect (and
    (not (evaluate comp354))
    (evaluate comp355)
  )
)
(:action evaluate-comp354-all-on
  :parameters ()
  :precondition (and
    (evaluate comp354)
    (not (rebooted comp354))
    (running comp353)
  )
  :effect (and
    (not (evaluate comp354))
    (evaluate comp355)
    (all-on comp354)
  )
)
(:action evaluate-comp354-off-comp353
  :parameters ()
  :precondition (and
    (evaluate comp354)
    (not (rebooted comp354))
    (not (running comp353))
  )
  :effect (and
    (not (evaluate comp354))
    (evaluate comp355)
    (one-off comp354)
  )
)
(:action evaluate-comp355-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (rebooted comp355)
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
  )
)
(:action evaluate-comp355-all-on
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (running comp354)
    (running comp1172)
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (all-on comp355)
  )
)
(:action evaluate-comp355-off-comp354
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (not (running comp354))
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (one-off comp355)
  )
)
(:action evaluate-comp355-off-comp1172
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (not (running comp1172))
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (one-off comp355)
  )
)
(:action evaluate-comp356-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp356)
    (rebooted comp356)
  )
  :effect (and
    (not (evaluate comp356))
    (evaluate comp357)
  )
)
(:action evaluate-comp356-all-on
  :parameters ()
  :precondition (and
    (evaluate comp356)
    (not (rebooted comp356))
    (running comp355)
  )
  :effect (and
    (not (evaluate comp356))
    (evaluate comp357)
    (all-on comp356)
  )
)
(:action evaluate-comp356-off-comp355
  :parameters ()
  :precondition (and
    (evaluate comp356)
    (not (rebooted comp356))
    (not (running comp355))
  )
  :effect (and
    (not (evaluate comp356))
    (evaluate comp357)
    (one-off comp356)
  )
)
(:action evaluate-comp357-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (rebooted comp357)
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
  )
)
(:action evaluate-comp357-all-on
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (not (rebooted comp357))
    (running comp356)
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
    (all-on comp357)
  )
)
(:action evaluate-comp357-off-comp356
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (not (rebooted comp357))
    (not (running comp356))
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
    (one-off comp357)
  )
)
(:action evaluate-comp358-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp358)
    (rebooted comp358)
  )
  :effect (and
    (not (evaluate comp358))
    (evaluate comp359)
  )
)
(:action evaluate-comp358-all-on
  :parameters ()
  :precondition (and
    (evaluate comp358)
    (not (rebooted comp358))
    (running comp357)
  )
  :effect (and
    (not (evaluate comp358))
    (evaluate comp359)
    (all-on comp358)
  )
)
(:action evaluate-comp358-off-comp357
  :parameters ()
  :precondition (and
    (evaluate comp358)
    (not (rebooted comp358))
    (not (running comp357))
  )
  :effect (and
    (not (evaluate comp358))
    (evaluate comp359)
    (one-off comp358)
  )
)
(:action evaluate-comp359-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (rebooted comp359)
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
  )
)
(:action evaluate-comp359-all-on
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (not (rebooted comp359))
    (running comp358)
    (running comp434)
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
    (all-on comp359)
  )
)
(:action evaluate-comp359-off-comp358
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (not (rebooted comp359))
    (not (running comp358))
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
    (one-off comp359)
  )
)
(:action evaluate-comp359-off-comp434
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (not (rebooted comp359))
    (not (running comp434))
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
    (one-off comp359)
  )
)
(:action evaluate-comp360-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp360)
    (rebooted comp360)
  )
  :effect (and
    (not (evaluate comp360))
    (evaluate comp361)
  )
)
(:action evaluate-comp360-all-on
  :parameters ()
  :precondition (and
    (evaluate comp360)
    (not (rebooted comp360))
    (running comp359)
  )
  :effect (and
    (not (evaluate comp360))
    (evaluate comp361)
    (all-on comp360)
  )
)
(:action evaluate-comp360-off-comp359
  :parameters ()
  :precondition (and
    (evaluate comp360)
    (not (rebooted comp360))
    (not (running comp359))
  )
  :effect (and
    (not (evaluate comp360))
    (evaluate comp361)
    (one-off comp360)
  )
)
(:action evaluate-comp361-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp361)
    (rebooted comp361)
  )
  :effect (and
    (not (evaluate comp361))
    (evaluate comp362)
  )
)
(:action evaluate-comp361-all-on
  :parameters ()
  :precondition (and
    (evaluate comp361)
    (not (rebooted comp361))
    (running comp360)
  )
  :effect (and
    (not (evaluate comp361))
    (evaluate comp362)
    (all-on comp361)
  )
)
(:action evaluate-comp361-off-comp360
  :parameters ()
  :precondition (and
    (evaluate comp361)
    (not (rebooted comp361))
    (not (running comp360))
  )
  :effect (and
    (not (evaluate comp361))
    (evaluate comp362)
    (one-off comp361)
  )
)
(:action evaluate-comp362-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp362)
    (rebooted comp362)
  )
  :effect (and
    (not (evaluate comp362))
    (evaluate comp363)
  )
)
(:action evaluate-comp362-all-on
  :parameters ()
  :precondition (and
    (evaluate comp362)
    (not (rebooted comp362))
    (running comp361)
  )
  :effect (and
    (not (evaluate comp362))
    (evaluate comp363)
    (all-on comp362)
  )
)
(:action evaluate-comp362-off-comp361
  :parameters ()
  :precondition (and
    (evaluate comp362)
    (not (rebooted comp362))
    (not (running comp361))
  )
  :effect (and
    (not (evaluate comp362))
    (evaluate comp363)
    (one-off comp362)
  )
)
(:action evaluate-comp363-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp363)
    (rebooted comp363)
  )
  :effect (and
    (not (evaluate comp363))
    (evaluate comp364)
  )
)
(:action evaluate-comp363-all-on
  :parameters ()
  :precondition (and
    (evaluate comp363)
    (not (rebooted comp363))
    (running comp362)
  )
  :effect (and
    (not (evaluate comp363))
    (evaluate comp364)
    (all-on comp363)
  )
)
(:action evaluate-comp363-off-comp362
  :parameters ()
  :precondition (and
    (evaluate comp363)
    (not (rebooted comp363))
    (not (running comp362))
  )
  :effect (and
    (not (evaluate comp363))
    (evaluate comp364)
    (one-off comp363)
  )
)
(:action evaluate-comp364-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (rebooted comp364)
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
  )
)
(:action evaluate-comp364-all-on
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (not (rebooted comp364))
    (running comp363)
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
    (all-on comp364)
  )
)
(:action evaluate-comp364-off-comp363
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (not (rebooted comp364))
    (not (running comp363))
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
    (one-off comp364)
  )
)
(:action evaluate-comp365-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp365)
    (rebooted comp365)
  )
  :effect (and
    (not (evaluate comp365))
    (evaluate comp366)
  )
)
(:action evaluate-comp365-all-on
  :parameters ()
  :precondition (and
    (evaluate comp365)
    (not (rebooted comp365))
    (running comp364)
  )
  :effect (and
    (not (evaluate comp365))
    (evaluate comp366)
    (all-on comp365)
  )
)
(:action evaluate-comp365-off-comp364
  :parameters ()
  :precondition (and
    (evaluate comp365)
    (not (rebooted comp365))
    (not (running comp364))
  )
  :effect (and
    (not (evaluate comp365))
    (evaluate comp366)
    (one-off comp365)
  )
)
(:action evaluate-comp366-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (rebooted comp366)
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
  )
)
(:action evaluate-comp366-all-on
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (not (rebooted comp366))
    (running comp365)
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
    (all-on comp366)
  )
)
(:action evaluate-comp366-off-comp365
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (not (rebooted comp366))
    (not (running comp365))
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
    (one-off comp366)
  )
)
(:action evaluate-comp367-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (rebooted comp367)
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
  )
)
(:action evaluate-comp367-all-on
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (not (rebooted comp367))
    (running comp12)
    (running comp366)
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
    (all-on comp367)
  )
)
(:action evaluate-comp367-off-comp12
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (not (rebooted comp367))
    (not (running comp12))
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
    (one-off comp367)
  )
)
(:action evaluate-comp367-off-comp366
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (not (rebooted comp367))
    (not (running comp366))
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
    (one-off comp367)
  )
)
(:action evaluate-comp368-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp368)
    (rebooted comp368)
  )
  :effect (and
    (not (evaluate comp368))
    (evaluate comp369)
  )
)
(:action evaluate-comp368-all-on
  :parameters ()
  :precondition (and
    (evaluate comp368)
    (not (rebooted comp368))
    (running comp367)
  )
  :effect (and
    (not (evaluate comp368))
    (evaluate comp369)
    (all-on comp368)
  )
)
(:action evaluate-comp368-off-comp367
  :parameters ()
  :precondition (and
    (evaluate comp368)
    (not (rebooted comp368))
    (not (running comp367))
  )
  :effect (and
    (not (evaluate comp368))
    (evaluate comp369)
    (one-off comp368)
  )
)
(:action evaluate-comp369-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp369)
    (rebooted comp369)
  )
  :effect (and
    (not (evaluate comp369))
    (evaluate comp370)
  )
)
(:action evaluate-comp369-all-on
  :parameters ()
  :precondition (and
    (evaluate comp369)
    (not (rebooted comp369))
    (running comp368)
  )
  :effect (and
    (not (evaluate comp369))
    (evaluate comp370)
    (all-on comp369)
  )
)
(:action evaluate-comp369-off-comp368
  :parameters ()
  :precondition (and
    (evaluate comp369)
    (not (rebooted comp369))
    (not (running comp368))
  )
  :effect (and
    (not (evaluate comp369))
    (evaluate comp370)
    (one-off comp369)
  )
)
(:action evaluate-comp370-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp370)
    (rebooted comp370)
  )
  :effect (and
    (not (evaluate comp370))
    (evaluate comp371)
  )
)
(:action evaluate-comp370-all-on
  :parameters ()
  :precondition (and
    (evaluate comp370)
    (not (rebooted comp370))
    (running comp369)
  )
  :effect (and
    (not (evaluate comp370))
    (evaluate comp371)
    (all-on comp370)
  )
)
(:action evaluate-comp370-off-comp369
  :parameters ()
  :precondition (and
    (evaluate comp370)
    (not (rebooted comp370))
    (not (running comp369))
  )
  :effect (and
    (not (evaluate comp370))
    (evaluate comp371)
    (one-off comp370)
  )
)
(:action evaluate-comp371-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (rebooted comp371)
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
  )
)
(:action evaluate-comp371-all-on
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (running comp182)
    (running comp370)
    (running comp1654)
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (all-on comp371)
  )
)
(:action evaluate-comp371-off-comp182
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (not (running comp182))
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (one-off comp371)
  )
)
(:action evaluate-comp371-off-comp370
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (not (running comp370))
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (one-off comp371)
  )
)
(:action evaluate-comp371-off-comp1654
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (not (running comp1654))
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (one-off comp371)
  )
)
(:action evaluate-comp372-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp372)
    (rebooted comp372)
  )
  :effect (and
    (not (evaluate comp372))
    (evaluate comp373)
  )
)
(:action evaluate-comp372-all-on
  :parameters ()
  :precondition (and
    (evaluate comp372)
    (not (rebooted comp372))
    (running comp371)
  )
  :effect (and
    (not (evaluate comp372))
    (evaluate comp373)
    (all-on comp372)
  )
)
(:action evaluate-comp372-off-comp371
  :parameters ()
  :precondition (and
    (evaluate comp372)
    (not (rebooted comp372))
    (not (running comp371))
  )
  :effect (and
    (not (evaluate comp372))
    (evaluate comp373)
    (one-off comp372)
  )
)
(:action evaluate-comp373-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (rebooted comp373)
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
  )
)
(:action evaluate-comp373-all-on
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (running comp372)
    (running comp1903)
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (all-on comp373)
  )
)
(:action evaluate-comp373-off-comp372
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (not (running comp372))
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (one-off comp373)
  )
)
(:action evaluate-comp373-off-comp1903
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (not (running comp1903))
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (one-off comp373)
  )
)
(:action evaluate-comp374-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (rebooted comp374)
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
  )
)
(:action evaluate-comp374-all-on
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (not (rebooted comp374))
    (running comp373)
    (running comp1124)
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
    (all-on comp374)
  )
)
(:action evaluate-comp374-off-comp373
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (not (rebooted comp374))
    (not (running comp373))
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
    (one-off comp374)
  )
)
(:action evaluate-comp374-off-comp1124
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (not (rebooted comp374))
    (not (running comp1124))
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
    (one-off comp374)
  )
)
(:action evaluate-comp375-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (rebooted comp375)
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
  )
)
(:action evaluate-comp375-all-on
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (not (rebooted comp375))
    (running comp374)
    (running comp555)
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
    (all-on comp375)
  )
)
(:action evaluate-comp375-off-comp374
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (not (rebooted comp375))
    (not (running comp374))
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
    (one-off comp375)
  )
)
(:action evaluate-comp375-off-comp555
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (not (rebooted comp375))
    (not (running comp555))
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
    (one-off comp375)
  )
)
(:action evaluate-comp376-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (rebooted comp376)
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
  )
)
(:action evaluate-comp376-all-on
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (running comp375)
    (running comp928)
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (all-on comp376)
  )
)
(:action evaluate-comp376-off-comp375
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (not (running comp375))
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (one-off comp376)
  )
)
(:action evaluate-comp376-off-comp928
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (not (running comp928))
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (one-off comp376)
  )
)
(:action evaluate-comp377-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (rebooted comp377)
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
  )
)
(:action evaluate-comp377-all-on
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (not (rebooted comp377))
    (running comp376)
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
    (all-on comp377)
  )
)
(:action evaluate-comp377-off-comp376
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (not (rebooted comp377))
    (not (running comp376))
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
    (one-off comp377)
  )
)
(:action evaluate-comp378-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (rebooted comp378)
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
  )
)
(:action evaluate-comp378-all-on
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (not (rebooted comp378))
    (running comp377)
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
    (all-on comp378)
  )
)
(:action evaluate-comp378-off-comp377
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (not (rebooted comp378))
    (not (running comp377))
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
    (one-off comp378)
  )
)
(:action evaluate-comp379-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (rebooted comp379)
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
  )
)
(:action evaluate-comp379-all-on
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (not (rebooted comp379))
    (running comp378)
    (running comp854)
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
    (all-on comp379)
  )
)
(:action evaluate-comp379-off-comp378
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (not (rebooted comp379))
    (not (running comp378))
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
    (one-off comp379)
  )
)
(:action evaluate-comp379-off-comp854
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (not (rebooted comp379))
    (not (running comp854))
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
    (one-off comp379)
  )
)
(:action evaluate-comp380-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (rebooted comp380)
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
  )
)
(:action evaluate-comp380-all-on
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (not (rebooted comp380))
    (running comp379)
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
    (all-on comp380)
  )
)
(:action evaluate-comp380-off-comp379
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (not (rebooted comp380))
    (not (running comp379))
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
    (one-off comp380)
  )
)
(:action evaluate-comp381-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (rebooted comp381)
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
  )
)
(:action evaluate-comp381-all-on
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (not (rebooted comp381))
    (running comp380)
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
    (all-on comp381)
  )
)
(:action evaluate-comp381-off-comp380
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (not (rebooted comp381))
    (not (running comp380))
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
    (one-off comp381)
  )
)
(:action evaluate-comp382-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (rebooted comp382)
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
  )
)
(:action evaluate-comp382-all-on
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (not (rebooted comp382))
    (running comp321)
    (running comp381)
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
    (all-on comp382)
  )
)
(:action evaluate-comp382-off-comp321
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (not (rebooted comp382))
    (not (running comp321))
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
    (one-off comp382)
  )
)
(:action evaluate-comp382-off-comp381
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (not (rebooted comp382))
    (not (running comp381))
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
    (one-off comp382)
  )
)
(:action evaluate-comp383-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (rebooted comp383)
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
  )
)
(:action evaluate-comp383-all-on
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (not (rebooted comp383))
    (running comp237)
    (running comp382)
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
    (all-on comp383)
  )
)
(:action evaluate-comp383-off-comp237
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (not (rebooted comp383))
    (not (running comp237))
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
    (one-off comp383)
  )
)
(:action evaluate-comp383-off-comp382
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (not (rebooted comp383))
    (not (running comp382))
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
    (one-off comp383)
  )
)
(:action evaluate-comp384-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (rebooted comp384)
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
  )
)
(:action evaluate-comp384-all-on
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (not (rebooted comp384))
    (running comp383)
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
    (all-on comp384)
  )
)
(:action evaluate-comp384-off-comp383
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (not (rebooted comp384))
    (not (running comp383))
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
    (one-off comp384)
  )
)
(:action evaluate-comp385-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (rebooted comp385)
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
  )
)
(:action evaluate-comp385-all-on
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (not (rebooted comp385))
    (running comp384)
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
    (all-on comp385)
  )
)
(:action evaluate-comp385-off-comp384
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (not (rebooted comp385))
    (not (running comp384))
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
    (one-off comp385)
  )
)
(:action evaluate-comp386-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp386)
    (rebooted comp386)
  )
  :effect (and
    (not (evaluate comp386))
    (evaluate comp387)
  )
)
(:action evaluate-comp386-all-on
  :parameters ()
  :precondition (and
    (evaluate comp386)
    (not (rebooted comp386))
    (running comp385)
  )
  :effect (and
    (not (evaluate comp386))
    (evaluate comp387)
    (all-on comp386)
  )
)
(:action evaluate-comp386-off-comp385
  :parameters ()
  :precondition (and
    (evaluate comp386)
    (not (rebooted comp386))
    (not (running comp385))
  )
  :effect (and
    (not (evaluate comp386))
    (evaluate comp387)
    (one-off comp386)
  )
)
(:action evaluate-comp387-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (rebooted comp387)
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
  )
)
(:action evaluate-comp387-all-on
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (not (rebooted comp387))
    (running comp386)
    (running comp1865)
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
    (all-on comp387)
  )
)
(:action evaluate-comp387-off-comp386
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (not (rebooted comp387))
    (not (running comp386))
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
    (one-off comp387)
  )
)
(:action evaluate-comp387-off-comp1865
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (not (rebooted comp387))
    (not (running comp1865))
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
    (one-off comp387)
  )
)
(:action evaluate-comp388-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp388)
    (rebooted comp388)
  )
  :effect (and
    (not (evaluate comp388))
    (evaluate comp389)
  )
)
(:action evaluate-comp388-all-on
  :parameters ()
  :precondition (and
    (evaluate comp388)
    (not (rebooted comp388))
    (running comp387)
  )
  :effect (and
    (not (evaluate comp388))
    (evaluate comp389)
    (all-on comp388)
  )
)
(:action evaluate-comp388-off-comp387
  :parameters ()
  :precondition (and
    (evaluate comp388)
    (not (rebooted comp388))
    (not (running comp387))
  )
  :effect (and
    (not (evaluate comp388))
    (evaluate comp389)
    (one-off comp388)
  )
)
(:action evaluate-comp389-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (rebooted comp389)
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
  )
)
(:action evaluate-comp389-all-on
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (not (rebooted comp389))
    (running comp388)
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
    (all-on comp389)
  )
)
(:action evaluate-comp389-off-comp388
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (not (rebooted comp389))
    (not (running comp388))
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
    (one-off comp389)
  )
)
(:action evaluate-comp390-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (rebooted comp390)
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
  )
)
(:action evaluate-comp390-all-on
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (running comp389)
    (running comp458)
    (running comp1539)
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (all-on comp390)
  )
)
(:action evaluate-comp390-off-comp389
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (not (running comp389))
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (one-off comp390)
  )
)
(:action evaluate-comp390-off-comp458
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (not (running comp458))
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (one-off comp390)
  )
)
(:action evaluate-comp390-off-comp1539
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (not (running comp1539))
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (one-off comp390)
  )
)
(:action evaluate-comp391-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (rebooted comp391)
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
  )
)
(:action evaluate-comp391-all-on
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (not (rebooted comp391))
    (running comp390)
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
    (all-on comp391)
  )
)
(:action evaluate-comp391-off-comp390
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (not (rebooted comp391))
    (not (running comp390))
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
    (one-off comp391)
  )
)
(:action evaluate-comp392-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (rebooted comp392)
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
  )
)
(:action evaluate-comp392-all-on
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (not (rebooted comp392))
    (running comp152)
    (running comp391)
    (running comp669)
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
    (all-on comp392)
  )
)
(:action evaluate-comp392-off-comp152
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (not (rebooted comp392))
    (not (running comp152))
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
    (one-off comp392)
  )
)
(:action evaluate-comp392-off-comp391
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (not (rebooted comp392))
    (not (running comp391))
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
    (one-off comp392)
  )
)
(:action evaluate-comp392-off-comp669
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (not (rebooted comp392))
    (not (running comp669))
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
    (one-off comp392)
  )
)
(:action evaluate-comp393-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (rebooted comp393)
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
  )
)
(:action evaluate-comp393-all-on
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (not (rebooted comp393))
    (running comp392)
    (running comp839)
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
    (all-on comp393)
  )
)
(:action evaluate-comp393-off-comp392
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (not (rebooted comp393))
    (not (running comp392))
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
    (one-off comp393)
  )
)
(:action evaluate-comp393-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (not (rebooted comp393))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
    (one-off comp393)
  )
)
(:action evaluate-comp394-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (rebooted comp394)
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
  )
)
(:action evaluate-comp394-all-on
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (not (rebooted comp394))
    (running comp393)
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
    (all-on comp394)
  )
)
(:action evaluate-comp394-off-comp393
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (not (rebooted comp394))
    (not (running comp393))
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
    (one-off comp394)
  )
)
(:action evaluate-comp395-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (rebooted comp395)
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
  )
)
(:action evaluate-comp395-all-on
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (not (rebooted comp395))
    (running comp394)
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
    (all-on comp395)
  )
)
(:action evaluate-comp395-off-comp394
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (not (rebooted comp395))
    (not (running comp394))
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
    (one-off comp395)
  )
)
(:action evaluate-comp396-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (rebooted comp396)
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
  )
)
(:action evaluate-comp396-all-on
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (not (rebooted comp396))
    (running comp395)
    (running comp1050)
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
    (all-on comp396)
  )
)
(:action evaluate-comp396-off-comp395
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (not (rebooted comp396))
    (not (running comp395))
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
    (one-off comp396)
  )
)
(:action evaluate-comp396-off-comp1050
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (not (rebooted comp396))
    (not (running comp1050))
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
    (one-off comp396)
  )
)
(:action evaluate-comp397-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp397)
    (rebooted comp397)
  )
  :effect (and
    (not (evaluate comp397))
    (evaluate comp398)
  )
)
(:action evaluate-comp397-all-on
  :parameters ()
  :precondition (and
    (evaluate comp397)
    (not (rebooted comp397))
    (running comp396)
  )
  :effect (and
    (not (evaluate comp397))
    (evaluate comp398)
    (all-on comp397)
  )
)
(:action evaluate-comp397-off-comp396
  :parameters ()
  :precondition (and
    (evaluate comp397)
    (not (rebooted comp397))
    (not (running comp396))
  )
  :effect (and
    (not (evaluate comp397))
    (evaluate comp398)
    (one-off comp397)
  )
)
(:action evaluate-comp398-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp398)
    (rebooted comp398)
  )
  :effect (and
    (not (evaluate comp398))
    (evaluate comp399)
  )
)
(:action evaluate-comp398-all-on
  :parameters ()
  :precondition (and
    (evaluate comp398)
    (not (rebooted comp398))
    (running comp397)
  )
  :effect (and
    (not (evaluate comp398))
    (evaluate comp399)
    (all-on comp398)
  )
)
(:action evaluate-comp398-off-comp397
  :parameters ()
  :precondition (and
    (evaluate comp398)
    (not (rebooted comp398))
    (not (running comp397))
  )
  :effect (and
    (not (evaluate comp398))
    (evaluate comp399)
    (one-off comp398)
  )
)
(:action evaluate-comp399-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (rebooted comp399)
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
  )
)
(:action evaluate-comp399-all-on
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (not (rebooted comp399))
    (running comp398)
    (running comp1059)
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
    (all-on comp399)
  )
)
(:action evaluate-comp399-off-comp398
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (not (rebooted comp399))
    (not (running comp398))
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
    (one-off comp399)
  )
)
(:action evaluate-comp399-off-comp1059
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (not (rebooted comp399))
    (not (running comp1059))
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
    (one-off comp399)
  )
)
(:action evaluate-comp400-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (rebooted comp400)
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
  )
)
(:action evaluate-comp400-all-on
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (not (rebooted comp400))
    (running comp399)
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
    (all-on comp400)
  )
)
(:action evaluate-comp400-off-comp399
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (not (rebooted comp400))
    (not (running comp399))
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
    (one-off comp400)
  )
)
(:action evaluate-comp401-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (rebooted comp401)
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
  )
)
(:action evaluate-comp401-all-on
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (not (rebooted comp401))
    (running comp400)
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
    (all-on comp401)
  )
)
(:action evaluate-comp401-off-comp400
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (not (rebooted comp401))
    (not (running comp400))
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
    (one-off comp401)
  )
)
(:action evaluate-comp402-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp402)
    (rebooted comp402)
  )
  :effect (and
    (not (evaluate comp402))
    (evaluate comp403)
  )
)
(:action evaluate-comp402-all-on
  :parameters ()
  :precondition (and
    (evaluate comp402)
    (not (rebooted comp402))
    (running comp401)
  )
  :effect (and
    (not (evaluate comp402))
    (evaluate comp403)
    (all-on comp402)
  )
)
(:action evaluate-comp402-off-comp401
  :parameters ()
  :precondition (and
    (evaluate comp402)
    (not (rebooted comp402))
    (not (running comp401))
  )
  :effect (and
    (not (evaluate comp402))
    (evaluate comp403)
    (one-off comp402)
  )
)
(:action evaluate-comp403-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (rebooted comp403)
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
  )
)
(:action evaluate-comp403-all-on
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (not (rebooted comp403))
    (running comp402)
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
    (all-on comp403)
  )
)
(:action evaluate-comp403-off-comp402
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (not (rebooted comp403))
    (not (running comp402))
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
    (one-off comp403)
  )
)
(:action evaluate-comp404-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (rebooted comp404)
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
  )
)
(:action evaluate-comp404-all-on
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (not (rebooted comp404))
    (running comp403)
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
    (all-on comp404)
  )
)
(:action evaluate-comp404-off-comp403
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (not (rebooted comp404))
    (not (running comp403))
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
    (one-off comp404)
  )
)
(:action evaluate-comp405-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp405)
    (rebooted comp405)
  )
  :effect (and
    (not (evaluate comp405))
    (evaluate comp406)
  )
)
(:action evaluate-comp405-all-on
  :parameters ()
  :precondition (and
    (evaluate comp405)
    (not (rebooted comp405))
    (running comp404)
  )
  :effect (and
    (not (evaluate comp405))
    (evaluate comp406)
    (all-on comp405)
  )
)
(:action evaluate-comp405-off-comp404
  :parameters ()
  :precondition (and
    (evaluate comp405)
    (not (rebooted comp405))
    (not (running comp404))
  )
  :effect (and
    (not (evaluate comp405))
    (evaluate comp406)
    (one-off comp405)
  )
)
(:action evaluate-comp406-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp406)
    (rebooted comp406)
  )
  :effect (and
    (not (evaluate comp406))
    (evaluate comp407)
  )
)
(:action evaluate-comp406-all-on
  :parameters ()
  :precondition (and
    (evaluate comp406)
    (not (rebooted comp406))
    (running comp405)
  )
  :effect (and
    (not (evaluate comp406))
    (evaluate comp407)
    (all-on comp406)
  )
)
(:action evaluate-comp406-off-comp405
  :parameters ()
  :precondition (and
    (evaluate comp406)
    (not (rebooted comp406))
    (not (running comp405))
  )
  :effect (and
    (not (evaluate comp406))
    (evaluate comp407)
    (one-off comp406)
  )
)
(:action evaluate-comp407-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (rebooted comp407)
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
  )
)
(:action evaluate-comp407-all-on
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (not (rebooted comp407))
    (running comp406)
    (running comp972)
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
    (all-on comp407)
  )
)
(:action evaluate-comp407-off-comp406
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (not (rebooted comp407))
    (not (running comp406))
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
    (one-off comp407)
  )
)
(:action evaluate-comp407-off-comp972
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (not (rebooted comp407))
    (not (running comp972))
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
    (one-off comp407)
  )
)
(:action evaluate-comp408-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (rebooted comp408)
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
  )
)
(:action evaluate-comp408-all-on
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (not (rebooted comp408))
    (running comp407)
    (running comp1015)
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
    (all-on comp408)
  )
)
(:action evaluate-comp408-off-comp407
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (not (rebooted comp408))
    (not (running comp407))
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
    (one-off comp408)
  )
)
(:action evaluate-comp408-off-comp1015
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (not (rebooted comp408))
    (not (running comp1015))
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
    (one-off comp408)
  )
)
(:action evaluate-comp409-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp409)
    (rebooted comp409)
  )
  :effect (and
    (not (evaluate comp409))
    (evaluate comp410)
  )
)
(:action evaluate-comp409-all-on
  :parameters ()
  :precondition (and
    (evaluate comp409)
    (not (rebooted comp409))
    (running comp408)
  )
  :effect (and
    (not (evaluate comp409))
    (evaluate comp410)
    (all-on comp409)
  )
)
(:action evaluate-comp409-off-comp408
  :parameters ()
  :precondition (and
    (evaluate comp409)
    (not (rebooted comp409))
    (not (running comp408))
  )
  :effect (and
    (not (evaluate comp409))
    (evaluate comp410)
    (one-off comp409)
  )
)
(:action evaluate-comp410-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp410)
    (rebooted comp410)
  )
  :effect (and
    (not (evaluate comp410))
    (evaluate comp411)
  )
)
(:action evaluate-comp410-all-on
  :parameters ()
  :precondition (and
    (evaluate comp410)
    (not (rebooted comp410))
    (running comp409)
  )
  :effect (and
    (not (evaluate comp410))
    (evaluate comp411)
    (all-on comp410)
  )
)
(:action evaluate-comp410-off-comp409
  :parameters ()
  :precondition (and
    (evaluate comp410)
    (not (rebooted comp410))
    (not (running comp409))
  )
  :effect (and
    (not (evaluate comp410))
    (evaluate comp411)
    (one-off comp410)
  )
)
(:action evaluate-comp411-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp411)
    (rebooted comp411)
  )
  :effect (and
    (not (evaluate comp411))
    (evaluate comp412)
  )
)
(:action evaluate-comp411-all-on
  :parameters ()
  :precondition (and
    (evaluate comp411)
    (not (rebooted comp411))
    (running comp410)
  )
  :effect (and
    (not (evaluate comp411))
    (evaluate comp412)
    (all-on comp411)
  )
)
(:action evaluate-comp411-off-comp410
  :parameters ()
  :precondition (and
    (evaluate comp411)
    (not (rebooted comp411))
    (not (running comp410))
  )
  :effect (and
    (not (evaluate comp411))
    (evaluate comp412)
    (one-off comp411)
  )
)
(:action evaluate-comp412-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (rebooted comp412)
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
  )
)
(:action evaluate-comp412-all-on
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (not (rebooted comp412))
    (running comp411)
    (running comp1737)
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
    (all-on comp412)
  )
)
(:action evaluate-comp412-off-comp411
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (not (rebooted comp412))
    (not (running comp411))
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
    (one-off comp412)
  )
)
(:action evaluate-comp412-off-comp1737
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (not (rebooted comp412))
    (not (running comp1737))
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
    (one-off comp412)
  )
)
(:action evaluate-comp413-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp413)
    (rebooted comp413)
  )
  :effect (and
    (not (evaluate comp413))
    (evaluate comp414)
  )
)
(:action evaluate-comp413-all-on
  :parameters ()
  :precondition (and
    (evaluate comp413)
    (not (rebooted comp413))
    (running comp412)
  )
  :effect (and
    (not (evaluate comp413))
    (evaluate comp414)
    (all-on comp413)
  )
)
(:action evaluate-comp413-off-comp412
  :parameters ()
  :precondition (and
    (evaluate comp413)
    (not (rebooted comp413))
    (not (running comp412))
  )
  :effect (and
    (not (evaluate comp413))
    (evaluate comp414)
    (one-off comp413)
  )
)
(:action evaluate-comp414-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp414)
    (rebooted comp414)
  )
  :effect (and
    (not (evaluate comp414))
    (evaluate comp415)
  )
)
(:action evaluate-comp414-all-on
  :parameters ()
  :precondition (and
    (evaluate comp414)
    (not (rebooted comp414))
    (running comp413)
  )
  :effect (and
    (not (evaluate comp414))
    (evaluate comp415)
    (all-on comp414)
  )
)
(:action evaluate-comp414-off-comp413
  :parameters ()
  :precondition (and
    (evaluate comp414)
    (not (rebooted comp414))
    (not (running comp413))
  )
  :effect (and
    (not (evaluate comp414))
    (evaluate comp415)
    (one-off comp414)
  )
)
(:action evaluate-comp415-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (rebooted comp415)
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
  )
)
(:action evaluate-comp415-all-on
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (running comp414)
    (running comp1561)
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (all-on comp415)
  )
)
(:action evaluate-comp415-off-comp414
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (not (running comp414))
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (one-off comp415)
  )
)
(:action evaluate-comp415-off-comp1561
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (not (running comp1561))
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (one-off comp415)
  )
)
(:action evaluate-comp416-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp416)
    (rebooted comp416)
  )
  :effect (and
    (not (evaluate comp416))
    (evaluate comp417)
  )
)
(:action evaluate-comp416-all-on
  :parameters ()
  :precondition (and
    (evaluate comp416)
    (not (rebooted comp416))
    (running comp415)
  )
  :effect (and
    (not (evaluate comp416))
    (evaluate comp417)
    (all-on comp416)
  )
)
(:action evaluate-comp416-off-comp415
  :parameters ()
  :precondition (and
    (evaluate comp416)
    (not (rebooted comp416))
    (not (running comp415))
  )
  :effect (and
    (not (evaluate comp416))
    (evaluate comp417)
    (one-off comp416)
  )
)
(:action evaluate-comp417-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (rebooted comp417)
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
  )
)
(:action evaluate-comp417-all-on
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (not (rebooted comp417))
    (running comp416)
    (running comp458)
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
    (all-on comp417)
  )
)
(:action evaluate-comp417-off-comp416
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (not (rebooted comp417))
    (not (running comp416))
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
    (one-off comp417)
  )
)
(:action evaluate-comp417-off-comp458
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (not (rebooted comp417))
    (not (running comp458))
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
    (one-off comp417)
  )
)
(:action evaluate-comp418-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp418)
    (rebooted comp418)
  )
  :effect (and
    (not (evaluate comp418))
    (evaluate comp419)
  )
)
(:action evaluate-comp418-all-on
  :parameters ()
  :precondition (and
    (evaluate comp418)
    (not (rebooted comp418))
    (running comp417)
  )
  :effect (and
    (not (evaluate comp418))
    (evaluate comp419)
    (all-on comp418)
  )
)
(:action evaluate-comp418-off-comp417
  :parameters ()
  :precondition (and
    (evaluate comp418)
    (not (rebooted comp418))
    (not (running comp417))
  )
  :effect (and
    (not (evaluate comp418))
    (evaluate comp419)
    (one-off comp418)
  )
)
(:action evaluate-comp419-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (rebooted comp419)
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
  )
)
(:action evaluate-comp419-all-on
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (not (rebooted comp419))
    (running comp418)
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
    (all-on comp419)
  )
)
(:action evaluate-comp419-off-comp418
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (not (rebooted comp419))
    (not (running comp418))
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
    (one-off comp419)
  )
)
(:action evaluate-comp420-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp420)
    (rebooted comp420)
  )
  :effect (and
    (not (evaluate comp420))
    (evaluate comp421)
  )
)
(:action evaluate-comp420-all-on
  :parameters ()
  :precondition (and
    (evaluate comp420)
    (not (rebooted comp420))
    (running comp419)
  )
  :effect (and
    (not (evaluate comp420))
    (evaluate comp421)
    (all-on comp420)
  )
)
(:action evaluate-comp420-off-comp419
  :parameters ()
  :precondition (and
    (evaluate comp420)
    (not (rebooted comp420))
    (not (running comp419))
  )
  :effect (and
    (not (evaluate comp420))
    (evaluate comp421)
    (one-off comp420)
  )
)
(:action evaluate-comp421-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (rebooted comp421)
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
  )
)
(:action evaluate-comp421-all-on
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (not (rebooted comp421))
    (running comp420)
    (running comp519)
    (running comp1161)
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
    (all-on comp421)
  )
)
(:action evaluate-comp421-off-comp420
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (not (rebooted comp421))
    (not (running comp420))
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
    (one-off comp421)
  )
)
(:action evaluate-comp421-off-comp519
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (not (rebooted comp421))
    (not (running comp519))
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
    (one-off comp421)
  )
)
(:action evaluate-comp421-off-comp1161
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (not (rebooted comp421))
    (not (running comp1161))
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
    (one-off comp421)
  )
)
(:action evaluate-comp422-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp422)
    (rebooted comp422)
  )
  :effect (and
    (not (evaluate comp422))
    (evaluate comp423)
  )
)
(:action evaluate-comp422-all-on
  :parameters ()
  :precondition (and
    (evaluate comp422)
    (not (rebooted comp422))
    (running comp421)
  )
  :effect (and
    (not (evaluate comp422))
    (evaluate comp423)
    (all-on comp422)
  )
)
(:action evaluate-comp422-off-comp421
  :parameters ()
  :precondition (and
    (evaluate comp422)
    (not (rebooted comp422))
    (not (running comp421))
  )
  :effect (and
    (not (evaluate comp422))
    (evaluate comp423)
    (one-off comp422)
  )
)
(:action evaluate-comp423-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (rebooted comp423)
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
  )
)
(:action evaluate-comp423-all-on
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (not (rebooted comp423))
    (running comp422)
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
    (all-on comp423)
  )
)
(:action evaluate-comp423-off-comp422
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (not (rebooted comp423))
    (not (running comp422))
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
    (one-off comp423)
  )
)
(:action evaluate-comp424-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (rebooted comp424)
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
  )
)
(:action evaluate-comp424-all-on
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (not (rebooted comp424))
    (running comp423)
    (running comp1201)
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
    (all-on comp424)
  )
)
(:action evaluate-comp424-off-comp423
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (not (rebooted comp424))
    (not (running comp423))
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
    (one-off comp424)
  )
)
(:action evaluate-comp424-off-comp1201
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (not (rebooted comp424))
    (not (running comp1201))
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
    (one-off comp424)
  )
)
(:action evaluate-comp425-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (rebooted comp425)
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
  )
)
(:action evaluate-comp425-all-on
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (not (rebooted comp425))
    (running comp424)
    (running comp1347)
    (running comp1607)
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
    (all-on comp425)
  )
)
(:action evaluate-comp425-off-comp424
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (not (rebooted comp425))
    (not (running comp424))
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
    (one-off comp425)
  )
)
(:action evaluate-comp425-off-comp1347
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (not (rebooted comp425))
    (not (running comp1347))
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
    (one-off comp425)
  )
)
(:action evaluate-comp425-off-comp1607
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (not (rebooted comp425))
    (not (running comp1607))
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
    (one-off comp425)
  )
)
(:action evaluate-comp426-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp426)
    (rebooted comp426)
  )
  :effect (and
    (not (evaluate comp426))
    (evaluate comp427)
  )
)
(:action evaluate-comp426-all-on
  :parameters ()
  :precondition (and
    (evaluate comp426)
    (not (rebooted comp426))
    (running comp425)
  )
  :effect (and
    (not (evaluate comp426))
    (evaluate comp427)
    (all-on comp426)
  )
)
(:action evaluate-comp426-off-comp425
  :parameters ()
  :precondition (and
    (evaluate comp426)
    (not (rebooted comp426))
    (not (running comp425))
  )
  :effect (and
    (not (evaluate comp426))
    (evaluate comp427)
    (one-off comp426)
  )
)
(:action evaluate-comp427-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp427)
    (rebooted comp427)
  )
  :effect (and
    (not (evaluate comp427))
    (evaluate comp428)
  )
)
(:action evaluate-comp427-all-on
  :parameters ()
  :precondition (and
    (evaluate comp427)
    (not (rebooted comp427))
    (running comp426)
  )
  :effect (and
    (not (evaluate comp427))
    (evaluate comp428)
    (all-on comp427)
  )
)
(:action evaluate-comp427-off-comp426
  :parameters ()
  :precondition (and
    (evaluate comp427)
    (not (rebooted comp427))
    (not (running comp426))
  )
  :effect (and
    (not (evaluate comp427))
    (evaluate comp428)
    (one-off comp427)
  )
)
(:action evaluate-comp428-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (rebooted comp428)
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
  )
)
(:action evaluate-comp428-all-on
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (not (rebooted comp428))
    (running comp427)
    (running comp1259)
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
    (all-on comp428)
  )
)
(:action evaluate-comp428-off-comp427
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (not (rebooted comp428))
    (not (running comp427))
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
    (one-off comp428)
  )
)
(:action evaluate-comp428-off-comp1259
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (not (rebooted comp428))
    (not (running comp1259))
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
    (one-off comp428)
  )
)
(:action evaluate-comp429-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp429)
    (rebooted comp429)
  )
  :effect (and
    (not (evaluate comp429))
    (evaluate comp430)
  )
)
(:action evaluate-comp429-all-on
  :parameters ()
  :precondition (and
    (evaluate comp429)
    (not (rebooted comp429))
    (running comp428)
  )
  :effect (and
    (not (evaluate comp429))
    (evaluate comp430)
    (all-on comp429)
  )
)
(:action evaluate-comp429-off-comp428
  :parameters ()
  :precondition (and
    (evaluate comp429)
    (not (rebooted comp429))
    (not (running comp428))
  )
  :effect (and
    (not (evaluate comp429))
    (evaluate comp430)
    (one-off comp429)
  )
)
(:action evaluate-comp430-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp430)
    (rebooted comp430)
  )
  :effect (and
    (not (evaluate comp430))
    (evaluate comp431)
  )
)
(:action evaluate-comp430-all-on
  :parameters ()
  :precondition (and
    (evaluate comp430)
    (not (rebooted comp430))
    (running comp429)
  )
  :effect (and
    (not (evaluate comp430))
    (evaluate comp431)
    (all-on comp430)
  )
)
(:action evaluate-comp430-off-comp429
  :parameters ()
  :precondition (and
    (evaluate comp430)
    (not (rebooted comp430))
    (not (running comp429))
  )
  :effect (and
    (not (evaluate comp430))
    (evaluate comp431)
    (one-off comp430)
  )
)
(:action evaluate-comp431-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (rebooted comp431)
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
  )
)
(:action evaluate-comp431-all-on
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (not (rebooted comp431))
    (running comp430)
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
    (all-on comp431)
  )
)
(:action evaluate-comp431-off-comp430
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (not (rebooted comp431))
    (not (running comp430))
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
    (one-off comp431)
  )
)
(:action evaluate-comp432-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (rebooted comp432)
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
  )
)
(:action evaluate-comp432-all-on
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (running comp431)
    (running comp1240)
    (running comp1396)
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (all-on comp432)
  )
)
(:action evaluate-comp432-off-comp431
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (not (running comp431))
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (one-off comp432)
  )
)
(:action evaluate-comp432-off-comp1240
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (not (running comp1240))
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (one-off comp432)
  )
)
(:action evaluate-comp432-off-comp1396
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (not (running comp1396))
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (one-off comp432)
  )
)
(:action evaluate-comp433-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (rebooted comp433)
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
  )
)
(:action evaluate-comp433-all-on
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (not (rebooted comp433))
    (running comp255)
    (running comp432)
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
    (all-on comp433)
  )
)
(:action evaluate-comp433-off-comp255
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (not (rebooted comp433))
    (not (running comp255))
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
    (one-off comp433)
  )
)
(:action evaluate-comp433-off-comp432
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (not (rebooted comp433))
    (not (running comp432))
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
    (one-off comp433)
  )
)
(:action evaluate-comp434-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp434)
    (rebooted comp434)
  )
  :effect (and
    (not (evaluate comp434))
    (evaluate comp435)
  )
)
(:action evaluate-comp434-all-on
  :parameters ()
  :precondition (and
    (evaluate comp434)
    (not (rebooted comp434))
    (running comp433)
  )
  :effect (and
    (not (evaluate comp434))
    (evaluate comp435)
    (all-on comp434)
  )
)
(:action evaluate-comp434-off-comp433
  :parameters ()
  :precondition (and
    (evaluate comp434)
    (not (rebooted comp434))
    (not (running comp433))
  )
  :effect (and
    (not (evaluate comp434))
    (evaluate comp435)
    (one-off comp434)
  )
)
(:action evaluate-comp435-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (rebooted comp435)
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
  )
)
(:action evaluate-comp435-all-on
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (running comp434)
    (running comp1236)
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (all-on comp435)
  )
)
(:action evaluate-comp435-off-comp434
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (not (running comp434))
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (one-off comp435)
  )
)
(:action evaluate-comp435-off-comp1236
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (not (running comp1236))
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (one-off comp435)
  )
)
(:action evaluate-comp436-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp436)
    (rebooted comp436)
  )
  :effect (and
    (not (evaluate comp436))
    (evaluate comp437)
  )
)
(:action evaluate-comp436-all-on
  :parameters ()
  :precondition (and
    (evaluate comp436)
    (not (rebooted comp436))
    (running comp435)
  )
  :effect (and
    (not (evaluate comp436))
    (evaluate comp437)
    (all-on comp436)
  )
)
(:action evaluate-comp436-off-comp435
  :parameters ()
  :precondition (and
    (evaluate comp436)
    (not (rebooted comp436))
    (not (running comp435))
  )
  :effect (and
    (not (evaluate comp436))
    (evaluate comp437)
    (one-off comp436)
  )
)
(:action evaluate-comp437-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (rebooted comp437)
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
  )
)
(:action evaluate-comp437-all-on
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (not (rebooted comp437))
    (running comp436)
    (running comp1343)
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
    (all-on comp437)
  )
)
(:action evaluate-comp437-off-comp436
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (not (rebooted comp437))
    (not (running comp436))
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
    (one-off comp437)
  )
)
(:action evaluate-comp437-off-comp1343
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (not (rebooted comp437))
    (not (running comp1343))
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
    (one-off comp437)
  )
)
(:action evaluate-comp438-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (rebooted comp438)
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
  )
)
(:action evaluate-comp438-all-on
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (not (rebooted comp438))
    (running comp437)
    (running comp1718)
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
    (all-on comp438)
  )
)
(:action evaluate-comp438-off-comp437
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (not (rebooted comp438))
    (not (running comp437))
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
    (one-off comp438)
  )
)
(:action evaluate-comp438-off-comp1718
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (not (rebooted comp438))
    (not (running comp1718))
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
    (one-off comp438)
  )
)
(:action evaluate-comp439-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (rebooted comp439)
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
  )
)
(:action evaluate-comp439-all-on
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (not (rebooted comp439))
    (running comp438)
    (running comp1508)
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
    (all-on comp439)
  )
)
(:action evaluate-comp439-off-comp438
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (not (rebooted comp439))
    (not (running comp438))
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
    (one-off comp439)
  )
)
(:action evaluate-comp439-off-comp1508
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (not (rebooted comp439))
    (not (running comp1508))
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
    (one-off comp439)
  )
)
(:action evaluate-comp440-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (rebooted comp440)
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
  )
)
(:action evaluate-comp440-all-on
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (not (rebooted comp440))
    (running comp439)
    (running comp1714)
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
    (all-on comp440)
  )
)
(:action evaluate-comp440-off-comp439
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (not (rebooted comp440))
    (not (running comp439))
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
    (one-off comp440)
  )
)
(:action evaluate-comp440-off-comp1714
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (not (rebooted comp440))
    (not (running comp1714))
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
    (one-off comp440)
  )
)
(:action evaluate-comp441-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp441)
    (rebooted comp441)
  )
  :effect (and
    (not (evaluate comp441))
    (evaluate comp442)
  )
)
(:action evaluate-comp441-all-on
  :parameters ()
  :precondition (and
    (evaluate comp441)
    (not (rebooted comp441))
    (running comp440)
  )
  :effect (and
    (not (evaluate comp441))
    (evaluate comp442)
    (all-on comp441)
  )
)
(:action evaluate-comp441-off-comp440
  :parameters ()
  :precondition (and
    (evaluate comp441)
    (not (rebooted comp441))
    (not (running comp440))
  )
  :effect (and
    (not (evaluate comp441))
    (evaluate comp442)
    (one-off comp441)
  )
)
(:action evaluate-comp442-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp442)
    (rebooted comp442)
  )
  :effect (and
    (not (evaluate comp442))
    (evaluate comp443)
  )
)
(:action evaluate-comp442-all-on
  :parameters ()
  :precondition (and
    (evaluate comp442)
    (not (rebooted comp442))
    (running comp441)
  )
  :effect (and
    (not (evaluate comp442))
    (evaluate comp443)
    (all-on comp442)
  )
)
(:action evaluate-comp442-off-comp441
  :parameters ()
  :precondition (and
    (evaluate comp442)
    (not (rebooted comp442))
    (not (running comp441))
  )
  :effect (and
    (not (evaluate comp442))
    (evaluate comp443)
    (one-off comp442)
  )
)
(:action evaluate-comp443-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (rebooted comp443)
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
  )
)
(:action evaluate-comp443-all-on
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (not (rebooted comp443))
    (running comp442)
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
    (all-on comp443)
  )
)
(:action evaluate-comp443-off-comp442
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (not (rebooted comp443))
    (not (running comp442))
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
    (one-off comp443)
  )
)
(:action evaluate-comp444-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (rebooted comp444)
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
  )
)
(:action evaluate-comp444-all-on
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (not (rebooted comp444))
    (running comp417)
    (running comp443)
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
    (all-on comp444)
  )
)
(:action evaluate-comp444-off-comp417
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (not (rebooted comp444))
    (not (running comp417))
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
    (one-off comp444)
  )
)
(:action evaluate-comp444-off-comp443
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (not (rebooted comp444))
    (not (running comp443))
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
    (one-off comp444)
  )
)
(:action evaluate-comp445-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (rebooted comp445)
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
  )
)
(:action evaluate-comp445-all-on
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (not (rebooted comp445))
    (running comp444)
    (running comp1054)
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
    (all-on comp445)
  )
)
(:action evaluate-comp445-off-comp444
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (not (rebooted comp445))
    (not (running comp444))
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
    (one-off comp445)
  )
)
(:action evaluate-comp445-off-comp1054
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (not (rebooted comp445))
    (not (running comp1054))
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
    (one-off comp445)
  )
)
(:action evaluate-comp446-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (rebooted comp446)
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
  )
)
(:action evaluate-comp446-all-on
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (not (rebooted comp446))
    (running comp445)
    (running comp1198)
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
    (all-on comp446)
  )
)
(:action evaluate-comp446-off-comp445
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (not (rebooted comp446))
    (not (running comp445))
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
    (one-off comp446)
  )
)
(:action evaluate-comp446-off-comp1198
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (not (rebooted comp446))
    (not (running comp1198))
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
    (one-off comp446)
  )
)
(:action evaluate-comp447-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (rebooted comp447)
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
  )
)
(:action evaluate-comp447-all-on
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (not (rebooted comp447))
    (running comp446)
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
    (all-on comp447)
  )
)
(:action evaluate-comp447-off-comp446
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (not (rebooted comp447))
    (not (running comp446))
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
    (one-off comp447)
  )
)
(:action evaluate-comp448-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp448)
    (rebooted comp448)
  )
  :effect (and
    (not (evaluate comp448))
    (evaluate comp449)
  )
)
(:action evaluate-comp448-all-on
  :parameters ()
  :precondition (and
    (evaluate comp448)
    (not (rebooted comp448))
    (running comp447)
  )
  :effect (and
    (not (evaluate comp448))
    (evaluate comp449)
    (all-on comp448)
  )
)
(:action evaluate-comp448-off-comp447
  :parameters ()
  :precondition (and
    (evaluate comp448)
    (not (rebooted comp448))
    (not (running comp447))
  )
  :effect (and
    (not (evaluate comp448))
    (evaluate comp449)
    (one-off comp448)
  )
)
(:action evaluate-comp449-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (rebooted comp449)
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
  )
)
(:action evaluate-comp449-all-on
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (not (rebooted comp449))
    (running comp448)
    (running comp1678)
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
    (all-on comp449)
  )
)
(:action evaluate-comp449-off-comp448
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (not (rebooted comp449))
    (not (running comp448))
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
    (one-off comp449)
  )
)
(:action evaluate-comp449-off-comp1678
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (not (rebooted comp449))
    (not (running comp1678))
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
    (one-off comp449)
  )
)
(:action evaluate-comp450-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp450)
    (rebooted comp450)
  )
  :effect (and
    (not (evaluate comp450))
    (evaluate comp451)
  )
)
(:action evaluate-comp450-all-on
  :parameters ()
  :precondition (and
    (evaluate comp450)
    (not (rebooted comp450))
    (running comp449)
  )
  :effect (and
    (not (evaluate comp450))
    (evaluate comp451)
    (all-on comp450)
  )
)
(:action evaluate-comp450-off-comp449
  :parameters ()
  :precondition (and
    (evaluate comp450)
    (not (rebooted comp450))
    (not (running comp449))
  )
  :effect (and
    (not (evaluate comp450))
    (evaluate comp451)
    (one-off comp450)
  )
)
(:action evaluate-comp451-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (rebooted comp451)
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
  )
)
(:action evaluate-comp451-all-on
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (not (rebooted comp451))
    (running comp450)
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
    (all-on comp451)
  )
)
(:action evaluate-comp451-off-comp450
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (not (rebooted comp451))
    (not (running comp450))
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
    (one-off comp451)
  )
)
(:action evaluate-comp452-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (rebooted comp452)
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
  )
)
(:action evaluate-comp452-all-on
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (running comp14)
    (running comp287)
    (running comp403)
    (running comp451)
    (running comp1304)
    (running comp1563)
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (all-on comp452)
  )
)
(:action evaluate-comp452-off-comp14
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp14))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp452-off-comp287
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp287))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp452-off-comp403
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp403))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp452-off-comp451
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp451))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp452-off-comp1304
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp1304))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp452-off-comp1563
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp1563))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp453-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (rebooted comp453)
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
  )
)
(:action evaluate-comp453-all-on
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (not (rebooted comp453))
    (running comp452)
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
    (all-on comp453)
  )
)
(:action evaluate-comp453-off-comp452
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (not (rebooted comp453))
    (not (running comp452))
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
    (one-off comp453)
  )
)
(:action evaluate-comp454-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp454)
    (rebooted comp454)
  )
  :effect (and
    (not (evaluate comp454))
    (evaluate comp455)
  )
)
(:action evaluate-comp454-all-on
  :parameters ()
  :precondition (and
    (evaluate comp454)
    (not (rebooted comp454))
    (running comp453)
  )
  :effect (and
    (not (evaluate comp454))
    (evaluate comp455)
    (all-on comp454)
  )
)
(:action evaluate-comp454-off-comp453
  :parameters ()
  :precondition (and
    (evaluate comp454)
    (not (rebooted comp454))
    (not (running comp453))
  )
  :effect (and
    (not (evaluate comp454))
    (evaluate comp455)
    (one-off comp454)
  )
)
(:action evaluate-comp455-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp455)
    (rebooted comp455)
  )
  :effect (and
    (not (evaluate comp455))
    (evaluate comp456)
  )
)
(:action evaluate-comp455-all-on
  :parameters ()
  :precondition (and
    (evaluate comp455)
    (not (rebooted comp455))
    (running comp454)
  )
  :effect (and
    (not (evaluate comp455))
    (evaluate comp456)
    (all-on comp455)
  )
)
(:action evaluate-comp455-off-comp454
  :parameters ()
  :precondition (and
    (evaluate comp455)
    (not (rebooted comp455))
    (not (running comp454))
  )
  :effect (and
    (not (evaluate comp455))
    (evaluate comp456)
    (one-off comp455)
  )
)
(:action evaluate-comp456-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (rebooted comp456)
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
  )
)
(:action evaluate-comp456-all-on
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (not (rebooted comp456))
    (running comp455)
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
    (all-on comp456)
  )
)
(:action evaluate-comp456-off-comp455
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (not (rebooted comp456))
    (not (running comp455))
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
    (one-off comp456)
  )
)
(:action evaluate-comp457-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (rebooted comp457)
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
  )
)
(:action evaluate-comp457-all-on
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (not (rebooted comp457))
    (running comp456)
    (running comp1821)
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
    (all-on comp457)
  )
)
(:action evaluate-comp457-off-comp456
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (not (rebooted comp457))
    (not (running comp456))
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
    (one-off comp457)
  )
)
(:action evaluate-comp457-off-comp1821
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (not (rebooted comp457))
    (not (running comp1821))
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
    (one-off comp457)
  )
)
(:action evaluate-comp458-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp458)
    (rebooted comp458)
  )
  :effect (and
    (not (evaluate comp458))
    (evaluate comp459)
  )
)
(:action evaluate-comp458-all-on
  :parameters ()
  :precondition (and
    (evaluate comp458)
    (not (rebooted comp458))
    (running comp457)
  )
  :effect (and
    (not (evaluate comp458))
    (evaluate comp459)
    (all-on comp458)
  )
)
(:action evaluate-comp458-off-comp457
  :parameters ()
  :precondition (and
    (evaluate comp458)
    (not (rebooted comp458))
    (not (running comp457))
  )
  :effect (and
    (not (evaluate comp458))
    (evaluate comp459)
    (one-off comp458)
  )
)
(:action evaluate-comp459-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (rebooted comp459)
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
  )
)
(:action evaluate-comp459-all-on
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (not (rebooted comp459))
    (running comp458)
    (running comp1631)
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
    (all-on comp459)
  )
)
(:action evaluate-comp459-off-comp458
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (not (rebooted comp459))
    (not (running comp458))
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
    (one-off comp459)
  )
)
(:action evaluate-comp459-off-comp1631
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (not (rebooted comp459))
    (not (running comp1631))
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
    (one-off comp459)
  )
)
(:action evaluate-comp460-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (rebooted comp460)
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
  )
)
(:action evaluate-comp460-all-on
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (not (rebooted comp460))
    (running comp459)
    (running comp517)
    (running comp1217)
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
    (all-on comp460)
  )
)
(:action evaluate-comp460-off-comp459
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (not (rebooted comp460))
    (not (running comp459))
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
    (one-off comp460)
  )
)
(:action evaluate-comp460-off-comp517
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (not (rebooted comp460))
    (not (running comp517))
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
    (one-off comp460)
  )
)
(:action evaluate-comp460-off-comp1217
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (not (rebooted comp460))
    (not (running comp1217))
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
    (one-off comp460)
  )
)
(:action evaluate-comp461-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (rebooted comp461)
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
  )
)
(:action evaluate-comp461-all-on
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (not (rebooted comp461))
    (running comp460)
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
    (all-on comp461)
  )
)
(:action evaluate-comp461-off-comp460
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (not (rebooted comp461))
    (not (running comp460))
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
    (one-off comp461)
  )
)
(:action evaluate-comp462-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp462)
    (rebooted comp462)
  )
  :effect (and
    (not (evaluate comp462))
    (evaluate comp463)
  )
)
(:action evaluate-comp462-all-on
  :parameters ()
  :precondition (and
    (evaluate comp462)
    (not (rebooted comp462))
    (running comp461)
  )
  :effect (and
    (not (evaluate comp462))
    (evaluate comp463)
    (all-on comp462)
  )
)
(:action evaluate-comp462-off-comp461
  :parameters ()
  :precondition (and
    (evaluate comp462)
    (not (rebooted comp462))
    (not (running comp461))
  )
  :effect (and
    (not (evaluate comp462))
    (evaluate comp463)
    (one-off comp462)
  )
)
(:action evaluate-comp463-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (rebooted comp463)
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
  )
)
(:action evaluate-comp463-all-on
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (not (rebooted comp463))
    (running comp462)
    (running comp767)
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
    (all-on comp463)
  )
)
(:action evaluate-comp463-off-comp462
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (not (rebooted comp463))
    (not (running comp462))
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
    (one-off comp463)
  )
)
(:action evaluate-comp463-off-comp767
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (not (rebooted comp463))
    (not (running comp767))
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
    (one-off comp463)
  )
)
(:action evaluate-comp464-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp464)
    (rebooted comp464)
  )
  :effect (and
    (not (evaluate comp464))
    (evaluate comp465)
  )
)
(:action evaluate-comp464-all-on
  :parameters ()
  :precondition (and
    (evaluate comp464)
    (not (rebooted comp464))
    (running comp463)
  )
  :effect (and
    (not (evaluate comp464))
    (evaluate comp465)
    (all-on comp464)
  )
)
(:action evaluate-comp464-off-comp463
  :parameters ()
  :precondition (and
    (evaluate comp464)
    (not (rebooted comp464))
    (not (running comp463))
  )
  :effect (and
    (not (evaluate comp464))
    (evaluate comp465)
    (one-off comp464)
  )
)
(:action evaluate-comp465-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (rebooted comp465)
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
  )
)
(:action evaluate-comp465-all-on
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (not (rebooted comp465))
    (running comp464)
    (running comp1077)
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
    (all-on comp465)
  )
)
(:action evaluate-comp465-off-comp464
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (not (rebooted comp465))
    (not (running comp464))
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
    (one-off comp465)
  )
)
(:action evaluate-comp465-off-comp1077
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (not (rebooted comp465))
    (not (running comp1077))
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
    (one-off comp465)
  )
)
(:action evaluate-comp466-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (rebooted comp466)
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
  )
)
(:action evaluate-comp466-all-on
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (not (rebooted comp466))
    (running comp465)
    (running comp1084)
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
    (all-on comp466)
  )
)
(:action evaluate-comp466-off-comp465
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (not (rebooted comp466))
    (not (running comp465))
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
    (one-off comp466)
  )
)
(:action evaluate-comp466-off-comp1084
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (not (rebooted comp466))
    (not (running comp1084))
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
    (one-off comp466)
  )
)
(:action evaluate-comp467-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (rebooted comp467)
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
  )
)
(:action evaluate-comp467-all-on
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (not (rebooted comp467))
    (running comp466)
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
    (all-on comp467)
  )
)
(:action evaluate-comp467-off-comp466
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (not (rebooted comp467))
    (not (running comp466))
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
    (one-off comp467)
  )
)
(:action evaluate-comp468-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (rebooted comp468)
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
  )
)
(:action evaluate-comp468-all-on
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (not (rebooted comp468))
    (running comp467)
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
    (all-on comp468)
  )
)
(:action evaluate-comp468-off-comp467
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (not (rebooted comp468))
    (not (running comp467))
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
    (one-off comp468)
  )
)
(:action evaluate-comp469-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp469)
    (rebooted comp469)
  )
  :effect (and
    (not (evaluate comp469))
    (evaluate comp470)
  )
)
(:action evaluate-comp469-all-on
  :parameters ()
  :precondition (and
    (evaluate comp469)
    (not (rebooted comp469))
    (running comp468)
  )
  :effect (and
    (not (evaluate comp469))
    (evaluate comp470)
    (all-on comp469)
  )
)
(:action evaluate-comp469-off-comp468
  :parameters ()
  :precondition (and
    (evaluate comp469)
    (not (rebooted comp469))
    (not (running comp468))
  )
  :effect (and
    (not (evaluate comp469))
    (evaluate comp470)
    (one-off comp469)
  )
)
(:action evaluate-comp470-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp470)
    (rebooted comp470)
  )
  :effect (and
    (not (evaluate comp470))
    (evaluate comp471)
  )
)
(:action evaluate-comp470-all-on
  :parameters ()
  :precondition (and
    (evaluate comp470)
    (not (rebooted comp470))
    (running comp469)
  )
  :effect (and
    (not (evaluate comp470))
    (evaluate comp471)
    (all-on comp470)
  )
)
(:action evaluate-comp470-off-comp469
  :parameters ()
  :precondition (and
    (evaluate comp470)
    (not (rebooted comp470))
    (not (running comp469))
  )
  :effect (and
    (not (evaluate comp470))
    (evaluate comp471)
    (one-off comp470)
  )
)
(:action evaluate-comp471-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (rebooted comp471)
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
  )
)
(:action evaluate-comp471-all-on
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (not (rebooted comp471))
    (running comp470)
    (running comp610)
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
    (all-on comp471)
  )
)
(:action evaluate-comp471-off-comp470
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (not (rebooted comp471))
    (not (running comp470))
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
    (one-off comp471)
  )
)
(:action evaluate-comp471-off-comp610
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (not (rebooted comp471))
    (not (running comp610))
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
    (one-off comp471)
  )
)
(:action evaluate-comp472-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp472)
    (rebooted comp472)
  )
  :effect (and
    (not (evaluate comp472))
    (evaluate comp473)
  )
)
(:action evaluate-comp472-all-on
  :parameters ()
  :precondition (and
    (evaluate comp472)
    (not (rebooted comp472))
    (running comp471)
  )
  :effect (and
    (not (evaluate comp472))
    (evaluate comp473)
    (all-on comp472)
  )
)
(:action evaluate-comp472-off-comp471
  :parameters ()
  :precondition (and
    (evaluate comp472)
    (not (rebooted comp472))
    (not (running comp471))
  )
  :effect (and
    (not (evaluate comp472))
    (evaluate comp473)
    (one-off comp472)
  )
)
(:action evaluate-comp473-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp473)
    (rebooted comp473)
  )
  :effect (and
    (not (evaluate comp473))
    (evaluate comp474)
  )
)
(:action evaluate-comp473-all-on
  :parameters ()
  :precondition (and
    (evaluate comp473)
    (not (rebooted comp473))
    (running comp472)
  )
  :effect (and
    (not (evaluate comp473))
    (evaluate comp474)
    (all-on comp473)
  )
)
(:action evaluate-comp473-off-comp472
  :parameters ()
  :precondition (and
    (evaluate comp473)
    (not (rebooted comp473))
    (not (running comp472))
  )
  :effect (and
    (not (evaluate comp473))
    (evaluate comp474)
    (one-off comp473)
  )
)
(:action evaluate-comp474-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (rebooted comp474)
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
  )
)
(:action evaluate-comp474-all-on
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (not (rebooted comp474))
    (running comp473)
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
    (all-on comp474)
  )
)
(:action evaluate-comp474-off-comp473
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (not (rebooted comp474))
    (not (running comp473))
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
    (one-off comp474)
  )
)
(:action evaluate-comp475-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (rebooted comp475)
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
  )
)
(:action evaluate-comp475-all-on
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (running comp224)
    (running comp474)
    (running comp803)
    (running comp1194)
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (all-on comp475)
  )
)
(:action evaluate-comp475-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (one-off comp475)
  )
)
(:action evaluate-comp475-off-comp474
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (not (running comp474))
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (one-off comp475)
  )
)
(:action evaluate-comp475-off-comp803
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (not (running comp803))
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (one-off comp475)
  )
)
(:action evaluate-comp475-off-comp1194
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (not (running comp1194))
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (one-off comp475)
  )
)
(:action evaluate-comp476-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (rebooted comp476)
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
  )
)
(:action evaluate-comp476-all-on
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (not (rebooted comp476))
    (running comp475)
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
    (all-on comp476)
  )
)
(:action evaluate-comp476-off-comp475
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (not (rebooted comp476))
    (not (running comp475))
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
    (one-off comp476)
  )
)
(:action evaluate-comp477-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (rebooted comp477)
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
  )
)
(:action evaluate-comp477-all-on
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (not (rebooted comp477))
    (running comp476)
    (running comp487)
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
    (all-on comp477)
  )
)
(:action evaluate-comp477-off-comp476
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (not (rebooted comp477))
    (not (running comp476))
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
    (one-off comp477)
  )
)
(:action evaluate-comp477-off-comp487
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (not (rebooted comp477))
    (not (running comp487))
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
    (one-off comp477)
  )
)
(:action evaluate-comp478-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp478)
    (rebooted comp478)
  )
  :effect (and
    (not (evaluate comp478))
    (evaluate comp479)
  )
)
(:action evaluate-comp478-all-on
  :parameters ()
  :precondition (and
    (evaluate comp478)
    (not (rebooted comp478))
    (running comp477)
  )
  :effect (and
    (not (evaluate comp478))
    (evaluate comp479)
    (all-on comp478)
  )
)
(:action evaluate-comp478-off-comp477
  :parameters ()
  :precondition (and
    (evaluate comp478)
    (not (rebooted comp478))
    (not (running comp477))
  )
  :effect (and
    (not (evaluate comp478))
    (evaluate comp479)
    (one-off comp478)
  )
)
(:action evaluate-comp479-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (rebooted comp479)
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
  )
)
(:action evaluate-comp479-all-on
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (running comp129)
    (running comp478)
    (running comp1607)
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (all-on comp479)
  )
)
(:action evaluate-comp479-off-comp129
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (not (running comp129))
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (one-off comp479)
  )
)
(:action evaluate-comp479-off-comp478
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (not (running comp478))
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (one-off comp479)
  )
)
(:action evaluate-comp479-off-comp1607
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (not (running comp1607))
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (one-off comp479)
  )
)
(:action evaluate-comp480-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (rebooted comp480)
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
  )
)
(:action evaluate-comp480-all-on
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (not (rebooted comp480))
    (running comp479)
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
    (all-on comp480)
  )
)
(:action evaluate-comp480-off-comp479
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (not (rebooted comp480))
    (not (running comp479))
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
    (one-off comp480)
  )
)
(:action evaluate-comp481-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (rebooted comp481)
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
  )
)
(:action evaluate-comp481-all-on
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (not (rebooted comp481))
    (running comp480)
    (running comp946)
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
    (all-on comp481)
  )
)
(:action evaluate-comp481-off-comp480
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (not (rebooted comp481))
    (not (running comp480))
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
    (one-off comp481)
  )
)
(:action evaluate-comp481-off-comp946
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (not (rebooted comp481))
    (not (running comp946))
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
    (one-off comp481)
  )
)
(:action evaluate-comp482-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (rebooted comp482)
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
  )
)
(:action evaluate-comp482-all-on
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (not (rebooted comp482))
    (running comp481)
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
    (all-on comp482)
  )
)
(:action evaluate-comp482-off-comp481
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (not (rebooted comp482))
    (not (running comp481))
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
    (one-off comp482)
  )
)
(:action evaluate-comp483-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (rebooted comp483)
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
  )
)
(:action evaluate-comp483-all-on
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (not (rebooted comp483))
    (running comp317)
    (running comp482)
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
    (all-on comp483)
  )
)
(:action evaluate-comp483-off-comp317
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (not (rebooted comp483))
    (not (running comp317))
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
    (one-off comp483)
  )
)
(:action evaluate-comp483-off-comp482
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (not (rebooted comp483))
    (not (running comp482))
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
    (one-off comp483)
  )
)
(:action evaluate-comp484-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp484)
    (rebooted comp484)
  )
  :effect (and
    (not (evaluate comp484))
    (evaluate comp485)
  )
)
(:action evaluate-comp484-all-on
  :parameters ()
  :precondition (and
    (evaluate comp484)
    (not (rebooted comp484))
    (running comp483)
  )
  :effect (and
    (not (evaluate comp484))
    (evaluate comp485)
    (all-on comp484)
  )
)
(:action evaluate-comp484-off-comp483
  :parameters ()
  :precondition (and
    (evaluate comp484)
    (not (rebooted comp484))
    (not (running comp483))
  )
  :effect (and
    (not (evaluate comp484))
    (evaluate comp485)
    (one-off comp484)
  )
)
(:action evaluate-comp485-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (rebooted comp485)
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
  )
)
(:action evaluate-comp485-all-on
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (not (rebooted comp485))
    (running comp484)
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
    (all-on comp485)
  )
)
(:action evaluate-comp485-off-comp484
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (not (rebooted comp485))
    (not (running comp484))
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
    (one-off comp485)
  )
)
(:action evaluate-comp486-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp486)
    (rebooted comp486)
  )
  :effect (and
    (not (evaluate comp486))
    (evaluate comp487)
  )
)
(:action evaluate-comp486-all-on
  :parameters ()
  :precondition (and
    (evaluate comp486)
    (not (rebooted comp486))
    (running comp485)
  )
  :effect (and
    (not (evaluate comp486))
    (evaluate comp487)
    (all-on comp486)
  )
)
(:action evaluate-comp486-off-comp485
  :parameters ()
  :precondition (and
    (evaluate comp486)
    (not (rebooted comp486))
    (not (running comp485))
  )
  :effect (and
    (not (evaluate comp486))
    (evaluate comp487)
    (one-off comp486)
  )
)
(:action evaluate-comp487-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (rebooted comp487)
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
  )
)
(:action evaluate-comp487-all-on
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (not (rebooted comp487))
    (running comp486)
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
    (all-on comp487)
  )
)
(:action evaluate-comp487-off-comp486
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (not (rebooted comp487))
    (not (running comp486))
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
    (one-off comp487)
  )
)
(:action evaluate-comp488-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp488)
    (rebooted comp488)
  )
  :effect (and
    (not (evaluate comp488))
    (evaluate comp489)
  )
)
(:action evaluate-comp488-all-on
  :parameters ()
  :precondition (and
    (evaluate comp488)
    (not (rebooted comp488))
    (running comp487)
  )
  :effect (and
    (not (evaluate comp488))
    (evaluate comp489)
    (all-on comp488)
  )
)
(:action evaluate-comp488-off-comp487
  :parameters ()
  :precondition (and
    (evaluate comp488)
    (not (rebooted comp488))
    (not (running comp487))
  )
  :effect (and
    (not (evaluate comp488))
    (evaluate comp489)
    (one-off comp488)
  )
)
(:action evaluate-comp489-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (rebooted comp489)
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
  )
)
(:action evaluate-comp489-all-on
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (not (rebooted comp489))
    (running comp488)
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
    (all-on comp489)
  )
)
(:action evaluate-comp489-off-comp488
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (not (rebooted comp489))
    (not (running comp488))
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
    (one-off comp489)
  )
)
(:action evaluate-comp490-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (rebooted comp490)
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
  )
)
(:action evaluate-comp490-all-on
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (not (rebooted comp490))
    (running comp489)
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
    (all-on comp490)
  )
)
(:action evaluate-comp490-off-comp489
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (not (rebooted comp490))
    (not (running comp489))
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
    (one-off comp490)
  )
)
(:action evaluate-comp491-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp491)
    (rebooted comp491)
  )
  :effect (and
    (not (evaluate comp491))
    (evaluate comp492)
  )
)
(:action evaluate-comp491-all-on
  :parameters ()
  :precondition (and
    (evaluate comp491)
    (not (rebooted comp491))
    (running comp490)
  )
  :effect (and
    (not (evaluate comp491))
    (evaluate comp492)
    (all-on comp491)
  )
)
(:action evaluate-comp491-off-comp490
  :parameters ()
  :precondition (and
    (evaluate comp491)
    (not (rebooted comp491))
    (not (running comp490))
  )
  :effect (and
    (not (evaluate comp491))
    (evaluate comp492)
    (one-off comp491)
  )
)
(:action evaluate-comp492-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp492)
    (rebooted comp492)
  )
  :effect (and
    (not (evaluate comp492))
    (evaluate comp493)
  )
)
(:action evaluate-comp492-all-on
  :parameters ()
  :precondition (and
    (evaluate comp492)
    (not (rebooted comp492))
    (running comp491)
  )
  :effect (and
    (not (evaluate comp492))
    (evaluate comp493)
    (all-on comp492)
  )
)
(:action evaluate-comp492-off-comp491
  :parameters ()
  :precondition (and
    (evaluate comp492)
    (not (rebooted comp492))
    (not (running comp491))
  )
  :effect (and
    (not (evaluate comp492))
    (evaluate comp493)
    (one-off comp492)
  )
)
(:action evaluate-comp493-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp493)
    (rebooted comp493)
  )
  :effect (and
    (not (evaluate comp493))
    (evaluate comp494)
  )
)
(:action evaluate-comp493-all-on
  :parameters ()
  :precondition (and
    (evaluate comp493)
    (not (rebooted comp493))
    (running comp492)
  )
  :effect (and
    (not (evaluate comp493))
    (evaluate comp494)
    (all-on comp493)
  )
)
(:action evaluate-comp493-off-comp492
  :parameters ()
  :precondition (and
    (evaluate comp493)
    (not (rebooted comp493))
    (not (running comp492))
  )
  :effect (and
    (not (evaluate comp493))
    (evaluate comp494)
    (one-off comp493)
  )
)
(:action evaluate-comp494-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp494)
    (rebooted comp494)
  )
  :effect (and
    (not (evaluate comp494))
    (evaluate comp495)
  )
)
(:action evaluate-comp494-all-on
  :parameters ()
  :precondition (and
    (evaluate comp494)
    (not (rebooted comp494))
    (running comp493)
  )
  :effect (and
    (not (evaluate comp494))
    (evaluate comp495)
    (all-on comp494)
  )
)
(:action evaluate-comp494-off-comp493
  :parameters ()
  :precondition (and
    (evaluate comp494)
    (not (rebooted comp494))
    (not (running comp493))
  )
  :effect (and
    (not (evaluate comp494))
    (evaluate comp495)
    (one-off comp494)
  )
)
(:action evaluate-comp495-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (rebooted comp495)
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
  )
)
(:action evaluate-comp495-all-on
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (not (rebooted comp495))
    (running comp494)
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
    (all-on comp495)
  )
)
(:action evaluate-comp495-off-comp494
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (not (rebooted comp495))
    (not (running comp494))
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
    (one-off comp495)
  )
)
(:action evaluate-comp496-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (rebooted comp496)
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
  )
)
(:action evaluate-comp496-all-on
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (not (rebooted comp496))
    (running comp495)
    (running comp572)
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
    (all-on comp496)
  )
)
(:action evaluate-comp496-off-comp495
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (not (rebooted comp496))
    (not (running comp495))
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
    (one-off comp496)
  )
)
(:action evaluate-comp496-off-comp572
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (not (rebooted comp496))
    (not (running comp572))
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
    (one-off comp496)
  )
)
(:action evaluate-comp497-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (rebooted comp497)
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
  )
)
(:action evaluate-comp497-all-on
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (not (rebooted comp497))
    (running comp73)
    (running comp496)
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
    (all-on comp497)
  )
)
(:action evaluate-comp497-off-comp73
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (not (rebooted comp497))
    (not (running comp73))
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
    (one-off comp497)
  )
)
(:action evaluate-comp497-off-comp496
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (not (rebooted comp497))
    (not (running comp496))
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
    (one-off comp497)
  )
)
(:action evaluate-comp498-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp498)
    (rebooted comp498)
  )
  :effect (and
    (not (evaluate comp498))
    (evaluate comp499)
  )
)
(:action evaluate-comp498-all-on
  :parameters ()
  :precondition (and
    (evaluate comp498)
    (not (rebooted comp498))
    (running comp497)
  )
  :effect (and
    (not (evaluate comp498))
    (evaluate comp499)
    (all-on comp498)
  )
)
(:action evaluate-comp498-off-comp497
  :parameters ()
  :precondition (and
    (evaluate comp498)
    (not (rebooted comp498))
    (not (running comp497))
  )
  :effect (and
    (not (evaluate comp498))
    (evaluate comp499)
    (one-off comp498)
  )
)
(:action evaluate-comp499-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (rebooted comp499)
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
  )
)
(:action evaluate-comp499-all-on
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (not (rebooted comp499))
    (running comp498)
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
    (all-on comp499)
  )
)
(:action evaluate-comp499-off-comp498
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (not (rebooted comp499))
    (not (running comp498))
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
    (one-off comp499)
  )
)
(:action evaluate-comp500-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (rebooted comp500)
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
  )
)
(:action evaluate-comp500-all-on
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (not (rebooted comp500))
    (running comp499)
    (running comp1570)
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
    (all-on comp500)
  )
)
(:action evaluate-comp500-off-comp499
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (not (rebooted comp500))
    (not (running comp499))
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
    (one-off comp500)
  )
)
(:action evaluate-comp500-off-comp1570
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (not (rebooted comp500))
    (not (running comp1570))
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
    (one-off comp500)
  )
)
(:action evaluate-comp501-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp501)
    (rebooted comp501)
  )
  :effect (and
    (not (evaluate comp501))
    (evaluate comp502)
  )
)
(:action evaluate-comp501-all-on
  :parameters ()
  :precondition (and
    (evaluate comp501)
    (not (rebooted comp501))
    (running comp500)
  )
  :effect (and
    (not (evaluate comp501))
    (evaluate comp502)
    (all-on comp501)
  )
)
(:action evaluate-comp501-off-comp500
  :parameters ()
  :precondition (and
    (evaluate comp501)
    (not (rebooted comp501))
    (not (running comp500))
  )
  :effect (and
    (not (evaluate comp501))
    (evaluate comp502)
    (one-off comp501)
  )
)
(:action evaluate-comp502-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp502)
    (rebooted comp502)
  )
  :effect (and
    (not (evaluate comp502))
    (evaluate comp503)
  )
)
(:action evaluate-comp502-all-on
  :parameters ()
  :precondition (and
    (evaluate comp502)
    (not (rebooted comp502))
    (running comp501)
  )
  :effect (and
    (not (evaluate comp502))
    (evaluate comp503)
    (all-on comp502)
  )
)
(:action evaluate-comp502-off-comp501
  :parameters ()
  :precondition (and
    (evaluate comp502)
    (not (rebooted comp502))
    (not (running comp501))
  )
  :effect (and
    (not (evaluate comp502))
    (evaluate comp503)
    (one-off comp502)
  )
)
(:action evaluate-comp503-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (rebooted comp503)
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
  )
)
(:action evaluate-comp503-all-on
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (not (rebooted comp503))
    (running comp502)
    (running comp1492)
    (running comp1606)
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
    (all-on comp503)
  )
)
(:action evaluate-comp503-off-comp502
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (not (rebooted comp503))
    (not (running comp502))
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
    (one-off comp503)
  )
)
(:action evaluate-comp503-off-comp1492
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (not (rebooted comp503))
    (not (running comp1492))
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
    (one-off comp503)
  )
)
(:action evaluate-comp503-off-comp1606
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (not (rebooted comp503))
    (not (running comp1606))
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
    (one-off comp503)
  )
)
(:action evaluate-comp504-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (rebooted comp504)
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
  )
)
(:action evaluate-comp504-all-on
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (not (rebooted comp504))
    (running comp503)
    (running comp1672)
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
    (all-on comp504)
  )
)
(:action evaluate-comp504-off-comp503
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (not (rebooted comp504))
    (not (running comp503))
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
    (one-off comp504)
  )
)
(:action evaluate-comp504-off-comp1672
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (not (rebooted comp504))
    (not (running comp1672))
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
    (one-off comp504)
  )
)
(:action evaluate-comp505-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp505)
    (rebooted comp505)
  )
  :effect (and
    (not (evaluate comp505))
    (evaluate comp506)
  )
)
(:action evaluate-comp505-all-on
  :parameters ()
  :precondition (and
    (evaluate comp505)
    (not (rebooted comp505))
    (running comp504)
  )
  :effect (and
    (not (evaluate comp505))
    (evaluate comp506)
    (all-on comp505)
  )
)
(:action evaluate-comp505-off-comp504
  :parameters ()
  :precondition (and
    (evaluate comp505)
    (not (rebooted comp505))
    (not (running comp504))
  )
  :effect (and
    (not (evaluate comp505))
    (evaluate comp506)
    (one-off comp505)
  )
)
(:action evaluate-comp506-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp506)
    (rebooted comp506)
  )
  :effect (and
    (not (evaluate comp506))
    (evaluate comp507)
  )
)
(:action evaluate-comp506-all-on
  :parameters ()
  :precondition (and
    (evaluate comp506)
    (not (rebooted comp506))
    (running comp505)
  )
  :effect (and
    (not (evaluate comp506))
    (evaluate comp507)
    (all-on comp506)
  )
)
(:action evaluate-comp506-off-comp505
  :parameters ()
  :precondition (and
    (evaluate comp506)
    (not (rebooted comp506))
    (not (running comp505))
  )
  :effect (and
    (not (evaluate comp506))
    (evaluate comp507)
    (one-off comp506)
  )
)
(:action evaluate-comp507-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp507)
    (rebooted comp507)
  )
  :effect (and
    (not (evaluate comp507))
    (evaluate comp508)
  )
)
(:action evaluate-comp507-all-on
  :parameters ()
  :precondition (and
    (evaluate comp507)
    (not (rebooted comp507))
    (running comp506)
  )
  :effect (and
    (not (evaluate comp507))
    (evaluate comp508)
    (all-on comp507)
  )
)
(:action evaluate-comp507-off-comp506
  :parameters ()
  :precondition (and
    (evaluate comp507)
    (not (rebooted comp507))
    (not (running comp506))
  )
  :effect (and
    (not (evaluate comp507))
    (evaluate comp508)
    (one-off comp507)
  )
)
(:action evaluate-comp508-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp508)
    (rebooted comp508)
  )
  :effect (and
    (not (evaluate comp508))
    (evaluate comp509)
  )
)
(:action evaluate-comp508-all-on
  :parameters ()
  :precondition (and
    (evaluate comp508)
    (not (rebooted comp508))
    (running comp507)
  )
  :effect (and
    (not (evaluate comp508))
    (evaluate comp509)
    (all-on comp508)
  )
)
(:action evaluate-comp508-off-comp507
  :parameters ()
  :precondition (and
    (evaluate comp508)
    (not (rebooted comp508))
    (not (running comp507))
  )
  :effect (and
    (not (evaluate comp508))
    (evaluate comp509)
    (one-off comp508)
  )
)
(:action evaluate-comp509-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (rebooted comp509)
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
  )
)
(:action evaluate-comp509-all-on
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (not (rebooted comp509))
    (running comp508)
    (running comp786)
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
    (all-on comp509)
  )
)
(:action evaluate-comp509-off-comp508
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (not (rebooted comp509))
    (not (running comp508))
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
    (one-off comp509)
  )
)
(:action evaluate-comp509-off-comp786
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (not (rebooted comp509))
    (not (running comp786))
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
    (one-off comp509)
  )
)
(:action evaluate-comp510-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (rebooted comp510)
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
  )
)
(:action evaluate-comp510-all-on
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (not (rebooted comp510))
    (running comp411)
    (running comp509)
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
    (all-on comp510)
  )
)
(:action evaluate-comp510-off-comp411
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (not (rebooted comp510))
    (not (running comp411))
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
    (one-off comp510)
  )
)
(:action evaluate-comp510-off-comp509
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (not (rebooted comp510))
    (not (running comp509))
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
    (one-off comp510)
  )
)
(:action evaluate-comp511-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp511)
    (rebooted comp511)
  )
  :effect (and
    (not (evaluate comp511))
    (evaluate comp512)
  )
)
(:action evaluate-comp511-all-on
  :parameters ()
  :precondition (and
    (evaluate comp511)
    (not (rebooted comp511))
    (running comp510)
  )
  :effect (and
    (not (evaluate comp511))
    (evaluate comp512)
    (all-on comp511)
  )
)
(:action evaluate-comp511-off-comp510
  :parameters ()
  :precondition (and
    (evaluate comp511)
    (not (rebooted comp511))
    (not (running comp510))
  )
  :effect (and
    (not (evaluate comp511))
    (evaluate comp512)
    (one-off comp511)
  )
)
(:action evaluate-comp512-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (rebooted comp512)
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
  )
)
(:action evaluate-comp512-all-on
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (running comp204)
    (running comp511)
    (running comp1367)
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (all-on comp512)
  )
)
(:action evaluate-comp512-off-comp204
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (not (running comp204))
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (one-off comp512)
  )
)
(:action evaluate-comp512-off-comp511
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (not (running comp511))
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (one-off comp512)
  )
)
(:action evaluate-comp512-off-comp1367
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (not (running comp1367))
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (one-off comp512)
  )
)
(:action evaluate-comp513-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (rebooted comp513)
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
  )
)
(:action evaluate-comp513-all-on
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (not (rebooted comp513))
    (running comp512)
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
    (all-on comp513)
  )
)
(:action evaluate-comp513-off-comp512
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (not (rebooted comp513))
    (not (running comp512))
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
    (one-off comp513)
  )
)
(:action evaluate-comp514-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (rebooted comp514)
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
  )
)
(:action evaluate-comp514-all-on
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (not (rebooted comp514))
    (running comp513)
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
    (all-on comp514)
  )
)
(:action evaluate-comp514-off-comp513
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (not (rebooted comp514))
    (not (running comp513))
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
    (one-off comp514)
  )
)
(:action evaluate-comp515-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (rebooted comp515)
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
  )
)
(:action evaluate-comp515-all-on
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (not (rebooted comp515))
    (running comp514)
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
    (all-on comp515)
  )
)
(:action evaluate-comp515-off-comp514
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (not (rebooted comp515))
    (not (running comp514))
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
    (one-off comp515)
  )
)
(:action evaluate-comp516-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp516)
    (rebooted comp516)
  )
  :effect (and
    (not (evaluate comp516))
    (evaluate comp517)
  )
)
(:action evaluate-comp516-all-on
  :parameters ()
  :precondition (and
    (evaluate comp516)
    (not (rebooted comp516))
    (running comp515)
  )
  :effect (and
    (not (evaluate comp516))
    (evaluate comp517)
    (all-on comp516)
  )
)
(:action evaluate-comp516-off-comp515
  :parameters ()
  :precondition (and
    (evaluate comp516)
    (not (rebooted comp516))
    (not (running comp515))
  )
  :effect (and
    (not (evaluate comp516))
    (evaluate comp517)
    (one-off comp516)
  )
)
(:action evaluate-comp517-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (rebooted comp517)
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
  )
)
(:action evaluate-comp517-all-on
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (running comp309)
    (running comp516)
    (running comp1087)
    (running comp1345)
    (running comp1554)
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (all-on comp517)
  )
)
(:action evaluate-comp517-off-comp309
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp309))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp517-off-comp516
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp516))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp517-off-comp1087
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp1087))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp517-off-comp1345
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp1345))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp517-off-comp1554
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp1554))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp518-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (rebooted comp518)
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
  )
)
(:action evaluate-comp518-all-on
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (not (rebooted comp518))
    (running comp57)
    (running comp517)
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
    (all-on comp518)
  )
)
(:action evaluate-comp518-off-comp57
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (not (rebooted comp518))
    (not (running comp57))
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
    (one-off comp518)
  )
)
(:action evaluate-comp518-off-comp517
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (not (rebooted comp518))
    (not (running comp517))
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
    (one-off comp518)
  )
)
(:action evaluate-comp519-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp519)
    (rebooted comp519)
  )
  :effect (and
    (not (evaluate comp519))
    (evaluate comp520)
  )
)
(:action evaluate-comp519-all-on
  :parameters ()
  :precondition (and
    (evaluate comp519)
    (not (rebooted comp519))
    (running comp518)
  )
  :effect (and
    (not (evaluate comp519))
    (evaluate comp520)
    (all-on comp519)
  )
)
(:action evaluate-comp519-off-comp518
  :parameters ()
  :precondition (and
    (evaluate comp519)
    (not (rebooted comp519))
    (not (running comp518))
  )
  :effect (and
    (not (evaluate comp519))
    (evaluate comp520)
    (one-off comp519)
  )
)
(:action evaluate-comp520-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp520)
    (rebooted comp520)
  )
  :effect (and
    (not (evaluate comp520))
    (evaluate comp521)
  )
)
(:action evaluate-comp520-all-on
  :parameters ()
  :precondition (and
    (evaluate comp520)
    (not (rebooted comp520))
    (running comp519)
  )
  :effect (and
    (not (evaluate comp520))
    (evaluate comp521)
    (all-on comp520)
  )
)
(:action evaluate-comp520-off-comp519
  :parameters ()
  :precondition (and
    (evaluate comp520)
    (not (rebooted comp520))
    (not (running comp519))
  )
  :effect (and
    (not (evaluate comp520))
    (evaluate comp521)
    (one-off comp520)
  )
)
(:action evaluate-comp521-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp521)
    (rebooted comp521)
  )
  :effect (and
    (not (evaluate comp521))
    (evaluate comp522)
  )
)
(:action evaluate-comp521-all-on
  :parameters ()
  :precondition (and
    (evaluate comp521)
    (not (rebooted comp521))
    (running comp520)
  )
  :effect (and
    (not (evaluate comp521))
    (evaluate comp522)
    (all-on comp521)
  )
)
(:action evaluate-comp521-off-comp520
  :parameters ()
  :precondition (and
    (evaluate comp521)
    (not (rebooted comp521))
    (not (running comp520))
  )
  :effect (and
    (not (evaluate comp521))
    (evaluate comp522)
    (one-off comp521)
  )
)
(:action evaluate-comp522-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (rebooted comp522)
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
  )
)
(:action evaluate-comp522-all-on
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (not (rebooted comp522))
    (running comp142)
    (running comp521)
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
    (all-on comp522)
  )
)
(:action evaluate-comp522-off-comp142
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (not (rebooted comp522))
    (not (running comp142))
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
    (one-off comp522)
  )
)
(:action evaluate-comp522-off-comp521
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (not (rebooted comp522))
    (not (running comp521))
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
    (one-off comp522)
  )
)
(:action evaluate-comp523-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (rebooted comp523)
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
  )
)
(:action evaluate-comp523-all-on
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (not (rebooted comp523))
    (running comp522)
    (running comp1373)
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
    (all-on comp523)
  )
)
(:action evaluate-comp523-off-comp522
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (not (rebooted comp523))
    (not (running comp522))
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
    (one-off comp523)
  )
)
(:action evaluate-comp523-off-comp1373
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (not (rebooted comp523))
    (not (running comp1373))
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
    (one-off comp523)
  )
)
(:action evaluate-comp524-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp524)
    (rebooted comp524)
  )
  :effect (and
    (not (evaluate comp524))
    (evaluate comp525)
  )
)
(:action evaluate-comp524-all-on
  :parameters ()
  :precondition (and
    (evaluate comp524)
    (not (rebooted comp524))
    (running comp523)
  )
  :effect (and
    (not (evaluate comp524))
    (evaluate comp525)
    (all-on comp524)
  )
)
(:action evaluate-comp524-off-comp523
  :parameters ()
  :precondition (and
    (evaluate comp524)
    (not (rebooted comp524))
    (not (running comp523))
  )
  :effect (and
    (not (evaluate comp524))
    (evaluate comp525)
    (one-off comp524)
  )
)
(:action evaluate-comp525-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp525)
    (rebooted comp525)
  )
  :effect (and
    (not (evaluate comp525))
    (evaluate comp526)
  )
)
(:action evaluate-comp525-all-on
  :parameters ()
  :precondition (and
    (evaluate comp525)
    (not (rebooted comp525))
    (running comp524)
  )
  :effect (and
    (not (evaluate comp525))
    (evaluate comp526)
    (all-on comp525)
  )
)
(:action evaluate-comp525-off-comp524
  :parameters ()
  :precondition (and
    (evaluate comp525)
    (not (rebooted comp525))
    (not (running comp524))
  )
  :effect (and
    (not (evaluate comp525))
    (evaluate comp526)
    (one-off comp525)
  )
)
(:action evaluate-comp526-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (rebooted comp526)
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
  )
)
(:action evaluate-comp526-all-on
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (not (rebooted comp526))
    (running comp525)
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
    (all-on comp526)
  )
)
(:action evaluate-comp526-off-comp525
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (not (rebooted comp526))
    (not (running comp525))
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
    (one-off comp526)
  )
)
(:action evaluate-comp527-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp527)
    (rebooted comp527)
  )
  :effect (and
    (not (evaluate comp527))
    (evaluate comp528)
  )
)
(:action evaluate-comp527-all-on
  :parameters ()
  :precondition (and
    (evaluate comp527)
    (not (rebooted comp527))
    (running comp526)
  )
  :effect (and
    (not (evaluate comp527))
    (evaluate comp528)
    (all-on comp527)
  )
)
(:action evaluate-comp527-off-comp526
  :parameters ()
  :precondition (and
    (evaluate comp527)
    (not (rebooted comp527))
    (not (running comp526))
  )
  :effect (and
    (not (evaluate comp527))
    (evaluate comp528)
    (one-off comp527)
  )
)
(:action evaluate-comp528-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (rebooted comp528)
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
  )
)
(:action evaluate-comp528-all-on
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (not (rebooted comp528))
    (running comp527)
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
    (all-on comp528)
  )
)
(:action evaluate-comp528-off-comp527
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (not (rebooted comp528))
    (not (running comp527))
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
    (one-off comp528)
  )
)
(:action evaluate-comp529-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (rebooted comp529)
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
  )
)
(:action evaluate-comp529-all-on
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (not (rebooted comp529))
    (running comp528)
    (running comp718)
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
    (all-on comp529)
  )
)
(:action evaluate-comp529-off-comp528
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (not (rebooted comp529))
    (not (running comp528))
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
    (one-off comp529)
  )
)
(:action evaluate-comp529-off-comp718
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (not (rebooted comp529))
    (not (running comp718))
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
    (one-off comp529)
  )
)
(:action evaluate-comp530-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (rebooted comp530)
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
  )
)
(:action evaluate-comp530-all-on
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (running comp72)
    (running comp375)
    (running comp529)
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (all-on comp530)
  )
)
(:action evaluate-comp530-off-comp72
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (not (running comp72))
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (one-off comp530)
  )
)
(:action evaluate-comp530-off-comp375
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (not (running comp375))
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (one-off comp530)
  )
)
(:action evaluate-comp530-off-comp529
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (not (running comp529))
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (one-off comp530)
  )
)
(:action evaluate-comp531-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (rebooted comp531)
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
  )
)
(:action evaluate-comp531-all-on
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (not (rebooted comp531))
    (running comp530)
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
    (all-on comp531)
  )
)
(:action evaluate-comp531-off-comp530
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (not (rebooted comp531))
    (not (running comp530))
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
    (one-off comp531)
  )
)
(:action evaluate-comp532-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (rebooted comp532)
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
  )
)
(:action evaluate-comp532-all-on
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (not (rebooted comp532))
    (running comp134)
    (running comp531)
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
    (all-on comp532)
  )
)
(:action evaluate-comp532-off-comp134
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (not (rebooted comp532))
    (not (running comp134))
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
    (one-off comp532)
  )
)
(:action evaluate-comp532-off-comp531
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (not (rebooted comp532))
    (not (running comp531))
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
    (one-off comp532)
  )
)
(:action evaluate-comp533-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (rebooted comp533)
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
  )
)
(:action evaluate-comp533-all-on
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (not (rebooted comp533))
    (running comp532)
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
    (all-on comp533)
  )
)
(:action evaluate-comp533-off-comp532
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (not (rebooted comp533))
    (not (running comp532))
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
    (one-off comp533)
  )
)
(:action evaluate-comp534-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp534)
    (rebooted comp534)
  )
  :effect (and
    (not (evaluate comp534))
    (evaluate comp535)
  )
)
(:action evaluate-comp534-all-on
  :parameters ()
  :precondition (and
    (evaluate comp534)
    (not (rebooted comp534))
    (running comp533)
  )
  :effect (and
    (not (evaluate comp534))
    (evaluate comp535)
    (all-on comp534)
  )
)
(:action evaluate-comp534-off-comp533
  :parameters ()
  :precondition (and
    (evaluate comp534)
    (not (rebooted comp534))
    (not (running comp533))
  )
  :effect (and
    (not (evaluate comp534))
    (evaluate comp535)
    (one-off comp534)
  )
)
(:action evaluate-comp535-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp535)
    (rebooted comp535)
  )
  :effect (and
    (not (evaluate comp535))
    (evaluate comp536)
  )
)
(:action evaluate-comp535-all-on
  :parameters ()
  :precondition (and
    (evaluate comp535)
    (not (rebooted comp535))
    (running comp534)
  )
  :effect (and
    (not (evaluate comp535))
    (evaluate comp536)
    (all-on comp535)
  )
)
(:action evaluate-comp535-off-comp534
  :parameters ()
  :precondition (and
    (evaluate comp535)
    (not (rebooted comp535))
    (not (running comp534))
  )
  :effect (and
    (not (evaluate comp535))
    (evaluate comp536)
    (one-off comp535)
  )
)
(:action evaluate-comp536-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp536)
    (rebooted comp536)
  )
  :effect (and
    (not (evaluate comp536))
    (evaluate comp537)
  )
)
(:action evaluate-comp536-all-on
  :parameters ()
  :precondition (and
    (evaluate comp536)
    (not (rebooted comp536))
    (running comp535)
  )
  :effect (and
    (not (evaluate comp536))
    (evaluate comp537)
    (all-on comp536)
  )
)
(:action evaluate-comp536-off-comp535
  :parameters ()
  :precondition (and
    (evaluate comp536)
    (not (rebooted comp536))
    (not (running comp535))
  )
  :effect (and
    (not (evaluate comp536))
    (evaluate comp537)
    (one-off comp536)
  )
)
(:action evaluate-comp537-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (rebooted comp537)
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
  )
)
(:action evaluate-comp537-all-on
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (not (rebooted comp537))
    (running comp536)
    (running comp598)
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
    (all-on comp537)
  )
)
(:action evaluate-comp537-off-comp536
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (not (rebooted comp537))
    (not (running comp536))
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
    (one-off comp537)
  )
)
(:action evaluate-comp537-off-comp598
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (not (rebooted comp537))
    (not (running comp598))
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
    (one-off comp537)
  )
)
(:action evaluate-comp538-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp538)
    (rebooted comp538)
  )
  :effect (and
    (not (evaluate comp538))
    (evaluate comp539)
  )
)
(:action evaluate-comp538-all-on
  :parameters ()
  :precondition (and
    (evaluate comp538)
    (not (rebooted comp538))
    (running comp537)
  )
  :effect (and
    (not (evaluate comp538))
    (evaluate comp539)
    (all-on comp538)
  )
)
(:action evaluate-comp538-off-comp537
  :parameters ()
  :precondition (and
    (evaluate comp538)
    (not (rebooted comp538))
    (not (running comp537))
  )
  :effect (and
    (not (evaluate comp538))
    (evaluate comp539)
    (one-off comp538)
  )
)
(:action evaluate-comp539-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (rebooted comp539)
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
  )
)
(:action evaluate-comp539-all-on
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (not (rebooted comp539))
    (running comp538)
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
    (all-on comp539)
  )
)
(:action evaluate-comp539-off-comp538
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (not (rebooted comp539))
    (not (running comp538))
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
    (one-off comp539)
  )
)
(:action evaluate-comp540-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (rebooted comp540)
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
  )
)
(:action evaluate-comp540-all-on
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (not (rebooted comp540))
    (running comp539)
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
    (all-on comp540)
  )
)
(:action evaluate-comp540-off-comp539
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (not (rebooted comp540))
    (not (running comp539))
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
    (one-off comp540)
  )
)
(:action evaluate-comp541-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (rebooted comp541)
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
  )
)
(:action evaluate-comp541-all-on
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (not (rebooted comp541))
    (running comp540)
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
    (all-on comp541)
  )
)
(:action evaluate-comp541-off-comp540
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (not (rebooted comp541))
    (not (running comp540))
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
    (one-off comp541)
  )
)
(:action evaluate-comp542-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (rebooted comp542)
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
  )
)
(:action evaluate-comp542-all-on
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (not (rebooted comp542))
    (running comp541)
    (running comp1302)
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
    (all-on comp542)
  )
)
(:action evaluate-comp542-off-comp541
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (not (rebooted comp542))
    (not (running comp541))
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
    (one-off comp542)
  )
)
(:action evaluate-comp542-off-comp1302
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (not (rebooted comp542))
    (not (running comp1302))
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
    (one-off comp542)
  )
)
(:action evaluate-comp543-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp543)
    (rebooted comp543)
  )
  :effect (and
    (not (evaluate comp543))
    (evaluate comp544)
  )
)
(:action evaluate-comp543-all-on
  :parameters ()
  :precondition (and
    (evaluate comp543)
    (not (rebooted comp543))
    (running comp542)
  )
  :effect (and
    (not (evaluate comp543))
    (evaluate comp544)
    (all-on comp543)
  )
)
(:action evaluate-comp543-off-comp542
  :parameters ()
  :precondition (and
    (evaluate comp543)
    (not (rebooted comp543))
    (not (running comp542))
  )
  :effect (and
    (not (evaluate comp543))
    (evaluate comp544)
    (one-off comp543)
  )
)
(:action evaluate-comp544-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (rebooted comp544)
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
  )
)
(:action evaluate-comp544-all-on
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (not (rebooted comp544))
    (running comp543)
    (running comp1879)
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
    (all-on comp544)
  )
)
(:action evaluate-comp544-off-comp543
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (not (rebooted comp544))
    (not (running comp543))
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
    (one-off comp544)
  )
)
(:action evaluate-comp544-off-comp1879
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (not (rebooted comp544))
    (not (running comp1879))
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
    (one-off comp544)
  )
)
(:action evaluate-comp545-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (rebooted comp545)
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
  )
)
(:action evaluate-comp545-all-on
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (not (rebooted comp545))
    (running comp544)
    (running comp628)
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
    (all-on comp545)
  )
)
(:action evaluate-comp545-off-comp544
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (not (rebooted comp545))
    (not (running comp544))
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
    (one-off comp545)
  )
)
(:action evaluate-comp545-off-comp628
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (not (rebooted comp545))
    (not (running comp628))
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
    (one-off comp545)
  )
)
(:action evaluate-comp546-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp546)
    (rebooted comp546)
  )
  :effect (and
    (not (evaluate comp546))
    (evaluate comp547)
  )
)
(:action evaluate-comp546-all-on
  :parameters ()
  :precondition (and
    (evaluate comp546)
    (not (rebooted comp546))
    (running comp545)
  )
  :effect (and
    (not (evaluate comp546))
    (evaluate comp547)
    (all-on comp546)
  )
)
(:action evaluate-comp546-off-comp545
  :parameters ()
  :precondition (and
    (evaluate comp546)
    (not (rebooted comp546))
    (not (running comp545))
  )
  :effect (and
    (not (evaluate comp546))
    (evaluate comp547)
    (one-off comp546)
  )
)
(:action evaluate-comp547-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (rebooted comp547)
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
  )
)
(:action evaluate-comp547-all-on
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (not (rebooted comp547))
    (running comp546)
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
    (all-on comp547)
  )
)
(:action evaluate-comp547-off-comp546
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (not (rebooted comp547))
    (not (running comp546))
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
    (one-off comp547)
  )
)
(:action evaluate-comp548-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (rebooted comp548)
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
  )
)
(:action evaluate-comp548-all-on
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (not (rebooted comp548))
    (running comp547)
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
    (all-on comp548)
  )
)
(:action evaluate-comp548-off-comp547
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (not (rebooted comp548))
    (not (running comp547))
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
    (one-off comp548)
  )
)
(:action evaluate-comp549-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp549)
    (rebooted comp549)
  )
  :effect (and
    (not (evaluate comp549))
    (evaluate comp550)
  )
)
(:action evaluate-comp549-all-on
  :parameters ()
  :precondition (and
    (evaluate comp549)
    (not (rebooted comp549))
    (running comp548)
  )
  :effect (and
    (not (evaluate comp549))
    (evaluate comp550)
    (all-on comp549)
  )
)
(:action evaluate-comp549-off-comp548
  :parameters ()
  :precondition (and
    (evaluate comp549)
    (not (rebooted comp549))
    (not (running comp548))
  )
  :effect (and
    (not (evaluate comp549))
    (evaluate comp550)
    (one-off comp549)
  )
)
(:action evaluate-comp550-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (rebooted comp550)
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
  )
)
(:action evaluate-comp550-all-on
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (not (rebooted comp550))
    (running comp549)
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
    (all-on comp550)
  )
)
(:action evaluate-comp550-off-comp549
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (not (rebooted comp550))
    (not (running comp549))
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
    (one-off comp550)
  )
)
(:action evaluate-comp551-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (rebooted comp551)
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
  )
)
(:action evaluate-comp551-all-on
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (not (rebooted comp551))
    (running comp550)
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
    (all-on comp551)
  )
)
(:action evaluate-comp551-off-comp550
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (not (rebooted comp551))
    (not (running comp550))
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
    (one-off comp551)
  )
)
(:action evaluate-comp552-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (rebooted comp552)
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
  )
)
(:action evaluate-comp552-all-on
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (not (rebooted comp552))
    (running comp551)
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
    (all-on comp552)
  )
)
(:action evaluate-comp552-off-comp551
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (not (rebooted comp552))
    (not (running comp551))
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
    (one-off comp552)
  )
)
(:action evaluate-comp553-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (rebooted comp553)
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
  )
)
(:action evaluate-comp553-all-on
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (not (rebooted comp553))
    (running comp552)
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
    (all-on comp553)
  )
)
(:action evaluate-comp553-off-comp552
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (not (rebooted comp553))
    (not (running comp552))
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
    (one-off comp553)
  )
)
(:action evaluate-comp554-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp554)
    (rebooted comp554)
  )
  :effect (and
    (not (evaluate comp554))
    (evaluate comp555)
  )
)
(:action evaluate-comp554-all-on
  :parameters ()
  :precondition (and
    (evaluate comp554)
    (not (rebooted comp554))
    (running comp553)
  )
  :effect (and
    (not (evaluate comp554))
    (evaluate comp555)
    (all-on comp554)
  )
)
(:action evaluate-comp554-off-comp553
  :parameters ()
  :precondition (and
    (evaluate comp554)
    (not (rebooted comp554))
    (not (running comp553))
  )
  :effect (and
    (not (evaluate comp554))
    (evaluate comp555)
    (one-off comp554)
  )
)
(:action evaluate-comp555-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (rebooted comp555)
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
  )
)
(:action evaluate-comp555-all-on
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (not (rebooted comp555))
    (running comp554)
    (running comp603)
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
    (all-on comp555)
  )
)
(:action evaluate-comp555-off-comp554
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (not (rebooted comp555))
    (not (running comp554))
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
    (one-off comp555)
  )
)
(:action evaluate-comp555-off-comp603
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (not (rebooted comp555))
    (not (running comp603))
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
    (one-off comp555)
  )
)
(:action evaluate-comp556-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (rebooted comp556)
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
  )
)
(:action evaluate-comp556-all-on
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (running comp555)
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (all-on comp556)
  )
)
(:action evaluate-comp556-off-comp555
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (not (running comp555))
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (one-off comp556)
  )
)
(:action evaluate-comp557-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (rebooted comp557)
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
  )
)
(:action evaluate-comp557-all-on
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (not (rebooted comp557))
    (running comp556)
    (running comp1407)
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
    (all-on comp557)
  )
)
(:action evaluate-comp557-off-comp556
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (not (rebooted comp557))
    (not (running comp556))
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
    (one-off comp557)
  )
)
(:action evaluate-comp557-off-comp1407
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (not (rebooted comp557))
    (not (running comp1407))
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
    (one-off comp557)
  )
)
(:action evaluate-comp558-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (rebooted comp558)
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
  )
)
(:action evaluate-comp558-all-on
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (not (rebooted comp558))
    (running comp557)
    (running comp1286)
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
    (all-on comp558)
  )
)
(:action evaluate-comp558-off-comp557
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (not (rebooted comp558))
    (not (running comp557))
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
    (one-off comp558)
  )
)
(:action evaluate-comp558-off-comp1286
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (not (rebooted comp558))
    (not (running comp1286))
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
    (one-off comp558)
  )
)
(:action evaluate-comp559-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp559)
    (rebooted comp559)
  )
  :effect (and
    (not (evaluate comp559))
    (evaluate comp560)
  )
)
(:action evaluate-comp559-all-on
  :parameters ()
  :precondition (and
    (evaluate comp559)
    (not (rebooted comp559))
    (running comp558)
  )
  :effect (and
    (not (evaluate comp559))
    (evaluate comp560)
    (all-on comp559)
  )
)
(:action evaluate-comp559-off-comp558
  :parameters ()
  :precondition (and
    (evaluate comp559)
    (not (rebooted comp559))
    (not (running comp558))
  )
  :effect (and
    (not (evaluate comp559))
    (evaluate comp560)
    (one-off comp559)
  )
)
(:action evaluate-comp560-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp560)
    (rebooted comp560)
  )
  :effect (and
    (not (evaluate comp560))
    (evaluate comp561)
  )
)
(:action evaluate-comp560-all-on
  :parameters ()
  :precondition (and
    (evaluate comp560)
    (not (rebooted comp560))
    (running comp559)
  )
  :effect (and
    (not (evaluate comp560))
    (evaluate comp561)
    (all-on comp560)
  )
)
(:action evaluate-comp560-off-comp559
  :parameters ()
  :precondition (and
    (evaluate comp560)
    (not (rebooted comp560))
    (not (running comp559))
  )
  :effect (and
    (not (evaluate comp560))
    (evaluate comp561)
    (one-off comp560)
  )
)
(:action evaluate-comp561-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (rebooted comp561)
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
  )
)
(:action evaluate-comp561-all-on
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (not (rebooted comp561))
    (running comp560)
    (running comp1684)
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
    (all-on comp561)
  )
)
(:action evaluate-comp561-off-comp560
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (not (rebooted comp561))
    (not (running comp560))
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
    (one-off comp561)
  )
)
(:action evaluate-comp561-off-comp1684
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (not (rebooted comp561))
    (not (running comp1684))
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
    (one-off comp561)
  )
)
(:action evaluate-comp562-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (rebooted comp562)
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
  )
)
(:action evaluate-comp562-all-on
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (running comp329)
    (running comp561)
    (running comp1615)
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (all-on comp562)
  )
)
(:action evaluate-comp562-off-comp329
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (not (running comp329))
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (one-off comp562)
  )
)
(:action evaluate-comp562-off-comp561
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (not (running comp561))
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (one-off comp562)
  )
)
(:action evaluate-comp562-off-comp1615
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (not (running comp1615))
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (one-off comp562)
  )
)
(:action evaluate-comp563-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (rebooted comp563)
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
  )
)
(:action evaluate-comp563-all-on
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (not (rebooted comp563))
    (running comp562)
    (running comp900)
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
    (all-on comp563)
  )
)
(:action evaluate-comp563-off-comp562
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (not (rebooted comp563))
    (not (running comp562))
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
    (one-off comp563)
  )
)
(:action evaluate-comp563-off-comp900
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (not (rebooted comp563))
    (not (running comp900))
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
    (one-off comp563)
  )
)
(:action evaluate-comp564-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (rebooted comp564)
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
  )
)
(:action evaluate-comp564-all-on
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (not (rebooted comp564))
    (running comp563)
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
    (all-on comp564)
  )
)
(:action evaluate-comp564-off-comp563
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (not (rebooted comp564))
    (not (running comp563))
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
    (one-off comp564)
  )
)
(:action evaluate-comp565-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp565)
    (rebooted comp565)
  )
  :effect (and
    (not (evaluate comp565))
    (evaluate comp566)
  )
)
(:action evaluate-comp565-all-on
  :parameters ()
  :precondition (and
    (evaluate comp565)
    (not (rebooted comp565))
    (running comp564)
  )
  :effect (and
    (not (evaluate comp565))
    (evaluate comp566)
    (all-on comp565)
  )
)
(:action evaluate-comp565-off-comp564
  :parameters ()
  :precondition (and
    (evaluate comp565)
    (not (rebooted comp565))
    (not (running comp564))
  )
  :effect (and
    (not (evaluate comp565))
    (evaluate comp566)
    (one-off comp565)
  )
)
(:action evaluate-comp566-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp566)
    (rebooted comp566)
  )
  :effect (and
    (not (evaluate comp566))
    (evaluate comp567)
  )
)
(:action evaluate-comp566-all-on
  :parameters ()
  :precondition (and
    (evaluate comp566)
    (not (rebooted comp566))
    (running comp565)
  )
  :effect (and
    (not (evaluate comp566))
    (evaluate comp567)
    (all-on comp566)
  )
)
(:action evaluate-comp566-off-comp565
  :parameters ()
  :precondition (and
    (evaluate comp566)
    (not (rebooted comp566))
    (not (running comp565))
  )
  :effect (and
    (not (evaluate comp566))
    (evaluate comp567)
    (one-off comp566)
  )
)
(:action evaluate-comp567-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (rebooted comp567)
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
  )
)
(:action evaluate-comp567-all-on
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (running comp566)
    (running comp1857)
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (all-on comp567)
  )
)
(:action evaluate-comp567-off-comp566
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (not (running comp566))
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (one-off comp567)
  )
)
(:action evaluate-comp567-off-comp1857
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (not (running comp1857))
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (one-off comp567)
  )
)
(:action evaluate-comp568-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (rebooted comp568)
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
  )
)
(:action evaluate-comp568-all-on
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (not (rebooted comp568))
    (running comp460)
    (running comp567)
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
    (all-on comp568)
  )
)
(:action evaluate-comp568-off-comp460
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (not (rebooted comp568))
    (not (running comp460))
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
    (one-off comp568)
  )
)
(:action evaluate-comp568-off-comp567
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (not (rebooted comp568))
    (not (running comp567))
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
    (one-off comp568)
  )
)
(:action evaluate-comp569-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (rebooted comp569)
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
  )
)
(:action evaluate-comp569-all-on
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (not (rebooted comp569))
    (running comp568)
    (running comp1019)
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
    (all-on comp569)
  )
)
(:action evaluate-comp569-off-comp568
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (not (rebooted comp569))
    (not (running comp568))
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
    (one-off comp569)
  )
)
(:action evaluate-comp569-off-comp1019
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (not (rebooted comp569))
    (not (running comp1019))
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
    (one-off comp569)
  )
)
(:action evaluate-comp570-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (rebooted comp570)
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
  )
)
(:action evaluate-comp570-all-on
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (not (rebooted comp570))
    (running comp349)
    (running comp569)
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
    (all-on comp570)
  )
)
(:action evaluate-comp570-off-comp349
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (not (rebooted comp570))
    (not (running comp349))
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
    (one-off comp570)
  )
)
(:action evaluate-comp570-off-comp569
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (not (rebooted comp570))
    (not (running comp569))
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
    (one-off comp570)
  )
)
(:action evaluate-comp571-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (rebooted comp571)
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
  )
)
(:action evaluate-comp571-all-on
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (not (rebooted comp571))
    (running comp570)
    (running comp1153)
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
    (all-on comp571)
  )
)
(:action evaluate-comp571-off-comp570
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (not (rebooted comp571))
    (not (running comp570))
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
    (one-off comp571)
  )
)
(:action evaluate-comp571-off-comp1153
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (not (rebooted comp571))
    (not (running comp1153))
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
    (one-off comp571)
  )
)
(:action evaluate-comp572-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp572)
    (rebooted comp572)
  )
  :effect (and
    (not (evaluate comp572))
    (evaluate comp573)
  )
)
(:action evaluate-comp572-all-on
  :parameters ()
  :precondition (and
    (evaluate comp572)
    (not (rebooted comp572))
    (running comp571)
  )
  :effect (and
    (not (evaluate comp572))
    (evaluate comp573)
    (all-on comp572)
  )
)
(:action evaluate-comp572-off-comp571
  :parameters ()
  :precondition (and
    (evaluate comp572)
    (not (rebooted comp572))
    (not (running comp571))
  )
  :effect (and
    (not (evaluate comp572))
    (evaluate comp573)
    (one-off comp572)
  )
)
(:action evaluate-comp573-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp573)
    (rebooted comp573)
  )
  :effect (and
    (not (evaluate comp573))
    (evaluate comp574)
  )
)
(:action evaluate-comp573-all-on
  :parameters ()
  :precondition (and
    (evaluate comp573)
    (not (rebooted comp573))
    (running comp572)
  )
  :effect (and
    (not (evaluate comp573))
    (evaluate comp574)
    (all-on comp573)
  )
)
(:action evaluate-comp573-off-comp572
  :parameters ()
  :precondition (and
    (evaluate comp573)
    (not (rebooted comp573))
    (not (running comp572))
  )
  :effect (and
    (not (evaluate comp573))
    (evaluate comp574)
    (one-off comp573)
  )
)
(:action evaluate-comp574-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (rebooted comp574)
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
  )
)
(:action evaluate-comp574-all-on
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (not (rebooted comp574))
    (running comp573)
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
    (all-on comp574)
  )
)
(:action evaluate-comp574-off-comp573
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (not (rebooted comp574))
    (not (running comp573))
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
    (one-off comp574)
  )
)
(:action evaluate-comp575-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp575)
    (rebooted comp575)
  )
  :effect (and
    (not (evaluate comp575))
    (evaluate comp576)
  )
)
(:action evaluate-comp575-all-on
  :parameters ()
  :precondition (and
    (evaluate comp575)
    (not (rebooted comp575))
    (running comp574)
  )
  :effect (and
    (not (evaluate comp575))
    (evaluate comp576)
    (all-on comp575)
  )
)
(:action evaluate-comp575-off-comp574
  :parameters ()
  :precondition (and
    (evaluate comp575)
    (not (rebooted comp575))
    (not (running comp574))
  )
  :effect (and
    (not (evaluate comp575))
    (evaluate comp576)
    (one-off comp575)
  )
)
(:action evaluate-comp576-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp576)
    (rebooted comp576)
  )
  :effect (and
    (not (evaluate comp576))
    (evaluate comp577)
  )
)
(:action evaluate-comp576-all-on
  :parameters ()
  :precondition (and
    (evaluate comp576)
    (not (rebooted comp576))
    (running comp575)
  )
  :effect (and
    (not (evaluate comp576))
    (evaluate comp577)
    (all-on comp576)
  )
)
(:action evaluate-comp576-off-comp575
  :parameters ()
  :precondition (and
    (evaluate comp576)
    (not (rebooted comp576))
    (not (running comp575))
  )
  :effect (and
    (not (evaluate comp576))
    (evaluate comp577)
    (one-off comp576)
  )
)
(:action evaluate-comp577-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (rebooted comp577)
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
  )
)
(:action evaluate-comp577-all-on
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (running comp576)
    (running comp1427)
    (running comp1810)
    (running comp1850)
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (all-on comp577)
  )
)
(:action evaluate-comp577-off-comp576
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (not (running comp576))
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (one-off comp577)
  )
)
(:action evaluate-comp577-off-comp1427
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (not (running comp1427))
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (one-off comp577)
  )
)
(:action evaluate-comp577-off-comp1810
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (not (running comp1810))
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (one-off comp577)
  )
)
(:action evaluate-comp577-off-comp1850
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (not (running comp1850))
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (one-off comp577)
  )
)
(:action evaluate-comp578-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (rebooted comp578)
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
  )
)
(:action evaluate-comp578-all-on
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (running comp577)
    (running comp992)
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (all-on comp578)
  )
)
(:action evaluate-comp578-off-comp577
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (not (running comp577))
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (one-off comp578)
  )
)
(:action evaluate-comp578-off-comp992
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (not (running comp992))
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (one-off comp578)
  )
)
(:action evaluate-comp579-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (rebooted comp579)
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
  )
)
(:action evaluate-comp579-all-on
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (not (rebooted comp579))
    (running comp578)
    (running comp1879)
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
    (all-on comp579)
  )
)
(:action evaluate-comp579-off-comp578
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (not (rebooted comp579))
    (not (running comp578))
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
    (one-off comp579)
  )
)
(:action evaluate-comp579-off-comp1879
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (not (rebooted comp579))
    (not (running comp1879))
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
    (one-off comp579)
  )
)
(:action evaluate-comp580-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp580)
    (rebooted comp580)
  )
  :effect (and
    (not (evaluate comp580))
    (evaluate comp581)
  )
)
(:action evaluate-comp580-all-on
  :parameters ()
  :precondition (and
    (evaluate comp580)
    (not (rebooted comp580))
    (running comp579)
  )
  :effect (and
    (not (evaluate comp580))
    (evaluate comp581)
    (all-on comp580)
  )
)
(:action evaluate-comp580-off-comp579
  :parameters ()
  :precondition (and
    (evaluate comp580)
    (not (rebooted comp580))
    (not (running comp579))
  )
  :effect (and
    (not (evaluate comp580))
    (evaluate comp581)
    (one-off comp580)
  )
)
(:action evaluate-comp581-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (rebooted comp581)
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
  )
)
(:action evaluate-comp581-all-on
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (not (rebooted comp581))
    (running comp580)
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
    (all-on comp581)
  )
)
(:action evaluate-comp581-off-comp580
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (not (rebooted comp581))
    (not (running comp580))
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
    (one-off comp581)
  )
)
(:action evaluate-comp582-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp582)
    (rebooted comp582)
  )
  :effect (and
    (not (evaluate comp582))
    (evaluate comp583)
  )
)
(:action evaluate-comp582-all-on
  :parameters ()
  :precondition (and
    (evaluate comp582)
    (not (rebooted comp582))
    (running comp581)
  )
  :effect (and
    (not (evaluate comp582))
    (evaluate comp583)
    (all-on comp582)
  )
)
(:action evaluate-comp582-off-comp581
  :parameters ()
  :precondition (and
    (evaluate comp582)
    (not (rebooted comp582))
    (not (running comp581))
  )
  :effect (and
    (not (evaluate comp582))
    (evaluate comp583)
    (one-off comp582)
  )
)
(:action evaluate-comp583-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (rebooted comp583)
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
  )
)
(:action evaluate-comp583-all-on
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (not (rebooted comp583))
    (running comp582)
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
    (all-on comp583)
  )
)
(:action evaluate-comp583-off-comp582
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (not (rebooted comp583))
    (not (running comp582))
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
    (one-off comp583)
  )
)
(:action evaluate-comp584-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp584)
    (rebooted comp584)
  )
  :effect (and
    (not (evaluate comp584))
    (evaluate comp585)
  )
)
(:action evaluate-comp584-all-on
  :parameters ()
  :precondition (and
    (evaluate comp584)
    (not (rebooted comp584))
    (running comp583)
  )
  :effect (and
    (not (evaluate comp584))
    (evaluate comp585)
    (all-on comp584)
  )
)
(:action evaluate-comp584-off-comp583
  :parameters ()
  :precondition (and
    (evaluate comp584)
    (not (rebooted comp584))
    (not (running comp583))
  )
  :effect (and
    (not (evaluate comp584))
    (evaluate comp585)
    (one-off comp584)
  )
)
(:action evaluate-comp585-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (rebooted comp585)
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
  )
)
(:action evaluate-comp585-all-on
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (not (rebooted comp585))
    (running comp584)
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
    (all-on comp585)
  )
)
(:action evaluate-comp585-off-comp584
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (not (rebooted comp585))
    (not (running comp584))
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
    (one-off comp585)
  )
)
(:action evaluate-comp586-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (rebooted comp586)
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
  )
)
(:action evaluate-comp586-all-on
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (not (rebooted comp586))
    (running comp585)
    (running comp1286)
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
    (all-on comp586)
  )
)
(:action evaluate-comp586-off-comp585
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (not (rebooted comp586))
    (not (running comp585))
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
    (one-off comp586)
  )
)
(:action evaluate-comp586-off-comp1286
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (not (rebooted comp586))
    (not (running comp1286))
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
    (one-off comp586)
  )
)
(:action evaluate-comp587-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp587)
    (rebooted comp587)
  )
  :effect (and
    (not (evaluate comp587))
    (evaluate comp588)
  )
)
(:action evaluate-comp587-all-on
  :parameters ()
  :precondition (and
    (evaluate comp587)
    (not (rebooted comp587))
    (running comp586)
  )
  :effect (and
    (not (evaluate comp587))
    (evaluate comp588)
    (all-on comp587)
  )
)
(:action evaluate-comp587-off-comp586
  :parameters ()
  :precondition (and
    (evaluate comp587)
    (not (rebooted comp587))
    (not (running comp586))
  )
  :effect (and
    (not (evaluate comp587))
    (evaluate comp588)
    (one-off comp587)
  )
)
(:action evaluate-comp588-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp588)
    (rebooted comp588)
  )
  :effect (and
    (not (evaluate comp588))
    (evaluate comp589)
  )
)
(:action evaluate-comp588-all-on
  :parameters ()
  :precondition (and
    (evaluate comp588)
    (not (rebooted comp588))
    (running comp587)
  )
  :effect (and
    (not (evaluate comp588))
    (evaluate comp589)
    (all-on comp588)
  )
)
(:action evaluate-comp588-off-comp587
  :parameters ()
  :precondition (and
    (evaluate comp588)
    (not (rebooted comp588))
    (not (running comp587))
  )
  :effect (and
    (not (evaluate comp588))
    (evaluate comp589)
    (one-off comp588)
  )
)
(:action evaluate-comp589-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (rebooted comp589)
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
  )
)
(:action evaluate-comp589-all-on
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (not (rebooted comp589))
    (running comp588)
    (running comp1833)
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
    (all-on comp589)
  )
)
(:action evaluate-comp589-off-comp588
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (not (rebooted comp589))
    (not (running comp588))
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
    (one-off comp589)
  )
)
(:action evaluate-comp589-off-comp1833
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (not (rebooted comp589))
    (not (running comp1833))
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
    (one-off comp589)
  )
)
(:action evaluate-comp590-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp590)
    (rebooted comp590)
  )
  :effect (and
    (not (evaluate comp590))
    (evaluate comp591)
  )
)
(:action evaluate-comp590-all-on
  :parameters ()
  :precondition (and
    (evaluate comp590)
    (not (rebooted comp590))
    (running comp589)
  )
  :effect (and
    (not (evaluate comp590))
    (evaluate comp591)
    (all-on comp590)
  )
)
(:action evaluate-comp590-off-comp589
  :parameters ()
  :precondition (and
    (evaluate comp590)
    (not (rebooted comp590))
    (not (running comp589))
  )
  :effect (and
    (not (evaluate comp590))
    (evaluate comp591)
    (one-off comp590)
  )
)
(:action evaluate-comp591-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp591)
    (rebooted comp591)
  )
  :effect (and
    (not (evaluate comp591))
    (evaluate comp592)
  )
)
(:action evaluate-comp591-all-on
  :parameters ()
  :precondition (and
    (evaluate comp591)
    (not (rebooted comp591))
    (running comp590)
  )
  :effect (and
    (not (evaluate comp591))
    (evaluate comp592)
    (all-on comp591)
  )
)
(:action evaluate-comp591-off-comp590
  :parameters ()
  :precondition (and
    (evaluate comp591)
    (not (rebooted comp591))
    (not (running comp590))
  )
  :effect (and
    (not (evaluate comp591))
    (evaluate comp592)
    (one-off comp591)
  )
)
(:action evaluate-comp592-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (rebooted comp592)
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
  )
)
(:action evaluate-comp592-all-on
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (not (rebooted comp592))
    (running comp591)
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
    (all-on comp592)
  )
)
(:action evaluate-comp592-off-comp591
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (not (rebooted comp592))
    (not (running comp591))
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
    (one-off comp592)
  )
)
(:action evaluate-comp593-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (rebooted comp593)
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
  )
)
(:action evaluate-comp593-all-on
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (not (rebooted comp593))
    (running comp592)
    (running comp1842)
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
    (all-on comp593)
  )
)
(:action evaluate-comp593-off-comp592
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (not (rebooted comp593))
    (not (running comp592))
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
    (one-off comp593)
  )
)
(:action evaluate-comp593-off-comp1842
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (not (rebooted comp593))
    (not (running comp1842))
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
    (one-off comp593)
  )
)
(:action evaluate-comp594-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp594)
    (rebooted comp594)
  )
  :effect (and
    (not (evaluate comp594))
    (evaluate comp595)
  )
)
(:action evaluate-comp594-all-on
  :parameters ()
  :precondition (and
    (evaluate comp594)
    (not (rebooted comp594))
    (running comp593)
  )
  :effect (and
    (not (evaluate comp594))
    (evaluate comp595)
    (all-on comp594)
  )
)
(:action evaluate-comp594-off-comp593
  :parameters ()
  :precondition (and
    (evaluate comp594)
    (not (rebooted comp594))
    (not (running comp593))
  )
  :effect (and
    (not (evaluate comp594))
    (evaluate comp595)
    (one-off comp594)
  )
)
(:action evaluate-comp595-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (rebooted comp595)
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
  )
)
(:action evaluate-comp595-all-on
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (not (rebooted comp595))
    (running comp594)
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
    (all-on comp595)
  )
)
(:action evaluate-comp595-off-comp594
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (not (rebooted comp595))
    (not (running comp594))
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
    (one-off comp595)
  )
)
(:action evaluate-comp596-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (rebooted comp596)
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
  )
)
(:action evaluate-comp596-all-on
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (not (rebooted comp596))
    (running comp595)
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
    (all-on comp596)
  )
)
(:action evaluate-comp596-off-comp595
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (not (rebooted comp596))
    (not (running comp595))
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
    (one-off comp596)
  )
)
(:action evaluate-comp597-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (rebooted comp597)
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
  )
)
(:action evaluate-comp597-all-on
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (running comp29)
    (running comp442)
    (running comp596)
    (running comp1488)
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (all-on comp597)
  )
)
(:action evaluate-comp597-off-comp29
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (not (running comp29))
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (one-off comp597)
  )
)
(:action evaluate-comp597-off-comp442
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (not (running comp442))
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (one-off comp597)
  )
)
(:action evaluate-comp597-off-comp596
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (not (running comp596))
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (one-off comp597)
  )
)
(:action evaluate-comp597-off-comp1488
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (not (running comp1488))
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (one-off comp597)
  )
)
(:action evaluate-comp598-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (rebooted comp598)
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
  )
)
(:action evaluate-comp598-all-on
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (not (rebooted comp598))
    (running comp597)
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
    (all-on comp598)
  )
)
(:action evaluate-comp598-off-comp597
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (not (rebooted comp598))
    (not (running comp597))
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
    (one-off comp598)
  )
)
(:action evaluate-comp599-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (rebooted comp599)
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
  )
)
(:action evaluate-comp599-all-on
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (not (rebooted comp599))
    (running comp598)
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
    (all-on comp599)
  )
)
(:action evaluate-comp599-off-comp598
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (not (rebooted comp599))
    (not (running comp598))
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
    (one-off comp599)
  )
)
(:action evaluate-comp600-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (rebooted comp600)
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
  )
)
(:action evaluate-comp600-all-on
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (not (rebooted comp600))
    (running comp599)
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
    (all-on comp600)
  )
)
(:action evaluate-comp600-off-comp599
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (not (rebooted comp600))
    (not (running comp599))
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
    (one-off comp600)
  )
)
(:action evaluate-comp601-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (rebooted comp601)
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
  )
)
(:action evaluate-comp601-all-on
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (not (rebooted comp601))
    (running comp600)
    (running comp839)
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
    (all-on comp601)
  )
)
(:action evaluate-comp601-off-comp600
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (not (rebooted comp601))
    (not (running comp600))
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
    (one-off comp601)
  )
)
(:action evaluate-comp601-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (not (rebooted comp601))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
    (one-off comp601)
  )
)
(:action evaluate-comp602-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (rebooted comp602)
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
  )
)
(:action evaluate-comp602-all-on
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (not (rebooted comp602))
    (running comp553)
    (running comp601)
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
    (all-on comp602)
  )
)
(:action evaluate-comp602-off-comp553
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (not (rebooted comp602))
    (not (running comp553))
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
    (one-off comp602)
  )
)
(:action evaluate-comp602-off-comp601
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (not (rebooted comp602))
    (not (running comp601))
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
    (one-off comp602)
  )
)
(:action evaluate-comp603-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp603)
    (rebooted comp603)
  )
  :effect (and
    (not (evaluate comp603))
    (evaluate comp604)
  )
)
(:action evaluate-comp603-all-on
  :parameters ()
  :precondition (and
    (evaluate comp603)
    (not (rebooted comp603))
    (running comp602)
  )
  :effect (and
    (not (evaluate comp603))
    (evaluate comp604)
    (all-on comp603)
  )
)
(:action evaluate-comp603-off-comp602
  :parameters ()
  :precondition (and
    (evaluate comp603)
    (not (rebooted comp603))
    (not (running comp602))
  )
  :effect (and
    (not (evaluate comp603))
    (evaluate comp604)
    (one-off comp603)
  )
)
(:action evaluate-comp604-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (rebooted comp604)
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
  )
)
(:action evaluate-comp604-all-on
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (not (rebooted comp604))
    (running comp603)
    (running comp1616)
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
    (all-on comp604)
  )
)
(:action evaluate-comp604-off-comp603
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (not (rebooted comp604))
    (not (running comp603))
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
    (one-off comp604)
  )
)
(:action evaluate-comp604-off-comp1616
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (not (rebooted comp604))
    (not (running comp1616))
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
    (one-off comp604)
  )
)
(:action evaluate-comp605-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (rebooted comp605)
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
  )
)
(:action evaluate-comp605-all-on
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (not (rebooted comp605))
    (running comp604)
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
    (all-on comp605)
  )
)
(:action evaluate-comp605-off-comp604
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (not (rebooted comp605))
    (not (running comp604))
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
    (one-off comp605)
  )
)
(:action evaluate-comp606-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp606)
    (rebooted comp606)
  )
  :effect (and
    (not (evaluate comp606))
    (evaluate comp607)
  )
)
(:action evaluate-comp606-all-on
  :parameters ()
  :precondition (and
    (evaluate comp606)
    (not (rebooted comp606))
    (running comp605)
  )
  :effect (and
    (not (evaluate comp606))
    (evaluate comp607)
    (all-on comp606)
  )
)
(:action evaluate-comp606-off-comp605
  :parameters ()
  :precondition (and
    (evaluate comp606)
    (not (rebooted comp606))
    (not (running comp605))
  )
  :effect (and
    (not (evaluate comp606))
    (evaluate comp607)
    (one-off comp606)
  )
)
(:action evaluate-comp607-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (rebooted comp607)
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
  )
)
(:action evaluate-comp607-all-on
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (running comp44)
    (running comp606)
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (all-on comp607)
  )
)
(:action evaluate-comp607-off-comp44
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (not (running comp44))
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (one-off comp607)
  )
)
(:action evaluate-comp607-off-comp606
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (not (running comp606))
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (one-off comp607)
  )
)
(:action evaluate-comp608-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (rebooted comp608)
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
  )
)
(:action evaluate-comp608-all-on
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (not (rebooted comp608))
    (running comp607)
    (running comp1467)
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
    (all-on comp608)
  )
)
(:action evaluate-comp608-off-comp607
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (not (rebooted comp608))
    (not (running comp607))
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
    (one-off comp608)
  )
)
(:action evaluate-comp608-off-comp1467
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (not (rebooted comp608))
    (not (running comp1467))
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
    (one-off comp608)
  )
)
(:action evaluate-comp609-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (rebooted comp609)
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
  )
)
(:action evaluate-comp609-all-on
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (not (rebooted comp609))
    (running comp608)
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
    (all-on comp609)
  )
)
(:action evaluate-comp609-off-comp608
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (not (rebooted comp609))
    (not (running comp608))
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
    (one-off comp609)
  )
)
(:action evaluate-comp610-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (rebooted comp610)
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
  )
)
(:action evaluate-comp610-all-on
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (not (rebooted comp610))
    (running comp609)
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
    (all-on comp610)
  )
)
(:action evaluate-comp610-off-comp609
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (not (rebooted comp610))
    (not (running comp609))
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
    (one-off comp610)
  )
)
(:action evaluate-comp611-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (rebooted comp611)
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
  )
)
(:action evaluate-comp611-all-on
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (not (rebooted comp611))
    (running comp563)
    (running comp610)
    (running comp710)
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
    (all-on comp611)
  )
)
(:action evaluate-comp611-off-comp563
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (not (rebooted comp611))
    (not (running comp563))
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
    (one-off comp611)
  )
)
(:action evaluate-comp611-off-comp610
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (not (rebooted comp611))
    (not (running comp610))
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
    (one-off comp611)
  )
)
(:action evaluate-comp611-off-comp710
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (not (rebooted comp611))
    (not (running comp710))
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
    (one-off comp611)
  )
)
(:action evaluate-comp612-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (rebooted comp612)
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
  )
)
(:action evaluate-comp612-all-on
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (not (rebooted comp612))
    (running comp611)
    (running comp1593)
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
    (all-on comp612)
  )
)
(:action evaluate-comp612-off-comp611
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (not (rebooted comp612))
    (not (running comp611))
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
    (one-off comp612)
  )
)
(:action evaluate-comp612-off-comp1593
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (not (rebooted comp612))
    (not (running comp1593))
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
    (one-off comp612)
  )
)
(:action evaluate-comp613-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (rebooted comp613)
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
  )
)
(:action evaluate-comp613-all-on
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (not (rebooted comp613))
    (running comp612)
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
    (all-on comp613)
  )
)
(:action evaluate-comp613-off-comp612
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (not (rebooted comp613))
    (not (running comp612))
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
    (one-off comp613)
  )
)
(:action evaluate-comp614-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (rebooted comp614)
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
  )
)
(:action evaluate-comp614-all-on
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (not (rebooted comp614))
    (running comp613)
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
    (all-on comp614)
  )
)
(:action evaluate-comp614-off-comp613
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (not (rebooted comp614))
    (not (running comp613))
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
    (one-off comp614)
  )
)
(:action evaluate-comp615-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (rebooted comp615)
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
  )
)
(:action evaluate-comp615-all-on
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (not (rebooted comp615))
    (running comp614)
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
    (all-on comp615)
  )
)
(:action evaluate-comp615-off-comp614
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (not (rebooted comp615))
    (not (running comp614))
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
    (one-off comp615)
  )
)
(:action evaluate-comp616-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (rebooted comp616)
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
  )
)
(:action evaluate-comp616-all-on
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (not (rebooted comp616))
    (running comp615)
    (running comp1570)
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
    (all-on comp616)
  )
)
(:action evaluate-comp616-off-comp615
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (not (rebooted comp616))
    (not (running comp615))
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
    (one-off comp616)
  )
)
(:action evaluate-comp616-off-comp1570
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (not (rebooted comp616))
    (not (running comp1570))
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
    (one-off comp616)
  )
)
(:action evaluate-comp617-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp617)
    (rebooted comp617)
  )
  :effect (and
    (not (evaluate comp617))
    (evaluate comp618)
  )
)
(:action evaluate-comp617-all-on
  :parameters ()
  :precondition (and
    (evaluate comp617)
    (not (rebooted comp617))
    (running comp616)
  )
  :effect (and
    (not (evaluate comp617))
    (evaluate comp618)
    (all-on comp617)
  )
)
(:action evaluate-comp617-off-comp616
  :parameters ()
  :precondition (and
    (evaluate comp617)
    (not (rebooted comp617))
    (not (running comp616))
  )
  :effect (and
    (not (evaluate comp617))
    (evaluate comp618)
    (one-off comp617)
  )
)
(:action evaluate-comp618-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp618)
    (rebooted comp618)
  )
  :effect (and
    (not (evaluate comp618))
    (evaluate comp619)
  )
)
(:action evaluate-comp618-all-on
  :parameters ()
  :precondition (and
    (evaluate comp618)
    (not (rebooted comp618))
    (running comp617)
  )
  :effect (and
    (not (evaluate comp618))
    (evaluate comp619)
    (all-on comp618)
  )
)
(:action evaluate-comp618-off-comp617
  :parameters ()
  :precondition (and
    (evaluate comp618)
    (not (rebooted comp618))
    (not (running comp617))
  )
  :effect (and
    (not (evaluate comp618))
    (evaluate comp619)
    (one-off comp618)
  )
)
(:action evaluate-comp619-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp619)
    (rebooted comp619)
  )
  :effect (and
    (not (evaluate comp619))
    (evaluate comp620)
  )
)
(:action evaluate-comp619-all-on
  :parameters ()
  :precondition (and
    (evaluate comp619)
    (not (rebooted comp619))
    (running comp618)
  )
  :effect (and
    (not (evaluate comp619))
    (evaluate comp620)
    (all-on comp619)
  )
)
(:action evaluate-comp619-off-comp618
  :parameters ()
  :precondition (and
    (evaluate comp619)
    (not (rebooted comp619))
    (not (running comp618))
  )
  :effect (and
    (not (evaluate comp619))
    (evaluate comp620)
    (one-off comp619)
  )
)
(:action evaluate-comp620-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (rebooted comp620)
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
  )
)
(:action evaluate-comp620-all-on
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (not (rebooted comp620))
    (running comp619)
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
    (all-on comp620)
  )
)
(:action evaluate-comp620-off-comp619
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (not (rebooted comp620))
    (not (running comp619))
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
    (one-off comp620)
  )
)
(:action evaluate-comp621-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (rebooted comp621)
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
  )
)
(:action evaluate-comp621-all-on
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (not (rebooted comp621))
    (running comp620)
    (running comp1075)
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
    (all-on comp621)
  )
)
(:action evaluate-comp621-off-comp620
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (not (rebooted comp621))
    (not (running comp620))
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
    (one-off comp621)
  )
)
(:action evaluate-comp621-off-comp1075
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (not (rebooted comp621))
    (not (running comp1075))
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
    (one-off comp621)
  )
)
(:action evaluate-comp622-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (rebooted comp622)
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
  )
)
(:action evaluate-comp622-all-on
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (not (rebooted comp622))
    (running comp621)
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
    (all-on comp622)
  )
)
(:action evaluate-comp622-off-comp621
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (not (rebooted comp622))
    (not (running comp621))
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
    (one-off comp622)
  )
)
(:action evaluate-comp623-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (rebooted comp623)
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
  )
)
(:action evaluate-comp623-all-on
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (not (rebooted comp623))
    (running comp622)
    (running comp1137)
    (running comp1493)
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
    (all-on comp623)
  )
)
(:action evaluate-comp623-off-comp622
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (not (rebooted comp623))
    (not (running comp622))
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
    (one-off comp623)
  )
)
(:action evaluate-comp623-off-comp1137
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (not (rebooted comp623))
    (not (running comp1137))
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
    (one-off comp623)
  )
)
(:action evaluate-comp623-off-comp1493
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (not (rebooted comp623))
    (not (running comp1493))
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
    (one-off comp623)
  )
)
(:action evaluate-comp624-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp624)
    (rebooted comp624)
  )
  :effect (and
    (not (evaluate comp624))
    (evaluate comp625)
  )
)
(:action evaluate-comp624-all-on
  :parameters ()
  :precondition (and
    (evaluate comp624)
    (not (rebooted comp624))
    (running comp623)
  )
  :effect (and
    (not (evaluate comp624))
    (evaluate comp625)
    (all-on comp624)
  )
)
(:action evaluate-comp624-off-comp623
  :parameters ()
  :precondition (and
    (evaluate comp624)
    (not (rebooted comp624))
    (not (running comp623))
  )
  :effect (and
    (not (evaluate comp624))
    (evaluate comp625)
    (one-off comp624)
  )
)
(:action evaluate-comp625-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp625)
    (rebooted comp625)
  )
  :effect (and
    (not (evaluate comp625))
    (evaluate comp626)
  )
)
(:action evaluate-comp625-all-on
  :parameters ()
  :precondition (and
    (evaluate comp625)
    (not (rebooted comp625))
    (running comp624)
  )
  :effect (and
    (not (evaluate comp625))
    (evaluate comp626)
    (all-on comp625)
  )
)
(:action evaluate-comp625-off-comp624
  :parameters ()
  :precondition (and
    (evaluate comp625)
    (not (rebooted comp625))
    (not (running comp624))
  )
  :effect (and
    (not (evaluate comp625))
    (evaluate comp626)
    (one-off comp625)
  )
)
(:action evaluate-comp626-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp626)
    (rebooted comp626)
  )
  :effect (and
    (not (evaluate comp626))
    (evaluate comp627)
  )
)
(:action evaluate-comp626-all-on
  :parameters ()
  :precondition (and
    (evaluate comp626)
    (not (rebooted comp626))
    (running comp625)
  )
  :effect (and
    (not (evaluate comp626))
    (evaluate comp627)
    (all-on comp626)
  )
)
(:action evaluate-comp626-off-comp625
  :parameters ()
  :precondition (and
    (evaluate comp626)
    (not (rebooted comp626))
    (not (running comp625))
  )
  :effect (and
    (not (evaluate comp626))
    (evaluate comp627)
    (one-off comp626)
  )
)
(:action evaluate-comp627-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp627)
    (rebooted comp627)
  )
  :effect (and
    (not (evaluate comp627))
    (evaluate comp628)
  )
)
(:action evaluate-comp627-all-on
  :parameters ()
  :precondition (and
    (evaluate comp627)
    (not (rebooted comp627))
    (running comp626)
  )
  :effect (and
    (not (evaluate comp627))
    (evaluate comp628)
    (all-on comp627)
  )
)
(:action evaluate-comp627-off-comp626
  :parameters ()
  :precondition (and
    (evaluate comp627)
    (not (rebooted comp627))
    (not (running comp626))
  )
  :effect (and
    (not (evaluate comp627))
    (evaluate comp628)
    (one-off comp627)
  )
)
(:action evaluate-comp628-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (rebooted comp628)
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
  )
)
(:action evaluate-comp628-all-on
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (not (rebooted comp628))
    (running comp584)
    (running comp627)
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
    (all-on comp628)
  )
)
(:action evaluate-comp628-off-comp584
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (not (rebooted comp628))
    (not (running comp584))
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
    (one-off comp628)
  )
)
(:action evaluate-comp628-off-comp627
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (not (rebooted comp628))
    (not (running comp627))
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
    (one-off comp628)
  )
)
(:action evaluate-comp629-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp629)
    (rebooted comp629)
  )
  :effect (and
    (not (evaluate comp629))
    (evaluate comp630)
  )
)
(:action evaluate-comp629-all-on
  :parameters ()
  :precondition (and
    (evaluate comp629)
    (not (rebooted comp629))
    (running comp628)
  )
  :effect (and
    (not (evaluate comp629))
    (evaluate comp630)
    (all-on comp629)
  )
)
(:action evaluate-comp629-off-comp628
  :parameters ()
  :precondition (and
    (evaluate comp629)
    (not (rebooted comp629))
    (not (running comp628))
  )
  :effect (and
    (not (evaluate comp629))
    (evaluate comp630)
    (one-off comp629)
  )
)
(:action evaluate-comp630-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (rebooted comp630)
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
  )
)
(:action evaluate-comp630-all-on
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (not (rebooted comp630))
    (running comp629)
    (running comp1874)
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
    (all-on comp630)
  )
)
(:action evaluate-comp630-off-comp629
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (not (rebooted comp630))
    (not (running comp629))
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
    (one-off comp630)
  )
)
(:action evaluate-comp630-off-comp1874
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (not (rebooted comp630))
    (not (running comp1874))
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
    (one-off comp630)
  )
)
(:action evaluate-comp631-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (rebooted comp631)
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
  )
)
(:action evaluate-comp631-all-on
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (not (rebooted comp631))
    (running comp87)
    (running comp630)
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
    (all-on comp631)
  )
)
(:action evaluate-comp631-off-comp87
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (not (rebooted comp631))
    (not (running comp87))
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
    (one-off comp631)
  )
)
(:action evaluate-comp631-off-comp630
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (not (rebooted comp631))
    (not (running comp630))
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
    (one-off comp631)
  )
)
(:action evaluate-comp632-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (rebooted comp632)
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
  )
)
(:action evaluate-comp632-all-on
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (not (rebooted comp632))
    (running comp631)
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
    (all-on comp632)
  )
)
(:action evaluate-comp632-off-comp631
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (not (rebooted comp632))
    (not (running comp631))
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
    (one-off comp632)
  )
)
(:action evaluate-comp633-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (rebooted comp633)
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
  )
)
(:action evaluate-comp633-all-on
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (not (rebooted comp633))
    (running comp632)
    (running comp1332)
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
    (all-on comp633)
  )
)
(:action evaluate-comp633-off-comp632
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (not (rebooted comp633))
    (not (running comp632))
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
    (one-off comp633)
  )
)
(:action evaluate-comp633-off-comp1332
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (not (rebooted comp633))
    (not (running comp1332))
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
    (one-off comp633)
  )
)
(:action evaluate-comp634-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (rebooted comp634)
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
  )
)
(:action evaluate-comp634-all-on
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (not (rebooted comp634))
    (running comp633)
    (running comp772)
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
    (all-on comp634)
  )
)
(:action evaluate-comp634-off-comp633
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (not (rebooted comp634))
    (not (running comp633))
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
    (one-off comp634)
  )
)
(:action evaluate-comp634-off-comp772
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (not (rebooted comp634))
    (not (running comp772))
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
    (one-off comp634)
  )
)
(:action evaluate-comp635-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (rebooted comp635)
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
  )
)
(:action evaluate-comp635-all-on
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (not (rebooted comp635))
    (running comp634)
    (running comp1444)
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
    (all-on comp635)
  )
)
(:action evaluate-comp635-off-comp634
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (not (rebooted comp635))
    (not (running comp634))
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
    (one-off comp635)
  )
)
(:action evaluate-comp635-off-comp1444
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (not (rebooted comp635))
    (not (running comp1444))
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
    (one-off comp635)
  )
)
(:action evaluate-comp636-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp636)
    (rebooted comp636)
  )
  :effect (and
    (not (evaluate comp636))
    (evaluate comp637)
  )
)
(:action evaluate-comp636-all-on
  :parameters ()
  :precondition (and
    (evaluate comp636)
    (not (rebooted comp636))
    (running comp635)
  )
  :effect (and
    (not (evaluate comp636))
    (evaluate comp637)
    (all-on comp636)
  )
)
(:action evaluate-comp636-off-comp635
  :parameters ()
  :precondition (and
    (evaluate comp636)
    (not (rebooted comp636))
    (not (running comp635))
  )
  :effect (and
    (not (evaluate comp636))
    (evaluate comp637)
    (one-off comp636)
  )
)
(:action evaluate-comp637-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (rebooted comp637)
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
  )
)
(:action evaluate-comp637-all-on
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (not (rebooted comp637))
    (running comp364)
    (running comp636)
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
    (all-on comp637)
  )
)
(:action evaluate-comp637-off-comp364
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (not (rebooted comp637))
    (not (running comp364))
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
    (one-off comp637)
  )
)
(:action evaluate-comp637-off-comp636
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (not (rebooted comp637))
    (not (running comp636))
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
    (one-off comp637)
  )
)
(:action evaluate-comp638-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp638)
    (rebooted comp638)
  )
  :effect (and
    (not (evaluate comp638))
    (evaluate comp639)
  )
)
(:action evaluate-comp638-all-on
  :parameters ()
  :precondition (and
    (evaluate comp638)
    (not (rebooted comp638))
    (running comp637)
  )
  :effect (and
    (not (evaluate comp638))
    (evaluate comp639)
    (all-on comp638)
  )
)
(:action evaluate-comp638-off-comp637
  :parameters ()
  :precondition (and
    (evaluate comp638)
    (not (rebooted comp638))
    (not (running comp637))
  )
  :effect (and
    (not (evaluate comp638))
    (evaluate comp639)
    (one-off comp638)
  )
)
(:action evaluate-comp639-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (rebooted comp639)
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
  )
)
(:action evaluate-comp639-all-on
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (not (rebooted comp639))
    (running comp286)
    (running comp638)
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
    (all-on comp639)
  )
)
(:action evaluate-comp639-off-comp286
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (not (rebooted comp639))
    (not (running comp286))
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
    (one-off comp639)
  )
)
(:action evaluate-comp639-off-comp638
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (not (rebooted comp639))
    (not (running comp638))
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
    (one-off comp639)
  )
)
(:action evaluate-comp640-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (rebooted comp640)
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
  )
)
(:action evaluate-comp640-all-on
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (running comp639)
    (running comp1460)
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (all-on comp640)
  )
)
(:action evaluate-comp640-off-comp639
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (not (running comp639))
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (one-off comp640)
  )
)
(:action evaluate-comp640-off-comp1460
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (not (running comp1460))
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (one-off comp640)
  )
)
(:action evaluate-comp641-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (rebooted comp641)
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
  )
)
(:action evaluate-comp641-all-on
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (not (rebooted comp641))
    (running comp640)
    (running comp1910)
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
    (all-on comp641)
  )
)
(:action evaluate-comp641-off-comp640
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (not (rebooted comp641))
    (not (running comp640))
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
    (one-off comp641)
  )
)
(:action evaluate-comp641-off-comp1910
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (not (rebooted comp641))
    (not (running comp1910))
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
    (one-off comp641)
  )
)
(:action evaluate-comp642-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (rebooted comp642)
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
  )
)
(:action evaluate-comp642-all-on
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (running comp641)
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (all-on comp642)
  )
)
(:action evaluate-comp642-off-comp641
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (not (running comp641))
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (one-off comp642)
  )
)
(:action evaluate-comp643-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (rebooted comp643)
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
  )
)
(:action evaluate-comp643-all-on
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (not (rebooted comp643))
    (running comp642)
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
    (all-on comp643)
  )
)
(:action evaluate-comp643-off-comp642
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (not (rebooted comp643))
    (not (running comp642))
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
    (one-off comp643)
  )
)
(:action evaluate-comp644-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp644)
    (rebooted comp644)
  )
  :effect (and
    (not (evaluate comp644))
    (evaluate comp645)
  )
)
(:action evaluate-comp644-all-on
  :parameters ()
  :precondition (and
    (evaluate comp644)
    (not (rebooted comp644))
    (running comp643)
  )
  :effect (and
    (not (evaluate comp644))
    (evaluate comp645)
    (all-on comp644)
  )
)
(:action evaluate-comp644-off-comp643
  :parameters ()
  :precondition (and
    (evaluate comp644)
    (not (rebooted comp644))
    (not (running comp643))
  )
  :effect (and
    (not (evaluate comp644))
    (evaluate comp645)
    (one-off comp644)
  )
)
(:action evaluate-comp645-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (rebooted comp645)
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
  )
)
(:action evaluate-comp645-all-on
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (not (rebooted comp645))
    (running comp644)
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
    (all-on comp645)
  )
)
(:action evaluate-comp645-off-comp644
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (not (rebooted comp645))
    (not (running comp644))
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
    (one-off comp645)
  )
)
(:action evaluate-comp646-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (rebooted comp646)
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
  )
)
(:action evaluate-comp646-all-on
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (not (rebooted comp646))
    (running comp645)
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
    (all-on comp646)
  )
)
(:action evaluate-comp646-off-comp645
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (not (rebooted comp646))
    (not (running comp645))
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
    (one-off comp646)
  )
)
(:action evaluate-comp647-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (rebooted comp647)
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
  )
)
(:action evaluate-comp647-all-on
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (running comp646)
    (running comp1543)
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (all-on comp647)
  )
)
(:action evaluate-comp647-off-comp646
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (not (running comp646))
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (one-off comp647)
  )
)
(:action evaluate-comp647-off-comp1543
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (not (running comp1543))
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (one-off comp647)
  )
)
(:action evaluate-comp648-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (rebooted comp648)
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
  )
)
(:action evaluate-comp648-all-on
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (not (rebooted comp648))
    (running comp647)
    (running comp1761)
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
    (all-on comp648)
  )
)
(:action evaluate-comp648-off-comp647
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (not (rebooted comp648))
    (not (running comp647))
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
    (one-off comp648)
  )
)
(:action evaluate-comp648-off-comp1761
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (not (rebooted comp648))
    (not (running comp1761))
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
    (one-off comp648)
  )
)
(:action evaluate-comp649-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (rebooted comp649)
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
  )
)
(:action evaluate-comp649-all-on
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (not (rebooted comp649))
    (running comp643)
    (running comp648)
    (running comp1804)
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
    (all-on comp649)
  )
)
(:action evaluate-comp649-off-comp643
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (not (rebooted comp649))
    (not (running comp643))
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
    (one-off comp649)
  )
)
(:action evaluate-comp649-off-comp648
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (not (rebooted comp649))
    (not (running comp648))
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
    (one-off comp649)
  )
)
(:action evaluate-comp649-off-comp1804
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (not (rebooted comp649))
    (not (running comp1804))
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
    (one-off comp649)
  )
)
(:action evaluate-comp650-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (rebooted comp650)
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
  )
)
(:action evaluate-comp650-all-on
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (running comp649)
    (running comp666)
    (running comp1409)
    (running comp1803)
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (all-on comp650)
  )
)
(:action evaluate-comp650-off-comp649
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (not (running comp649))
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (one-off comp650)
  )
)
(:action evaluate-comp650-off-comp666
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (not (running comp666))
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (one-off comp650)
  )
)
(:action evaluate-comp650-off-comp1409
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (not (running comp1409))
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (one-off comp650)
  )
)
(:action evaluate-comp650-off-comp1803
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (not (running comp1803))
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (one-off comp650)
  )
)
(:action evaluate-comp651-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (rebooted comp651)
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
  )
)
(:action evaluate-comp651-all-on
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (not (rebooted comp651))
    (running comp650)
    (running comp1590)
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
    (all-on comp651)
  )
)
(:action evaluate-comp651-off-comp650
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (not (rebooted comp651))
    (not (running comp650))
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
    (one-off comp651)
  )
)
(:action evaluate-comp651-off-comp1590
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (not (rebooted comp651))
    (not (running comp1590))
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
    (one-off comp651)
  )
)
(:action evaluate-comp652-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (rebooted comp652)
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
  )
)
(:action evaluate-comp652-all-on
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (not (rebooted comp652))
    (running comp651)
    (running comp1214)
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
    (all-on comp652)
  )
)
(:action evaluate-comp652-off-comp651
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (not (rebooted comp652))
    (not (running comp651))
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
    (one-off comp652)
  )
)
(:action evaluate-comp652-off-comp1214
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (not (rebooted comp652))
    (not (running comp1214))
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
    (one-off comp652)
  )
)
(:action evaluate-comp653-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (rebooted comp653)
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
  )
)
(:action evaluate-comp653-all-on
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (not (rebooted comp653))
    (running comp652)
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
    (all-on comp653)
  )
)
(:action evaluate-comp653-off-comp652
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (not (rebooted comp653))
    (not (running comp652))
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
    (one-off comp653)
  )
)
(:action evaluate-comp654-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (rebooted comp654)
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
  )
)
(:action evaluate-comp654-all-on
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (not (rebooted comp654))
    (running comp653)
    (running comp1176)
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
    (all-on comp654)
  )
)
(:action evaluate-comp654-off-comp653
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (not (rebooted comp654))
    (not (running comp653))
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
    (one-off comp654)
  )
)
(:action evaluate-comp654-off-comp1176
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (not (rebooted comp654))
    (not (running comp1176))
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
    (one-off comp654)
  )
)
(:action evaluate-comp655-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (rebooted comp655)
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
  )
)
(:action evaluate-comp655-all-on
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (not (rebooted comp655))
    (running comp654)
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
    (all-on comp655)
  )
)
(:action evaluate-comp655-off-comp654
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (not (rebooted comp655))
    (not (running comp654))
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
    (one-off comp655)
  )
)
(:action evaluate-comp656-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (rebooted comp656)
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
  )
)
(:action evaluate-comp656-all-on
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (not (rebooted comp656))
    (running comp655)
    (running comp1140)
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
    (all-on comp656)
  )
)
(:action evaluate-comp656-off-comp655
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (not (rebooted comp656))
    (not (running comp655))
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
    (one-off comp656)
  )
)
(:action evaluate-comp656-off-comp1140
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (not (rebooted comp656))
    (not (running comp1140))
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
    (one-off comp656)
  )
)
(:action evaluate-comp657-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (rebooted comp657)
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
  )
)
(:action evaluate-comp657-all-on
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (not (rebooted comp657))
    (running comp656)
    (running comp1842)
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
    (all-on comp657)
  )
)
(:action evaluate-comp657-off-comp656
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (not (rebooted comp657))
    (not (running comp656))
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
    (one-off comp657)
  )
)
(:action evaluate-comp657-off-comp1842
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (not (rebooted comp657))
    (not (running comp1842))
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
    (one-off comp657)
  )
)
(:action evaluate-comp658-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (rebooted comp658)
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
  )
)
(:action evaluate-comp658-all-on
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (not (rebooted comp658))
    (running comp657)
    (running comp816)
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
    (all-on comp658)
  )
)
(:action evaluate-comp658-off-comp657
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (not (rebooted comp658))
    (not (running comp657))
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
    (one-off comp658)
  )
)
(:action evaluate-comp658-off-comp816
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (not (rebooted comp658))
    (not (running comp816))
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
    (one-off comp658)
  )
)
(:action evaluate-comp659-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp659)
    (rebooted comp659)
  )
  :effect (and
    (not (evaluate comp659))
    (evaluate comp660)
  )
)
(:action evaluate-comp659-all-on
  :parameters ()
  :precondition (and
    (evaluate comp659)
    (not (rebooted comp659))
    (running comp658)
  )
  :effect (and
    (not (evaluate comp659))
    (evaluate comp660)
    (all-on comp659)
  )
)
(:action evaluate-comp659-off-comp658
  :parameters ()
  :precondition (and
    (evaluate comp659)
    (not (rebooted comp659))
    (not (running comp658))
  )
  :effect (and
    (not (evaluate comp659))
    (evaluate comp660)
    (one-off comp659)
  )
)
(:action evaluate-comp660-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp660)
    (rebooted comp660)
  )
  :effect (and
    (not (evaluate comp660))
    (evaluate comp661)
  )
)
(:action evaluate-comp660-all-on
  :parameters ()
  :precondition (and
    (evaluate comp660)
    (not (rebooted comp660))
    (running comp659)
  )
  :effect (and
    (not (evaluate comp660))
    (evaluate comp661)
    (all-on comp660)
  )
)
(:action evaluate-comp660-off-comp659
  :parameters ()
  :precondition (and
    (evaluate comp660)
    (not (rebooted comp660))
    (not (running comp659))
  )
  :effect (and
    (not (evaluate comp660))
    (evaluate comp661)
    (one-off comp660)
  )
)
(:action evaluate-comp661-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (rebooted comp661)
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
  )
)
(:action evaluate-comp661-all-on
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (not (rebooted comp661))
    (running comp660)
    (running comp1767)
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
    (all-on comp661)
  )
)
(:action evaluate-comp661-off-comp660
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (not (rebooted comp661))
    (not (running comp660))
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
    (one-off comp661)
  )
)
(:action evaluate-comp661-off-comp1767
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (not (rebooted comp661))
    (not (running comp1767))
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
    (one-off comp661)
  )
)
(:action evaluate-comp662-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (rebooted comp662)
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
  )
)
(:action evaluate-comp662-all-on
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (not (rebooted comp662))
    (running comp661)
    (running comp1653)
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
    (all-on comp662)
  )
)
(:action evaluate-comp662-off-comp661
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (not (rebooted comp662))
    (not (running comp661))
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
    (one-off comp662)
  )
)
(:action evaluate-comp662-off-comp1653
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (not (rebooted comp662))
    (not (running comp1653))
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
    (one-off comp662)
  )
)
(:action evaluate-comp663-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp663)
    (rebooted comp663)
  )
  :effect (and
    (not (evaluate comp663))
    (evaluate comp664)
  )
)
(:action evaluate-comp663-all-on
  :parameters ()
  :precondition (and
    (evaluate comp663)
    (not (rebooted comp663))
    (running comp662)
  )
  :effect (and
    (not (evaluate comp663))
    (evaluate comp664)
    (all-on comp663)
  )
)
(:action evaluate-comp663-off-comp662
  :parameters ()
  :precondition (and
    (evaluate comp663)
    (not (rebooted comp663))
    (not (running comp662))
  )
  :effect (and
    (not (evaluate comp663))
    (evaluate comp664)
    (one-off comp663)
  )
)
(:action evaluate-comp664-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (rebooted comp664)
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
  )
)
(:action evaluate-comp664-all-on
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (running comp663)
    (running comp1508)
    (running comp1664)
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (all-on comp664)
  )
)
(:action evaluate-comp664-off-comp663
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (not (running comp663))
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (one-off comp664)
  )
)
(:action evaluate-comp664-off-comp1508
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (not (running comp1508))
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (one-off comp664)
  )
)
(:action evaluate-comp664-off-comp1664
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (not (running comp1664))
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (one-off comp664)
  )
)
(:action evaluate-comp665-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp665)
    (rebooted comp665)
  )
  :effect (and
    (not (evaluate comp665))
    (evaluate comp666)
  )
)
(:action evaluate-comp665-all-on
  :parameters ()
  :precondition (and
    (evaluate comp665)
    (not (rebooted comp665))
    (running comp664)
  )
  :effect (and
    (not (evaluate comp665))
    (evaluate comp666)
    (all-on comp665)
  )
)
(:action evaluate-comp665-off-comp664
  :parameters ()
  :precondition (and
    (evaluate comp665)
    (not (rebooted comp665))
    (not (running comp664))
  )
  :effect (and
    (not (evaluate comp665))
    (evaluate comp666)
    (one-off comp665)
  )
)
(:action evaluate-comp666-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp666)
    (rebooted comp666)
  )
  :effect (and
    (not (evaluate comp666))
    (evaluate comp667)
  )
)
(:action evaluate-comp666-all-on
  :parameters ()
  :precondition (and
    (evaluate comp666)
    (not (rebooted comp666))
    (running comp665)
  )
  :effect (and
    (not (evaluate comp666))
    (evaluate comp667)
    (all-on comp666)
  )
)
(:action evaluate-comp666-off-comp665
  :parameters ()
  :precondition (and
    (evaluate comp666)
    (not (rebooted comp666))
    (not (running comp665))
  )
  :effect (and
    (not (evaluate comp666))
    (evaluate comp667)
    (one-off comp666)
  )
)
(:action evaluate-comp667-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (rebooted comp667)
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
  )
)
(:action evaluate-comp667-all-on
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (not (rebooted comp667))
    (running comp666)
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
    (all-on comp667)
  )
)
(:action evaluate-comp667-off-comp666
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (not (rebooted comp667))
    (not (running comp666))
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
    (one-off comp667)
  )
)
(:action evaluate-comp668-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp668)
    (rebooted comp668)
  )
  :effect (and
    (not (evaluate comp668))
    (evaluate comp669)
  )
)
(:action evaluate-comp668-all-on
  :parameters ()
  :precondition (and
    (evaluate comp668)
    (not (rebooted comp668))
    (running comp667)
  )
  :effect (and
    (not (evaluate comp668))
    (evaluate comp669)
    (all-on comp668)
  )
)
(:action evaluate-comp668-off-comp667
  :parameters ()
  :precondition (and
    (evaluate comp668)
    (not (rebooted comp668))
    (not (running comp667))
  )
  :effect (and
    (not (evaluate comp668))
    (evaluate comp669)
    (one-off comp668)
  )
)
(:action evaluate-comp669-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (rebooted comp669)
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
  )
)
(:action evaluate-comp669-all-on
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (not (rebooted comp669))
    (running comp223)
    (running comp668)
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
    (all-on comp669)
  )
)
(:action evaluate-comp669-off-comp223
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (not (rebooted comp669))
    (not (running comp223))
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
    (one-off comp669)
  )
)
(:action evaluate-comp669-off-comp668
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (not (rebooted comp669))
    (not (running comp668))
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
    (one-off comp669)
  )
)
(:action evaluate-comp670-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (rebooted comp670)
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
  )
)
(:action evaluate-comp670-all-on
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (not (rebooted comp670))
    (running comp669)
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
    (all-on comp670)
  )
)
(:action evaluate-comp670-off-comp669
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (not (rebooted comp670))
    (not (running comp669))
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
    (one-off comp670)
  )
)
(:action evaluate-comp671-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp671)
    (rebooted comp671)
  )
  :effect (and
    (not (evaluate comp671))
    (evaluate comp672)
  )
)
(:action evaluate-comp671-all-on
  :parameters ()
  :precondition (and
    (evaluate comp671)
    (not (rebooted comp671))
    (running comp670)
  )
  :effect (and
    (not (evaluate comp671))
    (evaluate comp672)
    (all-on comp671)
  )
)
(:action evaluate-comp671-off-comp670
  :parameters ()
  :precondition (and
    (evaluate comp671)
    (not (rebooted comp671))
    (not (running comp670))
  )
  :effect (and
    (not (evaluate comp671))
    (evaluate comp672)
    (one-off comp671)
  )
)
(:action evaluate-comp672-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (rebooted comp672)
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
  )
)
(:action evaluate-comp672-all-on
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (not (rebooted comp672))
    (running comp671)
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
    (all-on comp672)
  )
)
(:action evaluate-comp672-off-comp671
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (not (rebooted comp672))
    (not (running comp671))
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
    (one-off comp672)
  )
)
(:action evaluate-comp673-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (rebooted comp673)
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
  )
)
(:action evaluate-comp673-all-on
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (running comp294)
    (running comp672)
    (running comp1198)
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (all-on comp673)
  )
)
(:action evaluate-comp673-off-comp294
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (not (running comp294))
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (one-off comp673)
  )
)
(:action evaluate-comp673-off-comp672
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (not (running comp672))
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (one-off comp673)
  )
)
(:action evaluate-comp673-off-comp1198
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (not (running comp1198))
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (one-off comp673)
  )
)
(:action evaluate-comp674-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (rebooted comp674)
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
  )
)
(:action evaluate-comp674-all-on
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (not (rebooted comp674))
    (running comp673)
    (running comp1135)
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
    (all-on comp674)
  )
)
(:action evaluate-comp674-off-comp673
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (not (rebooted comp674))
    (not (running comp673))
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
    (one-off comp674)
  )
)
(:action evaluate-comp674-off-comp1135
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (not (rebooted comp674))
    (not (running comp1135))
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
    (one-off comp674)
  )
)
(:action evaluate-comp675-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (rebooted comp675)
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
  )
)
(:action evaluate-comp675-all-on
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (not (rebooted comp675))
    (running comp674)
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
    (all-on comp675)
  )
)
(:action evaluate-comp675-off-comp674
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (not (rebooted comp675))
    (not (running comp674))
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
    (one-off comp675)
  )
)
(:action evaluate-comp676-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (rebooted comp676)
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
  )
)
(:action evaluate-comp676-all-on
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (not (rebooted comp676))
    (running comp675)
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
    (all-on comp676)
  )
)
(:action evaluate-comp676-off-comp675
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (not (rebooted comp676))
    (not (running comp675))
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
    (one-off comp676)
  )
)
(:action evaluate-comp677-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp677)
    (rebooted comp677)
  )
  :effect (and
    (not (evaluate comp677))
    (evaluate comp678)
  )
)
(:action evaluate-comp677-all-on
  :parameters ()
  :precondition (and
    (evaluate comp677)
    (not (rebooted comp677))
    (running comp676)
  )
  :effect (and
    (not (evaluate comp677))
    (evaluate comp678)
    (all-on comp677)
  )
)
(:action evaluate-comp677-off-comp676
  :parameters ()
  :precondition (and
    (evaluate comp677)
    (not (rebooted comp677))
    (not (running comp676))
  )
  :effect (and
    (not (evaluate comp677))
    (evaluate comp678)
    (one-off comp677)
  )
)
(:action evaluate-comp678-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (rebooted comp678)
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
  )
)
(:action evaluate-comp678-all-on
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (not (rebooted comp678))
    (running comp677)
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
    (all-on comp678)
  )
)
(:action evaluate-comp678-off-comp677
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (not (rebooted comp678))
    (not (running comp677))
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
    (one-off comp678)
  )
)
(:action evaluate-comp679-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (rebooted comp679)
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
  )
)
(:action evaluate-comp679-all-on
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (not (rebooted comp679))
    (running comp49)
    (running comp678)
    (running comp1645)
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
    (all-on comp679)
  )
)
(:action evaluate-comp679-off-comp49
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (not (rebooted comp679))
    (not (running comp49))
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
    (one-off comp679)
  )
)
(:action evaluate-comp679-off-comp678
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (not (rebooted comp679))
    (not (running comp678))
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
    (one-off comp679)
  )
)
(:action evaluate-comp679-off-comp1645
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (not (rebooted comp679))
    (not (running comp1645))
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
    (one-off comp679)
  )
)
(:action evaluate-comp680-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (rebooted comp680)
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
  )
)
(:action evaluate-comp680-all-on
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (running comp679)
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (all-on comp680)
  )
)
(:action evaluate-comp680-off-comp679
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (not (running comp679))
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (one-off comp680)
  )
)
(:action evaluate-comp681-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (rebooted comp681)
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
  )
)
(:action evaluate-comp681-all-on
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (running comp680)
    (running comp1392)
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (all-on comp681)
  )
)
(:action evaluate-comp681-off-comp680
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (not (running comp680))
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (one-off comp681)
  )
)
(:action evaluate-comp681-off-comp1392
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (not (running comp1392))
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (one-off comp681)
  )
)
(:action evaluate-comp682-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (rebooted comp682)
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
  )
)
(:action evaluate-comp682-all-on
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (not (rebooted comp682))
    (running comp681)
    (running comp1903)
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
    (all-on comp682)
  )
)
(:action evaluate-comp682-off-comp681
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (not (rebooted comp682))
    (not (running comp681))
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
    (one-off comp682)
  )
)
(:action evaluate-comp682-off-comp1903
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (not (rebooted comp682))
    (not (running comp1903))
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
    (one-off comp682)
  )
)
(:action evaluate-comp683-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp683)
    (rebooted comp683)
  )
  :effect (and
    (not (evaluate comp683))
    (evaluate comp684)
  )
)
(:action evaluate-comp683-all-on
  :parameters ()
  :precondition (and
    (evaluate comp683)
    (not (rebooted comp683))
    (running comp682)
  )
  :effect (and
    (not (evaluate comp683))
    (evaluate comp684)
    (all-on comp683)
  )
)
(:action evaluate-comp683-off-comp682
  :parameters ()
  :precondition (and
    (evaluate comp683)
    (not (rebooted comp683))
    (not (running comp682))
  )
  :effect (and
    (not (evaluate comp683))
    (evaluate comp684)
    (one-off comp683)
  )
)
(:action evaluate-comp684-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (rebooted comp684)
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
  )
)
(:action evaluate-comp684-all-on
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (not (rebooted comp684))
    (running comp683)
    (running comp872)
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
    (all-on comp684)
  )
)
(:action evaluate-comp684-off-comp683
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (not (rebooted comp684))
    (not (running comp683))
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
    (one-off comp684)
  )
)
(:action evaluate-comp684-off-comp872
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (not (rebooted comp684))
    (not (running comp872))
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
    (one-off comp684)
  )
)
(:action evaluate-comp685-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp685)
    (rebooted comp685)
  )
  :effect (and
    (not (evaluate comp685))
    (evaluate comp686)
  )
)
(:action evaluate-comp685-all-on
  :parameters ()
  :precondition (and
    (evaluate comp685)
    (not (rebooted comp685))
    (running comp684)
  )
  :effect (and
    (not (evaluate comp685))
    (evaluate comp686)
    (all-on comp685)
  )
)
(:action evaluate-comp685-off-comp684
  :parameters ()
  :precondition (and
    (evaluate comp685)
    (not (rebooted comp685))
    (not (running comp684))
  )
  :effect (and
    (not (evaluate comp685))
    (evaluate comp686)
    (one-off comp685)
  )
)
(:action evaluate-comp686-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (rebooted comp686)
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
  )
)
(:action evaluate-comp686-all-on
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (not (rebooted comp686))
    (running comp671)
    (running comp685)
    (running comp1083)
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
    (all-on comp686)
  )
)
(:action evaluate-comp686-off-comp671
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (not (rebooted comp686))
    (not (running comp671))
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
    (one-off comp686)
  )
)
(:action evaluate-comp686-off-comp685
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (not (rebooted comp686))
    (not (running comp685))
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
    (one-off comp686)
  )
)
(:action evaluate-comp686-off-comp1083
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (not (rebooted comp686))
    (not (running comp1083))
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
    (one-off comp686)
  )
)
(:action evaluate-comp687-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (rebooted comp687)
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
  )
)
(:action evaluate-comp687-all-on
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (not (rebooted comp687))
    (running comp686)
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
    (all-on comp687)
  )
)
(:action evaluate-comp687-off-comp686
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (not (rebooted comp687))
    (not (running comp686))
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
    (one-off comp687)
  )
)
(:action evaluate-comp688-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (rebooted comp688)
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
  )
)
(:action evaluate-comp688-all-on
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (not (rebooted comp688))
    (running comp687)
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
    (all-on comp688)
  )
)
(:action evaluate-comp688-off-comp687
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (not (rebooted comp688))
    (not (running comp687))
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
    (one-off comp688)
  )
)
(:action evaluate-comp689-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp689)
    (rebooted comp689)
  )
  :effect (and
    (not (evaluate comp689))
    (evaluate comp690)
  )
)
(:action evaluate-comp689-all-on
  :parameters ()
  :precondition (and
    (evaluate comp689)
    (not (rebooted comp689))
    (running comp688)
  )
  :effect (and
    (not (evaluate comp689))
    (evaluate comp690)
    (all-on comp689)
  )
)
(:action evaluate-comp689-off-comp688
  :parameters ()
  :precondition (and
    (evaluate comp689)
    (not (rebooted comp689))
    (not (running comp688))
  )
  :effect (and
    (not (evaluate comp689))
    (evaluate comp690)
    (one-off comp689)
  )
)
(:action evaluate-comp690-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (rebooted comp690)
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
  )
)
(:action evaluate-comp690-all-on
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (not (rebooted comp690))
    (running comp51)
    (running comp339)
    (running comp689)
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
    (all-on comp690)
  )
)
(:action evaluate-comp690-off-comp51
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (not (rebooted comp690))
    (not (running comp51))
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
    (one-off comp690)
  )
)
(:action evaluate-comp690-off-comp339
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (not (rebooted comp690))
    (not (running comp339))
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
    (one-off comp690)
  )
)
(:action evaluate-comp690-off-comp689
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (not (rebooted comp690))
    (not (running comp689))
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
    (one-off comp690)
  )
)
(:action evaluate-comp691-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (rebooted comp691)
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
  )
)
(:action evaluate-comp691-all-on
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (not (rebooted comp691))
    (running comp690)
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
    (all-on comp691)
  )
)
(:action evaluate-comp691-off-comp690
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (not (rebooted comp691))
    (not (running comp690))
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
    (one-off comp691)
  )
)
(:action evaluate-comp692-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp692)
    (rebooted comp692)
  )
  :effect (and
    (not (evaluate comp692))
    (evaluate comp693)
  )
)
(:action evaluate-comp692-all-on
  :parameters ()
  :precondition (and
    (evaluate comp692)
    (not (rebooted comp692))
    (running comp691)
  )
  :effect (and
    (not (evaluate comp692))
    (evaluate comp693)
    (all-on comp692)
  )
)
(:action evaluate-comp692-off-comp691
  :parameters ()
  :precondition (and
    (evaluate comp692)
    (not (rebooted comp692))
    (not (running comp691))
  )
  :effect (and
    (not (evaluate comp692))
    (evaluate comp693)
    (one-off comp692)
  )
)
(:action evaluate-comp693-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp693)
    (rebooted comp693)
  )
  :effect (and
    (not (evaluate comp693))
    (evaluate comp694)
  )
)
(:action evaluate-comp693-all-on
  :parameters ()
  :precondition (and
    (evaluate comp693)
    (not (rebooted comp693))
    (running comp692)
  )
  :effect (and
    (not (evaluate comp693))
    (evaluate comp694)
    (all-on comp693)
  )
)
(:action evaluate-comp693-off-comp692
  :parameters ()
  :precondition (and
    (evaluate comp693)
    (not (rebooted comp693))
    (not (running comp692))
  )
  :effect (and
    (not (evaluate comp693))
    (evaluate comp694)
    (one-off comp693)
  )
)
(:action evaluate-comp694-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (rebooted comp694)
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
  )
)
(:action evaluate-comp694-all-on
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (not (rebooted comp694))
    (running comp693)
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
    (all-on comp694)
  )
)
(:action evaluate-comp694-off-comp693
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (not (rebooted comp694))
    (not (running comp693))
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
    (one-off comp694)
  )
)
(:action evaluate-comp695-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp695)
    (rebooted comp695)
  )
  :effect (and
    (not (evaluate comp695))
    (evaluate comp696)
  )
)
(:action evaluate-comp695-all-on
  :parameters ()
  :precondition (and
    (evaluate comp695)
    (not (rebooted comp695))
    (running comp694)
  )
  :effect (and
    (not (evaluate comp695))
    (evaluate comp696)
    (all-on comp695)
  )
)
(:action evaluate-comp695-off-comp694
  :parameters ()
  :precondition (and
    (evaluate comp695)
    (not (rebooted comp695))
    (not (running comp694))
  )
  :effect (and
    (not (evaluate comp695))
    (evaluate comp696)
    (one-off comp695)
  )
)
(:action evaluate-comp696-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (rebooted comp696)
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
  )
)
(:action evaluate-comp696-all-on
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (not (rebooted comp696))
    (running comp695)
    (running comp1326)
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
    (all-on comp696)
  )
)
(:action evaluate-comp696-off-comp695
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (not (rebooted comp696))
    (not (running comp695))
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
    (one-off comp696)
  )
)
(:action evaluate-comp696-off-comp1326
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (not (rebooted comp696))
    (not (running comp1326))
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
    (one-off comp696)
  )
)
(:action evaluate-comp697-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp697)
    (rebooted comp697)
  )
  :effect (and
    (not (evaluate comp697))
    (evaluate comp698)
  )
)
(:action evaluate-comp697-all-on
  :parameters ()
  :precondition (and
    (evaluate comp697)
    (not (rebooted comp697))
    (running comp696)
  )
  :effect (and
    (not (evaluate comp697))
    (evaluate comp698)
    (all-on comp697)
  )
)
(:action evaluate-comp697-off-comp696
  :parameters ()
  :precondition (and
    (evaluate comp697)
    (not (rebooted comp697))
    (not (running comp696))
  )
  :effect (and
    (not (evaluate comp697))
    (evaluate comp698)
    (one-off comp697)
  )
)
(:action evaluate-comp698-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp698)
    (rebooted comp698)
  )
  :effect (and
    (not (evaluate comp698))
    (evaluate comp699)
  )
)
(:action evaluate-comp698-all-on
  :parameters ()
  :precondition (and
    (evaluate comp698)
    (not (rebooted comp698))
    (running comp697)
  )
  :effect (and
    (not (evaluate comp698))
    (evaluate comp699)
    (all-on comp698)
  )
)
(:action evaluate-comp698-off-comp697
  :parameters ()
  :precondition (and
    (evaluate comp698)
    (not (rebooted comp698))
    (not (running comp697))
  )
  :effect (and
    (not (evaluate comp698))
    (evaluate comp699)
    (one-off comp698)
  )
)
(:action evaluate-comp699-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (rebooted comp699)
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
  )
)
(:action evaluate-comp699-all-on
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (not (rebooted comp699))
    (running comp698)
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
    (all-on comp699)
  )
)
(:action evaluate-comp699-off-comp698
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (not (rebooted comp699))
    (not (running comp698))
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
    (one-off comp699)
  )
)
(:action evaluate-comp700-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (rebooted comp700)
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
  )
)
(:action evaluate-comp700-all-on
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (running comp699)
    (running comp1841)
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (all-on comp700)
  )
)
(:action evaluate-comp700-off-comp699
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (not (running comp699))
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (one-off comp700)
  )
)
(:action evaluate-comp700-off-comp1841
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (not (running comp1841))
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (one-off comp700)
  )
)
(:action evaluate-comp701-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp701)
    (rebooted comp701)
  )
  :effect (and
    (not (evaluate comp701))
    (evaluate comp702)
  )
)
(:action evaluate-comp701-all-on
  :parameters ()
  :precondition (and
    (evaluate comp701)
    (not (rebooted comp701))
    (running comp700)
  )
  :effect (and
    (not (evaluate comp701))
    (evaluate comp702)
    (all-on comp701)
  )
)
(:action evaluate-comp701-off-comp700
  :parameters ()
  :precondition (and
    (evaluate comp701)
    (not (rebooted comp701))
    (not (running comp700))
  )
  :effect (and
    (not (evaluate comp701))
    (evaluate comp702)
    (one-off comp701)
  )
)
(:action evaluate-comp702-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (rebooted comp702)
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
  )
)
(:action evaluate-comp702-all-on
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (not (rebooted comp702))
    (running comp701)
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
    (all-on comp702)
  )
)
(:action evaluate-comp702-off-comp701
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (not (rebooted comp702))
    (not (running comp701))
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
    (one-off comp702)
  )
)
(:action evaluate-comp703-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (rebooted comp703)
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
  )
)
(:action evaluate-comp703-all-on
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (not (rebooted comp703))
    (running comp702)
    (running comp1249)
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
    (all-on comp703)
  )
)
(:action evaluate-comp703-off-comp702
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (not (rebooted comp703))
    (not (running comp702))
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
    (one-off comp703)
  )
)
(:action evaluate-comp703-off-comp1249
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (not (rebooted comp703))
    (not (running comp1249))
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
    (one-off comp703)
  )
)
(:action evaluate-comp704-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (rebooted comp704)
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
  )
)
(:action evaluate-comp704-all-on
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (not (rebooted comp704))
    (running comp40)
    (running comp703)
    (running comp1447)
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
    (all-on comp704)
  )
)
(:action evaluate-comp704-off-comp40
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (not (rebooted comp704))
    (not (running comp40))
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
    (one-off comp704)
  )
)
(:action evaluate-comp704-off-comp703
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (not (rebooted comp704))
    (not (running comp703))
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
    (one-off comp704)
  )
)
(:action evaluate-comp704-off-comp1447
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (not (rebooted comp704))
    (not (running comp1447))
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
    (one-off comp704)
  )
)
(:action evaluate-comp705-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp705)
    (rebooted comp705)
  )
  :effect (and
    (not (evaluate comp705))
    (evaluate comp706)
  )
)
(:action evaluate-comp705-all-on
  :parameters ()
  :precondition (and
    (evaluate comp705)
    (not (rebooted comp705))
    (running comp704)
  )
  :effect (and
    (not (evaluate comp705))
    (evaluate comp706)
    (all-on comp705)
  )
)
(:action evaluate-comp705-off-comp704
  :parameters ()
  :precondition (and
    (evaluate comp705)
    (not (rebooted comp705))
    (not (running comp704))
  )
  :effect (and
    (not (evaluate comp705))
    (evaluate comp706)
    (one-off comp705)
  )
)
(:action evaluate-comp706-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (rebooted comp706)
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
  )
)
(:action evaluate-comp706-all-on
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (not (rebooted comp706))
    (running comp489)
    (running comp705)
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
    (all-on comp706)
  )
)
(:action evaluate-comp706-off-comp489
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (not (rebooted comp706))
    (not (running comp489))
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
    (one-off comp706)
  )
)
(:action evaluate-comp706-off-comp705
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (not (rebooted comp706))
    (not (running comp705))
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
    (one-off comp706)
  )
)
(:action evaluate-comp707-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (rebooted comp707)
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
  )
)
(:action evaluate-comp707-all-on
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (not (rebooted comp707))
    (running comp706)
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
    (all-on comp707)
  )
)
(:action evaluate-comp707-off-comp706
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (not (rebooted comp707))
    (not (running comp706))
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
    (one-off comp707)
  )
)
(:action evaluate-comp708-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp708)
    (rebooted comp708)
  )
  :effect (and
    (not (evaluate comp708))
    (evaluate comp709)
  )
)
(:action evaluate-comp708-all-on
  :parameters ()
  :precondition (and
    (evaluate comp708)
    (not (rebooted comp708))
    (running comp707)
  )
  :effect (and
    (not (evaluate comp708))
    (evaluate comp709)
    (all-on comp708)
  )
)
(:action evaluate-comp708-off-comp707
  :parameters ()
  :precondition (and
    (evaluate comp708)
    (not (rebooted comp708))
    (not (running comp707))
  )
  :effect (and
    (not (evaluate comp708))
    (evaluate comp709)
    (one-off comp708)
  )
)
(:action evaluate-comp709-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (rebooted comp709)
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
  )
)
(:action evaluate-comp709-all-on
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (not (rebooted comp709))
    (running comp708)
    (running comp973)
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
    (all-on comp709)
  )
)
(:action evaluate-comp709-off-comp708
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (not (rebooted comp709))
    (not (running comp708))
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
    (one-off comp709)
  )
)
(:action evaluate-comp709-off-comp973
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (not (rebooted comp709))
    (not (running comp973))
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
    (one-off comp709)
  )
)
(:action evaluate-comp710-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (rebooted comp710)
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
  )
)
(:action evaluate-comp710-all-on
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (not (rebooted comp710))
    (running comp709)
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
    (all-on comp710)
  )
)
(:action evaluate-comp710-off-comp709
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (not (rebooted comp710))
    (not (running comp709))
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
    (one-off comp710)
  )
)
(:action evaluate-comp711-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (rebooted comp711)
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
  )
)
(:action evaluate-comp711-all-on
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (not (rebooted comp711))
    (running comp710)
    (running comp829)
    (running comp1733)
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
    (all-on comp711)
  )
)
(:action evaluate-comp711-off-comp710
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (not (rebooted comp711))
    (not (running comp710))
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
    (one-off comp711)
  )
)
(:action evaluate-comp711-off-comp829
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (not (rebooted comp711))
    (not (running comp829))
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
    (one-off comp711)
  )
)
(:action evaluate-comp711-off-comp1733
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (not (rebooted comp711))
    (not (running comp1733))
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
    (one-off comp711)
  )
)
(:action evaluate-comp712-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (rebooted comp712)
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
  )
)
(:action evaluate-comp712-all-on
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (not (rebooted comp712))
    (running comp711)
    (running comp948)
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
    (all-on comp712)
  )
)
(:action evaluate-comp712-off-comp711
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (not (rebooted comp712))
    (not (running comp711))
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
    (one-off comp712)
  )
)
(:action evaluate-comp712-off-comp948
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (not (rebooted comp712))
    (not (running comp948))
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
    (one-off comp712)
  )
)
(:action evaluate-comp713-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp713)
    (rebooted comp713)
  )
  :effect (and
    (not (evaluate comp713))
    (evaluate comp714)
  )
)
(:action evaluate-comp713-all-on
  :parameters ()
  :precondition (and
    (evaluate comp713)
    (not (rebooted comp713))
    (running comp712)
  )
  :effect (and
    (not (evaluate comp713))
    (evaluate comp714)
    (all-on comp713)
  )
)
(:action evaluate-comp713-off-comp712
  :parameters ()
  :precondition (and
    (evaluate comp713)
    (not (rebooted comp713))
    (not (running comp712))
  )
  :effect (and
    (not (evaluate comp713))
    (evaluate comp714)
    (one-off comp713)
  )
)
(:action evaluate-comp714-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (rebooted comp714)
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
  )
)
(:action evaluate-comp714-all-on
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (running comp459)
    (running comp713)
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (all-on comp714)
  )
)
(:action evaluate-comp714-off-comp459
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (not (running comp459))
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (one-off comp714)
  )
)
(:action evaluate-comp714-off-comp713
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (not (running comp713))
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (one-off comp714)
  )
)
(:action evaluate-comp715-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (rebooted comp715)
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
  )
)
(:action evaluate-comp715-all-on
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (running comp587)
    (running comp714)
    (running comp1470)
    (running comp1818)
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (all-on comp715)
  )
)
(:action evaluate-comp715-off-comp587
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (not (running comp587))
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (one-off comp715)
  )
)
(:action evaluate-comp715-off-comp714
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (not (running comp714))
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (one-off comp715)
  )
)
(:action evaluate-comp715-off-comp1470
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (not (running comp1470))
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (one-off comp715)
  )
)
(:action evaluate-comp715-off-comp1818
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (not (running comp1818))
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (one-off comp715)
  )
)
(:action evaluate-comp716-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (rebooted comp716)
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
  )
)
(:action evaluate-comp716-all-on
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (running comp715)
    (running comp1770)
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (all-on comp716)
  )
)
(:action evaluate-comp716-off-comp715
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (not (running comp715))
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (one-off comp716)
  )
)
(:action evaluate-comp716-off-comp1770
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (not (running comp1770))
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (one-off comp716)
  )
)
(:action evaluate-comp717-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp717)
    (rebooted comp717)
  )
  :effect (and
    (not (evaluate comp717))
    (evaluate comp718)
  )
)
(:action evaluate-comp717-all-on
  :parameters ()
  :precondition (and
    (evaluate comp717)
    (not (rebooted comp717))
    (running comp716)
  )
  :effect (and
    (not (evaluate comp717))
    (evaluate comp718)
    (all-on comp717)
  )
)
(:action evaluate-comp717-off-comp716
  :parameters ()
  :precondition (and
    (evaluate comp717)
    (not (rebooted comp717))
    (not (running comp716))
  )
  :effect (and
    (not (evaluate comp717))
    (evaluate comp718)
    (one-off comp717)
  )
)
(:action evaluate-comp718-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp718)
    (rebooted comp718)
  )
  :effect (and
    (not (evaluate comp718))
    (evaluate comp719)
  )
)
(:action evaluate-comp718-all-on
  :parameters ()
  :precondition (and
    (evaluate comp718)
    (not (rebooted comp718))
    (running comp717)
  )
  :effect (and
    (not (evaluate comp718))
    (evaluate comp719)
    (all-on comp718)
  )
)
(:action evaluate-comp718-off-comp717
  :parameters ()
  :precondition (and
    (evaluate comp718)
    (not (rebooted comp718))
    (not (running comp717))
  )
  :effect (and
    (not (evaluate comp718))
    (evaluate comp719)
    (one-off comp718)
  )
)
(:action evaluate-comp719-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (rebooted comp719)
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
  )
)
(:action evaluate-comp719-all-on
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (not (rebooted comp719))
    (running comp718)
    (running comp1815)
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
    (all-on comp719)
  )
)
(:action evaluate-comp719-off-comp718
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (not (rebooted comp719))
    (not (running comp718))
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
    (one-off comp719)
  )
)
(:action evaluate-comp719-off-comp1815
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (not (rebooted comp719))
    (not (running comp1815))
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
    (one-off comp719)
  )
)
(:action evaluate-comp720-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (rebooted comp720)
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
  )
)
(:action evaluate-comp720-all-on
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (not (rebooted comp720))
    (running comp719)
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
    (all-on comp720)
  )
)
(:action evaluate-comp720-off-comp719
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (not (rebooted comp720))
    (not (running comp719))
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
    (one-off comp720)
  )
)
(:action evaluate-comp721-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (rebooted comp721)
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
  )
)
(:action evaluate-comp721-all-on
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (not (rebooted comp721))
    (running comp720)
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
    (all-on comp721)
  )
)
(:action evaluate-comp721-off-comp720
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (not (rebooted comp721))
    (not (running comp720))
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
    (one-off comp721)
  )
)
(:action evaluate-comp722-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp722)
    (rebooted comp722)
  )
  :effect (and
    (not (evaluate comp722))
    (evaluate comp723)
  )
)
(:action evaluate-comp722-all-on
  :parameters ()
  :precondition (and
    (evaluate comp722)
    (not (rebooted comp722))
    (running comp721)
  )
  :effect (and
    (not (evaluate comp722))
    (evaluate comp723)
    (all-on comp722)
  )
)
(:action evaluate-comp722-off-comp721
  :parameters ()
  :precondition (and
    (evaluate comp722)
    (not (rebooted comp722))
    (not (running comp721))
  )
  :effect (and
    (not (evaluate comp722))
    (evaluate comp723)
    (one-off comp722)
  )
)
(:action evaluate-comp723-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp723)
    (rebooted comp723)
  )
  :effect (and
    (not (evaluate comp723))
    (evaluate comp724)
  )
)
(:action evaluate-comp723-all-on
  :parameters ()
  :precondition (and
    (evaluate comp723)
    (not (rebooted comp723))
    (running comp722)
  )
  :effect (and
    (not (evaluate comp723))
    (evaluate comp724)
    (all-on comp723)
  )
)
(:action evaluate-comp723-off-comp722
  :parameters ()
  :precondition (and
    (evaluate comp723)
    (not (rebooted comp723))
    (not (running comp722))
  )
  :effect (and
    (not (evaluate comp723))
    (evaluate comp724)
    (one-off comp723)
  )
)
(:action evaluate-comp724-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp724)
    (rebooted comp724)
  )
  :effect (and
    (not (evaluate comp724))
    (evaluate comp725)
  )
)
(:action evaluate-comp724-all-on
  :parameters ()
  :precondition (and
    (evaluate comp724)
    (not (rebooted comp724))
    (running comp723)
  )
  :effect (and
    (not (evaluate comp724))
    (evaluate comp725)
    (all-on comp724)
  )
)
(:action evaluate-comp724-off-comp723
  :parameters ()
  :precondition (and
    (evaluate comp724)
    (not (rebooted comp724))
    (not (running comp723))
  )
  :effect (and
    (not (evaluate comp724))
    (evaluate comp725)
    (one-off comp724)
  )
)
(:action evaluate-comp725-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (rebooted comp725)
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
  )
)
(:action evaluate-comp725-all-on
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (not (rebooted comp725))
    (running comp724)
    (running comp1131)
    (running comp1623)
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
    (all-on comp725)
  )
)
(:action evaluate-comp725-off-comp724
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (not (rebooted comp725))
    (not (running comp724))
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
    (one-off comp725)
  )
)
(:action evaluate-comp725-off-comp1131
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (not (rebooted comp725))
    (not (running comp1131))
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
    (one-off comp725)
  )
)
(:action evaluate-comp725-off-comp1623
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (not (rebooted comp725))
    (not (running comp1623))
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
    (one-off comp725)
  )
)
(:action evaluate-comp726-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (rebooted comp726)
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
  )
)
(:action evaluate-comp726-all-on
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (running comp691)
    (running comp725)
    (running comp1509)
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (all-on comp726)
  )
)
(:action evaluate-comp726-off-comp691
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (not (running comp691))
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (one-off comp726)
  )
)
(:action evaluate-comp726-off-comp725
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (not (running comp725))
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (one-off comp726)
  )
)
(:action evaluate-comp726-off-comp1509
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (not (running comp1509))
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (one-off comp726)
  )
)
(:action evaluate-comp727-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp727)
    (rebooted comp727)
  )
  :effect (and
    (not (evaluate comp727))
    (evaluate comp728)
  )
)
(:action evaluate-comp727-all-on
  :parameters ()
  :precondition (and
    (evaluate comp727)
    (not (rebooted comp727))
    (running comp726)
  )
  :effect (and
    (not (evaluate comp727))
    (evaluate comp728)
    (all-on comp727)
  )
)
(:action evaluate-comp727-off-comp726
  :parameters ()
  :precondition (and
    (evaluate comp727)
    (not (rebooted comp727))
    (not (running comp726))
  )
  :effect (and
    (not (evaluate comp727))
    (evaluate comp728)
    (one-off comp727)
  )
)
(:action evaluate-comp728-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (rebooted comp728)
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
  )
)
(:action evaluate-comp728-all-on
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (not (rebooted comp728))
    (running comp727)
    (running comp1658)
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
    (all-on comp728)
  )
)
(:action evaluate-comp728-off-comp727
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (not (rebooted comp728))
    (not (running comp727))
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
    (one-off comp728)
  )
)
(:action evaluate-comp728-off-comp1658
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (not (rebooted comp728))
    (not (running comp1658))
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
    (one-off comp728)
  )
)
(:action evaluate-comp729-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp729)
    (rebooted comp729)
  )
  :effect (and
    (not (evaluate comp729))
    (evaluate comp730)
  )
)
(:action evaluate-comp729-all-on
  :parameters ()
  :precondition (and
    (evaluate comp729)
    (not (rebooted comp729))
    (running comp728)
  )
  :effect (and
    (not (evaluate comp729))
    (evaluate comp730)
    (all-on comp729)
  )
)
(:action evaluate-comp729-off-comp728
  :parameters ()
  :precondition (and
    (evaluate comp729)
    (not (rebooted comp729))
    (not (running comp728))
  )
  :effect (and
    (not (evaluate comp729))
    (evaluate comp730)
    (one-off comp729)
  )
)
(:action evaluate-comp730-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (rebooted comp730)
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
  )
)
(:action evaluate-comp730-all-on
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (running comp729)
    (running comp1865)
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (all-on comp730)
  )
)
(:action evaluate-comp730-off-comp729
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (not (running comp729))
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (one-off comp730)
  )
)
(:action evaluate-comp730-off-comp1865
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (not (running comp1865))
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (one-off comp730)
  )
)
(:action evaluate-comp731-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (rebooted comp731)
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
  )
)
(:action evaluate-comp731-all-on
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (running comp717)
    (running comp730)
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (all-on comp731)
  )
)
(:action evaluate-comp731-off-comp717
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (not (running comp717))
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (one-off comp731)
  )
)
(:action evaluate-comp731-off-comp730
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (not (running comp730))
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (one-off comp731)
  )
)
(:action evaluate-comp732-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp732)
    (rebooted comp732)
  )
  :effect (and
    (not (evaluate comp732))
    (evaluate comp733)
  )
)
(:action evaluate-comp732-all-on
  :parameters ()
  :precondition (and
    (evaluate comp732)
    (not (rebooted comp732))
    (running comp731)
  )
  :effect (and
    (not (evaluate comp732))
    (evaluate comp733)
    (all-on comp732)
  )
)
(:action evaluate-comp732-off-comp731
  :parameters ()
  :precondition (and
    (evaluate comp732)
    (not (rebooted comp732))
    (not (running comp731))
  )
  :effect (and
    (not (evaluate comp732))
    (evaluate comp733)
    (one-off comp732)
  )
)
(:action evaluate-comp733-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp733)
    (rebooted comp733)
  )
  :effect (and
    (not (evaluate comp733))
    (evaluate comp734)
  )
)
(:action evaluate-comp733-all-on
  :parameters ()
  :precondition (and
    (evaluate comp733)
    (not (rebooted comp733))
    (running comp732)
  )
  :effect (and
    (not (evaluate comp733))
    (evaluate comp734)
    (all-on comp733)
  )
)
(:action evaluate-comp733-off-comp732
  :parameters ()
  :precondition (and
    (evaluate comp733)
    (not (rebooted comp733))
    (not (running comp732))
  )
  :effect (and
    (not (evaluate comp733))
    (evaluate comp734)
    (one-off comp733)
  )
)
(:action evaluate-comp734-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp734)
    (rebooted comp734)
  )
  :effect (and
    (not (evaluate comp734))
    (evaluate comp735)
  )
)
(:action evaluate-comp734-all-on
  :parameters ()
  :precondition (and
    (evaluate comp734)
    (not (rebooted comp734))
    (running comp733)
  )
  :effect (and
    (not (evaluate comp734))
    (evaluate comp735)
    (all-on comp734)
  )
)
(:action evaluate-comp734-off-comp733
  :parameters ()
  :precondition (and
    (evaluate comp734)
    (not (rebooted comp734))
    (not (running comp733))
  )
  :effect (and
    (not (evaluate comp734))
    (evaluate comp735)
    (one-off comp734)
  )
)
(:action evaluate-comp735-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp735)
    (rebooted comp735)
  )
  :effect (and
    (not (evaluate comp735))
    (evaluate comp736)
  )
)
(:action evaluate-comp735-all-on
  :parameters ()
  :precondition (and
    (evaluate comp735)
    (not (rebooted comp735))
    (running comp734)
  )
  :effect (and
    (not (evaluate comp735))
    (evaluate comp736)
    (all-on comp735)
  )
)
(:action evaluate-comp735-off-comp734
  :parameters ()
  :precondition (and
    (evaluate comp735)
    (not (rebooted comp735))
    (not (running comp734))
  )
  :effect (and
    (not (evaluate comp735))
    (evaluate comp736)
    (one-off comp735)
  )
)
(:action evaluate-comp736-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (rebooted comp736)
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
  )
)
(:action evaluate-comp736-all-on
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (not (rebooted comp736))
    (running comp735)
    (running comp1593)
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
    (all-on comp736)
  )
)
(:action evaluate-comp736-off-comp735
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (not (rebooted comp736))
    (not (running comp735))
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
    (one-off comp736)
  )
)
(:action evaluate-comp736-off-comp1593
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (not (rebooted comp736))
    (not (running comp1593))
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
    (one-off comp736)
  )
)
(:action evaluate-comp737-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp737)
    (rebooted comp737)
  )
  :effect (and
    (not (evaluate comp737))
    (evaluate comp738)
  )
)
(:action evaluate-comp737-all-on
  :parameters ()
  :precondition (and
    (evaluate comp737)
    (not (rebooted comp737))
    (running comp736)
  )
  :effect (and
    (not (evaluate comp737))
    (evaluate comp738)
    (all-on comp737)
  )
)
(:action evaluate-comp737-off-comp736
  :parameters ()
  :precondition (and
    (evaluate comp737)
    (not (rebooted comp737))
    (not (running comp736))
  )
  :effect (and
    (not (evaluate comp737))
    (evaluate comp738)
    (one-off comp737)
  )
)
(:action evaluate-comp738-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp738)
    (rebooted comp738)
  )
  :effect (and
    (not (evaluate comp738))
    (evaluate comp739)
  )
)
(:action evaluate-comp738-all-on
  :parameters ()
  :precondition (and
    (evaluate comp738)
    (not (rebooted comp738))
    (running comp737)
  )
  :effect (and
    (not (evaluate comp738))
    (evaluate comp739)
    (all-on comp738)
  )
)
(:action evaluate-comp738-off-comp737
  :parameters ()
  :precondition (and
    (evaluate comp738)
    (not (rebooted comp738))
    (not (running comp737))
  )
  :effect (and
    (not (evaluate comp738))
    (evaluate comp739)
    (one-off comp738)
  )
)
(:action evaluate-comp739-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp739)
    (rebooted comp739)
  )
  :effect (and
    (not (evaluate comp739))
    (evaluate comp740)
  )
)
(:action evaluate-comp739-all-on
  :parameters ()
  :precondition (and
    (evaluate comp739)
    (not (rebooted comp739))
    (running comp738)
  )
  :effect (and
    (not (evaluate comp739))
    (evaluate comp740)
    (all-on comp739)
  )
)
(:action evaluate-comp739-off-comp738
  :parameters ()
  :precondition (and
    (evaluate comp739)
    (not (rebooted comp739))
    (not (running comp738))
  )
  :effect (and
    (not (evaluate comp739))
    (evaluate comp740)
    (one-off comp739)
  )
)
(:action evaluate-comp740-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp740)
    (rebooted comp740)
  )
  :effect (and
    (not (evaluate comp740))
    (evaluate comp741)
  )
)
(:action evaluate-comp740-all-on
  :parameters ()
  :precondition (and
    (evaluate comp740)
    (not (rebooted comp740))
    (running comp739)
  )
  :effect (and
    (not (evaluate comp740))
    (evaluate comp741)
    (all-on comp740)
  )
)
(:action evaluate-comp740-off-comp739
  :parameters ()
  :precondition (and
    (evaluate comp740)
    (not (rebooted comp740))
    (not (running comp739))
  )
  :effect (and
    (not (evaluate comp740))
    (evaluate comp741)
    (one-off comp740)
  )
)
(:action evaluate-comp741-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp741)
    (rebooted comp741)
  )
  :effect (and
    (not (evaluate comp741))
    (evaluate comp742)
  )
)
(:action evaluate-comp741-all-on
  :parameters ()
  :precondition (and
    (evaluate comp741)
    (not (rebooted comp741))
    (running comp740)
  )
  :effect (and
    (not (evaluate comp741))
    (evaluate comp742)
    (all-on comp741)
  )
)
(:action evaluate-comp741-off-comp740
  :parameters ()
  :precondition (and
    (evaluate comp741)
    (not (rebooted comp741))
    (not (running comp740))
  )
  :effect (and
    (not (evaluate comp741))
    (evaluate comp742)
    (one-off comp741)
  )
)
(:action evaluate-comp742-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (rebooted comp742)
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
  )
)
(:action evaluate-comp742-all-on
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (not (rebooted comp742))
    (running comp576)
    (running comp741)
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
    (all-on comp742)
  )
)
(:action evaluate-comp742-off-comp576
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (not (rebooted comp742))
    (not (running comp576))
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
    (one-off comp742)
  )
)
(:action evaluate-comp742-off-comp741
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (not (rebooted comp742))
    (not (running comp741))
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
    (one-off comp742)
  )
)
(:action evaluate-comp743-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp743)
    (rebooted comp743)
  )
  :effect (and
    (not (evaluate comp743))
    (evaluate comp744)
  )
)
(:action evaluate-comp743-all-on
  :parameters ()
  :precondition (and
    (evaluate comp743)
    (not (rebooted comp743))
    (running comp742)
  )
  :effect (and
    (not (evaluate comp743))
    (evaluate comp744)
    (all-on comp743)
  )
)
(:action evaluate-comp743-off-comp742
  :parameters ()
  :precondition (and
    (evaluate comp743)
    (not (rebooted comp743))
    (not (running comp742))
  )
  :effect (and
    (not (evaluate comp743))
    (evaluate comp744)
    (one-off comp743)
  )
)
(:action evaluate-comp744-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp744)
    (rebooted comp744)
  )
  :effect (and
    (not (evaluate comp744))
    (evaluate comp745)
  )
)
(:action evaluate-comp744-all-on
  :parameters ()
  :precondition (and
    (evaluate comp744)
    (not (rebooted comp744))
    (running comp743)
  )
  :effect (and
    (not (evaluate comp744))
    (evaluate comp745)
    (all-on comp744)
  )
)
(:action evaluate-comp744-off-comp743
  :parameters ()
  :precondition (and
    (evaluate comp744)
    (not (rebooted comp744))
    (not (running comp743))
  )
  :effect (and
    (not (evaluate comp744))
    (evaluate comp745)
    (one-off comp744)
  )
)
(:action evaluate-comp745-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (rebooted comp745)
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
  )
)
(:action evaluate-comp745-all-on
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (not (rebooted comp745))
    (running comp744)
    (running comp971)
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
    (all-on comp745)
  )
)
(:action evaluate-comp745-off-comp744
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (not (rebooted comp745))
    (not (running comp744))
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
    (one-off comp745)
  )
)
(:action evaluate-comp745-off-comp971
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (not (rebooted comp745))
    (not (running comp971))
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
    (one-off comp745)
  )
)
(:action evaluate-comp746-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (rebooted comp746)
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
  )
)
(:action evaluate-comp746-all-on
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (not (rebooted comp746))
    (running comp600)
    (running comp745)
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
    (all-on comp746)
  )
)
(:action evaluate-comp746-off-comp600
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (not (rebooted comp746))
    (not (running comp600))
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
    (one-off comp746)
  )
)
(:action evaluate-comp746-off-comp745
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (not (rebooted comp746))
    (not (running comp745))
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
    (one-off comp746)
  )
)
(:action evaluate-comp747-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (rebooted comp747)
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
  )
)
(:action evaluate-comp747-all-on
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (not (rebooted comp747))
    (running comp746)
    (running comp1223)
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
    (all-on comp747)
  )
)
(:action evaluate-comp747-off-comp746
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (not (rebooted comp747))
    (not (running comp746))
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
    (one-off comp747)
  )
)
(:action evaluate-comp747-off-comp1223
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (not (rebooted comp747))
    (not (running comp1223))
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
    (one-off comp747)
  )
)
(:action evaluate-comp748-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (rebooted comp748)
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
  )
)
(:action evaluate-comp748-all-on
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (not (rebooted comp748))
    (running comp497)
    (running comp747)
    (running comp1436)
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
    (all-on comp748)
  )
)
(:action evaluate-comp748-off-comp497
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (not (rebooted comp748))
    (not (running comp497))
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
    (one-off comp748)
  )
)
(:action evaluate-comp748-off-comp747
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (not (rebooted comp748))
    (not (running comp747))
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
    (one-off comp748)
  )
)
(:action evaluate-comp748-off-comp1436
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (not (rebooted comp748))
    (not (running comp1436))
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
    (one-off comp748)
  )
)
(:action evaluate-comp749-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (rebooted comp749)
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
  )
)
(:action evaluate-comp749-all-on
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (running comp603)
    (running comp748)
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (all-on comp749)
  )
)
(:action evaluate-comp749-off-comp603
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (not (running comp603))
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (one-off comp749)
  )
)
(:action evaluate-comp749-off-comp748
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (not (running comp748))
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (one-off comp749)
  )
)
(:action evaluate-comp750-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (rebooted comp750)
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
  )
)
(:action evaluate-comp750-all-on
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (running comp39)
    (running comp559)
    (running comp707)
    (running comp749)
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (all-on comp750)
  )
)
(:action evaluate-comp750-off-comp39
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (not (running comp39))
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (one-off comp750)
  )
)
(:action evaluate-comp750-off-comp559
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (not (running comp559))
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (one-off comp750)
  )
)
(:action evaluate-comp750-off-comp707
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (not (running comp707))
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (one-off comp750)
  )
)
(:action evaluate-comp750-off-comp749
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (not (running comp749))
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (one-off comp750)
  )
)
(:action evaluate-comp751-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (rebooted comp751)
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
  )
)
(:action evaluate-comp751-all-on
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (not (rebooted comp751))
    (running comp750)
    (running comp895)
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
    (all-on comp751)
  )
)
(:action evaluate-comp751-off-comp750
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (not (rebooted comp751))
    (not (running comp750))
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
    (one-off comp751)
  )
)
(:action evaluate-comp751-off-comp895
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (not (rebooted comp751))
    (not (running comp895))
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
    (one-off comp751)
  )
)
(:action evaluate-comp752-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (rebooted comp752)
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
  )
)
(:action evaluate-comp752-all-on
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (not (rebooted comp752))
    (running comp751)
    (running comp1024)
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
    (all-on comp752)
  )
)
(:action evaluate-comp752-off-comp751
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (not (rebooted comp752))
    (not (running comp751))
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
    (one-off comp752)
  )
)
(:action evaluate-comp752-off-comp1024
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (not (rebooted comp752))
    (not (running comp1024))
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
    (one-off comp752)
  )
)
(:action evaluate-comp753-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (rebooted comp753)
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
  )
)
(:action evaluate-comp753-all-on
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (not (rebooted comp753))
    (running comp752)
    (running comp1265)
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
    (all-on comp753)
  )
)
(:action evaluate-comp753-off-comp752
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (not (rebooted comp753))
    (not (running comp752))
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
    (one-off comp753)
  )
)
(:action evaluate-comp753-off-comp1265
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (not (rebooted comp753))
    (not (running comp1265))
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
    (one-off comp753)
  )
)
(:action evaluate-comp754-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (rebooted comp754)
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
  )
)
(:action evaluate-comp754-all-on
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (not (rebooted comp754))
    (running comp753)
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
    (all-on comp754)
  )
)
(:action evaluate-comp754-off-comp753
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (not (rebooted comp754))
    (not (running comp753))
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
    (one-off comp754)
  )
)
(:action evaluate-comp755-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp755)
    (rebooted comp755)
  )
  :effect (and
    (not (evaluate comp755))
    (evaluate comp756)
  )
)
(:action evaluate-comp755-all-on
  :parameters ()
  :precondition (and
    (evaluate comp755)
    (not (rebooted comp755))
    (running comp754)
  )
  :effect (and
    (not (evaluate comp755))
    (evaluate comp756)
    (all-on comp755)
  )
)
(:action evaluate-comp755-off-comp754
  :parameters ()
  :precondition (and
    (evaluate comp755)
    (not (rebooted comp755))
    (not (running comp754))
  )
  :effect (and
    (not (evaluate comp755))
    (evaluate comp756)
    (one-off comp755)
  )
)
(:action evaluate-comp756-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (rebooted comp756)
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
  )
)
(:action evaluate-comp756-all-on
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (not (rebooted comp756))
    (running comp532)
    (running comp755)
    (running comp1227)
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
    (all-on comp756)
  )
)
(:action evaluate-comp756-off-comp532
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (not (rebooted comp756))
    (not (running comp532))
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
    (one-off comp756)
  )
)
(:action evaluate-comp756-off-comp755
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (not (rebooted comp756))
    (not (running comp755))
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
    (one-off comp756)
  )
)
(:action evaluate-comp756-off-comp1227
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (not (rebooted comp756))
    (not (running comp1227))
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
    (one-off comp756)
  )
)
(:action evaluate-comp757-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp757)
    (rebooted comp757)
  )
  :effect (and
    (not (evaluate comp757))
    (evaluate comp758)
  )
)
(:action evaluate-comp757-all-on
  :parameters ()
  :precondition (and
    (evaluate comp757)
    (not (rebooted comp757))
    (running comp756)
  )
  :effect (and
    (not (evaluate comp757))
    (evaluate comp758)
    (all-on comp757)
  )
)
(:action evaluate-comp757-off-comp756
  :parameters ()
  :precondition (and
    (evaluate comp757)
    (not (rebooted comp757))
    (not (running comp756))
  )
  :effect (and
    (not (evaluate comp757))
    (evaluate comp758)
    (one-off comp757)
  )
)
(:action evaluate-comp758-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (rebooted comp758)
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
  )
)
(:action evaluate-comp758-all-on
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (not (rebooted comp758))
    (running comp757)
    (running comp892)
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
    (all-on comp758)
  )
)
(:action evaluate-comp758-off-comp757
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (not (rebooted comp758))
    (not (running comp757))
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
    (one-off comp758)
  )
)
(:action evaluate-comp758-off-comp892
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (not (rebooted comp758))
    (not (running comp892))
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
    (one-off comp758)
  )
)
(:action evaluate-comp759-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (rebooted comp759)
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
  )
)
(:action evaluate-comp759-all-on
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (not (rebooted comp759))
    (running comp691)
    (running comp758)
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
    (all-on comp759)
  )
)
(:action evaluate-comp759-off-comp691
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (not (rebooted comp759))
    (not (running comp691))
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
    (one-off comp759)
  )
)
(:action evaluate-comp759-off-comp758
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (not (rebooted comp759))
    (not (running comp758))
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
    (one-off comp759)
  )
)
(:action evaluate-comp760-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (rebooted comp760)
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
  )
)
(:action evaluate-comp760-all-on
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (not (rebooted comp760))
    (running comp759)
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
    (all-on comp760)
  )
)
(:action evaluate-comp760-off-comp759
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (not (rebooted comp760))
    (not (running comp759))
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
    (one-off comp760)
  )
)
(:action evaluate-comp761-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (rebooted comp761)
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
  )
)
(:action evaluate-comp761-all-on
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (not (rebooted comp761))
    (running comp760)
    (running comp1528)
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
    (all-on comp761)
  )
)
(:action evaluate-comp761-off-comp760
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (not (rebooted comp761))
    (not (running comp760))
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
    (one-off comp761)
  )
)
(:action evaluate-comp761-off-comp1528
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (not (rebooted comp761))
    (not (running comp1528))
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
    (one-off comp761)
  )
)
(:action evaluate-comp762-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (rebooted comp762)
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
  )
)
(:action evaluate-comp762-all-on
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (not (rebooted comp762))
    (running comp761)
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
    (all-on comp762)
  )
)
(:action evaluate-comp762-off-comp761
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (not (rebooted comp762))
    (not (running comp761))
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
    (one-off comp762)
  )
)
(:action evaluate-comp763-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (rebooted comp763)
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
  )
)
(:action evaluate-comp763-all-on
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (running comp96)
    (running comp752)
    (running comp762)
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (all-on comp763)
  )
)
(:action evaluate-comp763-off-comp96
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (not (running comp96))
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (one-off comp763)
  )
)
(:action evaluate-comp763-off-comp752
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (not (running comp752))
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (one-off comp763)
  )
)
(:action evaluate-comp763-off-comp762
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (not (running comp762))
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (one-off comp763)
  )
)
(:action evaluate-comp764-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (rebooted comp764)
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
  )
)
(:action evaluate-comp764-all-on
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (not (rebooted comp764))
    (running comp763)
    (running comp1061)
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
    (all-on comp764)
  )
)
(:action evaluate-comp764-off-comp763
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (not (rebooted comp764))
    (not (running comp763))
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
    (one-off comp764)
  )
)
(:action evaluate-comp764-off-comp1061
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (not (rebooted comp764))
    (not (running comp1061))
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
    (one-off comp764)
  )
)
(:action evaluate-comp765-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (rebooted comp765)
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
  )
)
(:action evaluate-comp765-all-on
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (not (rebooted comp765))
    (running comp764)
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
    (all-on comp765)
  )
)
(:action evaluate-comp765-off-comp764
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (not (rebooted comp765))
    (not (running comp764))
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
    (one-off comp765)
  )
)
(:action evaluate-comp766-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp766)
    (rebooted comp766)
  )
  :effect (and
    (not (evaluate comp766))
    (evaluate comp767)
  )
)
(:action evaluate-comp766-all-on
  :parameters ()
  :precondition (and
    (evaluate comp766)
    (not (rebooted comp766))
    (running comp765)
  )
  :effect (and
    (not (evaluate comp766))
    (evaluate comp767)
    (all-on comp766)
  )
)
(:action evaluate-comp766-off-comp765
  :parameters ()
  :precondition (and
    (evaluate comp766)
    (not (rebooted comp766))
    (not (running comp765))
  )
  :effect (and
    (not (evaluate comp766))
    (evaluate comp767)
    (one-off comp766)
  )
)
(:action evaluate-comp767-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (rebooted comp767)
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
  )
)
(:action evaluate-comp767-all-on
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (not (rebooted comp767))
    (running comp766)
    (running comp1262)
    (running comp1415)
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
    (all-on comp767)
  )
)
(:action evaluate-comp767-off-comp766
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (not (rebooted comp767))
    (not (running comp766))
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
    (one-off comp767)
  )
)
(:action evaluate-comp767-off-comp1262
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (not (rebooted comp767))
    (not (running comp1262))
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
    (one-off comp767)
  )
)
(:action evaluate-comp767-off-comp1415
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (not (rebooted comp767))
    (not (running comp1415))
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
    (one-off comp767)
  )
)
(:action evaluate-comp768-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp768)
    (rebooted comp768)
  )
  :effect (and
    (not (evaluate comp768))
    (evaluate comp769)
  )
)
(:action evaluate-comp768-all-on
  :parameters ()
  :precondition (and
    (evaluate comp768)
    (not (rebooted comp768))
    (running comp767)
  )
  :effect (and
    (not (evaluate comp768))
    (evaluate comp769)
    (all-on comp768)
  )
)
(:action evaluate-comp768-off-comp767
  :parameters ()
  :precondition (and
    (evaluate comp768)
    (not (rebooted comp768))
    (not (running comp767))
  )
  :effect (and
    (not (evaluate comp768))
    (evaluate comp769)
    (one-off comp768)
  )
)
(:action evaluate-comp769-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (rebooted comp769)
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
  )
)
(:action evaluate-comp769-all-on
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (not (rebooted comp769))
    (running comp265)
    (running comp768)
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
    (all-on comp769)
  )
)
(:action evaluate-comp769-off-comp265
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (not (rebooted comp769))
    (not (running comp265))
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
    (one-off comp769)
  )
)
(:action evaluate-comp769-off-comp768
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (not (rebooted comp769))
    (not (running comp768))
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
    (one-off comp769)
  )
)
(:action evaluate-comp770-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (rebooted comp770)
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
  )
)
(:action evaluate-comp770-all-on
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (not (rebooted comp770))
    (running comp769)
    (running comp1019)
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
    (all-on comp770)
  )
)
(:action evaluate-comp770-off-comp769
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (not (rebooted comp770))
    (not (running comp769))
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
    (one-off comp770)
  )
)
(:action evaluate-comp770-off-comp1019
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (not (rebooted comp770))
    (not (running comp1019))
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
    (one-off comp770)
  )
)
(:action evaluate-comp771-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp771)
    (rebooted comp771)
  )
  :effect (and
    (not (evaluate comp771))
    (evaluate comp772)
  )
)
(:action evaluate-comp771-all-on
  :parameters ()
  :precondition (and
    (evaluate comp771)
    (not (rebooted comp771))
    (running comp770)
  )
  :effect (and
    (not (evaluate comp771))
    (evaluate comp772)
    (all-on comp771)
  )
)
(:action evaluate-comp771-off-comp770
  :parameters ()
  :precondition (and
    (evaluate comp771)
    (not (rebooted comp771))
    (not (running comp770))
  )
  :effect (and
    (not (evaluate comp771))
    (evaluate comp772)
    (one-off comp771)
  )
)
(:action evaluate-comp772-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp772)
    (rebooted comp772)
  )
  :effect (and
    (not (evaluate comp772))
    (evaluate comp773)
  )
)
(:action evaluate-comp772-all-on
  :parameters ()
  :precondition (and
    (evaluate comp772)
    (not (rebooted comp772))
    (running comp771)
  )
  :effect (and
    (not (evaluate comp772))
    (evaluate comp773)
    (all-on comp772)
  )
)
(:action evaluate-comp772-off-comp771
  :parameters ()
  :precondition (and
    (evaluate comp772)
    (not (rebooted comp772))
    (not (running comp771))
  )
  :effect (and
    (not (evaluate comp772))
    (evaluate comp773)
    (one-off comp772)
  )
)
(:action evaluate-comp773-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp773)
    (rebooted comp773)
  )
  :effect (and
    (not (evaluate comp773))
    (evaluate comp774)
  )
)
(:action evaluate-comp773-all-on
  :parameters ()
  :precondition (and
    (evaluate comp773)
    (not (rebooted comp773))
    (running comp772)
  )
  :effect (and
    (not (evaluate comp773))
    (evaluate comp774)
    (all-on comp773)
  )
)
(:action evaluate-comp773-off-comp772
  :parameters ()
  :precondition (and
    (evaluate comp773)
    (not (rebooted comp773))
    (not (running comp772))
  )
  :effect (and
    (not (evaluate comp773))
    (evaluate comp774)
    (one-off comp773)
  )
)
(:action evaluate-comp774-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (rebooted comp774)
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
  )
)
(:action evaluate-comp774-all-on
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (not (rebooted comp774))
    (running comp773)
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
    (all-on comp774)
  )
)
(:action evaluate-comp774-off-comp773
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (not (rebooted comp774))
    (not (running comp773))
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
    (one-off comp774)
  )
)
(:action evaluate-comp775-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp775)
    (rebooted comp775)
  )
  :effect (and
    (not (evaluate comp775))
    (evaluate comp776)
  )
)
(:action evaluate-comp775-all-on
  :parameters ()
  :precondition (and
    (evaluate comp775)
    (not (rebooted comp775))
    (running comp774)
  )
  :effect (and
    (not (evaluate comp775))
    (evaluate comp776)
    (all-on comp775)
  )
)
(:action evaluate-comp775-off-comp774
  :parameters ()
  :precondition (and
    (evaluate comp775)
    (not (rebooted comp775))
    (not (running comp774))
  )
  :effect (and
    (not (evaluate comp775))
    (evaluate comp776)
    (one-off comp775)
  )
)
(:action evaluate-comp776-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (rebooted comp776)
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
  )
)
(:action evaluate-comp776-all-on
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (not (rebooted comp776))
    (running comp775)
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
    (all-on comp776)
  )
)
(:action evaluate-comp776-off-comp775
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (not (rebooted comp776))
    (not (running comp775))
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
    (one-off comp776)
  )
)
(:action evaluate-comp777-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (rebooted comp777)
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
  )
)
(:action evaluate-comp777-all-on
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (not (rebooted comp777))
    (running comp776)
    (running comp1154)
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
    (all-on comp777)
  )
)
(:action evaluate-comp777-off-comp776
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (not (rebooted comp777))
    (not (running comp776))
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
    (one-off comp777)
  )
)
(:action evaluate-comp777-off-comp1154
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (not (rebooted comp777))
    (not (running comp1154))
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
    (one-off comp777)
  )
)
(:action evaluate-comp778-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (rebooted comp778)
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
  )
)
(:action evaluate-comp778-all-on
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (not (rebooted comp778))
    (running comp777)
    (running comp1631)
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
    (all-on comp778)
  )
)
(:action evaluate-comp778-off-comp777
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (not (rebooted comp778))
    (not (running comp777))
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
    (one-off comp778)
  )
)
(:action evaluate-comp778-off-comp1631
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (not (rebooted comp778))
    (not (running comp1631))
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
    (one-off comp778)
  )
)
(:action evaluate-comp779-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (rebooted comp779)
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
  )
)
(:action evaluate-comp779-all-on
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (not (rebooted comp779))
    (running comp489)
    (running comp778)
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
    (all-on comp779)
  )
)
(:action evaluate-comp779-off-comp489
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (not (rebooted comp779))
    (not (running comp489))
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
    (one-off comp779)
  )
)
(:action evaluate-comp779-off-comp778
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (not (rebooted comp779))
    (not (running comp778))
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
    (one-off comp779)
  )
)
(:action evaluate-comp780-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (rebooted comp780)
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
  )
)
(:action evaluate-comp780-all-on
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (not (rebooted comp780))
    (running comp779)
    (running comp1702)
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
    (all-on comp780)
  )
)
(:action evaluate-comp780-off-comp779
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (not (rebooted comp780))
    (not (running comp779))
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
    (one-off comp780)
  )
)
(:action evaluate-comp780-off-comp1702
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (not (rebooted comp780))
    (not (running comp1702))
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
    (one-off comp780)
  )
)
(:action evaluate-comp781-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (rebooted comp781)
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
  )
)
(:action evaluate-comp781-all-on
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (not (rebooted comp781))
    (running comp780)
    (running comp1887)
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
    (all-on comp781)
  )
)
(:action evaluate-comp781-off-comp780
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (not (rebooted comp781))
    (not (running comp780))
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
    (one-off comp781)
  )
)
(:action evaluate-comp781-off-comp1887
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (not (rebooted comp781))
    (not (running comp1887))
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
    (one-off comp781)
  )
)
(:action evaluate-comp782-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (rebooted comp782)
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
  )
)
(:action evaluate-comp782-all-on
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (not (rebooted comp782))
    (running comp143)
    (running comp781)
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
    (all-on comp782)
  )
)
(:action evaluate-comp782-off-comp143
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (not (rebooted comp782))
    (not (running comp143))
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
    (one-off comp782)
  )
)
(:action evaluate-comp782-off-comp781
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (not (rebooted comp782))
    (not (running comp781))
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
    (one-off comp782)
  )
)
(:action evaluate-comp783-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (rebooted comp783)
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
  )
)
(:action evaluate-comp783-all-on
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (not (rebooted comp783))
    (running comp782)
    (running comp1220)
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
    (all-on comp783)
  )
)
(:action evaluate-comp783-off-comp782
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (not (rebooted comp783))
    (not (running comp782))
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
    (one-off comp783)
  )
)
(:action evaluate-comp783-off-comp1220
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (not (rebooted comp783))
    (not (running comp1220))
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
    (one-off comp783)
  )
)
(:action evaluate-comp784-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (rebooted comp784)
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
  )
)
(:action evaluate-comp784-all-on
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (not (rebooted comp784))
    (running comp733)
    (running comp783)
    (running comp1341)
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
    (all-on comp784)
  )
)
(:action evaluate-comp784-off-comp733
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (not (rebooted comp784))
    (not (running comp733))
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
    (one-off comp784)
  )
)
(:action evaluate-comp784-off-comp783
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (not (rebooted comp784))
    (not (running comp783))
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
    (one-off comp784)
  )
)
(:action evaluate-comp784-off-comp1341
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (not (rebooted comp784))
    (not (running comp1341))
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
    (one-off comp784)
  )
)
(:action evaluate-comp785-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (rebooted comp785)
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
  )
)
(:action evaluate-comp785-all-on
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (not (rebooted comp785))
    (running comp784)
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
    (all-on comp785)
  )
)
(:action evaluate-comp785-off-comp784
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (not (rebooted comp785))
    (not (running comp784))
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
    (one-off comp785)
  )
)
(:action evaluate-comp786-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp786)
    (rebooted comp786)
  )
  :effect (and
    (not (evaluate comp786))
    (evaluate comp787)
  )
)
(:action evaluate-comp786-all-on
  :parameters ()
  :precondition (and
    (evaluate comp786)
    (not (rebooted comp786))
    (running comp785)
  )
  :effect (and
    (not (evaluate comp786))
    (evaluate comp787)
    (all-on comp786)
  )
)
(:action evaluate-comp786-off-comp785
  :parameters ()
  :precondition (and
    (evaluate comp786)
    (not (rebooted comp786))
    (not (running comp785))
  )
  :effect (and
    (not (evaluate comp786))
    (evaluate comp787)
    (one-off comp786)
  )
)
(:action evaluate-comp787-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (rebooted comp787)
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
  )
)
(:action evaluate-comp787-all-on
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (not (rebooted comp787))
    (running comp786)
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
    (all-on comp787)
  )
)
(:action evaluate-comp787-off-comp786
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (not (rebooted comp787))
    (not (running comp786))
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
    (one-off comp787)
  )
)
(:action evaluate-comp788-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp788)
    (rebooted comp788)
  )
  :effect (and
    (not (evaluate comp788))
    (evaluate comp789)
  )
)
(:action evaluate-comp788-all-on
  :parameters ()
  :precondition (and
    (evaluate comp788)
    (not (rebooted comp788))
    (running comp787)
  )
  :effect (and
    (not (evaluate comp788))
    (evaluate comp789)
    (all-on comp788)
  )
)
(:action evaluate-comp788-off-comp787
  :parameters ()
  :precondition (and
    (evaluate comp788)
    (not (rebooted comp788))
    (not (running comp787))
  )
  :effect (and
    (not (evaluate comp788))
    (evaluate comp789)
    (one-off comp788)
  )
)
(:action evaluate-comp789-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (rebooted comp789)
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
  )
)
(:action evaluate-comp789-all-on
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (running comp788)
    (running comp971)
    (running comp1787)
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (all-on comp789)
  )
)
(:action evaluate-comp789-off-comp788
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (not (running comp788))
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (one-off comp789)
  )
)
(:action evaluate-comp789-off-comp971
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (not (running comp971))
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (one-off comp789)
  )
)
(:action evaluate-comp789-off-comp1787
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (not (running comp1787))
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (one-off comp789)
  )
)
(:action evaluate-comp790-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (rebooted comp790)
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
  )
)
(:action evaluate-comp790-all-on
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (running comp789)
    (running comp966)
    (running comp1574)
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (all-on comp790)
  )
)
(:action evaluate-comp790-off-comp789
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (not (running comp789))
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (one-off comp790)
  )
)
(:action evaluate-comp790-off-comp966
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (not (running comp966))
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (one-off comp790)
  )
)
(:action evaluate-comp790-off-comp1574
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (not (running comp1574))
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (one-off comp790)
  )
)
(:action evaluate-comp791-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (rebooted comp791)
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
  )
)
(:action evaluate-comp791-all-on
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (not (rebooted comp791))
    (running comp790)
    (running comp833)
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
    (all-on comp791)
  )
)
(:action evaluate-comp791-off-comp790
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (not (rebooted comp791))
    (not (running comp790))
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
    (one-off comp791)
  )
)
(:action evaluate-comp791-off-comp833
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (not (rebooted comp791))
    (not (running comp833))
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
    (one-off comp791)
  )
)
(:action evaluate-comp792-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp792)
    (rebooted comp792)
  )
  :effect (and
    (not (evaluate comp792))
    (evaluate comp793)
  )
)
(:action evaluate-comp792-all-on
  :parameters ()
  :precondition (and
    (evaluate comp792)
    (not (rebooted comp792))
    (running comp791)
  )
  :effect (and
    (not (evaluate comp792))
    (evaluate comp793)
    (all-on comp792)
  )
)
(:action evaluate-comp792-off-comp791
  :parameters ()
  :precondition (and
    (evaluate comp792)
    (not (rebooted comp792))
    (not (running comp791))
  )
  :effect (and
    (not (evaluate comp792))
    (evaluate comp793)
    (one-off comp792)
  )
)
(:action evaluate-comp793-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (rebooted comp793)
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
  )
)
(:action evaluate-comp793-all-on
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (not (rebooted comp793))
    (running comp792)
    (running comp1102)
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
    (all-on comp793)
  )
)
(:action evaluate-comp793-off-comp792
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (not (rebooted comp793))
    (not (running comp792))
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
    (one-off comp793)
  )
)
(:action evaluate-comp793-off-comp1102
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (not (rebooted comp793))
    (not (running comp1102))
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
    (one-off comp793)
  )
)
(:action evaluate-comp794-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp794)
    (rebooted comp794)
  )
  :effect (and
    (not (evaluate comp794))
    (evaluate comp795)
  )
)
(:action evaluate-comp794-all-on
  :parameters ()
  :precondition (and
    (evaluate comp794)
    (not (rebooted comp794))
    (running comp793)
  )
  :effect (and
    (not (evaluate comp794))
    (evaluate comp795)
    (all-on comp794)
  )
)
(:action evaluate-comp794-off-comp793
  :parameters ()
  :precondition (and
    (evaluate comp794)
    (not (rebooted comp794))
    (not (running comp793))
  )
  :effect (and
    (not (evaluate comp794))
    (evaluate comp795)
    (one-off comp794)
  )
)
(:action evaluate-comp795-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (rebooted comp795)
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
  )
)
(:action evaluate-comp795-all-on
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (not (rebooted comp795))
    (running comp276)
    (running comp794)
    (running comp921)
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
    (all-on comp795)
  )
)
(:action evaluate-comp795-off-comp276
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (not (rebooted comp795))
    (not (running comp276))
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
    (one-off comp795)
  )
)
(:action evaluate-comp795-off-comp794
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (not (rebooted comp795))
    (not (running comp794))
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
    (one-off comp795)
  )
)
(:action evaluate-comp795-off-comp921
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (not (rebooted comp795))
    (not (running comp921))
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
    (one-off comp795)
  )
)
(:action evaluate-comp796-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp796)
    (rebooted comp796)
  )
  :effect (and
    (not (evaluate comp796))
    (evaluate comp797)
  )
)
(:action evaluate-comp796-all-on
  :parameters ()
  :precondition (and
    (evaluate comp796)
    (not (rebooted comp796))
    (running comp795)
  )
  :effect (and
    (not (evaluate comp796))
    (evaluate comp797)
    (all-on comp796)
  )
)
(:action evaluate-comp796-off-comp795
  :parameters ()
  :precondition (and
    (evaluate comp796)
    (not (rebooted comp796))
    (not (running comp795))
  )
  :effect (and
    (not (evaluate comp796))
    (evaluate comp797)
    (one-off comp796)
  )
)
(:action evaluate-comp797-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp797)
    (rebooted comp797)
  )
  :effect (and
    (not (evaluate comp797))
    (evaluate comp798)
  )
)
(:action evaluate-comp797-all-on
  :parameters ()
  :precondition (and
    (evaluate comp797)
    (not (rebooted comp797))
    (running comp796)
  )
  :effect (and
    (not (evaluate comp797))
    (evaluate comp798)
    (all-on comp797)
  )
)
(:action evaluate-comp797-off-comp796
  :parameters ()
  :precondition (and
    (evaluate comp797)
    (not (rebooted comp797))
    (not (running comp796))
  )
  :effect (and
    (not (evaluate comp797))
    (evaluate comp798)
    (one-off comp797)
  )
)
(:action evaluate-comp798-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp798)
    (rebooted comp798)
  )
  :effect (and
    (not (evaluate comp798))
    (evaluate comp799)
  )
)
(:action evaluate-comp798-all-on
  :parameters ()
  :precondition (and
    (evaluate comp798)
    (not (rebooted comp798))
    (running comp797)
  )
  :effect (and
    (not (evaluate comp798))
    (evaluate comp799)
    (all-on comp798)
  )
)
(:action evaluate-comp798-off-comp797
  :parameters ()
  :precondition (and
    (evaluate comp798)
    (not (rebooted comp798))
    (not (running comp797))
  )
  :effect (and
    (not (evaluate comp798))
    (evaluate comp799)
    (one-off comp798)
  )
)
(:action evaluate-comp799-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp799)
    (rebooted comp799)
  )
  :effect (and
    (not (evaluate comp799))
    (evaluate comp800)
  )
)
(:action evaluate-comp799-all-on
  :parameters ()
  :precondition (and
    (evaluate comp799)
    (not (rebooted comp799))
    (running comp798)
  )
  :effect (and
    (not (evaluate comp799))
    (evaluate comp800)
    (all-on comp799)
  )
)
(:action evaluate-comp799-off-comp798
  :parameters ()
  :precondition (and
    (evaluate comp799)
    (not (rebooted comp799))
    (not (running comp798))
  )
  :effect (and
    (not (evaluate comp799))
    (evaluate comp800)
    (one-off comp799)
  )
)
(:action evaluate-comp800-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp800)
    (rebooted comp800)
  )
  :effect (and
    (not (evaluate comp800))
    (evaluate comp801)
  )
)
(:action evaluate-comp800-all-on
  :parameters ()
  :precondition (and
    (evaluate comp800)
    (not (rebooted comp800))
    (running comp799)
  )
  :effect (and
    (not (evaluate comp800))
    (evaluate comp801)
    (all-on comp800)
  )
)
(:action evaluate-comp800-off-comp799
  :parameters ()
  :precondition (and
    (evaluate comp800)
    (not (rebooted comp800))
    (not (running comp799))
  )
  :effect (and
    (not (evaluate comp800))
    (evaluate comp801)
    (one-off comp800)
  )
)
(:action evaluate-comp801-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp801)
    (rebooted comp801)
  )
  :effect (and
    (not (evaluate comp801))
    (evaluate comp802)
  )
)
(:action evaluate-comp801-all-on
  :parameters ()
  :precondition (and
    (evaluate comp801)
    (not (rebooted comp801))
    (running comp800)
  )
  :effect (and
    (not (evaluate comp801))
    (evaluate comp802)
    (all-on comp801)
  )
)
(:action evaluate-comp801-off-comp800
  :parameters ()
  :precondition (and
    (evaluate comp801)
    (not (rebooted comp801))
    (not (running comp800))
  )
  :effect (and
    (not (evaluate comp801))
    (evaluate comp802)
    (one-off comp801)
  )
)
(:action evaluate-comp802-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (rebooted comp802)
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
  )
)
(:action evaluate-comp802-all-on
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (not (rebooted comp802))
    (running comp801)
    (running comp1414)
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
    (all-on comp802)
  )
)
(:action evaluate-comp802-off-comp801
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (not (rebooted comp802))
    (not (running comp801))
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
    (one-off comp802)
  )
)
(:action evaluate-comp802-off-comp1414
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (not (rebooted comp802))
    (not (running comp1414))
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
    (one-off comp802)
  )
)
(:action evaluate-comp803-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp803)
    (rebooted comp803)
  )
  :effect (and
    (not (evaluate comp803))
    (evaluate comp804)
  )
)
(:action evaluate-comp803-all-on
  :parameters ()
  :precondition (and
    (evaluate comp803)
    (not (rebooted comp803))
    (running comp802)
  )
  :effect (and
    (not (evaluate comp803))
    (evaluate comp804)
    (all-on comp803)
  )
)
(:action evaluate-comp803-off-comp802
  :parameters ()
  :precondition (and
    (evaluate comp803)
    (not (rebooted comp803))
    (not (running comp802))
  )
  :effect (and
    (not (evaluate comp803))
    (evaluate comp804)
    (one-off comp803)
  )
)
(:action evaluate-comp804-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp804)
    (rebooted comp804)
  )
  :effect (and
    (not (evaluate comp804))
    (evaluate comp805)
  )
)
(:action evaluate-comp804-all-on
  :parameters ()
  :precondition (and
    (evaluate comp804)
    (not (rebooted comp804))
    (running comp803)
  )
  :effect (and
    (not (evaluate comp804))
    (evaluate comp805)
    (all-on comp804)
  )
)
(:action evaluate-comp804-off-comp803
  :parameters ()
  :precondition (and
    (evaluate comp804)
    (not (rebooted comp804))
    (not (running comp803))
  )
  :effect (and
    (not (evaluate comp804))
    (evaluate comp805)
    (one-off comp804)
  )
)
(:action evaluate-comp805-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (rebooted comp805)
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
  )
)
(:action evaluate-comp805-all-on
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (not (rebooted comp805))
    (running comp804)
    (running comp1199)
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
    (all-on comp805)
  )
)
(:action evaluate-comp805-off-comp804
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (not (rebooted comp805))
    (not (running comp804))
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
    (one-off comp805)
  )
)
(:action evaluate-comp805-off-comp1199
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (not (rebooted comp805))
    (not (running comp1199))
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
    (one-off comp805)
  )
)
(:action evaluate-comp806-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (rebooted comp806)
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
  )
)
(:action evaluate-comp806-all-on
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (not (rebooted comp806))
    (running comp805)
    (running comp1602)
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
    (all-on comp806)
  )
)
(:action evaluate-comp806-off-comp805
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (not (rebooted comp806))
    (not (running comp805))
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
    (one-off comp806)
  )
)
(:action evaluate-comp806-off-comp1602
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (not (rebooted comp806))
    (not (running comp1602))
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
    (one-off comp806)
  )
)
(:action evaluate-comp807-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (rebooted comp807)
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
  )
)
(:action evaluate-comp807-all-on
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (not (rebooted comp807))
    (running comp806)
    (running comp1852)
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
    (all-on comp807)
  )
)
(:action evaluate-comp807-off-comp806
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (not (rebooted comp807))
    (not (running comp806))
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
    (one-off comp807)
  )
)
(:action evaluate-comp807-off-comp1852
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (not (rebooted comp807))
    (not (running comp1852))
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
    (one-off comp807)
  )
)
(:action evaluate-comp808-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (rebooted comp808)
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
  )
)
(:action evaluate-comp808-all-on
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (not (rebooted comp808))
    (running comp807)
    (running comp1862)
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
    (all-on comp808)
  )
)
(:action evaluate-comp808-off-comp807
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (not (rebooted comp808))
    (not (running comp807))
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
    (one-off comp808)
  )
)
(:action evaluate-comp808-off-comp1862
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (not (rebooted comp808))
    (not (running comp1862))
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
    (one-off comp808)
  )
)
(:action evaluate-comp809-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (rebooted comp809)
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
  )
)
(:action evaluate-comp809-all-on
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (running comp808)
    (running comp1097)
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (all-on comp809)
  )
)
(:action evaluate-comp809-off-comp808
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (not (running comp808))
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (one-off comp809)
  )
)
(:action evaluate-comp809-off-comp1097
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (not (running comp1097))
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (one-off comp809)
  )
)
(:action evaluate-comp810-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (rebooted comp810)
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
  )
)
(:action evaluate-comp810-all-on
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (not (rebooted comp810))
    (running comp809)
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
    (all-on comp810)
  )
)
(:action evaluate-comp810-off-comp809
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (not (rebooted comp810))
    (not (running comp809))
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
    (one-off comp810)
  )
)
(:action evaluate-comp811-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp811)
    (rebooted comp811)
  )
  :effect (and
    (not (evaluate comp811))
    (evaluate comp812)
  )
)
(:action evaluate-comp811-all-on
  :parameters ()
  :precondition (and
    (evaluate comp811)
    (not (rebooted comp811))
    (running comp810)
  )
  :effect (and
    (not (evaluate comp811))
    (evaluate comp812)
    (all-on comp811)
  )
)
(:action evaluate-comp811-off-comp810
  :parameters ()
  :precondition (and
    (evaluate comp811)
    (not (rebooted comp811))
    (not (running comp810))
  )
  :effect (and
    (not (evaluate comp811))
    (evaluate comp812)
    (one-off comp811)
  )
)
(:action evaluate-comp812-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp812)
    (rebooted comp812)
  )
  :effect (and
    (not (evaluate comp812))
    (evaluate comp813)
  )
)
(:action evaluate-comp812-all-on
  :parameters ()
  :precondition (and
    (evaluate comp812)
    (not (rebooted comp812))
    (running comp811)
  )
  :effect (and
    (not (evaluate comp812))
    (evaluate comp813)
    (all-on comp812)
  )
)
(:action evaluate-comp812-off-comp811
  :parameters ()
  :precondition (and
    (evaluate comp812)
    (not (rebooted comp812))
    (not (running comp811))
  )
  :effect (and
    (not (evaluate comp812))
    (evaluate comp813)
    (one-off comp812)
  )
)
(:action evaluate-comp813-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (rebooted comp813)
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
  )
)
(:action evaluate-comp813-all-on
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (not (rebooted comp813))
    (running comp812)
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
    (all-on comp813)
  )
)
(:action evaluate-comp813-off-comp812
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (not (rebooted comp813))
    (not (running comp812))
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
    (one-off comp813)
  )
)
(:action evaluate-comp814-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp814)
    (rebooted comp814)
  )
  :effect (and
    (not (evaluate comp814))
    (evaluate comp815)
  )
)
(:action evaluate-comp814-all-on
  :parameters ()
  :precondition (and
    (evaluate comp814)
    (not (rebooted comp814))
    (running comp813)
  )
  :effect (and
    (not (evaluate comp814))
    (evaluate comp815)
    (all-on comp814)
  )
)
(:action evaluate-comp814-off-comp813
  :parameters ()
  :precondition (and
    (evaluate comp814)
    (not (rebooted comp814))
    (not (running comp813))
  )
  :effect (and
    (not (evaluate comp814))
    (evaluate comp815)
    (one-off comp814)
  )
)
(:action evaluate-comp815-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (rebooted comp815)
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
  )
)
(:action evaluate-comp815-all-on
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (not (rebooted comp815))
    (running comp814)
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
    (all-on comp815)
  )
)
(:action evaluate-comp815-off-comp814
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (not (rebooted comp815))
    (not (running comp814))
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
    (one-off comp815)
  )
)
(:action evaluate-comp816-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (rebooted comp816)
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
  )
)
(:action evaluate-comp816-all-on
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (not (rebooted comp816))
    (running comp93)
    (running comp815)
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
    (all-on comp816)
  )
)
(:action evaluate-comp816-off-comp93
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (not (rebooted comp816))
    (not (running comp93))
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
    (one-off comp816)
  )
)
(:action evaluate-comp816-off-comp815
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (not (rebooted comp816))
    (not (running comp815))
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
    (one-off comp816)
  )
)
(:action evaluate-comp817-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (rebooted comp817)
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
  )
)
(:action evaluate-comp817-all-on
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (not (rebooted comp817))
    (running comp146)
    (running comp816)
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
    (all-on comp817)
  )
)
(:action evaluate-comp817-off-comp146
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (not (rebooted comp817))
    (not (running comp146))
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
    (one-off comp817)
  )
)
(:action evaluate-comp817-off-comp816
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (not (rebooted comp817))
    (not (running comp816))
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
    (one-off comp817)
  )
)
(:action evaluate-comp818-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (rebooted comp818)
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
  )
)
(:action evaluate-comp818-all-on
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (running comp660)
    (running comp727)
    (running comp817)
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (all-on comp818)
  )
)
(:action evaluate-comp818-off-comp660
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (not (running comp660))
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (one-off comp818)
  )
)
(:action evaluate-comp818-off-comp727
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (not (running comp727))
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (one-off comp818)
  )
)
(:action evaluate-comp818-off-comp817
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (not (running comp817))
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (one-off comp818)
  )
)
(:action evaluate-comp819-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (rebooted comp819)
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
  )
)
(:action evaluate-comp819-all-on
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (not (rebooted comp819))
    (running comp818)
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
    (all-on comp819)
  )
)
(:action evaluate-comp819-off-comp818
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (not (rebooted comp819))
    (not (running comp818))
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
    (one-off comp819)
  )
)
(:action evaluate-comp820-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp820)
    (rebooted comp820)
  )
  :effect (and
    (not (evaluate comp820))
    (evaluate comp821)
  )
)
(:action evaluate-comp820-all-on
  :parameters ()
  :precondition (and
    (evaluate comp820)
    (not (rebooted comp820))
    (running comp819)
  )
  :effect (and
    (not (evaluate comp820))
    (evaluate comp821)
    (all-on comp820)
  )
)
(:action evaluate-comp820-off-comp819
  :parameters ()
  :precondition (and
    (evaluate comp820)
    (not (rebooted comp820))
    (not (running comp819))
  )
  :effect (and
    (not (evaluate comp820))
    (evaluate comp821)
    (one-off comp820)
  )
)
(:action evaluate-comp821-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (rebooted comp821)
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
  )
)
(:action evaluate-comp821-all-on
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (not (rebooted comp821))
    (running comp526)
    (running comp820)
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
    (all-on comp821)
  )
)
(:action evaluate-comp821-off-comp526
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (not (rebooted comp821))
    (not (running comp526))
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
    (one-off comp821)
  )
)
(:action evaluate-comp821-off-comp820
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (not (rebooted comp821))
    (not (running comp820))
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
    (one-off comp821)
  )
)
(:action evaluate-comp822-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (rebooted comp822)
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
  )
)
(:action evaluate-comp822-all-on
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (not (rebooted comp822))
    (running comp821)
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
    (all-on comp822)
  )
)
(:action evaluate-comp822-off-comp821
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (not (rebooted comp822))
    (not (running comp821))
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
    (one-off comp822)
  )
)
(:action evaluate-comp823-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (rebooted comp823)
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
  )
)
(:action evaluate-comp823-all-on
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (running comp805)
    (running comp822)
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (all-on comp823)
  )
)
(:action evaluate-comp823-off-comp805
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp805))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp823-off-comp822
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp822))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp824-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (rebooted comp824)
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
  )
)
(:action evaluate-comp824-all-on
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (not (rebooted comp824))
    (running comp823)
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
    (all-on comp824)
  )
)
(:action evaluate-comp824-off-comp823
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (not (rebooted comp824))
    (not (running comp823))
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
    (one-off comp824)
  )
)
(:action evaluate-comp825-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp825)
    (rebooted comp825)
  )
  :effect (and
    (not (evaluate comp825))
    (evaluate comp826)
  )
)
(:action evaluate-comp825-all-on
  :parameters ()
  :precondition (and
    (evaluate comp825)
    (not (rebooted comp825))
    (running comp824)
  )
  :effect (and
    (not (evaluate comp825))
    (evaluate comp826)
    (all-on comp825)
  )
)
(:action evaluate-comp825-off-comp824
  :parameters ()
  :precondition (and
    (evaluate comp825)
    (not (rebooted comp825))
    (not (running comp824))
  )
  :effect (and
    (not (evaluate comp825))
    (evaluate comp826)
    (one-off comp825)
  )
)
(:action evaluate-comp826-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (rebooted comp826)
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
  )
)
(:action evaluate-comp826-all-on
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (not (rebooted comp826))
    (running comp825)
    (running comp1748)
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
    (all-on comp826)
  )
)
(:action evaluate-comp826-off-comp825
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (not (rebooted comp826))
    (not (running comp825))
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
    (one-off comp826)
  )
)
(:action evaluate-comp826-off-comp1748
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (not (rebooted comp826))
    (not (running comp1748))
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
    (one-off comp826)
  )
)
(:action evaluate-comp827-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp827)
    (rebooted comp827)
  )
  :effect (and
    (not (evaluate comp827))
    (evaluate comp828)
  )
)
(:action evaluate-comp827-all-on
  :parameters ()
  :precondition (and
    (evaluate comp827)
    (not (rebooted comp827))
    (running comp826)
  )
  :effect (and
    (not (evaluate comp827))
    (evaluate comp828)
    (all-on comp827)
  )
)
(:action evaluate-comp827-off-comp826
  :parameters ()
  :precondition (and
    (evaluate comp827)
    (not (rebooted comp827))
    (not (running comp826))
  )
  :effect (and
    (not (evaluate comp827))
    (evaluate comp828)
    (one-off comp827)
  )
)
(:action evaluate-comp828-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (rebooted comp828)
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
  )
)
(:action evaluate-comp828-all-on
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (not (rebooted comp828))
    (running comp827)
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
    (all-on comp828)
  )
)
(:action evaluate-comp828-off-comp827
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (not (rebooted comp828))
    (not (running comp827))
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
    (one-off comp828)
  )
)
(:action evaluate-comp829-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (rebooted comp829)
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
  )
)
(:action evaluate-comp829-all-on
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (not (rebooted comp829))
    (running comp828)
    (running comp1617)
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
    (all-on comp829)
  )
)
(:action evaluate-comp829-off-comp828
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (not (rebooted comp829))
    (not (running comp828))
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
    (one-off comp829)
  )
)
(:action evaluate-comp829-off-comp1617
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (not (rebooted comp829))
    (not (running comp1617))
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
    (one-off comp829)
  )
)
(:action evaluate-comp830-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (rebooted comp830)
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
  )
)
(:action evaluate-comp830-all-on
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (not (rebooted comp830))
    (running comp829)
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
    (all-on comp830)
  )
)
(:action evaluate-comp830-off-comp829
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (not (rebooted comp830))
    (not (running comp829))
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
    (one-off comp830)
  )
)
(:action evaluate-comp831-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp831)
    (rebooted comp831)
  )
  :effect (and
    (not (evaluate comp831))
    (evaluate comp832)
  )
)
(:action evaluate-comp831-all-on
  :parameters ()
  :precondition (and
    (evaluate comp831)
    (not (rebooted comp831))
    (running comp830)
  )
  :effect (and
    (not (evaluate comp831))
    (evaluate comp832)
    (all-on comp831)
  )
)
(:action evaluate-comp831-off-comp830
  :parameters ()
  :precondition (and
    (evaluate comp831)
    (not (rebooted comp831))
    (not (running comp830))
  )
  :effect (and
    (not (evaluate comp831))
    (evaluate comp832)
    (one-off comp831)
  )
)
(:action evaluate-comp832-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp832)
    (rebooted comp832)
  )
  :effect (and
    (not (evaluate comp832))
    (evaluate comp833)
  )
)
(:action evaluate-comp832-all-on
  :parameters ()
  :precondition (and
    (evaluate comp832)
    (not (rebooted comp832))
    (running comp831)
  )
  :effect (and
    (not (evaluate comp832))
    (evaluate comp833)
    (all-on comp832)
  )
)
(:action evaluate-comp832-off-comp831
  :parameters ()
  :precondition (and
    (evaluate comp832)
    (not (rebooted comp832))
    (not (running comp831))
  )
  :effect (and
    (not (evaluate comp832))
    (evaluate comp833)
    (one-off comp832)
  )
)
(:action evaluate-comp833-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (rebooted comp833)
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
  )
)
(:action evaluate-comp833-all-on
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (not (rebooted comp833))
    (running comp498)
    (running comp832)
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
    (all-on comp833)
  )
)
(:action evaluate-comp833-off-comp498
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (not (rebooted comp833))
    (not (running comp498))
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
    (one-off comp833)
  )
)
(:action evaluate-comp833-off-comp832
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (not (rebooted comp833))
    (not (running comp832))
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
    (one-off comp833)
  )
)
(:action evaluate-comp834-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (rebooted comp834)
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
  )
)
(:action evaluate-comp834-all-on
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (not (rebooted comp834))
    (running comp288)
    (running comp833)
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
    (all-on comp834)
  )
)
(:action evaluate-comp834-off-comp288
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (not (rebooted comp834))
    (not (running comp288))
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
    (one-off comp834)
  )
)
(:action evaluate-comp834-off-comp833
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (not (rebooted comp834))
    (not (running comp833))
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
    (one-off comp834)
  )
)
(:action evaluate-comp835-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (rebooted comp835)
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
  )
)
(:action evaluate-comp835-all-on
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (not (rebooted comp835))
    (running comp834)
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
    (all-on comp835)
  )
)
(:action evaluate-comp835-off-comp834
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (not (rebooted comp835))
    (not (running comp834))
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
    (one-off comp835)
  )
)
(:action evaluate-comp836-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp836)
    (rebooted comp836)
  )
  :effect (and
    (not (evaluate comp836))
    (evaluate comp837)
  )
)
(:action evaluate-comp836-all-on
  :parameters ()
  :precondition (and
    (evaluate comp836)
    (not (rebooted comp836))
    (running comp835)
  )
  :effect (and
    (not (evaluate comp836))
    (evaluate comp837)
    (all-on comp836)
  )
)
(:action evaluate-comp836-off-comp835
  :parameters ()
  :precondition (and
    (evaluate comp836)
    (not (rebooted comp836))
    (not (running comp835))
  )
  :effect (and
    (not (evaluate comp836))
    (evaluate comp837)
    (one-off comp836)
  )
)
(:action evaluate-comp837-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp837)
    (rebooted comp837)
  )
  :effect (and
    (not (evaluate comp837))
    (evaluate comp838)
  )
)
(:action evaluate-comp837-all-on
  :parameters ()
  :precondition (and
    (evaluate comp837)
    (not (rebooted comp837))
    (running comp836)
  )
  :effect (and
    (not (evaluate comp837))
    (evaluate comp838)
    (all-on comp837)
  )
)
(:action evaluate-comp837-off-comp836
  :parameters ()
  :precondition (and
    (evaluate comp837)
    (not (rebooted comp837))
    (not (running comp836))
  )
  :effect (and
    (not (evaluate comp837))
    (evaluate comp838)
    (one-off comp837)
  )
)
(:action evaluate-comp838-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (rebooted comp838)
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
  )
)
(:action evaluate-comp838-all-on
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (not (rebooted comp838))
    (running comp837)
    (running comp1212)
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
    (all-on comp838)
  )
)
(:action evaluate-comp838-off-comp837
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (not (rebooted comp838))
    (not (running comp837))
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
    (one-off comp838)
  )
)
(:action evaluate-comp838-off-comp1212
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (not (rebooted comp838))
    (not (running comp1212))
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
    (one-off comp838)
  )
)
(:action evaluate-comp839-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (rebooted comp839)
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
  )
)
(:action evaluate-comp839-all-on
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (not (rebooted comp839))
    (running comp245)
    (running comp838)
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
    (all-on comp839)
  )
)
(:action evaluate-comp839-off-comp245
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (not (rebooted comp839))
    (not (running comp245))
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
    (one-off comp839)
  )
)
(:action evaluate-comp839-off-comp838
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (not (rebooted comp839))
    (not (running comp838))
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
    (one-off comp839)
  )
)
(:action evaluate-comp840-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (rebooted comp840)
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
  )
)
(:action evaluate-comp840-all-on
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (not (rebooted comp840))
    (running comp839)
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
    (all-on comp840)
  )
)
(:action evaluate-comp840-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (not (rebooted comp840))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
    (one-off comp840)
  )
)
(:action evaluate-comp841-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp841)
    (rebooted comp841)
  )
  :effect (and
    (not (evaluate comp841))
    (evaluate comp842)
  )
)
(:action evaluate-comp841-all-on
  :parameters ()
  :precondition (and
    (evaluate comp841)
    (not (rebooted comp841))
    (running comp840)
  )
  :effect (and
    (not (evaluate comp841))
    (evaluate comp842)
    (all-on comp841)
  )
)
(:action evaluate-comp841-off-comp840
  :parameters ()
  :precondition (and
    (evaluate comp841)
    (not (rebooted comp841))
    (not (running comp840))
  )
  :effect (and
    (not (evaluate comp841))
    (evaluate comp842)
    (one-off comp841)
  )
)
(:action evaluate-comp842-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (rebooted comp842)
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
  )
)
(:action evaluate-comp842-all-on
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (not (rebooted comp842))
    (running comp186)
    (running comp841)
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
    (all-on comp842)
  )
)
(:action evaluate-comp842-off-comp186
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (not (rebooted comp842))
    (not (running comp186))
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
    (one-off comp842)
  )
)
(:action evaluate-comp842-off-comp841
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (not (rebooted comp842))
    (not (running comp841))
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
    (one-off comp842)
  )
)
(:action evaluate-comp843-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp843)
    (rebooted comp843)
  )
  :effect (and
    (not (evaluate comp843))
    (evaluate comp844)
  )
)
(:action evaluate-comp843-all-on
  :parameters ()
  :precondition (and
    (evaluate comp843)
    (not (rebooted comp843))
    (running comp842)
  )
  :effect (and
    (not (evaluate comp843))
    (evaluate comp844)
    (all-on comp843)
  )
)
(:action evaluate-comp843-off-comp842
  :parameters ()
  :precondition (and
    (evaluate comp843)
    (not (rebooted comp843))
    (not (running comp842))
  )
  :effect (and
    (not (evaluate comp843))
    (evaluate comp844)
    (one-off comp843)
  )
)
(:action evaluate-comp844-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp844)
    (rebooted comp844)
  )
  :effect (and
    (not (evaluate comp844))
    (evaluate comp845)
  )
)
(:action evaluate-comp844-all-on
  :parameters ()
  :precondition (and
    (evaluate comp844)
    (not (rebooted comp844))
    (running comp843)
  )
  :effect (and
    (not (evaluate comp844))
    (evaluate comp845)
    (all-on comp844)
  )
)
(:action evaluate-comp844-off-comp843
  :parameters ()
  :precondition (and
    (evaluate comp844)
    (not (rebooted comp844))
    (not (running comp843))
  )
  :effect (and
    (not (evaluate comp844))
    (evaluate comp845)
    (one-off comp844)
  )
)
(:action evaluate-comp845-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp845)
    (rebooted comp845)
  )
  :effect (and
    (not (evaluate comp845))
    (evaluate comp846)
  )
)
(:action evaluate-comp845-all-on
  :parameters ()
  :precondition (and
    (evaluate comp845)
    (not (rebooted comp845))
    (running comp844)
  )
  :effect (and
    (not (evaluate comp845))
    (evaluate comp846)
    (all-on comp845)
  )
)
(:action evaluate-comp845-off-comp844
  :parameters ()
  :precondition (and
    (evaluate comp845)
    (not (rebooted comp845))
    (not (running comp844))
  )
  :effect (and
    (not (evaluate comp845))
    (evaluate comp846)
    (one-off comp845)
  )
)
(:action evaluate-comp846-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (rebooted comp846)
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
  )
)
(:action evaluate-comp846-all-on
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (not (rebooted comp846))
    (running comp845)
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
    (all-on comp846)
  )
)
(:action evaluate-comp846-off-comp845
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (not (rebooted comp846))
    (not (running comp845))
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
    (one-off comp846)
  )
)
(:action evaluate-comp847-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (rebooted comp847)
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
  )
)
(:action evaluate-comp847-all-on
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (not (rebooted comp847))
    (running comp846)
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
    (all-on comp847)
  )
)
(:action evaluate-comp847-off-comp846
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (not (rebooted comp847))
    (not (running comp846))
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
    (one-off comp847)
  )
)
(:action evaluate-comp848-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (rebooted comp848)
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
  )
)
(:action evaluate-comp848-all-on
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (running comp120)
    (running comp332)
    (running comp847)
    (running comp1101)
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (all-on comp848)
  )
)
(:action evaluate-comp848-off-comp120
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (not (running comp120))
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (one-off comp848)
  )
)
(:action evaluate-comp848-off-comp332
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (not (running comp332))
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (one-off comp848)
  )
)
(:action evaluate-comp848-off-comp847
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (not (running comp847))
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (one-off comp848)
  )
)
(:action evaluate-comp848-off-comp1101
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (not (running comp1101))
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (one-off comp848)
  )
)
(:action evaluate-comp849-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (rebooted comp849)
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
  )
)
(:action evaluate-comp849-all-on
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (running comp848)
    (running comp1016)
    (running comp1137)
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (all-on comp849)
  )
)
(:action evaluate-comp849-off-comp848
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (not (running comp848))
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (one-off comp849)
  )
)
(:action evaluate-comp849-off-comp1016
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (not (running comp1016))
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (one-off comp849)
  )
)
(:action evaluate-comp849-off-comp1137
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (not (running comp1137))
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (one-off comp849)
  )
)
(:action evaluate-comp850-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp850)
    (rebooted comp850)
  )
  :effect (and
    (not (evaluate comp850))
    (evaluate comp851)
  )
)
(:action evaluate-comp850-all-on
  :parameters ()
  :precondition (and
    (evaluate comp850)
    (not (rebooted comp850))
    (running comp849)
  )
  :effect (and
    (not (evaluate comp850))
    (evaluate comp851)
    (all-on comp850)
  )
)
(:action evaluate-comp850-off-comp849
  :parameters ()
  :precondition (and
    (evaluate comp850)
    (not (rebooted comp850))
    (not (running comp849))
  )
  :effect (and
    (not (evaluate comp850))
    (evaluate comp851)
    (one-off comp850)
  )
)
(:action evaluate-comp851-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp851)
    (rebooted comp851)
  )
  :effect (and
    (not (evaluate comp851))
    (evaluate comp852)
  )
)
(:action evaluate-comp851-all-on
  :parameters ()
  :precondition (and
    (evaluate comp851)
    (not (rebooted comp851))
    (running comp850)
  )
  :effect (and
    (not (evaluate comp851))
    (evaluate comp852)
    (all-on comp851)
  )
)
(:action evaluate-comp851-off-comp850
  :parameters ()
  :precondition (and
    (evaluate comp851)
    (not (rebooted comp851))
    (not (running comp850))
  )
  :effect (and
    (not (evaluate comp851))
    (evaluate comp852)
    (one-off comp851)
  )
)
(:action evaluate-comp852-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (rebooted comp852)
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
  )
)
(:action evaluate-comp852-all-on
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (not (rebooted comp852))
    (running comp851)
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
    (all-on comp852)
  )
)
(:action evaluate-comp852-off-comp851
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (not (rebooted comp852))
    (not (running comp851))
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
    (one-off comp852)
  )
)
(:action evaluate-comp853-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp853)
    (rebooted comp853)
  )
  :effect (and
    (not (evaluate comp853))
    (evaluate comp854)
  )
)
(:action evaluate-comp853-all-on
  :parameters ()
  :precondition (and
    (evaluate comp853)
    (not (rebooted comp853))
    (running comp852)
  )
  :effect (and
    (not (evaluate comp853))
    (evaluate comp854)
    (all-on comp853)
  )
)
(:action evaluate-comp853-off-comp852
  :parameters ()
  :precondition (and
    (evaluate comp853)
    (not (rebooted comp853))
    (not (running comp852))
  )
  :effect (and
    (not (evaluate comp853))
    (evaluate comp854)
    (one-off comp853)
  )
)
(:action evaluate-comp854-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp854)
    (rebooted comp854)
  )
  :effect (and
    (not (evaluate comp854))
    (evaluate comp855)
  )
)
(:action evaluate-comp854-all-on
  :parameters ()
  :precondition (and
    (evaluate comp854)
    (not (rebooted comp854))
    (running comp853)
  )
  :effect (and
    (not (evaluate comp854))
    (evaluate comp855)
    (all-on comp854)
  )
)
(:action evaluate-comp854-off-comp853
  :parameters ()
  :precondition (and
    (evaluate comp854)
    (not (rebooted comp854))
    (not (running comp853))
  )
  :effect (and
    (not (evaluate comp854))
    (evaluate comp855)
    (one-off comp854)
  )
)
(:action evaluate-comp855-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp855)
    (rebooted comp855)
  )
  :effect (and
    (not (evaluate comp855))
    (evaluate comp856)
  )
)
(:action evaluate-comp855-all-on
  :parameters ()
  :precondition (and
    (evaluate comp855)
    (not (rebooted comp855))
    (running comp854)
  )
  :effect (and
    (not (evaluate comp855))
    (evaluate comp856)
    (all-on comp855)
  )
)
(:action evaluate-comp855-off-comp854
  :parameters ()
  :precondition (and
    (evaluate comp855)
    (not (rebooted comp855))
    (not (running comp854))
  )
  :effect (and
    (not (evaluate comp855))
    (evaluate comp856)
    (one-off comp855)
  )
)
(:action evaluate-comp856-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp856)
    (rebooted comp856)
  )
  :effect (and
    (not (evaluate comp856))
    (evaluate comp857)
  )
)
(:action evaluate-comp856-all-on
  :parameters ()
  :precondition (and
    (evaluate comp856)
    (not (rebooted comp856))
    (running comp855)
  )
  :effect (and
    (not (evaluate comp856))
    (evaluate comp857)
    (all-on comp856)
  )
)
(:action evaluate-comp856-off-comp855
  :parameters ()
  :precondition (and
    (evaluate comp856)
    (not (rebooted comp856))
    (not (running comp855))
  )
  :effect (and
    (not (evaluate comp856))
    (evaluate comp857)
    (one-off comp856)
  )
)
(:action evaluate-comp857-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (rebooted comp857)
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
  )
)
(:action evaluate-comp857-all-on
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (not (rebooted comp857))
    (running comp856)
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
    (all-on comp857)
  )
)
(:action evaluate-comp857-off-comp856
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (not (rebooted comp857))
    (not (running comp856))
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
    (one-off comp857)
  )
)
(:action evaluate-comp858-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp858)
    (rebooted comp858)
  )
  :effect (and
    (not (evaluate comp858))
    (evaluate comp859)
  )
)
(:action evaluate-comp858-all-on
  :parameters ()
  :precondition (and
    (evaluate comp858)
    (not (rebooted comp858))
    (running comp857)
  )
  :effect (and
    (not (evaluate comp858))
    (evaluate comp859)
    (all-on comp858)
  )
)
(:action evaluate-comp858-off-comp857
  :parameters ()
  :precondition (and
    (evaluate comp858)
    (not (rebooted comp858))
    (not (running comp857))
  )
  :effect (and
    (not (evaluate comp858))
    (evaluate comp859)
    (one-off comp858)
  )
)
(:action evaluate-comp859-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp859)
    (rebooted comp859)
  )
  :effect (and
    (not (evaluate comp859))
    (evaluate comp860)
  )
)
(:action evaluate-comp859-all-on
  :parameters ()
  :precondition (and
    (evaluate comp859)
    (not (rebooted comp859))
    (running comp858)
  )
  :effect (and
    (not (evaluate comp859))
    (evaluate comp860)
    (all-on comp859)
  )
)
(:action evaluate-comp859-off-comp858
  :parameters ()
  :precondition (and
    (evaluate comp859)
    (not (rebooted comp859))
    (not (running comp858))
  )
  :effect (and
    (not (evaluate comp859))
    (evaluate comp860)
    (one-off comp859)
  )
)
(:action evaluate-comp860-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (rebooted comp860)
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
  )
)
(:action evaluate-comp860-all-on
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (not (rebooted comp860))
    (running comp246)
    (running comp859)
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
    (all-on comp860)
  )
)
(:action evaluate-comp860-off-comp246
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (not (rebooted comp860))
    (not (running comp246))
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
    (one-off comp860)
  )
)
(:action evaluate-comp860-off-comp859
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (not (rebooted comp860))
    (not (running comp859))
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
    (one-off comp860)
  )
)
(:action evaluate-comp861-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (rebooted comp861)
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
  )
)
(:action evaluate-comp861-all-on
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (not (rebooted comp861))
    (running comp860)
    (running comp1241)
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
    (all-on comp861)
  )
)
(:action evaluate-comp861-off-comp860
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (not (rebooted comp861))
    (not (running comp860))
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
    (one-off comp861)
  )
)
(:action evaluate-comp861-off-comp1241
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (not (rebooted comp861))
    (not (running comp1241))
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
    (one-off comp861)
  )
)
(:action evaluate-comp862-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp862)
    (rebooted comp862)
  )
  :effect (and
    (not (evaluate comp862))
    (evaluate comp863)
  )
)
(:action evaluate-comp862-all-on
  :parameters ()
  :precondition (and
    (evaluate comp862)
    (not (rebooted comp862))
    (running comp861)
  )
  :effect (and
    (not (evaluate comp862))
    (evaluate comp863)
    (all-on comp862)
  )
)
(:action evaluate-comp862-off-comp861
  :parameters ()
  :precondition (and
    (evaluate comp862)
    (not (rebooted comp862))
    (not (running comp861))
  )
  :effect (and
    (not (evaluate comp862))
    (evaluate comp863)
    (one-off comp862)
  )
)
(:action evaluate-comp863-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (rebooted comp863)
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
  )
)
(:action evaluate-comp863-all-on
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (not (rebooted comp863))
    (running comp862)
    (running comp1299)
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
    (all-on comp863)
  )
)
(:action evaluate-comp863-off-comp862
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (not (rebooted comp863))
    (not (running comp862))
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
    (one-off comp863)
  )
)
(:action evaluate-comp863-off-comp1299
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (not (rebooted comp863))
    (not (running comp1299))
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
    (one-off comp863)
  )
)
(:action evaluate-comp864-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (rebooted comp864)
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
  )
)
(:action evaluate-comp864-all-on
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (not (rebooted comp864))
    (running comp863)
    (running comp1842)
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
    (all-on comp864)
  )
)
(:action evaluate-comp864-off-comp863
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (not (rebooted comp864))
    (not (running comp863))
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
    (one-off comp864)
  )
)
(:action evaluate-comp864-off-comp1842
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (not (rebooted comp864))
    (not (running comp1842))
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
    (one-off comp864)
  )
)
(:action evaluate-comp865-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (rebooted comp865)
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
  )
)
(:action evaluate-comp865-all-on
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (not (rebooted comp865))
    (running comp864)
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
    (all-on comp865)
  )
)
(:action evaluate-comp865-off-comp864
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (not (rebooted comp865))
    (not (running comp864))
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
    (one-off comp865)
  )
)
(:action evaluate-comp866-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (rebooted comp866)
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
  )
)
(:action evaluate-comp866-all-on
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (not (rebooted comp866))
    (running comp865)
    (running comp1560)
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
    (all-on comp866)
  )
)
(:action evaluate-comp866-off-comp865
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (not (rebooted comp866))
    (not (running comp865))
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
    (one-off comp866)
  )
)
(:action evaluate-comp866-off-comp1560
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (not (rebooted comp866))
    (not (running comp1560))
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
    (one-off comp866)
  )
)
(:action evaluate-comp867-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (rebooted comp867)
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
  )
)
(:action evaluate-comp867-all-on
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (not (rebooted comp867))
    (running comp559)
    (running comp754)
    (running comp866)
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
    (all-on comp867)
  )
)
(:action evaluate-comp867-off-comp559
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (not (rebooted comp867))
    (not (running comp559))
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
    (one-off comp867)
  )
)
(:action evaluate-comp867-off-comp754
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (not (rebooted comp867))
    (not (running comp754))
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
    (one-off comp867)
  )
)
(:action evaluate-comp867-off-comp866
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (not (rebooted comp867))
    (not (running comp866))
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
    (one-off comp867)
  )
)
(:action evaluate-comp868-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (rebooted comp868)
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
  )
)
(:action evaluate-comp868-all-on
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (not (rebooted comp868))
    (running comp867)
    (running comp1153)
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
    (all-on comp868)
  )
)
(:action evaluate-comp868-off-comp867
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (not (rebooted comp868))
    (not (running comp867))
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
    (one-off comp868)
  )
)
(:action evaluate-comp868-off-comp1153
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (not (rebooted comp868))
    (not (running comp1153))
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
    (one-off comp868)
  )
)
(:action evaluate-comp869-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (rebooted comp869)
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
  )
)
(:action evaluate-comp869-all-on
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (not (rebooted comp869))
    (running comp305)
    (running comp868)
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
    (all-on comp869)
  )
)
(:action evaluate-comp869-off-comp305
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (not (rebooted comp869))
    (not (running comp305))
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
    (one-off comp869)
  )
)
(:action evaluate-comp869-off-comp868
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (not (rebooted comp869))
    (not (running comp868))
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
    (one-off comp869)
  )
)
(:action evaluate-comp870-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp870)
    (rebooted comp870)
  )
  :effect (and
    (not (evaluate comp870))
    (evaluate comp871)
  )
)
(:action evaluate-comp870-all-on
  :parameters ()
  :precondition (and
    (evaluate comp870)
    (not (rebooted comp870))
    (running comp869)
  )
  :effect (and
    (not (evaluate comp870))
    (evaluate comp871)
    (all-on comp870)
  )
)
(:action evaluate-comp870-off-comp869
  :parameters ()
  :precondition (and
    (evaluate comp870)
    (not (rebooted comp870))
    (not (running comp869))
  )
  :effect (and
    (not (evaluate comp870))
    (evaluate comp871)
    (one-off comp870)
  )
)
(:action evaluate-comp871-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (rebooted comp871)
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
  )
)
(:action evaluate-comp871-all-on
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (not (rebooted comp871))
    (running comp519)
    (running comp870)
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
    (all-on comp871)
  )
)
(:action evaluate-comp871-off-comp519
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (not (rebooted comp871))
    (not (running comp519))
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
    (one-off comp871)
  )
)
(:action evaluate-comp871-off-comp870
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (not (rebooted comp871))
    (not (running comp870))
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
    (one-off comp871)
  )
)
(:action evaluate-comp872-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp872)
    (rebooted comp872)
  )
  :effect (and
    (not (evaluate comp872))
    (evaluate comp873)
  )
)
(:action evaluate-comp872-all-on
  :parameters ()
  :precondition (and
    (evaluate comp872)
    (not (rebooted comp872))
    (running comp871)
  )
  :effect (and
    (not (evaluate comp872))
    (evaluate comp873)
    (all-on comp872)
  )
)
(:action evaluate-comp872-off-comp871
  :parameters ()
  :precondition (and
    (evaluate comp872)
    (not (rebooted comp872))
    (not (running comp871))
  )
  :effect (and
    (not (evaluate comp872))
    (evaluate comp873)
    (one-off comp872)
  )
)
(:action evaluate-comp873-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (rebooted comp873)
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
  )
)
(:action evaluate-comp873-all-on
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (not (rebooted comp873))
    (running comp872)
    (running comp1673)
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
    (all-on comp873)
  )
)
(:action evaluate-comp873-off-comp872
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (not (rebooted comp873))
    (not (running comp872))
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
    (one-off comp873)
  )
)
(:action evaluate-comp873-off-comp1673
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (not (rebooted comp873))
    (not (running comp1673))
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
    (one-off comp873)
  )
)
(:action evaluate-comp874-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (rebooted comp874)
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
  )
)
(:action evaluate-comp874-all-on
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (not (rebooted comp874))
    (running comp873)
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
    (all-on comp874)
  )
)
(:action evaluate-comp874-off-comp873
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (not (rebooted comp874))
    (not (running comp873))
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
    (one-off comp874)
  )
)
(:action evaluate-comp875-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp875)
    (rebooted comp875)
  )
  :effect (and
    (not (evaluate comp875))
    (evaluate comp876)
  )
)
(:action evaluate-comp875-all-on
  :parameters ()
  :precondition (and
    (evaluate comp875)
    (not (rebooted comp875))
    (running comp874)
  )
  :effect (and
    (not (evaluate comp875))
    (evaluate comp876)
    (all-on comp875)
  )
)
(:action evaluate-comp875-off-comp874
  :parameters ()
  :precondition (and
    (evaluate comp875)
    (not (rebooted comp875))
    (not (running comp874))
  )
  :effect (and
    (not (evaluate comp875))
    (evaluate comp876)
    (one-off comp875)
  )
)
(:action evaluate-comp876-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp876)
    (rebooted comp876)
  )
  :effect (and
    (not (evaluate comp876))
    (evaluate comp877)
  )
)
(:action evaluate-comp876-all-on
  :parameters ()
  :precondition (and
    (evaluate comp876)
    (not (rebooted comp876))
    (running comp875)
  )
  :effect (and
    (not (evaluate comp876))
    (evaluate comp877)
    (all-on comp876)
  )
)
(:action evaluate-comp876-off-comp875
  :parameters ()
  :precondition (and
    (evaluate comp876)
    (not (rebooted comp876))
    (not (running comp875))
  )
  :effect (and
    (not (evaluate comp876))
    (evaluate comp877)
    (one-off comp876)
  )
)
(:action evaluate-comp877-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (rebooted comp877)
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
  )
)
(:action evaluate-comp877-all-on
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (not (rebooted comp877))
    (running comp876)
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
    (all-on comp877)
  )
)
(:action evaluate-comp877-off-comp876
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (not (rebooted comp877))
    (not (running comp876))
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
    (one-off comp877)
  )
)
(:action evaluate-comp878-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (rebooted comp878)
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
  )
)
(:action evaluate-comp878-all-on
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (running comp877)
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (all-on comp878)
  )
)
(:action evaluate-comp878-off-comp877
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (not (running comp877))
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (one-off comp878)
  )
)
(:action evaluate-comp879-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (rebooted comp879)
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
  )
)
(:action evaluate-comp879-all-on
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (not (rebooted comp879))
    (running comp878)
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
    (all-on comp879)
  )
)
(:action evaluate-comp879-off-comp878
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (not (rebooted comp879))
    (not (running comp878))
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
    (one-off comp879)
  )
)
(:action evaluate-comp880-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (rebooted comp880)
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
  )
)
(:action evaluate-comp880-all-on
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (not (rebooted comp880))
    (running comp879)
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
    (all-on comp880)
  )
)
(:action evaluate-comp880-off-comp879
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (not (rebooted comp880))
    (not (running comp879))
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
    (one-off comp880)
  )
)
(:action evaluate-comp881-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (rebooted comp881)
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
  )
)
(:action evaluate-comp881-all-on
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (not (rebooted comp881))
    (running comp300)
    (running comp880)
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
    (all-on comp881)
  )
)
(:action evaluate-comp881-off-comp300
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (not (rebooted comp881))
    (not (running comp300))
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
    (one-off comp881)
  )
)
(:action evaluate-comp881-off-comp880
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (not (rebooted comp881))
    (not (running comp880))
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
    (one-off comp881)
  )
)
(:action evaluate-comp882-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp882)
    (rebooted comp882)
  )
  :effect (and
    (not (evaluate comp882))
    (evaluate comp883)
  )
)
(:action evaluate-comp882-all-on
  :parameters ()
  :precondition (and
    (evaluate comp882)
    (not (rebooted comp882))
    (running comp881)
  )
  :effect (and
    (not (evaluate comp882))
    (evaluate comp883)
    (all-on comp882)
  )
)
(:action evaluate-comp882-off-comp881
  :parameters ()
  :precondition (and
    (evaluate comp882)
    (not (rebooted comp882))
    (not (running comp881))
  )
  :effect (and
    (not (evaluate comp882))
    (evaluate comp883)
    (one-off comp882)
  )
)
(:action evaluate-comp883-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (rebooted comp883)
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
  )
)
(:action evaluate-comp883-all-on
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (not (rebooted comp883))
    (running comp882)
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
    (all-on comp883)
  )
)
(:action evaluate-comp883-off-comp882
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (not (rebooted comp883))
    (not (running comp882))
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
    (one-off comp883)
  )
)
(:action evaluate-comp884-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (rebooted comp884)
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
  )
)
(:action evaluate-comp884-all-on
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (running comp810)
    (running comp883)
    (running comp1234)
    (running comp1826)
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (all-on comp884)
  )
)
(:action evaluate-comp884-off-comp810
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (not (running comp810))
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (one-off comp884)
  )
)
(:action evaluate-comp884-off-comp883
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (not (running comp883))
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (one-off comp884)
  )
)
(:action evaluate-comp884-off-comp1234
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (not (running comp1234))
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (one-off comp884)
  )
)
(:action evaluate-comp884-off-comp1826
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (not (running comp1826))
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (one-off comp884)
  )
)
(:action evaluate-comp885-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (rebooted comp885)
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
  )
)
(:action evaluate-comp885-all-on
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (running comp884)
    (running comp1619)
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (all-on comp885)
  )
)
(:action evaluate-comp885-off-comp884
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (not (running comp884))
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (one-off comp885)
  )
)
(:action evaluate-comp885-off-comp1619
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (not (running comp1619))
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (one-off comp885)
  )
)
(:action evaluate-comp886-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (rebooted comp886)
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
  )
)
(:action evaluate-comp886-all-on
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (not (rebooted comp886))
    (running comp885)
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
    (all-on comp886)
  )
)
(:action evaluate-comp886-off-comp885
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (not (rebooted comp886))
    (not (running comp885))
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
    (one-off comp886)
  )
)
(:action evaluate-comp887-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (rebooted comp887)
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
  )
)
(:action evaluate-comp887-all-on
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (not (rebooted comp887))
    (running comp886)
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
    (all-on comp887)
  )
)
(:action evaluate-comp887-off-comp886
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (not (rebooted comp887))
    (not (running comp886))
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
    (one-off comp887)
  )
)
(:action evaluate-comp888-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp888)
    (rebooted comp888)
  )
  :effect (and
    (not (evaluate comp888))
    (evaluate comp889)
  )
)
(:action evaluate-comp888-all-on
  :parameters ()
  :precondition (and
    (evaluate comp888)
    (not (rebooted comp888))
    (running comp887)
  )
  :effect (and
    (not (evaluate comp888))
    (evaluate comp889)
    (all-on comp888)
  )
)
(:action evaluate-comp888-off-comp887
  :parameters ()
  :precondition (and
    (evaluate comp888)
    (not (rebooted comp888))
    (not (running comp887))
  )
  :effect (and
    (not (evaluate comp888))
    (evaluate comp889)
    (one-off comp888)
  )
)
(:action evaluate-comp889-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (rebooted comp889)
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
  )
)
(:action evaluate-comp889-all-on
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (not (rebooted comp889))
    (running comp449)
    (running comp888)
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
    (all-on comp889)
  )
)
(:action evaluate-comp889-off-comp449
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (not (rebooted comp889))
    (not (running comp449))
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
    (one-off comp889)
  )
)
(:action evaluate-comp889-off-comp888
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (not (rebooted comp889))
    (not (running comp888))
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
    (one-off comp889)
  )
)
(:action evaluate-comp890-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (rebooted comp890)
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
  )
)
(:action evaluate-comp890-all-on
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (not (rebooted comp890))
    (running comp427)
    (running comp889)
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
    (all-on comp890)
  )
)
(:action evaluate-comp890-off-comp427
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (not (rebooted comp890))
    (not (running comp427))
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
    (one-off comp890)
  )
)
(:action evaluate-comp890-off-comp889
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (not (rebooted comp890))
    (not (running comp889))
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
    (one-off comp890)
  )
)
(:action evaluate-comp891-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp891)
    (rebooted comp891)
  )
  :effect (and
    (not (evaluate comp891))
    (evaluate comp892)
  )
)
(:action evaluate-comp891-all-on
  :parameters ()
  :precondition (and
    (evaluate comp891)
    (not (rebooted comp891))
    (running comp890)
  )
  :effect (and
    (not (evaluate comp891))
    (evaluate comp892)
    (all-on comp891)
  )
)
(:action evaluate-comp891-off-comp890
  :parameters ()
  :precondition (and
    (evaluate comp891)
    (not (rebooted comp891))
    (not (running comp890))
  )
  :effect (and
    (not (evaluate comp891))
    (evaluate comp892)
    (one-off comp891)
  )
)
(:action evaluate-comp892-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (rebooted comp892)
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
  )
)
(:action evaluate-comp892-all-on
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (not (rebooted comp892))
    (running comp891)
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
    (all-on comp892)
  )
)
(:action evaluate-comp892-off-comp891
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (not (rebooted comp892))
    (not (running comp891))
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
    (one-off comp892)
  )
)
(:action evaluate-comp893-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp893)
    (rebooted comp893)
  )
  :effect (and
    (not (evaluate comp893))
    (evaluate comp894)
  )
)
(:action evaluate-comp893-all-on
  :parameters ()
  :precondition (and
    (evaluate comp893)
    (not (rebooted comp893))
    (running comp892)
  )
  :effect (and
    (not (evaluate comp893))
    (evaluate comp894)
    (all-on comp893)
  )
)
(:action evaluate-comp893-off-comp892
  :parameters ()
  :precondition (and
    (evaluate comp893)
    (not (rebooted comp893))
    (not (running comp892))
  )
  :effect (and
    (not (evaluate comp893))
    (evaluate comp894)
    (one-off comp893)
  )
)
(:action evaluate-comp894-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (rebooted comp894)
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
  )
)
(:action evaluate-comp894-all-on
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (not (rebooted comp894))
    (running comp893)
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
    (all-on comp894)
  )
)
(:action evaluate-comp894-off-comp893
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (not (rebooted comp894))
    (not (running comp893))
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
    (one-off comp894)
  )
)
(:action evaluate-comp895-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp895)
    (rebooted comp895)
  )
  :effect (and
    (not (evaluate comp895))
    (evaluate comp896)
  )
)
(:action evaluate-comp895-all-on
  :parameters ()
  :precondition (and
    (evaluate comp895)
    (not (rebooted comp895))
    (running comp894)
  )
  :effect (and
    (not (evaluate comp895))
    (evaluate comp896)
    (all-on comp895)
  )
)
(:action evaluate-comp895-off-comp894
  :parameters ()
  :precondition (and
    (evaluate comp895)
    (not (rebooted comp895))
    (not (running comp894))
  )
  :effect (and
    (not (evaluate comp895))
    (evaluate comp896)
    (one-off comp895)
  )
)
(:action evaluate-comp896-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (rebooted comp896)
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
  )
)
(:action evaluate-comp896-all-on
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (not (rebooted comp896))
    (running comp895)
    (running comp933)
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
    (all-on comp896)
  )
)
(:action evaluate-comp896-off-comp895
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (not (rebooted comp896))
    (not (running comp895))
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
    (one-off comp896)
  )
)
(:action evaluate-comp896-off-comp933
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (not (rebooted comp896))
    (not (running comp933))
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
    (one-off comp896)
  )
)
(:action evaluate-comp897-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp897)
    (rebooted comp897)
  )
  :effect (and
    (not (evaluate comp897))
    (evaluate comp898)
  )
)
(:action evaluate-comp897-all-on
  :parameters ()
  :precondition (and
    (evaluate comp897)
    (not (rebooted comp897))
    (running comp896)
  )
  :effect (and
    (not (evaluate comp897))
    (evaluate comp898)
    (all-on comp897)
  )
)
(:action evaluate-comp897-off-comp896
  :parameters ()
  :precondition (and
    (evaluate comp897)
    (not (rebooted comp897))
    (not (running comp896))
  )
  :effect (and
    (not (evaluate comp897))
    (evaluate comp898)
    (one-off comp897)
  )
)
(:action evaluate-comp898-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (rebooted comp898)
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
  )
)
(:action evaluate-comp898-all-on
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (not (rebooted comp898))
    (running comp897)
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
    (all-on comp898)
  )
)
(:action evaluate-comp898-off-comp897
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (not (rebooted comp898))
    (not (running comp897))
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
    (one-off comp898)
  )
)
(:action evaluate-comp899-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp899)
    (rebooted comp899)
  )
  :effect (and
    (not (evaluate comp899))
    (evaluate comp900)
  )
)
(:action evaluate-comp899-all-on
  :parameters ()
  :precondition (and
    (evaluate comp899)
    (not (rebooted comp899))
    (running comp898)
  )
  :effect (and
    (not (evaluate comp899))
    (evaluate comp900)
    (all-on comp899)
  )
)
(:action evaluate-comp899-off-comp898
  :parameters ()
  :precondition (and
    (evaluate comp899)
    (not (rebooted comp899))
    (not (running comp898))
  )
  :effect (and
    (not (evaluate comp899))
    (evaluate comp900)
    (one-off comp899)
  )
)
(:action evaluate-comp900-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp900)
    (rebooted comp900)
  )
  :effect (and
    (not (evaluate comp900))
    (evaluate comp901)
  )
)
(:action evaluate-comp900-all-on
  :parameters ()
  :precondition (and
    (evaluate comp900)
    (not (rebooted comp900))
    (running comp899)
  )
  :effect (and
    (not (evaluate comp900))
    (evaluate comp901)
    (all-on comp900)
  )
)
(:action evaluate-comp900-off-comp899
  :parameters ()
  :precondition (and
    (evaluate comp900)
    (not (rebooted comp900))
    (not (running comp899))
  )
  :effect (and
    (not (evaluate comp900))
    (evaluate comp901)
    (one-off comp900)
  )
)
(:action evaluate-comp901-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp901)
    (rebooted comp901)
  )
  :effect (and
    (not (evaluate comp901))
    (evaluate comp902)
  )
)
(:action evaluate-comp901-all-on
  :parameters ()
  :precondition (and
    (evaluate comp901)
    (not (rebooted comp901))
    (running comp900)
  )
  :effect (and
    (not (evaluate comp901))
    (evaluate comp902)
    (all-on comp901)
  )
)
(:action evaluate-comp901-off-comp900
  :parameters ()
  :precondition (and
    (evaluate comp901)
    (not (rebooted comp901))
    (not (running comp900))
  )
  :effect (and
    (not (evaluate comp901))
    (evaluate comp902)
    (one-off comp901)
  )
)
(:action evaluate-comp902-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (rebooted comp902)
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
  )
)
(:action evaluate-comp902-all-on
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (running comp0)
    (running comp901)
    (running comp965)
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (all-on comp902)
  )
)
(:action evaluate-comp902-off-comp0
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (not (running comp0))
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (one-off comp902)
  )
)
(:action evaluate-comp902-off-comp901
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (not (running comp901))
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (one-off comp902)
  )
)
(:action evaluate-comp902-off-comp965
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (not (running comp965))
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (one-off comp902)
  )
)
(:action evaluate-comp903-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp903)
    (rebooted comp903)
  )
  :effect (and
    (not (evaluate comp903))
    (evaluate comp904)
  )
)
(:action evaluate-comp903-all-on
  :parameters ()
  :precondition (and
    (evaluate comp903)
    (not (rebooted comp903))
    (running comp902)
  )
  :effect (and
    (not (evaluate comp903))
    (evaluate comp904)
    (all-on comp903)
  )
)
(:action evaluate-comp903-off-comp902
  :parameters ()
  :precondition (and
    (evaluate comp903)
    (not (rebooted comp903))
    (not (running comp902))
  )
  :effect (and
    (not (evaluate comp903))
    (evaluate comp904)
    (one-off comp903)
  )
)
(:action evaluate-comp904-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp904)
    (rebooted comp904)
  )
  :effect (and
    (not (evaluate comp904))
    (evaluate comp905)
  )
)
(:action evaluate-comp904-all-on
  :parameters ()
  :precondition (and
    (evaluate comp904)
    (not (rebooted comp904))
    (running comp903)
  )
  :effect (and
    (not (evaluate comp904))
    (evaluate comp905)
    (all-on comp904)
  )
)
(:action evaluate-comp904-off-comp903
  :parameters ()
  :precondition (and
    (evaluate comp904)
    (not (rebooted comp904))
    (not (running comp903))
  )
  :effect (and
    (not (evaluate comp904))
    (evaluate comp905)
    (one-off comp904)
  )
)
(:action evaluate-comp905-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (rebooted comp905)
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
  )
)
(:action evaluate-comp905-all-on
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (not (rebooted comp905))
    (running comp511)
    (running comp904)
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
    (all-on comp905)
  )
)
(:action evaluate-comp905-off-comp511
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (not (rebooted comp905))
    (not (running comp511))
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
    (one-off comp905)
  )
)
(:action evaluate-comp905-off-comp904
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (not (rebooted comp905))
    (not (running comp904))
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
    (one-off comp905)
  )
)
(:action evaluate-comp906-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp906)
    (rebooted comp906)
  )
  :effect (and
    (not (evaluate comp906))
    (evaluate comp907)
  )
)
(:action evaluate-comp906-all-on
  :parameters ()
  :precondition (and
    (evaluate comp906)
    (not (rebooted comp906))
    (running comp905)
  )
  :effect (and
    (not (evaluate comp906))
    (evaluate comp907)
    (all-on comp906)
  )
)
(:action evaluate-comp906-off-comp905
  :parameters ()
  :precondition (and
    (evaluate comp906)
    (not (rebooted comp906))
    (not (running comp905))
  )
  :effect (and
    (not (evaluate comp906))
    (evaluate comp907)
    (one-off comp906)
  )
)
(:action evaluate-comp907-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp907)
    (rebooted comp907)
  )
  :effect (and
    (not (evaluate comp907))
    (evaluate comp908)
  )
)
(:action evaluate-comp907-all-on
  :parameters ()
  :precondition (and
    (evaluate comp907)
    (not (rebooted comp907))
    (running comp906)
  )
  :effect (and
    (not (evaluate comp907))
    (evaluate comp908)
    (all-on comp907)
  )
)
(:action evaluate-comp907-off-comp906
  :parameters ()
  :precondition (and
    (evaluate comp907)
    (not (rebooted comp907))
    (not (running comp906))
  )
  :effect (and
    (not (evaluate comp907))
    (evaluate comp908)
    (one-off comp907)
  )
)
(:action evaluate-comp908-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (rebooted comp908)
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
  )
)
(:action evaluate-comp908-all-on
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (not (rebooted comp908))
    (running comp363)
    (running comp795)
    (running comp907)
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
    (all-on comp908)
  )
)
(:action evaluate-comp908-off-comp363
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (not (rebooted comp908))
    (not (running comp363))
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
    (one-off comp908)
  )
)
(:action evaluate-comp908-off-comp795
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (not (rebooted comp908))
    (not (running comp795))
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
    (one-off comp908)
  )
)
(:action evaluate-comp908-off-comp907
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (not (rebooted comp908))
    (not (running comp907))
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
    (one-off comp908)
  )
)
(:action evaluate-comp909-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp909)
    (rebooted comp909)
  )
  :effect (and
    (not (evaluate comp909))
    (evaluate comp910)
  )
)
(:action evaluate-comp909-all-on
  :parameters ()
  :precondition (and
    (evaluate comp909)
    (not (rebooted comp909))
    (running comp908)
  )
  :effect (and
    (not (evaluate comp909))
    (evaluate comp910)
    (all-on comp909)
  )
)
(:action evaluate-comp909-off-comp908
  :parameters ()
  :precondition (and
    (evaluate comp909)
    (not (rebooted comp909))
    (not (running comp908))
  )
  :effect (and
    (not (evaluate comp909))
    (evaluate comp910)
    (one-off comp909)
  )
)
(:action evaluate-comp910-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp910)
    (rebooted comp910)
  )
  :effect (and
    (not (evaluate comp910))
    (evaluate comp911)
  )
)
(:action evaluate-comp910-all-on
  :parameters ()
  :precondition (and
    (evaluate comp910)
    (not (rebooted comp910))
    (running comp909)
  )
  :effect (and
    (not (evaluate comp910))
    (evaluate comp911)
    (all-on comp910)
  )
)
(:action evaluate-comp910-off-comp909
  :parameters ()
  :precondition (and
    (evaluate comp910)
    (not (rebooted comp910))
    (not (running comp909))
  )
  :effect (and
    (not (evaluate comp910))
    (evaluate comp911)
    (one-off comp910)
  )
)
(:action evaluate-comp911-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (rebooted comp911)
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
  )
)
(:action evaluate-comp911-all-on
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (not (rebooted comp911))
    (running comp910)
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
    (all-on comp911)
  )
)
(:action evaluate-comp911-off-comp910
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (not (rebooted comp911))
    (not (running comp910))
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
    (one-off comp911)
  )
)
(:action evaluate-comp912-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (rebooted comp912)
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
  )
)
(:action evaluate-comp912-all-on
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (not (rebooted comp912))
    (running comp911)
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
    (all-on comp912)
  )
)
(:action evaluate-comp912-off-comp911
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (not (rebooted comp912))
    (not (running comp911))
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
    (one-off comp912)
  )
)
(:action evaluate-comp913-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp913)
    (rebooted comp913)
  )
  :effect (and
    (not (evaluate comp913))
    (evaluate comp914)
  )
)
(:action evaluate-comp913-all-on
  :parameters ()
  :precondition (and
    (evaluate comp913)
    (not (rebooted comp913))
    (running comp912)
  )
  :effect (and
    (not (evaluate comp913))
    (evaluate comp914)
    (all-on comp913)
  )
)
(:action evaluate-comp913-off-comp912
  :parameters ()
  :precondition (and
    (evaluate comp913)
    (not (rebooted comp913))
    (not (running comp912))
  )
  :effect (and
    (not (evaluate comp913))
    (evaluate comp914)
    (one-off comp913)
  )
)
(:action evaluate-comp914-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp914)
    (rebooted comp914)
  )
  :effect (and
    (not (evaluate comp914))
    (evaluate comp915)
  )
)
(:action evaluate-comp914-all-on
  :parameters ()
  :precondition (and
    (evaluate comp914)
    (not (rebooted comp914))
    (running comp913)
  )
  :effect (and
    (not (evaluate comp914))
    (evaluate comp915)
    (all-on comp914)
  )
)
(:action evaluate-comp914-off-comp913
  :parameters ()
  :precondition (and
    (evaluate comp914)
    (not (rebooted comp914))
    (not (running comp913))
  )
  :effect (and
    (not (evaluate comp914))
    (evaluate comp915)
    (one-off comp914)
  )
)
(:action evaluate-comp915-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (rebooted comp915)
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
  )
)
(:action evaluate-comp915-all-on
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (not (rebooted comp915))
    (running comp606)
    (running comp914)
    (running comp1042)
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
    (all-on comp915)
  )
)
(:action evaluate-comp915-off-comp606
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (not (rebooted comp915))
    (not (running comp606))
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
    (one-off comp915)
  )
)
(:action evaluate-comp915-off-comp914
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (not (rebooted comp915))
    (not (running comp914))
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
    (one-off comp915)
  )
)
(:action evaluate-comp915-off-comp1042
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (not (rebooted comp915))
    (not (running comp1042))
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
    (one-off comp915)
  )
)
(:action evaluate-comp916-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (rebooted comp916)
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
  )
)
(:action evaluate-comp916-all-on
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (not (rebooted comp916))
    (running comp476)
    (running comp915)
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
    (all-on comp916)
  )
)
(:action evaluate-comp916-off-comp476
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (not (rebooted comp916))
    (not (running comp476))
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
    (one-off comp916)
  )
)
(:action evaluate-comp916-off-comp915
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (not (rebooted comp916))
    (not (running comp915))
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
    (one-off comp916)
  )
)
(:action evaluate-comp917-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (rebooted comp917)
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
  )
)
(:action evaluate-comp917-all-on
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (not (rebooted comp917))
    (running comp916)
    (running comp1574)
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
    (all-on comp917)
  )
)
(:action evaluate-comp917-off-comp916
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (not (rebooted comp917))
    (not (running comp916))
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
    (one-off comp917)
  )
)
(:action evaluate-comp917-off-comp1574
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (not (rebooted comp917))
    (not (running comp1574))
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
    (one-off comp917)
  )
)
(:action evaluate-comp918-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (rebooted comp918)
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
  )
)
(:action evaluate-comp918-all-on
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (not (rebooted comp918))
    (running comp917)
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
    (all-on comp918)
  )
)
(:action evaluate-comp918-off-comp917
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (not (rebooted comp918))
    (not (running comp917))
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
    (one-off comp918)
  )
)
(:action evaluate-comp919-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (rebooted comp919)
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
  )
)
(:action evaluate-comp919-all-on
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (not (rebooted comp919))
    (running comp486)
    (running comp918)
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
    (all-on comp919)
  )
)
(:action evaluate-comp919-off-comp486
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (not (rebooted comp919))
    (not (running comp486))
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
    (one-off comp919)
  )
)
(:action evaluate-comp919-off-comp918
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (not (rebooted comp919))
    (not (running comp918))
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
    (one-off comp919)
  )
)
(:action evaluate-comp920-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (rebooted comp920)
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
  )
)
(:action evaluate-comp920-all-on
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (running comp696)
    (running comp919)
    (running comp965)
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (all-on comp920)
  )
)
(:action evaluate-comp920-off-comp696
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (not (running comp696))
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (one-off comp920)
  )
)
(:action evaluate-comp920-off-comp919
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (not (running comp919))
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (one-off comp920)
  )
)
(:action evaluate-comp920-off-comp965
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (not (running comp965))
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (one-off comp920)
  )
)
(:action evaluate-comp921-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp921)
    (rebooted comp921)
  )
  :effect (and
    (not (evaluate comp921))
    (evaluate comp922)
  )
)
(:action evaluate-comp921-all-on
  :parameters ()
  :precondition (and
    (evaluate comp921)
    (not (rebooted comp921))
    (running comp920)
  )
  :effect (and
    (not (evaluate comp921))
    (evaluate comp922)
    (all-on comp921)
  )
)
(:action evaluate-comp921-off-comp920
  :parameters ()
  :precondition (and
    (evaluate comp921)
    (not (rebooted comp921))
    (not (running comp920))
  )
  :effect (and
    (not (evaluate comp921))
    (evaluate comp922)
    (one-off comp921)
  )
)
(:action evaluate-comp922-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (rebooted comp922)
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
  )
)
(:action evaluate-comp922-all-on
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (not (rebooted comp922))
    (running comp768)
    (running comp903)
    (running comp921)
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
    (all-on comp922)
  )
)
(:action evaluate-comp922-off-comp768
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (not (rebooted comp922))
    (not (running comp768))
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
    (one-off comp922)
  )
)
(:action evaluate-comp922-off-comp903
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (not (rebooted comp922))
    (not (running comp903))
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
    (one-off comp922)
  )
)
(:action evaluate-comp922-off-comp921
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (not (rebooted comp922))
    (not (running comp921))
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
    (one-off comp922)
  )
)
(:action evaluate-comp923-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp923)
    (rebooted comp923)
  )
  :effect (and
    (not (evaluate comp923))
    (evaluate comp924)
  )
)
(:action evaluate-comp923-all-on
  :parameters ()
  :precondition (and
    (evaluate comp923)
    (not (rebooted comp923))
    (running comp922)
  )
  :effect (and
    (not (evaluate comp923))
    (evaluate comp924)
    (all-on comp923)
  )
)
(:action evaluate-comp923-off-comp922
  :parameters ()
  :precondition (and
    (evaluate comp923)
    (not (rebooted comp923))
    (not (running comp922))
  )
  :effect (and
    (not (evaluate comp923))
    (evaluate comp924)
    (one-off comp923)
  )
)
(:action evaluate-comp924-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp924)
    (rebooted comp924)
  )
  :effect (and
    (not (evaluate comp924))
    (evaluate comp925)
  )
)
(:action evaluate-comp924-all-on
  :parameters ()
  :precondition (and
    (evaluate comp924)
    (not (rebooted comp924))
    (running comp923)
  )
  :effect (and
    (not (evaluate comp924))
    (evaluate comp925)
    (all-on comp924)
  )
)
(:action evaluate-comp924-off-comp923
  :parameters ()
  :precondition (and
    (evaluate comp924)
    (not (rebooted comp924))
    (not (running comp923))
  )
  :effect (and
    (not (evaluate comp924))
    (evaluate comp925)
    (one-off comp924)
  )
)
(:action evaluate-comp925-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp925)
    (rebooted comp925)
  )
  :effect (and
    (not (evaluate comp925))
    (evaluate comp926)
  )
)
(:action evaluate-comp925-all-on
  :parameters ()
  :precondition (and
    (evaluate comp925)
    (not (rebooted comp925))
    (running comp924)
  )
  :effect (and
    (not (evaluate comp925))
    (evaluate comp926)
    (all-on comp925)
  )
)
(:action evaluate-comp925-off-comp924
  :parameters ()
  :precondition (and
    (evaluate comp925)
    (not (rebooted comp925))
    (not (running comp924))
  )
  :effect (and
    (not (evaluate comp925))
    (evaluate comp926)
    (one-off comp925)
  )
)
(:action evaluate-comp926-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp926)
    (rebooted comp926)
  )
  :effect (and
    (not (evaluate comp926))
    (evaluate comp927)
  )
)
(:action evaluate-comp926-all-on
  :parameters ()
  :precondition (and
    (evaluate comp926)
    (not (rebooted comp926))
    (running comp925)
  )
  :effect (and
    (not (evaluate comp926))
    (evaluate comp927)
    (all-on comp926)
  )
)
(:action evaluate-comp926-off-comp925
  :parameters ()
  :precondition (and
    (evaluate comp926)
    (not (rebooted comp926))
    (not (running comp925))
  )
  :effect (and
    (not (evaluate comp926))
    (evaluate comp927)
    (one-off comp926)
  )
)
(:action evaluate-comp927-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (rebooted comp927)
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
  )
)
(:action evaluate-comp927-all-on
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (not (rebooted comp927))
    (running comp926)
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
    (all-on comp927)
  )
)
(:action evaluate-comp927-off-comp926
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (not (rebooted comp927))
    (not (running comp926))
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
    (one-off comp927)
  )
)
(:action evaluate-comp928-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp928)
    (rebooted comp928)
  )
  :effect (and
    (not (evaluate comp928))
    (evaluate comp929)
  )
)
(:action evaluate-comp928-all-on
  :parameters ()
  :precondition (and
    (evaluate comp928)
    (not (rebooted comp928))
    (running comp927)
  )
  :effect (and
    (not (evaluate comp928))
    (evaluate comp929)
    (all-on comp928)
  )
)
(:action evaluate-comp928-off-comp927
  :parameters ()
  :precondition (and
    (evaluate comp928)
    (not (rebooted comp928))
    (not (running comp927))
  )
  :effect (and
    (not (evaluate comp928))
    (evaluate comp929)
    (one-off comp928)
  )
)
(:action evaluate-comp929-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp929)
    (rebooted comp929)
  )
  :effect (and
    (not (evaluate comp929))
    (evaluate comp930)
  )
)
(:action evaluate-comp929-all-on
  :parameters ()
  :precondition (and
    (evaluate comp929)
    (not (rebooted comp929))
    (running comp928)
  )
  :effect (and
    (not (evaluate comp929))
    (evaluate comp930)
    (all-on comp929)
  )
)
(:action evaluate-comp929-off-comp928
  :parameters ()
  :precondition (and
    (evaluate comp929)
    (not (rebooted comp929))
    (not (running comp928))
  )
  :effect (and
    (not (evaluate comp929))
    (evaluate comp930)
    (one-off comp929)
  )
)
(:action evaluate-comp930-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp930)
    (rebooted comp930)
  )
  :effect (and
    (not (evaluate comp930))
    (evaluate comp931)
  )
)
(:action evaluate-comp930-all-on
  :parameters ()
  :precondition (and
    (evaluate comp930)
    (not (rebooted comp930))
    (running comp929)
  )
  :effect (and
    (not (evaluate comp930))
    (evaluate comp931)
    (all-on comp930)
  )
)
(:action evaluate-comp930-off-comp929
  :parameters ()
  :precondition (and
    (evaluate comp930)
    (not (rebooted comp930))
    (not (running comp929))
  )
  :effect (and
    (not (evaluate comp930))
    (evaluate comp931)
    (one-off comp930)
  )
)
(:action evaluate-comp931-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp931)
    (rebooted comp931)
  )
  :effect (and
    (not (evaluate comp931))
    (evaluate comp932)
  )
)
(:action evaluate-comp931-all-on
  :parameters ()
  :precondition (and
    (evaluate comp931)
    (not (rebooted comp931))
    (running comp930)
  )
  :effect (and
    (not (evaluate comp931))
    (evaluate comp932)
    (all-on comp931)
  )
)
(:action evaluate-comp931-off-comp930
  :parameters ()
  :precondition (and
    (evaluate comp931)
    (not (rebooted comp931))
    (not (running comp930))
  )
  :effect (and
    (not (evaluate comp931))
    (evaluate comp932)
    (one-off comp931)
  )
)
(:action evaluate-comp932-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (rebooted comp932)
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
  )
)
(:action evaluate-comp932-all-on
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (not (rebooted comp932))
    (running comp931)
    (running comp1144)
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
    (all-on comp932)
  )
)
(:action evaluate-comp932-off-comp931
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (not (rebooted comp932))
    (not (running comp931))
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
    (one-off comp932)
  )
)
(:action evaluate-comp932-off-comp1144
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (not (rebooted comp932))
    (not (running comp1144))
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
    (one-off comp932)
  )
)
(:action evaluate-comp933-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (rebooted comp933)
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
  )
)
(:action evaluate-comp933-all-on
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (not (rebooted comp933))
    (running comp932)
    (running comp1149)
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
    (all-on comp933)
  )
)
(:action evaluate-comp933-off-comp932
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (not (rebooted comp933))
    (not (running comp932))
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
    (one-off comp933)
  )
)
(:action evaluate-comp933-off-comp1149
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (not (rebooted comp933))
    (not (running comp1149))
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
    (one-off comp933)
  )
)
(:action evaluate-comp934-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (rebooted comp934)
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
  )
)
(:action evaluate-comp934-all-on
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (not (rebooted comp934))
    (running comp933)
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
    (all-on comp934)
  )
)
(:action evaluate-comp934-off-comp933
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (not (rebooted comp934))
    (not (running comp933))
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
    (one-off comp934)
  )
)
(:action evaluate-comp935-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (rebooted comp935)
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
  )
)
(:action evaluate-comp935-all-on
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (not (rebooted comp935))
    (running comp934)
    (running comp1082)
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
    (all-on comp935)
  )
)
(:action evaluate-comp935-off-comp934
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (not (rebooted comp935))
    (not (running comp934))
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
    (one-off comp935)
  )
)
(:action evaluate-comp935-off-comp1082
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (not (rebooted comp935))
    (not (running comp1082))
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
    (one-off comp935)
  )
)
(:action evaluate-comp936-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (rebooted comp936)
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
  )
)
(:action evaluate-comp936-all-on
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (not (rebooted comp936))
    (running comp935)
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
    (all-on comp936)
  )
)
(:action evaluate-comp936-off-comp935
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (not (rebooted comp936))
    (not (running comp935))
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
    (one-off comp936)
  )
)
(:action evaluate-comp937-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (rebooted comp937)
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
  )
)
(:action evaluate-comp937-all-on
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (not (rebooted comp937))
    (running comp936)
    (running comp1394)
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
    (all-on comp937)
  )
)
(:action evaluate-comp937-off-comp936
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (not (rebooted comp937))
    (not (running comp936))
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
    (one-off comp937)
  )
)
(:action evaluate-comp937-off-comp1394
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (not (rebooted comp937))
    (not (running comp1394))
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
    (one-off comp937)
  )
)
(:action evaluate-comp938-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (rebooted comp938)
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
  )
)
(:action evaluate-comp938-all-on
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (not (rebooted comp938))
    (running comp761)
    (running comp937)
    (running comp1023)
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
    (all-on comp938)
  )
)
(:action evaluate-comp938-off-comp761
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (not (rebooted comp938))
    (not (running comp761))
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
    (one-off comp938)
  )
)
(:action evaluate-comp938-off-comp937
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (not (rebooted comp938))
    (not (running comp937))
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
    (one-off comp938)
  )
)
(:action evaluate-comp938-off-comp1023
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (not (rebooted comp938))
    (not (running comp1023))
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
    (one-off comp938)
  )
)
(:action evaluate-comp939-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (rebooted comp939)
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
  )
)
(:action evaluate-comp939-all-on
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (not (rebooted comp939))
    (running comp731)
    (running comp938)
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
    (all-on comp939)
  )
)
(:action evaluate-comp939-off-comp731
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (not (rebooted comp939))
    (not (running comp731))
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
    (one-off comp939)
  )
)
(:action evaluate-comp939-off-comp938
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (not (rebooted comp939))
    (not (running comp938))
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
    (one-off comp939)
  )
)
(:action evaluate-comp940-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (rebooted comp940)
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
  )
)
(:action evaluate-comp940-all-on
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (not (rebooted comp940))
    (running comp667)
    (running comp939)
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
    (all-on comp940)
  )
)
(:action evaluate-comp940-off-comp667
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (not (rebooted comp940))
    (not (running comp667))
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
    (one-off comp940)
  )
)
(:action evaluate-comp940-off-comp939
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (not (rebooted comp940))
    (not (running comp939))
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
    (one-off comp940)
  )
)
(:action evaluate-comp941-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp941)
    (rebooted comp941)
  )
  :effect (and
    (not (evaluate comp941))
    (evaluate comp942)
  )
)
(:action evaluate-comp941-all-on
  :parameters ()
  :precondition (and
    (evaluate comp941)
    (not (rebooted comp941))
    (running comp940)
  )
  :effect (and
    (not (evaluate comp941))
    (evaluate comp942)
    (all-on comp941)
  )
)
(:action evaluate-comp941-off-comp940
  :parameters ()
  :precondition (and
    (evaluate comp941)
    (not (rebooted comp941))
    (not (running comp940))
  )
  :effect (and
    (not (evaluate comp941))
    (evaluate comp942)
    (one-off comp941)
  )
)
(:action evaluate-comp942-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp942)
    (rebooted comp942)
  )
  :effect (and
    (not (evaluate comp942))
    (evaluate comp943)
  )
)
(:action evaluate-comp942-all-on
  :parameters ()
  :precondition (and
    (evaluate comp942)
    (not (rebooted comp942))
    (running comp941)
  )
  :effect (and
    (not (evaluate comp942))
    (evaluate comp943)
    (all-on comp942)
  )
)
(:action evaluate-comp942-off-comp941
  :parameters ()
  :precondition (and
    (evaluate comp942)
    (not (rebooted comp942))
    (not (running comp941))
  )
  :effect (and
    (not (evaluate comp942))
    (evaluate comp943)
    (one-off comp942)
  )
)
(:action evaluate-comp943-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (rebooted comp943)
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
  )
)
(:action evaluate-comp943-all-on
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (not (rebooted comp943))
    (running comp83)
    (running comp942)
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
    (all-on comp943)
  )
)
(:action evaluate-comp943-off-comp83
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (not (rebooted comp943))
    (not (running comp83))
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
    (one-off comp943)
  )
)
(:action evaluate-comp943-off-comp942
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (not (rebooted comp943))
    (not (running comp942))
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
    (one-off comp943)
  )
)
(:action evaluate-comp944-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (rebooted comp944)
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
  )
)
(:action evaluate-comp944-all-on
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (not (rebooted comp944))
    (running comp210)
    (running comp943)
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
    (all-on comp944)
  )
)
(:action evaluate-comp944-off-comp210
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (not (rebooted comp944))
    (not (running comp210))
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
    (one-off comp944)
  )
)
(:action evaluate-comp944-off-comp943
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (not (rebooted comp944))
    (not (running comp943))
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
    (one-off comp944)
  )
)
(:action evaluate-comp945-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (rebooted comp945)
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
  )
)
(:action evaluate-comp945-all-on
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (not (rebooted comp945))
    (running comp944)
    (running comp965)
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
    (all-on comp945)
  )
)
(:action evaluate-comp945-off-comp944
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (not (rebooted comp945))
    (not (running comp944))
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
    (one-off comp945)
  )
)
(:action evaluate-comp945-off-comp965
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (not (rebooted comp945))
    (not (running comp965))
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
    (one-off comp945)
  )
)
(:action evaluate-comp946-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (rebooted comp946)
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
  )
)
(:action evaluate-comp946-all-on
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (not (rebooted comp946))
    (running comp369)
    (running comp945)
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
    (all-on comp946)
  )
)
(:action evaluate-comp946-off-comp369
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (not (rebooted comp946))
    (not (running comp369))
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
    (one-off comp946)
  )
)
(:action evaluate-comp946-off-comp945
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (not (rebooted comp946))
    (not (running comp945))
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
    (one-off comp946)
  )
)
(:action evaluate-comp947-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (rebooted comp947)
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
  )
)
(:action evaluate-comp947-all-on
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (not (rebooted comp947))
    (running comp946)
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
    (all-on comp947)
  )
)
(:action evaluate-comp947-off-comp946
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (not (rebooted comp947))
    (not (running comp946))
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
    (one-off comp947)
  )
)
(:action evaluate-comp948-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (rebooted comp948)
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
  )
)
(:action evaluate-comp948-all-on
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (not (rebooted comp948))
    (running comp947)
    (running comp1887)
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
    (all-on comp948)
  )
)
(:action evaluate-comp948-off-comp947
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (not (rebooted comp948))
    (not (running comp947))
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
    (one-off comp948)
  )
)
(:action evaluate-comp948-off-comp1887
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (not (rebooted comp948))
    (not (running comp1887))
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
    (one-off comp948)
  )
)
(:action evaluate-comp949-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (rebooted comp949)
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
  )
)
(:action evaluate-comp949-all-on
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (not (rebooted comp949))
    (running comp948)
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
    (all-on comp949)
  )
)
(:action evaluate-comp949-off-comp948
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (not (rebooted comp949))
    (not (running comp948))
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
    (one-off comp949)
  )
)
(:action evaluate-comp950-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (rebooted comp950)
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
  )
)
(:action evaluate-comp950-all-on
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (not (rebooted comp950))
    (running comp949)
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
    (all-on comp950)
  )
)
(:action evaluate-comp950-off-comp949
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (not (rebooted comp950))
    (not (running comp949))
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
    (one-off comp950)
  )
)
(:action evaluate-comp951-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (rebooted comp951)
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
  )
)
(:action evaluate-comp951-all-on
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (not (rebooted comp951))
    (running comp950)
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
    (all-on comp951)
  )
)
(:action evaluate-comp951-off-comp950
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (not (rebooted comp951))
    (not (running comp950))
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
    (one-off comp951)
  )
)
(:action evaluate-comp952-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp952)
    (rebooted comp952)
  )
  :effect (and
    (not (evaluate comp952))
    (evaluate comp953)
  )
)
(:action evaluate-comp952-all-on
  :parameters ()
  :precondition (and
    (evaluate comp952)
    (not (rebooted comp952))
    (running comp951)
  )
  :effect (and
    (not (evaluate comp952))
    (evaluate comp953)
    (all-on comp952)
  )
)
(:action evaluate-comp952-off-comp951
  :parameters ()
  :precondition (and
    (evaluate comp952)
    (not (rebooted comp952))
    (not (running comp951))
  )
  :effect (and
    (not (evaluate comp952))
    (evaluate comp953)
    (one-off comp952)
  )
)
(:action evaluate-comp953-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp953)
    (rebooted comp953)
  )
  :effect (and
    (not (evaluate comp953))
    (evaluate comp954)
  )
)
(:action evaluate-comp953-all-on
  :parameters ()
  :precondition (and
    (evaluate comp953)
    (not (rebooted comp953))
    (running comp952)
  )
  :effect (and
    (not (evaluate comp953))
    (evaluate comp954)
    (all-on comp953)
  )
)
(:action evaluate-comp953-off-comp952
  :parameters ()
  :precondition (and
    (evaluate comp953)
    (not (rebooted comp953))
    (not (running comp952))
  )
  :effect (and
    (not (evaluate comp953))
    (evaluate comp954)
    (one-off comp953)
  )
)
(:action evaluate-comp954-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (rebooted comp954)
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
  )
)
(:action evaluate-comp954-all-on
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (not (rebooted comp954))
    (running comp953)
    (running comp1533)
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
    (all-on comp954)
  )
)
(:action evaluate-comp954-off-comp953
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (not (rebooted comp954))
    (not (running comp953))
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
    (one-off comp954)
  )
)
(:action evaluate-comp954-off-comp1533
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (not (rebooted comp954))
    (not (running comp1533))
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
    (one-off comp954)
  )
)
(:action evaluate-comp955-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp955)
    (rebooted comp955)
  )
  :effect (and
    (not (evaluate comp955))
    (evaluate comp956)
  )
)
(:action evaluate-comp955-all-on
  :parameters ()
  :precondition (and
    (evaluate comp955)
    (not (rebooted comp955))
    (running comp954)
  )
  :effect (and
    (not (evaluate comp955))
    (evaluate comp956)
    (all-on comp955)
  )
)
(:action evaluate-comp955-off-comp954
  :parameters ()
  :precondition (and
    (evaluate comp955)
    (not (rebooted comp955))
    (not (running comp954))
  )
  :effect (and
    (not (evaluate comp955))
    (evaluate comp956)
    (one-off comp955)
  )
)
(:action evaluate-comp956-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (rebooted comp956)
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
  )
)
(:action evaluate-comp956-all-on
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (not (rebooted comp956))
    (running comp513)
    (running comp955)
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
    (all-on comp956)
  )
)
(:action evaluate-comp956-off-comp513
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (not (rebooted comp956))
    (not (running comp513))
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
    (one-off comp956)
  )
)
(:action evaluate-comp956-off-comp955
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (not (rebooted comp956))
    (not (running comp955))
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
    (one-off comp956)
  )
)
(:action evaluate-comp957-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (rebooted comp957)
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
  )
)
(:action evaluate-comp957-all-on
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (not (rebooted comp957))
    (running comp956)
    (running comp1696)
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
    (all-on comp957)
  )
)
(:action evaluate-comp957-off-comp956
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (not (rebooted comp957))
    (not (running comp956))
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
    (one-off comp957)
  )
)
(:action evaluate-comp957-off-comp1696
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (not (rebooted comp957))
    (not (running comp1696))
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
    (one-off comp957)
  )
)
(:action evaluate-comp958-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (rebooted comp958)
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
  )
)
(:action evaluate-comp958-all-on
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (not (rebooted comp958))
    (running comp957)
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
    (all-on comp958)
  )
)
(:action evaluate-comp958-off-comp957
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (not (rebooted comp958))
    (not (running comp957))
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
    (one-off comp958)
  )
)
(:action evaluate-comp959-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (rebooted comp959)
  )
  :effect (and
    (not (evaluate comp959))
    (evaluate comp960)
  )
)
(:action evaluate-comp959-all-on
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (not (rebooted comp959))
    (running comp958)
  )
  :effect (and
    (not (evaluate comp959))
    (evaluate comp960)
    (all-on comp959)
  )
)
(:action evaluate-comp959-off-comp958
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (not (rebooted comp959))
    (not (running comp958))
  )
  :effect (and
    (not (evaluate comp959))
    (evaluate comp960)
    (one-off comp959)
  )
)
(:action evaluate-comp960-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp960)
    (rebooted comp960)
  )
  :effect (and
    (not (evaluate comp960))
    (evaluate comp961)
  )
)
(:action evaluate-comp960-all-on
  :parameters ()
  :precondition (and
    (evaluate comp960)
    (not (rebooted comp960))
    (running comp959)
  )
  :effect (and
    (not (evaluate comp960))
    (evaluate comp961)
    (all-on comp960)
  )
)
(:action evaluate-comp960-off-comp959
  :parameters ()
  :precondition (and
    (evaluate comp960)
    (not (rebooted comp960))
    (not (running comp959))
  )
  :effect (and
    (not (evaluate comp960))
    (evaluate comp961)
    (one-off comp960)
  )
)
(:action evaluate-comp961-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp961)
    (rebooted comp961)
  )
  :effect (and
    (not (evaluate comp961))
    (evaluate comp962)
  )
)
(:action evaluate-comp961-all-on
  :parameters ()
  :precondition (and
    (evaluate comp961)
    (not (rebooted comp961))
    (running comp960)
  )
  :effect (and
    (not (evaluate comp961))
    (evaluate comp962)
    (all-on comp961)
  )
)
(:action evaluate-comp961-off-comp960
  :parameters ()
  :precondition (and
    (evaluate comp961)
    (not (rebooted comp961))
    (not (running comp960))
  )
  :effect (and
    (not (evaluate comp961))
    (evaluate comp962)
    (one-off comp961)
  )
)
(:action evaluate-comp962-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp962)
    (rebooted comp962)
  )
  :effect (and
    (not (evaluate comp962))
    (evaluate comp963)
  )
)
(:action evaluate-comp962-all-on
  :parameters ()
  :precondition (and
    (evaluate comp962)
    (not (rebooted comp962))
    (running comp961)
  )
  :effect (and
    (not (evaluate comp962))
    (evaluate comp963)
    (all-on comp962)
  )
)
(:action evaluate-comp962-off-comp961
  :parameters ()
  :precondition (and
    (evaluate comp962)
    (not (rebooted comp962))
    (not (running comp961))
  )
  :effect (and
    (not (evaluate comp962))
    (evaluate comp963)
    (one-off comp962)
  )
)
(:action evaluate-comp963-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp963)
    (rebooted comp963)
  )
  :effect (and
    (not (evaluate comp963))
    (evaluate comp964)
  )
)
(:action evaluate-comp963-all-on
  :parameters ()
  :precondition (and
    (evaluate comp963)
    (not (rebooted comp963))
    (running comp962)
    (running comp1467)
  )
  :effect (and
    (not (evaluate comp963))
    (evaluate comp964)
    (all-on comp963)
  )
)
(:action evaluate-comp963-off-comp962
  :parameters ()
  :precondition (and
    (evaluate comp963)
    (not (rebooted comp963))
    (not (running comp962))
  )
  :effect (and
    (not (evaluate comp963))
    (evaluate comp964)
    (one-off comp963)
  )
)
(:action evaluate-comp963-off-comp1467
  :parameters ()
  :precondition (and
    (evaluate comp963)
    (not (rebooted comp963))
    (not (running comp1467))
  )
  :effect (and
    (not (evaluate comp963))
    (evaluate comp964)
    (one-off comp963)
  )
)
(:action evaluate-comp964-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp964)
    (rebooted comp964)
  )
  :effect (and
    (not (evaluate comp964))
    (evaluate comp965)
  )
)
(:action evaluate-comp964-all-on
  :parameters ()
  :precondition (and
    (evaluate comp964)
    (not (rebooted comp964))
    (running comp963)
  )
  :effect (and
    (not (evaluate comp964))
    (evaluate comp965)
    (all-on comp964)
  )
)
(:action evaluate-comp964-off-comp963
  :parameters ()
  :precondition (and
    (evaluate comp964)
    (not (rebooted comp964))
    (not (running comp963))
  )
  :effect (and
    (not (evaluate comp964))
    (evaluate comp965)
    (one-off comp964)
  )
)
(:action evaluate-comp965-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp965)
    (rebooted comp965)
  )
  :effect (and
    (not (evaluate comp965))
    (evaluate comp966)
  )
)
(:action evaluate-comp965-all-on
  :parameters ()
  :precondition (and
    (evaluate comp965)
    (not (rebooted comp965))
    (running comp964)
  )
  :effect (and
    (not (evaluate comp965))
    (evaluate comp966)
    (all-on comp965)
  )
)
(:action evaluate-comp965-off-comp964
  :parameters ()
  :precondition (and
    (evaluate comp965)
    (not (rebooted comp965))
    (not (running comp964))
  )
  :effect (and
    (not (evaluate comp965))
    (evaluate comp966)
    (one-off comp965)
  )
)
(:action evaluate-comp966-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp966)
    (rebooted comp966)
  )
  :effect (and
    (not (evaluate comp966))
    (evaluate comp967)
  )
)
(:action evaluate-comp966-all-on
  :parameters ()
  :precondition (and
    (evaluate comp966)
    (not (rebooted comp966))
    (running comp965)
  )
  :effect (and
    (not (evaluate comp966))
    (evaluate comp967)
    (all-on comp966)
  )
)
(:action evaluate-comp966-off-comp965
  :parameters ()
  :precondition (and
    (evaluate comp966)
    (not (rebooted comp966))
    (not (running comp965))
  )
  :effect (and
    (not (evaluate comp966))
    (evaluate comp967)
    (one-off comp966)
  )
)
(:action evaluate-comp967-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp967)
    (rebooted comp967)
  )
  :effect (and
    (not (evaluate comp967))
    (evaluate comp968)
  )
)
(:action evaluate-comp967-all-on
  :parameters ()
  :precondition (and
    (evaluate comp967)
    (not (rebooted comp967))
    (running comp966)
  )
  :effect (and
    (not (evaluate comp967))
    (evaluate comp968)
    (all-on comp967)
  )
)
(:action evaluate-comp967-off-comp966
  :parameters ()
  :precondition (and
    (evaluate comp967)
    (not (rebooted comp967))
    (not (running comp966))
  )
  :effect (and
    (not (evaluate comp967))
    (evaluate comp968)
    (one-off comp967)
  )
)
(:action evaluate-comp968-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp968)
    (rebooted comp968)
  )
  :effect (and
    (not (evaluate comp968))
    (evaluate comp969)
  )
)
(:action evaluate-comp968-all-on
  :parameters ()
  :precondition (and
    (evaluate comp968)
    (not (rebooted comp968))
    (running comp967)
    (running comp1429)
  )
  :effect (and
    (not (evaluate comp968))
    (evaluate comp969)
    (all-on comp968)
  )
)
(:action evaluate-comp968-off-comp967
  :parameters ()
  :precondition (and
    (evaluate comp968)
    (not (rebooted comp968))
    (not (running comp967))
  )
  :effect (and
    (not (evaluate comp968))
    (evaluate comp969)
    (one-off comp968)
  )
)
(:action evaluate-comp968-off-comp1429
  :parameters ()
  :precondition (and
    (evaluate comp968)
    (not (rebooted comp968))
    (not (running comp1429))
  )
  :effect (and
    (not (evaluate comp968))
    (evaluate comp969)
    (one-off comp968)
  )
)
(:action evaluate-comp969-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp969)
    (rebooted comp969)
  )
  :effect (and
    (not (evaluate comp969))
    (evaluate comp970)
  )
)
(:action evaluate-comp969-all-on
  :parameters ()
  :precondition (and
    (evaluate comp969)
    (not (rebooted comp969))
    (running comp968)
  )
  :effect (and
    (not (evaluate comp969))
    (evaluate comp970)
    (all-on comp969)
  )
)
(:action evaluate-comp969-off-comp968
  :parameters ()
  :precondition (and
    (evaluate comp969)
    (not (rebooted comp969))
    (not (running comp968))
  )
  :effect (and
    (not (evaluate comp969))
    (evaluate comp970)
    (one-off comp969)
  )
)
(:action evaluate-comp970-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp970)
    (rebooted comp970)
  )
  :effect (and
    (not (evaluate comp970))
    (evaluate comp971)
  )
)
(:action evaluate-comp970-all-on
  :parameters ()
  :precondition (and
    (evaluate comp970)
    (not (rebooted comp970))
    (running comp969)
    (running comp1167)
  )
  :effect (and
    (not (evaluate comp970))
    (evaluate comp971)
    (all-on comp970)
  )
)
(:action evaluate-comp970-off-comp969
  :parameters ()
  :precondition (and
    (evaluate comp970)
    (not (rebooted comp970))
    (not (running comp969))
  )
  :effect (and
    (not (evaluate comp970))
    (evaluate comp971)
    (one-off comp970)
  )
)
(:action evaluate-comp970-off-comp1167
  :parameters ()
  :precondition (and
    (evaluate comp970)
    (not (rebooted comp970))
    (not (running comp1167))
  )
  :effect (and
    (not (evaluate comp970))
    (evaluate comp971)
    (one-off comp970)
  )
)
(:action evaluate-comp971-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp971)
    (rebooted comp971)
  )
  :effect (and
    (not (evaluate comp971))
    (evaluate comp972)
  )
)
(:action evaluate-comp971-all-on
  :parameters ()
  :precondition (and
    (evaluate comp971)
    (not (rebooted comp971))
    (running comp688)
    (running comp970)
  )
  :effect (and
    (not (evaluate comp971))
    (evaluate comp972)
    (all-on comp971)
  )
)
(:action evaluate-comp971-off-comp688
  :parameters ()
  :precondition (and
    (evaluate comp971)
    (not (rebooted comp971))
    (not (running comp688))
  )
  :effect (and
    (not (evaluate comp971))
    (evaluate comp972)
    (one-off comp971)
  )
)
(:action evaluate-comp971-off-comp970
  :parameters ()
  :precondition (and
    (evaluate comp971)
    (not (rebooted comp971))
    (not (running comp970))
  )
  :effect (and
    (not (evaluate comp971))
    (evaluate comp972)
    (one-off comp971)
  )
)
(:action evaluate-comp972-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp972)
    (rebooted comp972)
  )
  :effect (and
    (not (evaluate comp972))
    (evaluate comp973)
  )
)
(:action evaluate-comp972-all-on
  :parameters ()
  :precondition (and
    (evaluate comp972)
    (not (rebooted comp972))
    (running comp796)
    (running comp971)
  )
  :effect (and
    (not (evaluate comp972))
    (evaluate comp973)
    (all-on comp972)
  )
)
(:action evaluate-comp972-off-comp796
  :parameters ()
  :precondition (and
    (evaluate comp972)
    (not (rebooted comp972))
    (not (running comp796))
  )
  :effect (and
    (not (evaluate comp972))
    (evaluate comp973)
    (one-off comp972)
  )
)
(:action evaluate-comp972-off-comp971
  :parameters ()
  :precondition (and
    (evaluate comp972)
    (not (rebooted comp972))
    (not (running comp971))
  )
  :effect (and
    (not (evaluate comp972))
    (evaluate comp973)
    (one-off comp972)
  )
)
(:action evaluate-comp973-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp973)
    (rebooted comp973)
  )
  :effect (and
    (not (evaluate comp973))
    (evaluate comp974)
  )
)
(:action evaluate-comp973-all-on
  :parameters ()
  :precondition (and
    (evaluate comp973)
    (not (rebooted comp973))
    (running comp972)
    (running comp1371)
  )
  :effect (and
    (not (evaluate comp973))
    (evaluate comp974)
    (all-on comp973)
  )
)
(:action evaluate-comp973-off-comp972
  :parameters ()
  :precondition (and
    (evaluate comp973)
    (not (rebooted comp973))
    (not (running comp972))
  )
  :effect (and
    (not (evaluate comp973))
    (evaluate comp974)
    (one-off comp973)
  )
)
(:action evaluate-comp973-off-comp1371
  :parameters ()
  :precondition (and
    (evaluate comp973)
    (not (rebooted comp973))
    (not (running comp1371))
  )
  :effect (and
    (not (evaluate comp973))
    (evaluate comp974)
    (one-off comp973)
  )
)
(:action evaluate-comp974-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp974)
    (rebooted comp974)
  )
  :effect (and
    (not (evaluate comp974))
    (evaluate comp975)
  )
)
(:action evaluate-comp974-all-on
  :parameters ()
  :precondition (and
    (evaluate comp974)
    (not (rebooted comp974))
    (running comp577)
    (running comp973)
    (running comp1263)
    (running comp1733)
  )
  :effect (and
    (not (evaluate comp974))
    (evaluate comp975)
    (all-on comp974)
  )
)
(:action evaluate-comp974-off-comp577
  :parameters ()
  :precondition (and
    (evaluate comp974)
    (not (rebooted comp974))
    (not (running comp577))
  )
  :effect (and
    (not (evaluate comp974))
    (evaluate comp975)
    (one-off comp974)
  )
)
(:action evaluate-comp974-off-comp973
  :parameters ()
  :precondition (and
    (evaluate comp974)
    (not (rebooted comp974))
    (not (running comp973))
  )
  :effect (and
    (not (evaluate comp974))
    (evaluate comp975)
    (one-off comp974)
  )
)
(:action evaluate-comp974-off-comp1263
  :parameters ()
  :precondition (and
    (evaluate comp974)
    (not (rebooted comp974))
    (not (running comp1263))
  )
  :effect (and
    (not (evaluate comp974))
    (evaluate comp975)
    (one-off comp974)
  )
)
(:action evaluate-comp974-off-comp1733
  :parameters ()
  :precondition (and
    (evaluate comp974)
    (not (rebooted comp974))
    (not (running comp1733))
  )
  :effect (and
    (not (evaluate comp974))
    (evaluate comp975)
    (one-off comp974)
  )
)
(:action evaluate-comp975-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp975)
    (rebooted comp975)
  )
  :effect (and
    (not (evaluate comp975))
    (evaluate comp976)
  )
)
(:action evaluate-comp975-all-on
  :parameters ()
  :precondition (and
    (evaluate comp975)
    (not (rebooted comp975))
    (running comp974)
  )
  :effect (and
    (not (evaluate comp975))
    (evaluate comp976)
    (all-on comp975)
  )
)
(:action evaluate-comp975-off-comp974
  :parameters ()
  :precondition (and
    (evaluate comp975)
    (not (rebooted comp975))
    (not (running comp974))
  )
  :effect (and
    (not (evaluate comp975))
    (evaluate comp976)
    (one-off comp975)
  )
)
(:action evaluate-comp976-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp976)
    (rebooted comp976)
  )
  :effect (and
    (not (evaluate comp976))
    (evaluate comp977)
  )
)
(:action evaluate-comp976-all-on
  :parameters ()
  :precondition (and
    (evaluate comp976)
    (not (rebooted comp976))
    (running comp975)
  )
  :effect (and
    (not (evaluate comp976))
    (evaluate comp977)
    (all-on comp976)
  )
)
(:action evaluate-comp976-off-comp975
  :parameters ()
  :precondition (and
    (evaluate comp976)
    (not (rebooted comp976))
    (not (running comp975))
  )
  :effect (and
    (not (evaluate comp976))
    (evaluate comp977)
    (one-off comp976)
  )
)
(:action evaluate-comp977-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp977)
    (rebooted comp977)
  )
  :effect (and
    (not (evaluate comp977))
    (evaluate comp978)
  )
)
(:action evaluate-comp977-all-on
  :parameters ()
  :precondition (and
    (evaluate comp977)
    (not (rebooted comp977))
    (running comp976)
  )
  :effect (and
    (not (evaluate comp977))
    (evaluate comp978)
    (all-on comp977)
  )
)
(:action evaluate-comp977-off-comp976
  :parameters ()
  :precondition (and
    (evaluate comp977)
    (not (rebooted comp977))
    (not (running comp976))
  )
  :effect (and
    (not (evaluate comp977))
    (evaluate comp978)
    (one-off comp977)
  )
)
(:action evaluate-comp978-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp978)
    (rebooted comp978)
  )
  :effect (and
    (not (evaluate comp978))
    (evaluate comp979)
  )
)
(:action evaluate-comp978-all-on
  :parameters ()
  :precondition (and
    (evaluate comp978)
    (not (rebooted comp978))
    (running comp977)
  )
  :effect (and
    (not (evaluate comp978))
    (evaluate comp979)
    (all-on comp978)
  )
)
(:action evaluate-comp978-off-comp977
  :parameters ()
  :precondition (and
    (evaluate comp978)
    (not (rebooted comp978))
    (not (running comp977))
  )
  :effect (and
    (not (evaluate comp978))
    (evaluate comp979)
    (one-off comp978)
  )
)
(:action evaluate-comp979-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp979)
    (rebooted comp979)
  )
  :effect (and
    (not (evaluate comp979))
    (evaluate comp980)
  )
)
(:action evaluate-comp979-all-on
  :parameters ()
  :precondition (and
    (evaluate comp979)
    (not (rebooted comp979))
    (running comp978)
  )
  :effect (and
    (not (evaluate comp979))
    (evaluate comp980)
    (all-on comp979)
  )
)
(:action evaluate-comp979-off-comp978
  :parameters ()
  :precondition (and
    (evaluate comp979)
    (not (rebooted comp979))
    (not (running comp978))
  )
  :effect (and
    (not (evaluate comp979))
    (evaluate comp980)
    (one-off comp979)
  )
)
(:action evaluate-comp980-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp980)
    (rebooted comp980)
  )
  :effect (and
    (not (evaluate comp980))
    (evaluate comp981)
  )
)
(:action evaluate-comp980-all-on
  :parameters ()
  :precondition (and
    (evaluate comp980)
    (not (rebooted comp980))
    (running comp979)
  )
  :effect (and
    (not (evaluate comp980))
    (evaluate comp981)
    (all-on comp980)
  )
)
(:action evaluate-comp980-off-comp979
  :parameters ()
  :precondition (and
    (evaluate comp980)
    (not (rebooted comp980))
    (not (running comp979))
  )
  :effect (and
    (not (evaluate comp980))
    (evaluate comp981)
    (one-off comp980)
  )
)
(:action evaluate-comp981-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp981)
    (rebooted comp981)
  )
  :effect (and
    (not (evaluate comp981))
    (evaluate comp982)
  )
)
(:action evaluate-comp981-all-on
  :parameters ()
  :precondition (and
    (evaluate comp981)
    (not (rebooted comp981))
    (running comp980)
  )
  :effect (and
    (not (evaluate comp981))
    (evaluate comp982)
    (all-on comp981)
  )
)
(:action evaluate-comp981-off-comp980
  :parameters ()
  :precondition (and
    (evaluate comp981)
    (not (rebooted comp981))
    (not (running comp980))
  )
  :effect (and
    (not (evaluate comp981))
    (evaluate comp982)
    (one-off comp981)
  )
)
(:action evaluate-comp982-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp982)
    (rebooted comp982)
  )
  :effect (and
    (not (evaluate comp982))
    (evaluate comp983)
  )
)
(:action evaluate-comp982-all-on
  :parameters ()
  :precondition (and
    (evaluate comp982)
    (not (rebooted comp982))
    (running comp981)
  )
  :effect (and
    (not (evaluate comp982))
    (evaluate comp983)
    (all-on comp982)
  )
)
(:action evaluate-comp982-off-comp981
  :parameters ()
  :precondition (and
    (evaluate comp982)
    (not (rebooted comp982))
    (not (running comp981))
  )
  :effect (and
    (not (evaluate comp982))
    (evaluate comp983)
    (one-off comp982)
  )
)
(:action evaluate-comp983-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp983)
    (rebooted comp983)
  )
  :effect (and
    (not (evaluate comp983))
    (evaluate comp984)
  )
)
(:action evaluate-comp983-all-on
  :parameters ()
  :precondition (and
    (evaluate comp983)
    (not (rebooted comp983))
    (running comp982)
  )
  :effect (and
    (not (evaluate comp983))
    (evaluate comp984)
    (all-on comp983)
  )
)
(:action evaluate-comp983-off-comp982
  :parameters ()
  :precondition (and
    (evaluate comp983)
    (not (rebooted comp983))
    (not (running comp982))
  )
  :effect (and
    (not (evaluate comp983))
    (evaluate comp984)
    (one-off comp983)
  )
)
(:action evaluate-comp984-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp984)
    (rebooted comp984)
  )
  :effect (and
    (not (evaluate comp984))
    (evaluate comp985)
  )
)
(:action evaluate-comp984-all-on
  :parameters ()
  :precondition (and
    (evaluate comp984)
    (not (rebooted comp984))
    (running comp983)
  )
  :effect (and
    (not (evaluate comp984))
    (evaluate comp985)
    (all-on comp984)
  )
)
(:action evaluate-comp984-off-comp983
  :parameters ()
  :precondition (and
    (evaluate comp984)
    (not (rebooted comp984))
    (not (running comp983))
  )
  :effect (and
    (not (evaluate comp984))
    (evaluate comp985)
    (one-off comp984)
  )
)
(:action evaluate-comp985-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp985)
    (rebooted comp985)
  )
  :effect (and
    (not (evaluate comp985))
    (evaluate comp986)
  )
)
(:action evaluate-comp985-all-on
  :parameters ()
  :precondition (and
    (evaluate comp985)
    (not (rebooted comp985))
    (running comp984)
  )
  :effect (and
    (not (evaluate comp985))
    (evaluate comp986)
    (all-on comp985)
  )
)
(:action evaluate-comp985-off-comp984
  :parameters ()
  :precondition (and
    (evaluate comp985)
    (not (rebooted comp985))
    (not (running comp984))
  )
  :effect (and
    (not (evaluate comp985))
    (evaluate comp986)
    (one-off comp985)
  )
)
(:action evaluate-comp986-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp986)
    (rebooted comp986)
  )
  :effect (and
    (not (evaluate comp986))
    (evaluate comp987)
  )
)
(:action evaluate-comp986-all-on
  :parameters ()
  :precondition (and
    (evaluate comp986)
    (not (rebooted comp986))
    (running comp850)
    (running comp985)
    (running comp1112)
    (running comp1317)
  )
  :effect (and
    (not (evaluate comp986))
    (evaluate comp987)
    (all-on comp986)
  )
)
(:action evaluate-comp986-off-comp850
  :parameters ()
  :precondition (and
    (evaluate comp986)
    (not (rebooted comp986))
    (not (running comp850))
  )
  :effect (and
    (not (evaluate comp986))
    (evaluate comp987)
    (one-off comp986)
  )
)
(:action evaluate-comp986-off-comp985
  :parameters ()
  :precondition (and
    (evaluate comp986)
    (not (rebooted comp986))
    (not (running comp985))
  )
  :effect (and
    (not (evaluate comp986))
    (evaluate comp987)
    (one-off comp986)
  )
)
(:action evaluate-comp986-off-comp1112
  :parameters ()
  :precondition (and
    (evaluate comp986)
    (not (rebooted comp986))
    (not (running comp1112))
  )
  :effect (and
    (not (evaluate comp986))
    (evaluate comp987)
    (one-off comp986)
  )
)
(:action evaluate-comp986-off-comp1317
  :parameters ()
  :precondition (and
    (evaluate comp986)
    (not (rebooted comp986))
    (not (running comp1317))
  )
  :effect (and
    (not (evaluate comp986))
    (evaluate comp987)
    (one-off comp986)
  )
)
(:action evaluate-comp987-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp987)
    (rebooted comp987)
  )
  :effect (and
    (not (evaluate comp987))
    (evaluate comp988)
  )
)
(:action evaluate-comp987-all-on
  :parameters ()
  :precondition (and
    (evaluate comp987)
    (not (rebooted comp987))
    (running comp986)
    (running comp1365)
  )
  :effect (and
    (not (evaluate comp987))
    (evaluate comp988)
    (all-on comp987)
  )
)
(:action evaluate-comp987-off-comp986
  :parameters ()
  :precondition (and
    (evaluate comp987)
    (not (rebooted comp987))
    (not (running comp986))
  )
  :effect (and
    (not (evaluate comp987))
    (evaluate comp988)
    (one-off comp987)
  )
)
(:action evaluate-comp987-off-comp1365
  :parameters ()
  :precondition (and
    (evaluate comp987)
    (not (rebooted comp987))
    (not (running comp1365))
  )
  :effect (and
    (not (evaluate comp987))
    (evaluate comp988)
    (one-off comp987)
  )
)
(:action evaluate-comp988-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp988)
    (rebooted comp988)
  )
  :effect (and
    (not (evaluate comp988))
    (evaluate comp989)
  )
)
(:action evaluate-comp988-all-on
  :parameters ()
  :precondition (and
    (evaluate comp988)
    (not (rebooted comp988))
    (running comp987)
  )
  :effect (and
    (not (evaluate comp988))
    (evaluate comp989)
    (all-on comp988)
  )
)
(:action evaluate-comp988-off-comp987
  :parameters ()
  :precondition (and
    (evaluate comp988)
    (not (rebooted comp988))
    (not (running comp987))
  )
  :effect (and
    (not (evaluate comp988))
    (evaluate comp989)
    (one-off comp988)
  )
)
(:action evaluate-comp989-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp989)
    (rebooted comp989)
  )
  :effect (and
    (not (evaluate comp989))
    (evaluate comp990)
  )
)
(:action evaluate-comp989-all-on
  :parameters ()
  :precondition (and
    (evaluate comp989)
    (not (rebooted comp989))
    (running comp988)
  )
  :effect (and
    (not (evaluate comp989))
    (evaluate comp990)
    (all-on comp989)
  )
)
(:action evaluate-comp989-off-comp988
  :parameters ()
  :precondition (and
    (evaluate comp989)
    (not (rebooted comp989))
    (not (running comp988))
  )
  :effect (and
    (not (evaluate comp989))
    (evaluate comp990)
    (one-off comp989)
  )
)
(:action evaluate-comp990-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp990)
    (rebooted comp990)
  )
  :effect (and
    (not (evaluate comp990))
    (evaluate comp991)
  )
)
(:action evaluate-comp990-all-on
  :parameters ()
  :precondition (and
    (evaluate comp990)
    (not (rebooted comp990))
    (running comp989)
  )
  :effect (and
    (not (evaluate comp990))
    (evaluate comp991)
    (all-on comp990)
  )
)
(:action evaluate-comp990-off-comp989
  :parameters ()
  :precondition (and
    (evaluate comp990)
    (not (rebooted comp990))
    (not (running comp989))
  )
  :effect (and
    (not (evaluate comp990))
    (evaluate comp991)
    (one-off comp990)
  )
)
(:action evaluate-comp991-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp991)
    (rebooted comp991)
  )
  :effect (and
    (not (evaluate comp991))
    (evaluate comp992)
  )
)
(:action evaluate-comp991-all-on
  :parameters ()
  :precondition (and
    (evaluate comp991)
    (not (rebooted comp991))
    (running comp990)
  )
  :effect (and
    (not (evaluate comp991))
    (evaluate comp992)
    (all-on comp991)
  )
)
(:action evaluate-comp991-off-comp990
  :parameters ()
  :precondition (and
    (evaluate comp991)
    (not (rebooted comp991))
    (not (running comp990))
  )
  :effect (and
    (not (evaluate comp991))
    (evaluate comp992)
    (one-off comp991)
  )
)
(:action evaluate-comp992-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp992)
    (rebooted comp992)
  )
  :effect (and
    (not (evaluate comp992))
    (evaluate comp993)
  )
)
(:action evaluate-comp992-all-on
  :parameters ()
  :precondition (and
    (evaluate comp992)
    (not (rebooted comp992))
    (running comp991)
  )
  :effect (and
    (not (evaluate comp992))
    (evaluate comp993)
    (all-on comp992)
  )
)
(:action evaluate-comp992-off-comp991
  :parameters ()
  :precondition (and
    (evaluate comp992)
    (not (rebooted comp992))
    (not (running comp991))
  )
  :effect (and
    (not (evaluate comp992))
    (evaluate comp993)
    (one-off comp992)
  )
)
(:action evaluate-comp993-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp993)
    (rebooted comp993)
  )
  :effect (and
    (not (evaluate comp993))
    (evaluate comp994)
  )
)
(:action evaluate-comp993-all-on
  :parameters ()
  :precondition (and
    (evaluate comp993)
    (not (rebooted comp993))
    (running comp992)
  )
  :effect (and
    (not (evaluate comp993))
    (evaluate comp994)
    (all-on comp993)
  )
)
(:action evaluate-comp993-off-comp992
  :parameters ()
  :precondition (and
    (evaluate comp993)
    (not (rebooted comp993))
    (not (running comp992))
  )
  :effect (and
    (not (evaluate comp993))
    (evaluate comp994)
    (one-off comp993)
  )
)
(:action evaluate-comp994-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp994)
    (rebooted comp994)
  )
  :effect (and
    (not (evaluate comp994))
    (evaluate comp995)
  )
)
(:action evaluate-comp994-all-on
  :parameters ()
  :precondition (and
    (evaluate comp994)
    (not (rebooted comp994))
    (running comp993)
  )
  :effect (and
    (not (evaluate comp994))
    (evaluate comp995)
    (all-on comp994)
  )
)
(:action evaluate-comp994-off-comp993
  :parameters ()
  :precondition (and
    (evaluate comp994)
    (not (rebooted comp994))
    (not (running comp993))
  )
  :effect (and
    (not (evaluate comp994))
    (evaluate comp995)
    (one-off comp994)
  )
)
(:action evaluate-comp995-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp995)
    (rebooted comp995)
  )
  :effect (and
    (not (evaluate comp995))
    (evaluate comp996)
  )
)
(:action evaluate-comp995-all-on
  :parameters ()
  :precondition (and
    (evaluate comp995)
    (not (rebooted comp995))
    (running comp994)
    (running comp1905)
  )
  :effect (and
    (not (evaluate comp995))
    (evaluate comp996)
    (all-on comp995)
  )
)
(:action evaluate-comp995-off-comp994
  :parameters ()
  :precondition (and
    (evaluate comp995)
    (not (rebooted comp995))
    (not (running comp994))
  )
  :effect (and
    (not (evaluate comp995))
    (evaluate comp996)
    (one-off comp995)
  )
)
(:action evaluate-comp995-off-comp1905
  :parameters ()
  :precondition (and
    (evaluate comp995)
    (not (rebooted comp995))
    (not (running comp1905))
  )
  :effect (and
    (not (evaluate comp995))
    (evaluate comp996)
    (one-off comp995)
  )
)
(:action evaluate-comp996-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp996)
    (rebooted comp996)
  )
  :effect (and
    (not (evaluate comp996))
    (evaluate comp997)
  )
)
(:action evaluate-comp996-all-on
  :parameters ()
  :precondition (and
    (evaluate comp996)
    (not (rebooted comp996))
    (running comp995)
  )
  :effect (and
    (not (evaluate comp996))
    (evaluate comp997)
    (all-on comp996)
  )
)
(:action evaluate-comp996-off-comp995
  :parameters ()
  :precondition (and
    (evaluate comp996)
    (not (rebooted comp996))
    (not (running comp995))
  )
  :effect (and
    (not (evaluate comp996))
    (evaluate comp997)
    (one-off comp996)
  )
)
(:action evaluate-comp997-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp997)
    (rebooted comp997)
  )
  :effect (and
    (not (evaluate comp997))
    (evaluate comp998)
  )
)
(:action evaluate-comp997-all-on
  :parameters ()
  :precondition (and
    (evaluate comp997)
    (not (rebooted comp997))
    (running comp996)
  )
  :effect (and
    (not (evaluate comp997))
    (evaluate comp998)
    (all-on comp997)
  )
)
(:action evaluate-comp997-off-comp996
  :parameters ()
  :precondition (and
    (evaluate comp997)
    (not (rebooted comp997))
    (not (running comp996))
  )
  :effect (and
    (not (evaluate comp997))
    (evaluate comp998)
    (one-off comp997)
  )
)
(:action evaluate-comp998-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp998)
    (rebooted comp998)
  )
  :effect (and
    (not (evaluate comp998))
    (evaluate comp999)
  )
)
(:action evaluate-comp998-all-on
  :parameters ()
  :precondition (and
    (evaluate comp998)
    (not (rebooted comp998))
    (running comp997)
    (running comp1283)
  )
  :effect (and
    (not (evaluate comp998))
    (evaluate comp999)
    (all-on comp998)
  )
)
(:action evaluate-comp998-off-comp997
  :parameters ()
  :precondition (and
    (evaluate comp998)
    (not (rebooted comp998))
    (not (running comp997))
  )
  :effect (and
    (not (evaluate comp998))
    (evaluate comp999)
    (one-off comp998)
  )
)
(:action evaluate-comp998-off-comp1283
  :parameters ()
  :precondition (and
    (evaluate comp998)
    (not (rebooted comp998))
    (not (running comp1283))
  )
  :effect (and
    (not (evaluate comp998))
    (evaluate comp999)
    (one-off comp998)
  )
)
(:action evaluate-comp999-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp999)
    (rebooted comp999)
  )
  :effect (and
    (not (evaluate comp999))
    (evaluate comp1000)
  )
)
(:action evaluate-comp999-all-on
  :parameters ()
  :precondition (and
    (evaluate comp999)
    (not (rebooted comp999))
    (running comp998)
    (running comp1323)
  )
  :effect (and
    (not (evaluate comp999))
    (evaluate comp1000)
    (all-on comp999)
  )
)
(:action evaluate-comp999-off-comp998
  :parameters ()
  :precondition (and
    (evaluate comp999)
    (not (rebooted comp999))
    (not (running comp998))
  )
  :effect (and
    (not (evaluate comp999))
    (evaluate comp1000)
    (one-off comp999)
  )
)
(:action evaluate-comp999-off-comp1323
  :parameters ()
  :precondition (and
    (evaluate comp999)
    (not (rebooted comp999))
    (not (running comp1323))
  )
  :effect (and
    (not (evaluate comp999))
    (evaluate comp1000)
    (one-off comp999)
  )
)
(:action evaluate-comp1000-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1000)
    (rebooted comp1000)
  )
  :effect (and
    (not (evaluate comp1000))
    (evaluate comp1001)
  )
)
(:action evaluate-comp1000-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1000)
    (not (rebooted comp1000))
    (running comp504)
    (running comp999)
  )
  :effect (and
    (not (evaluate comp1000))
    (evaluate comp1001)
    (all-on comp1000)
  )
)
(:action evaluate-comp1000-off-comp504
  :parameters ()
  :precondition (and
    (evaluate comp1000)
    (not (rebooted comp1000))
    (not (running comp504))
  )
  :effect (and
    (not (evaluate comp1000))
    (evaluate comp1001)
    (one-off comp1000)
  )
)
(:action evaluate-comp1000-off-comp999
  :parameters ()
  :precondition (and
    (evaluate comp1000)
    (not (rebooted comp1000))
    (not (running comp999))
  )
  :effect (and
    (not (evaluate comp1000))
    (evaluate comp1001)
    (one-off comp1000)
  )
)
(:action evaluate-comp1001-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1001)
    (rebooted comp1001)
  )
  :effect (and
    (not (evaluate comp1001))
    (evaluate comp1002)
  )
)
(:action evaluate-comp1001-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1001)
    (not (rebooted comp1001))
    (running comp1000)
    (running comp1059)
  )
  :effect (and
    (not (evaluate comp1001))
    (evaluate comp1002)
    (all-on comp1001)
  )
)
(:action evaluate-comp1001-off-comp1000
  :parameters ()
  :precondition (and
    (evaluate comp1001)
    (not (rebooted comp1001))
    (not (running comp1000))
  )
  :effect (and
    (not (evaluate comp1001))
    (evaluate comp1002)
    (one-off comp1001)
  )
)
(:action evaluate-comp1001-off-comp1059
  :parameters ()
  :precondition (and
    (evaluate comp1001)
    (not (rebooted comp1001))
    (not (running comp1059))
  )
  :effect (and
    (not (evaluate comp1001))
    (evaluate comp1002)
    (one-off comp1001)
  )
)
(:action evaluate-comp1002-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1002)
    (rebooted comp1002)
  )
  :effect (and
    (not (evaluate comp1002))
    (evaluate comp1003)
  )
)
(:action evaluate-comp1002-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1002)
    (not (rebooted comp1002))
    (running comp1001)
    (running comp1773)
  )
  :effect (and
    (not (evaluate comp1002))
    (evaluate comp1003)
    (all-on comp1002)
  )
)
(:action evaluate-comp1002-off-comp1001
  :parameters ()
  :precondition (and
    (evaluate comp1002)
    (not (rebooted comp1002))
    (not (running comp1001))
  )
  :effect (and
    (not (evaluate comp1002))
    (evaluate comp1003)
    (one-off comp1002)
  )
)
(:action evaluate-comp1002-off-comp1773
  :parameters ()
  :precondition (and
    (evaluate comp1002)
    (not (rebooted comp1002))
    (not (running comp1773))
  )
  :effect (and
    (not (evaluate comp1002))
    (evaluate comp1003)
    (one-off comp1002)
  )
)
(:action evaluate-comp1003-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1003)
    (rebooted comp1003)
  )
  :effect (and
    (not (evaluate comp1003))
    (evaluate comp1004)
  )
)
(:action evaluate-comp1003-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1003)
    (not (rebooted comp1003))
    (running comp1002)
    (running comp1190)
  )
  :effect (and
    (not (evaluate comp1003))
    (evaluate comp1004)
    (all-on comp1003)
  )
)
(:action evaluate-comp1003-off-comp1002
  :parameters ()
  :precondition (and
    (evaluate comp1003)
    (not (rebooted comp1003))
    (not (running comp1002))
  )
  :effect (and
    (not (evaluate comp1003))
    (evaluate comp1004)
    (one-off comp1003)
  )
)
(:action evaluate-comp1003-off-comp1190
  :parameters ()
  :precondition (and
    (evaluate comp1003)
    (not (rebooted comp1003))
    (not (running comp1190))
  )
  :effect (and
    (not (evaluate comp1003))
    (evaluate comp1004)
    (one-off comp1003)
  )
)
(:action evaluate-comp1004-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1004)
    (rebooted comp1004)
  )
  :effect (and
    (not (evaluate comp1004))
    (evaluate comp1005)
  )
)
(:action evaluate-comp1004-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1004)
    (not (rebooted comp1004))
    (running comp254)
    (running comp1003)
  )
  :effect (and
    (not (evaluate comp1004))
    (evaluate comp1005)
    (all-on comp1004)
  )
)
(:action evaluate-comp1004-off-comp254
  :parameters ()
  :precondition (and
    (evaluate comp1004)
    (not (rebooted comp1004))
    (not (running comp254))
  )
  :effect (and
    (not (evaluate comp1004))
    (evaluate comp1005)
    (one-off comp1004)
  )
)
(:action evaluate-comp1004-off-comp1003
  :parameters ()
  :precondition (and
    (evaluate comp1004)
    (not (rebooted comp1004))
    (not (running comp1003))
  )
  :effect (and
    (not (evaluate comp1004))
    (evaluate comp1005)
    (one-off comp1004)
  )
)
(:action evaluate-comp1005-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1005)
    (rebooted comp1005)
  )
  :effect (and
    (not (evaluate comp1005))
    (evaluate comp1006)
  )
)
(:action evaluate-comp1005-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1005)
    (not (rebooted comp1005))
    (running comp1004)
  )
  :effect (and
    (not (evaluate comp1005))
    (evaluate comp1006)
    (all-on comp1005)
  )
)
(:action evaluate-comp1005-off-comp1004
  :parameters ()
  :precondition (and
    (evaluate comp1005)
    (not (rebooted comp1005))
    (not (running comp1004))
  )
  :effect (and
    (not (evaluate comp1005))
    (evaluate comp1006)
    (one-off comp1005)
  )
)
(:action evaluate-comp1006-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1006)
    (rebooted comp1006)
  )
  :effect (and
    (not (evaluate comp1006))
    (evaluate comp1007)
  )
)
(:action evaluate-comp1006-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1006)
    (not (rebooted comp1006))
    (running comp1005)
  )
  :effect (and
    (not (evaluate comp1006))
    (evaluate comp1007)
    (all-on comp1006)
  )
)
(:action evaluate-comp1006-off-comp1005
  :parameters ()
  :precondition (and
    (evaluate comp1006)
    (not (rebooted comp1006))
    (not (running comp1005))
  )
  :effect (and
    (not (evaluate comp1006))
    (evaluate comp1007)
    (one-off comp1006)
  )
)
(:action evaluate-comp1007-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1007)
    (rebooted comp1007)
  )
  :effect (and
    (not (evaluate comp1007))
    (evaluate comp1008)
  )
)
(:action evaluate-comp1007-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1007)
    (not (rebooted comp1007))
    (running comp1006)
    (running comp1167)
  )
  :effect (and
    (not (evaluate comp1007))
    (evaluate comp1008)
    (all-on comp1007)
  )
)
(:action evaluate-comp1007-off-comp1006
  :parameters ()
  :precondition (and
    (evaluate comp1007)
    (not (rebooted comp1007))
    (not (running comp1006))
  )
  :effect (and
    (not (evaluate comp1007))
    (evaluate comp1008)
    (one-off comp1007)
  )
)
(:action evaluate-comp1007-off-comp1167
  :parameters ()
  :precondition (and
    (evaluate comp1007)
    (not (rebooted comp1007))
    (not (running comp1167))
  )
  :effect (and
    (not (evaluate comp1007))
    (evaluate comp1008)
    (one-off comp1007)
  )
)
(:action evaluate-comp1008-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1008)
    (rebooted comp1008)
  )
  :effect (and
    (not (evaluate comp1008))
    (evaluate comp1009)
  )
)
(:action evaluate-comp1008-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1008)
    (not (rebooted comp1008))
    (running comp735)
    (running comp1007)
  )
  :effect (and
    (not (evaluate comp1008))
    (evaluate comp1009)
    (all-on comp1008)
  )
)
(:action evaluate-comp1008-off-comp735
  :parameters ()
  :precondition (and
    (evaluate comp1008)
    (not (rebooted comp1008))
    (not (running comp735))
  )
  :effect (and
    (not (evaluate comp1008))
    (evaluate comp1009)
    (one-off comp1008)
  )
)
(:action evaluate-comp1008-off-comp1007
  :parameters ()
  :precondition (and
    (evaluate comp1008)
    (not (rebooted comp1008))
    (not (running comp1007))
  )
  :effect (and
    (not (evaluate comp1008))
    (evaluate comp1009)
    (one-off comp1008)
  )
)
(:action evaluate-comp1009-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1009)
    (rebooted comp1009)
  )
  :effect (and
    (not (evaluate comp1009))
    (evaluate comp1010)
  )
)
(:action evaluate-comp1009-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1009)
    (not (rebooted comp1009))
    (running comp1008)
  )
  :effect (and
    (not (evaluate comp1009))
    (evaluate comp1010)
    (all-on comp1009)
  )
)
(:action evaluate-comp1009-off-comp1008
  :parameters ()
  :precondition (and
    (evaluate comp1009)
    (not (rebooted comp1009))
    (not (running comp1008))
  )
  :effect (and
    (not (evaluate comp1009))
    (evaluate comp1010)
    (one-off comp1009)
  )
)
(:action evaluate-comp1010-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1010)
    (rebooted comp1010)
  )
  :effect (and
    (not (evaluate comp1010))
    (evaluate comp1011)
  )
)
(:action evaluate-comp1010-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1010)
    (not (rebooted comp1010))
    (running comp1009)
  )
  :effect (and
    (not (evaluate comp1010))
    (evaluate comp1011)
    (all-on comp1010)
  )
)
(:action evaluate-comp1010-off-comp1009
  :parameters ()
  :precondition (and
    (evaluate comp1010)
    (not (rebooted comp1010))
    (not (running comp1009))
  )
  :effect (and
    (not (evaluate comp1010))
    (evaluate comp1011)
    (one-off comp1010)
  )
)
(:action evaluate-comp1011-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1011)
    (rebooted comp1011)
  )
  :effect (and
    (not (evaluate comp1011))
    (evaluate comp1012)
  )
)
(:action evaluate-comp1011-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1011)
    (not (rebooted comp1011))
    (running comp1010)
  )
  :effect (and
    (not (evaluate comp1011))
    (evaluate comp1012)
    (all-on comp1011)
  )
)
(:action evaluate-comp1011-off-comp1010
  :parameters ()
  :precondition (and
    (evaluate comp1011)
    (not (rebooted comp1011))
    (not (running comp1010))
  )
  :effect (and
    (not (evaluate comp1011))
    (evaluate comp1012)
    (one-off comp1011)
  )
)
(:action evaluate-comp1012-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1012)
    (rebooted comp1012)
  )
  :effect (and
    (not (evaluate comp1012))
    (evaluate comp1013)
  )
)
(:action evaluate-comp1012-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1012)
    (not (rebooted comp1012))
    (running comp1011)
  )
  :effect (and
    (not (evaluate comp1012))
    (evaluate comp1013)
    (all-on comp1012)
  )
)
(:action evaluate-comp1012-off-comp1011
  :parameters ()
  :precondition (and
    (evaluate comp1012)
    (not (rebooted comp1012))
    (not (running comp1011))
  )
  :effect (and
    (not (evaluate comp1012))
    (evaluate comp1013)
    (one-off comp1012)
  )
)
(:action evaluate-comp1013-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1013)
    (rebooted comp1013)
  )
  :effect (and
    (not (evaluate comp1013))
    (evaluate comp1014)
  )
)
(:action evaluate-comp1013-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1013)
    (not (rebooted comp1013))
    (running comp1012)
  )
  :effect (and
    (not (evaluate comp1013))
    (evaluate comp1014)
    (all-on comp1013)
  )
)
(:action evaluate-comp1013-off-comp1012
  :parameters ()
  :precondition (and
    (evaluate comp1013)
    (not (rebooted comp1013))
    (not (running comp1012))
  )
  :effect (and
    (not (evaluate comp1013))
    (evaluate comp1014)
    (one-off comp1013)
  )
)
(:action evaluate-comp1014-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1014)
    (rebooted comp1014)
  )
  :effect (and
    (not (evaluate comp1014))
    (evaluate comp1015)
  )
)
(:action evaluate-comp1014-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1014)
    (not (rebooted comp1014))
    (running comp1013)
  )
  :effect (and
    (not (evaluate comp1014))
    (evaluate comp1015)
    (all-on comp1014)
  )
)
(:action evaluate-comp1014-off-comp1013
  :parameters ()
  :precondition (and
    (evaluate comp1014)
    (not (rebooted comp1014))
    (not (running comp1013))
  )
  :effect (and
    (not (evaluate comp1014))
    (evaluate comp1015)
    (one-off comp1014)
  )
)
(:action evaluate-comp1015-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1015)
    (rebooted comp1015)
  )
  :effect (and
    (not (evaluate comp1015))
    (evaluate comp1016)
  )
)
(:action evaluate-comp1015-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1015)
    (not (rebooted comp1015))
    (running comp1014)
    (running comp1210)
    (running comp1810)
  )
  :effect (and
    (not (evaluate comp1015))
    (evaluate comp1016)
    (all-on comp1015)
  )
)
(:action evaluate-comp1015-off-comp1014
  :parameters ()
  :precondition (and
    (evaluate comp1015)
    (not (rebooted comp1015))
    (not (running comp1014))
  )
  :effect (and
    (not (evaluate comp1015))
    (evaluate comp1016)
    (one-off comp1015)
  )
)
(:action evaluate-comp1015-off-comp1210
  :parameters ()
  :precondition (and
    (evaluate comp1015)
    (not (rebooted comp1015))
    (not (running comp1210))
  )
  :effect (and
    (not (evaluate comp1015))
    (evaluate comp1016)
    (one-off comp1015)
  )
)
(:action evaluate-comp1015-off-comp1810
  :parameters ()
  :precondition (and
    (evaluate comp1015)
    (not (rebooted comp1015))
    (not (running comp1810))
  )
  :effect (and
    (not (evaluate comp1015))
    (evaluate comp1016)
    (one-off comp1015)
  )
)
(:action evaluate-comp1016-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1016)
    (rebooted comp1016)
  )
  :effect (and
    (not (evaluate comp1016))
    (evaluate comp1017)
  )
)
(:action evaluate-comp1016-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1016)
    (not (rebooted comp1016))
    (running comp1015)
  )
  :effect (and
    (not (evaluate comp1016))
    (evaluate comp1017)
    (all-on comp1016)
  )
)
(:action evaluate-comp1016-off-comp1015
  :parameters ()
  :precondition (and
    (evaluate comp1016)
    (not (rebooted comp1016))
    (not (running comp1015))
  )
  :effect (and
    (not (evaluate comp1016))
    (evaluate comp1017)
    (one-off comp1016)
  )
)
(:action evaluate-comp1017-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1017)
    (rebooted comp1017)
  )
  :effect (and
    (not (evaluate comp1017))
    (evaluate comp1018)
  )
)
(:action evaluate-comp1017-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1017)
    (not (rebooted comp1017))
    (running comp1016)
  )
  :effect (and
    (not (evaluate comp1017))
    (evaluate comp1018)
    (all-on comp1017)
  )
)
(:action evaluate-comp1017-off-comp1016
  :parameters ()
  :precondition (and
    (evaluate comp1017)
    (not (rebooted comp1017))
    (not (running comp1016))
  )
  :effect (and
    (not (evaluate comp1017))
    (evaluate comp1018)
    (one-off comp1017)
  )
)
(:action evaluate-comp1018-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1018)
    (rebooted comp1018)
  )
  :effect (and
    (not (evaluate comp1018))
    (evaluate comp1019)
  )
)
(:action evaluate-comp1018-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1018)
    (not (rebooted comp1018))
    (running comp1017)
  )
  :effect (and
    (not (evaluate comp1018))
    (evaluate comp1019)
    (all-on comp1018)
  )
)
(:action evaluate-comp1018-off-comp1017
  :parameters ()
  :precondition (and
    (evaluate comp1018)
    (not (rebooted comp1018))
    (not (running comp1017))
  )
  :effect (and
    (not (evaluate comp1018))
    (evaluate comp1019)
    (one-off comp1018)
  )
)
(:action evaluate-comp1019-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1019)
    (rebooted comp1019)
  )
  :effect (and
    (not (evaluate comp1019))
    (evaluate comp1020)
  )
)
(:action evaluate-comp1019-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1019)
    (not (rebooted comp1019))
    (running comp751)
    (running comp1018)
  )
  :effect (and
    (not (evaluate comp1019))
    (evaluate comp1020)
    (all-on comp1019)
  )
)
(:action evaluate-comp1019-off-comp751
  :parameters ()
  :precondition (and
    (evaluate comp1019)
    (not (rebooted comp1019))
    (not (running comp751))
  )
  :effect (and
    (not (evaluate comp1019))
    (evaluate comp1020)
    (one-off comp1019)
  )
)
(:action evaluate-comp1019-off-comp1018
  :parameters ()
  :precondition (and
    (evaluate comp1019)
    (not (rebooted comp1019))
    (not (running comp1018))
  )
  :effect (and
    (not (evaluate comp1019))
    (evaluate comp1020)
    (one-off comp1019)
  )
)
(:action evaluate-comp1020-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (rebooted comp1020)
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
  )
)
(:action evaluate-comp1020-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (not (rebooted comp1020))
    (running comp304)
    (running comp1019)
    (running comp1047)
    (running comp1224)
    (running comp1365)
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
    (all-on comp1020)
  )
)
(:action evaluate-comp1020-off-comp304
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (not (rebooted comp1020))
    (not (running comp304))
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
    (one-off comp1020)
  )
)
(:action evaluate-comp1020-off-comp1019
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (not (rebooted comp1020))
    (not (running comp1019))
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
    (one-off comp1020)
  )
)
(:action evaluate-comp1020-off-comp1047
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (not (rebooted comp1020))
    (not (running comp1047))
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
    (one-off comp1020)
  )
)
(:action evaluate-comp1020-off-comp1224
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (not (rebooted comp1020))
    (not (running comp1224))
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
    (one-off comp1020)
  )
)
(:action evaluate-comp1020-off-comp1365
  :parameters ()
  :precondition (and
    (evaluate comp1020)
    (not (rebooted comp1020))
    (not (running comp1365))
  )
  :effect (and
    (not (evaluate comp1020))
    (evaluate comp1021)
    (one-off comp1020)
  )
)
(:action evaluate-comp1021-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1021)
    (rebooted comp1021)
  )
  :effect (and
    (not (evaluate comp1021))
    (evaluate comp1022)
  )
)
(:action evaluate-comp1021-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1021)
    (not (rebooted comp1021))
    (running comp1020)
    (running comp1467)
  )
  :effect (and
    (not (evaluate comp1021))
    (evaluate comp1022)
    (all-on comp1021)
  )
)
(:action evaluate-comp1021-off-comp1020
  :parameters ()
  :precondition (and
    (evaluate comp1021)
    (not (rebooted comp1021))
    (not (running comp1020))
  )
  :effect (and
    (not (evaluate comp1021))
    (evaluate comp1022)
    (one-off comp1021)
  )
)
(:action evaluate-comp1021-off-comp1467
  :parameters ()
  :precondition (and
    (evaluate comp1021)
    (not (rebooted comp1021))
    (not (running comp1467))
  )
  :effect (and
    (not (evaluate comp1021))
    (evaluate comp1022)
    (one-off comp1021)
  )
)
(:action evaluate-comp1022-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1022)
    (rebooted comp1022)
  )
  :effect (and
    (not (evaluate comp1022))
    (evaluate comp1023)
  )
)
(:action evaluate-comp1022-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1022)
    (not (rebooted comp1022))
    (running comp858)
    (running comp1021)
  )
  :effect (and
    (not (evaluate comp1022))
    (evaluate comp1023)
    (all-on comp1022)
  )
)
(:action evaluate-comp1022-off-comp858
  :parameters ()
  :precondition (and
    (evaluate comp1022)
    (not (rebooted comp1022))
    (not (running comp858))
  )
  :effect (and
    (not (evaluate comp1022))
    (evaluate comp1023)
    (one-off comp1022)
  )
)
(:action evaluate-comp1022-off-comp1021
  :parameters ()
  :precondition (and
    (evaluate comp1022)
    (not (rebooted comp1022))
    (not (running comp1021))
  )
  :effect (and
    (not (evaluate comp1022))
    (evaluate comp1023)
    (one-off comp1022)
  )
)
(:action evaluate-comp1023-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1023)
    (rebooted comp1023)
  )
  :effect (and
    (not (evaluate comp1023))
    (evaluate comp1024)
  )
)
(:action evaluate-comp1023-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1023)
    (not (rebooted comp1023))
    (running comp1022)
  )
  :effect (and
    (not (evaluate comp1023))
    (evaluate comp1024)
    (all-on comp1023)
  )
)
(:action evaluate-comp1023-off-comp1022
  :parameters ()
  :precondition (and
    (evaluate comp1023)
    (not (rebooted comp1023))
    (not (running comp1022))
  )
  :effect (and
    (not (evaluate comp1023))
    (evaluate comp1024)
    (one-off comp1023)
  )
)
(:action evaluate-comp1024-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1024)
    (rebooted comp1024)
  )
  :effect (and
    (not (evaluate comp1024))
    (evaluate comp1025)
  )
)
(:action evaluate-comp1024-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1024)
    (not (rebooted comp1024))
    (running comp1023)
  )
  :effect (and
    (not (evaluate comp1024))
    (evaluate comp1025)
    (all-on comp1024)
  )
)
(:action evaluate-comp1024-off-comp1023
  :parameters ()
  :precondition (and
    (evaluate comp1024)
    (not (rebooted comp1024))
    (not (running comp1023))
  )
  :effect (and
    (not (evaluate comp1024))
    (evaluate comp1025)
    (one-off comp1024)
  )
)
(:action evaluate-comp1025-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1025)
    (rebooted comp1025)
  )
  :effect (and
    (not (evaluate comp1025))
    (evaluate comp1026)
  )
)
(:action evaluate-comp1025-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1025)
    (not (rebooted comp1025))
    (running comp87)
    (running comp674)
    (running comp1024)
  )
  :effect (and
    (not (evaluate comp1025))
    (evaluate comp1026)
    (all-on comp1025)
  )
)
(:action evaluate-comp1025-off-comp87
  :parameters ()
  :precondition (and
    (evaluate comp1025)
    (not (rebooted comp1025))
    (not (running comp87))
  )
  :effect (and
    (not (evaluate comp1025))
    (evaluate comp1026)
    (one-off comp1025)
  )
)
(:action evaluate-comp1025-off-comp674
  :parameters ()
  :precondition (and
    (evaluate comp1025)
    (not (rebooted comp1025))
    (not (running comp674))
  )
  :effect (and
    (not (evaluate comp1025))
    (evaluate comp1026)
    (one-off comp1025)
  )
)
(:action evaluate-comp1025-off-comp1024
  :parameters ()
  :precondition (and
    (evaluate comp1025)
    (not (rebooted comp1025))
    (not (running comp1024))
  )
  :effect (and
    (not (evaluate comp1025))
    (evaluate comp1026)
    (one-off comp1025)
  )
)
(:action evaluate-comp1026-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1026)
    (rebooted comp1026)
  )
  :effect (and
    (not (evaluate comp1026))
    (evaluate comp1027)
  )
)
(:action evaluate-comp1026-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1026)
    (not (rebooted comp1026))
    (running comp16)
    (running comp269)
    (running comp1025)
  )
  :effect (and
    (not (evaluate comp1026))
    (evaluate comp1027)
    (all-on comp1026)
  )
)
(:action evaluate-comp1026-off-comp16
  :parameters ()
  :precondition (and
    (evaluate comp1026)
    (not (rebooted comp1026))
    (not (running comp16))
  )
  :effect (and
    (not (evaluate comp1026))
    (evaluate comp1027)
    (one-off comp1026)
  )
)
(:action evaluate-comp1026-off-comp269
  :parameters ()
  :precondition (and
    (evaluate comp1026)
    (not (rebooted comp1026))
    (not (running comp269))
  )
  :effect (and
    (not (evaluate comp1026))
    (evaluate comp1027)
    (one-off comp1026)
  )
)
(:action evaluate-comp1026-off-comp1025
  :parameters ()
  :precondition (and
    (evaluate comp1026)
    (not (rebooted comp1026))
    (not (running comp1025))
  )
  :effect (and
    (not (evaluate comp1026))
    (evaluate comp1027)
    (one-off comp1026)
  )
)
(:action evaluate-comp1027-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1027)
    (rebooted comp1027)
  )
  :effect (and
    (not (evaluate comp1027))
    (evaluate comp1028)
  )
)
(:action evaluate-comp1027-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1027)
    (not (rebooted comp1027))
    (running comp1026)
    (running comp1356)
  )
  :effect (and
    (not (evaluate comp1027))
    (evaluate comp1028)
    (all-on comp1027)
  )
)
(:action evaluate-comp1027-off-comp1026
  :parameters ()
  :precondition (and
    (evaluate comp1027)
    (not (rebooted comp1027))
    (not (running comp1026))
  )
  :effect (and
    (not (evaluate comp1027))
    (evaluate comp1028)
    (one-off comp1027)
  )
)
(:action evaluate-comp1027-off-comp1356
  :parameters ()
  :precondition (and
    (evaluate comp1027)
    (not (rebooted comp1027))
    (not (running comp1356))
  )
  :effect (and
    (not (evaluate comp1027))
    (evaluate comp1028)
    (one-off comp1027)
  )
)
(:action evaluate-comp1028-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1028)
    (rebooted comp1028)
  )
  :effect (and
    (not (evaluate comp1028))
    (evaluate comp1029)
  )
)
(:action evaluate-comp1028-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1028)
    (not (rebooted comp1028))
    (running comp1027)
  )
  :effect (and
    (not (evaluate comp1028))
    (evaluate comp1029)
    (all-on comp1028)
  )
)
(:action evaluate-comp1028-off-comp1027
  :parameters ()
  :precondition (and
    (evaluate comp1028)
    (not (rebooted comp1028))
    (not (running comp1027))
  )
  :effect (and
    (not (evaluate comp1028))
    (evaluate comp1029)
    (one-off comp1028)
  )
)
(:action evaluate-comp1029-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1029)
    (rebooted comp1029)
  )
  :effect (and
    (not (evaluate comp1029))
    (evaluate comp1030)
  )
)
(:action evaluate-comp1029-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1029)
    (not (rebooted comp1029))
    (running comp1028)
  )
  :effect (and
    (not (evaluate comp1029))
    (evaluate comp1030)
    (all-on comp1029)
  )
)
(:action evaluate-comp1029-off-comp1028
  :parameters ()
  :precondition (and
    (evaluate comp1029)
    (not (rebooted comp1029))
    (not (running comp1028))
  )
  :effect (and
    (not (evaluate comp1029))
    (evaluate comp1030)
    (one-off comp1029)
  )
)
(:action evaluate-comp1030-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1030)
    (rebooted comp1030)
  )
  :effect (and
    (not (evaluate comp1030))
    (evaluate comp1031)
  )
)
(:action evaluate-comp1030-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1030)
    (not (rebooted comp1030))
    (running comp1029)
  )
  :effect (and
    (not (evaluate comp1030))
    (evaluate comp1031)
    (all-on comp1030)
  )
)
(:action evaluate-comp1030-off-comp1029
  :parameters ()
  :precondition (and
    (evaluate comp1030)
    (not (rebooted comp1030))
    (not (running comp1029))
  )
  :effect (and
    (not (evaluate comp1030))
    (evaluate comp1031)
    (one-off comp1030)
  )
)
(:action evaluate-comp1031-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1031)
    (rebooted comp1031)
  )
  :effect (and
    (not (evaluate comp1031))
    (evaluate comp1032)
  )
)
(:action evaluate-comp1031-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1031)
    (not (rebooted comp1031))
    (running comp297)
    (running comp1030)
  )
  :effect (and
    (not (evaluate comp1031))
    (evaluate comp1032)
    (all-on comp1031)
  )
)
(:action evaluate-comp1031-off-comp297
  :parameters ()
  :precondition (and
    (evaluate comp1031)
    (not (rebooted comp1031))
    (not (running comp297))
  )
  :effect (and
    (not (evaluate comp1031))
    (evaluate comp1032)
    (one-off comp1031)
  )
)
(:action evaluate-comp1031-off-comp1030
  :parameters ()
  :precondition (and
    (evaluate comp1031)
    (not (rebooted comp1031))
    (not (running comp1030))
  )
  :effect (and
    (not (evaluate comp1031))
    (evaluate comp1032)
    (one-off comp1031)
  )
)
(:action evaluate-comp1032-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1032)
    (rebooted comp1032)
  )
  :effect (and
    (not (evaluate comp1032))
    (evaluate comp1033)
  )
)
(:action evaluate-comp1032-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1032)
    (not (rebooted comp1032))
    (running comp1031)
  )
  :effect (and
    (not (evaluate comp1032))
    (evaluate comp1033)
    (all-on comp1032)
  )
)
(:action evaluate-comp1032-off-comp1031
  :parameters ()
  :precondition (and
    (evaluate comp1032)
    (not (rebooted comp1032))
    (not (running comp1031))
  )
  :effect (and
    (not (evaluate comp1032))
    (evaluate comp1033)
    (one-off comp1032)
  )
)
(:action evaluate-comp1033-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1033)
    (rebooted comp1033)
  )
  :effect (and
    (not (evaluate comp1033))
    (evaluate comp1034)
  )
)
(:action evaluate-comp1033-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1033)
    (not (rebooted comp1033))
    (running comp1032)
  )
  :effect (and
    (not (evaluate comp1033))
    (evaluate comp1034)
    (all-on comp1033)
  )
)
(:action evaluate-comp1033-off-comp1032
  :parameters ()
  :precondition (and
    (evaluate comp1033)
    (not (rebooted comp1033))
    (not (running comp1032))
  )
  :effect (and
    (not (evaluate comp1033))
    (evaluate comp1034)
    (one-off comp1033)
  )
)
(:action evaluate-comp1034-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1034)
    (rebooted comp1034)
  )
  :effect (and
    (not (evaluate comp1034))
    (evaluate comp1035)
  )
)
(:action evaluate-comp1034-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1034)
    (not (rebooted comp1034))
    (running comp1033)
  )
  :effect (and
    (not (evaluate comp1034))
    (evaluate comp1035)
    (all-on comp1034)
  )
)
(:action evaluate-comp1034-off-comp1033
  :parameters ()
  :precondition (and
    (evaluate comp1034)
    (not (rebooted comp1034))
    (not (running comp1033))
  )
  :effect (and
    (not (evaluate comp1034))
    (evaluate comp1035)
    (one-off comp1034)
  )
)
(:action evaluate-comp1035-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1035)
    (rebooted comp1035)
  )
  :effect (and
    (not (evaluate comp1035))
    (evaluate comp1036)
  )
)
(:action evaluate-comp1035-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1035)
    (not (rebooted comp1035))
    (running comp1034)
  )
  :effect (and
    (not (evaluate comp1035))
    (evaluate comp1036)
    (all-on comp1035)
  )
)
(:action evaluate-comp1035-off-comp1034
  :parameters ()
  :precondition (and
    (evaluate comp1035)
    (not (rebooted comp1035))
    (not (running comp1034))
  )
  :effect (and
    (not (evaluate comp1035))
    (evaluate comp1036)
    (one-off comp1035)
  )
)
(:action evaluate-comp1036-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1036)
    (rebooted comp1036)
  )
  :effect (and
    (not (evaluate comp1036))
    (evaluate comp1037)
  )
)
(:action evaluate-comp1036-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1036)
    (not (rebooted comp1036))
    (running comp1035)
  )
  :effect (and
    (not (evaluate comp1036))
    (evaluate comp1037)
    (all-on comp1036)
  )
)
(:action evaluate-comp1036-off-comp1035
  :parameters ()
  :precondition (and
    (evaluate comp1036)
    (not (rebooted comp1036))
    (not (running comp1035))
  )
  :effect (and
    (not (evaluate comp1036))
    (evaluate comp1037)
    (one-off comp1036)
  )
)
(:action evaluate-comp1037-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1037)
    (rebooted comp1037)
  )
  :effect (and
    (not (evaluate comp1037))
    (evaluate comp1038)
  )
)
(:action evaluate-comp1037-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1037)
    (not (rebooted comp1037))
    (running comp296)
    (running comp1036)
  )
  :effect (and
    (not (evaluate comp1037))
    (evaluate comp1038)
    (all-on comp1037)
  )
)
(:action evaluate-comp1037-off-comp296
  :parameters ()
  :precondition (and
    (evaluate comp1037)
    (not (rebooted comp1037))
    (not (running comp296))
  )
  :effect (and
    (not (evaluate comp1037))
    (evaluate comp1038)
    (one-off comp1037)
  )
)
(:action evaluate-comp1037-off-comp1036
  :parameters ()
  :precondition (and
    (evaluate comp1037)
    (not (rebooted comp1037))
    (not (running comp1036))
  )
  :effect (and
    (not (evaluate comp1037))
    (evaluate comp1038)
    (one-off comp1037)
  )
)
(:action evaluate-comp1038-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1038)
    (rebooted comp1038)
  )
  :effect (and
    (not (evaluate comp1038))
    (evaluate comp1039)
  )
)
(:action evaluate-comp1038-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1038)
    (not (rebooted comp1038))
    (running comp1037)
  )
  :effect (and
    (not (evaluate comp1038))
    (evaluate comp1039)
    (all-on comp1038)
  )
)
(:action evaluate-comp1038-off-comp1037
  :parameters ()
  :precondition (and
    (evaluate comp1038)
    (not (rebooted comp1038))
    (not (running comp1037))
  )
  :effect (and
    (not (evaluate comp1038))
    (evaluate comp1039)
    (one-off comp1038)
  )
)
(:action evaluate-comp1039-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1039)
    (rebooted comp1039)
  )
  :effect (and
    (not (evaluate comp1039))
    (evaluate comp1040)
  )
)
(:action evaluate-comp1039-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1039)
    (not (rebooted comp1039))
    (running comp1038)
  )
  :effect (and
    (not (evaluate comp1039))
    (evaluate comp1040)
    (all-on comp1039)
  )
)
(:action evaluate-comp1039-off-comp1038
  :parameters ()
  :precondition (and
    (evaluate comp1039)
    (not (rebooted comp1039))
    (not (running comp1038))
  )
  :effect (and
    (not (evaluate comp1039))
    (evaluate comp1040)
    (one-off comp1039)
  )
)
(:action evaluate-comp1040-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1040)
    (rebooted comp1040)
  )
  :effect (and
    (not (evaluate comp1040))
    (evaluate comp1041)
  )
)
(:action evaluate-comp1040-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1040)
    (not (rebooted comp1040))
    (running comp1039)
  )
  :effect (and
    (not (evaluate comp1040))
    (evaluate comp1041)
    (all-on comp1040)
  )
)
(:action evaluate-comp1040-off-comp1039
  :parameters ()
  :precondition (and
    (evaluate comp1040)
    (not (rebooted comp1040))
    (not (running comp1039))
  )
  :effect (and
    (not (evaluate comp1040))
    (evaluate comp1041)
    (one-off comp1040)
  )
)
(:action evaluate-comp1041-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1041)
    (rebooted comp1041)
  )
  :effect (and
    (not (evaluate comp1041))
    (evaluate comp1042)
  )
)
(:action evaluate-comp1041-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1041)
    (not (rebooted comp1041))
    (running comp1040)
  )
  :effect (and
    (not (evaluate comp1041))
    (evaluate comp1042)
    (all-on comp1041)
  )
)
(:action evaluate-comp1041-off-comp1040
  :parameters ()
  :precondition (and
    (evaluate comp1041)
    (not (rebooted comp1041))
    (not (running comp1040))
  )
  :effect (and
    (not (evaluate comp1041))
    (evaluate comp1042)
    (one-off comp1041)
  )
)
(:action evaluate-comp1042-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1042)
    (rebooted comp1042)
  )
  :effect (and
    (not (evaluate comp1042))
    (evaluate comp1043)
  )
)
(:action evaluate-comp1042-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1042)
    (not (rebooted comp1042))
    (running comp1041)
  )
  :effect (and
    (not (evaluate comp1042))
    (evaluate comp1043)
    (all-on comp1042)
  )
)
(:action evaluate-comp1042-off-comp1041
  :parameters ()
  :precondition (and
    (evaluate comp1042)
    (not (rebooted comp1042))
    (not (running comp1041))
  )
  :effect (and
    (not (evaluate comp1042))
    (evaluate comp1043)
    (one-off comp1042)
  )
)
(:action evaluate-comp1043-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1043)
    (rebooted comp1043)
  )
  :effect (and
    (not (evaluate comp1043))
    (evaluate comp1044)
  )
)
(:action evaluate-comp1043-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1043)
    (not (rebooted comp1043))
    (running comp1042)
    (running comp1289)
  )
  :effect (and
    (not (evaluate comp1043))
    (evaluate comp1044)
    (all-on comp1043)
  )
)
(:action evaluate-comp1043-off-comp1042
  :parameters ()
  :precondition (and
    (evaluate comp1043)
    (not (rebooted comp1043))
    (not (running comp1042))
  )
  :effect (and
    (not (evaluate comp1043))
    (evaluate comp1044)
    (one-off comp1043)
  )
)
(:action evaluate-comp1043-off-comp1289
  :parameters ()
  :precondition (and
    (evaluate comp1043)
    (not (rebooted comp1043))
    (not (running comp1289))
  )
  :effect (and
    (not (evaluate comp1043))
    (evaluate comp1044)
    (one-off comp1043)
  )
)
(:action evaluate-comp1044-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1044)
    (rebooted comp1044)
  )
  :effect (and
    (not (evaluate comp1044))
    (evaluate comp1045)
  )
)
(:action evaluate-comp1044-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1044)
    (not (rebooted comp1044))
    (running comp1043)
  )
  :effect (and
    (not (evaluate comp1044))
    (evaluate comp1045)
    (all-on comp1044)
  )
)
(:action evaluate-comp1044-off-comp1043
  :parameters ()
  :precondition (and
    (evaluate comp1044)
    (not (rebooted comp1044))
    (not (running comp1043))
  )
  :effect (and
    (not (evaluate comp1044))
    (evaluate comp1045)
    (one-off comp1044)
  )
)
(:action evaluate-comp1045-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1045)
    (rebooted comp1045)
  )
  :effect (and
    (not (evaluate comp1045))
    (evaluate comp1046)
  )
)
(:action evaluate-comp1045-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1045)
    (not (rebooted comp1045))
    (running comp1044)
    (running comp1430)
  )
  :effect (and
    (not (evaluate comp1045))
    (evaluate comp1046)
    (all-on comp1045)
  )
)
(:action evaluate-comp1045-off-comp1044
  :parameters ()
  :precondition (and
    (evaluate comp1045)
    (not (rebooted comp1045))
    (not (running comp1044))
  )
  :effect (and
    (not (evaluate comp1045))
    (evaluate comp1046)
    (one-off comp1045)
  )
)
(:action evaluate-comp1045-off-comp1430
  :parameters ()
  :precondition (and
    (evaluate comp1045)
    (not (rebooted comp1045))
    (not (running comp1430))
  )
  :effect (and
    (not (evaluate comp1045))
    (evaluate comp1046)
    (one-off comp1045)
  )
)
(:action evaluate-comp1046-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1046)
    (rebooted comp1046)
  )
  :effect (and
    (not (evaluate comp1046))
    (evaluate comp1047)
  )
)
(:action evaluate-comp1046-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1046)
    (not (rebooted comp1046))
    (running comp976)
    (running comp1045)
  )
  :effect (and
    (not (evaluate comp1046))
    (evaluate comp1047)
    (all-on comp1046)
  )
)
(:action evaluate-comp1046-off-comp976
  :parameters ()
  :precondition (and
    (evaluate comp1046)
    (not (rebooted comp1046))
    (not (running comp976))
  )
  :effect (and
    (not (evaluate comp1046))
    (evaluate comp1047)
    (one-off comp1046)
  )
)
(:action evaluate-comp1046-off-comp1045
  :parameters ()
  :precondition (and
    (evaluate comp1046)
    (not (rebooted comp1046))
    (not (running comp1045))
  )
  :effect (and
    (not (evaluate comp1046))
    (evaluate comp1047)
    (one-off comp1046)
  )
)
(:action evaluate-comp1047-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1047)
    (rebooted comp1047)
  )
  :effect (and
    (not (evaluate comp1047))
    (evaluate comp1048)
  )
)
(:action evaluate-comp1047-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1047)
    (not (rebooted comp1047))
    (running comp752)
    (running comp1046)
  )
  :effect (and
    (not (evaluate comp1047))
    (evaluate comp1048)
    (all-on comp1047)
  )
)
(:action evaluate-comp1047-off-comp752
  :parameters ()
  :precondition (and
    (evaluate comp1047)
    (not (rebooted comp1047))
    (not (running comp752))
  )
  :effect (and
    (not (evaluate comp1047))
    (evaluate comp1048)
    (one-off comp1047)
  )
)
(:action evaluate-comp1047-off-comp1046
  :parameters ()
  :precondition (and
    (evaluate comp1047)
    (not (rebooted comp1047))
    (not (running comp1046))
  )
  :effect (and
    (not (evaluate comp1047))
    (evaluate comp1048)
    (one-off comp1047)
  )
)
(:action evaluate-comp1048-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1048)
    (rebooted comp1048)
  )
  :effect (and
    (not (evaluate comp1048))
    (evaluate comp1049)
  )
)
(:action evaluate-comp1048-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1048)
    (not (rebooted comp1048))
    (running comp1047)
  )
  :effect (and
    (not (evaluate comp1048))
    (evaluate comp1049)
    (all-on comp1048)
  )
)
(:action evaluate-comp1048-off-comp1047
  :parameters ()
  :precondition (and
    (evaluate comp1048)
    (not (rebooted comp1048))
    (not (running comp1047))
  )
  :effect (and
    (not (evaluate comp1048))
    (evaluate comp1049)
    (one-off comp1048)
  )
)
(:action evaluate-comp1049-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1049)
    (rebooted comp1049)
  )
  :effect (and
    (not (evaluate comp1049))
    (evaluate comp1050)
  )
)
(:action evaluate-comp1049-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1049)
    (not (rebooted comp1049))
    (running comp1048)
    (running comp1120)
  )
  :effect (and
    (not (evaluate comp1049))
    (evaluate comp1050)
    (all-on comp1049)
  )
)
(:action evaluate-comp1049-off-comp1048
  :parameters ()
  :precondition (and
    (evaluate comp1049)
    (not (rebooted comp1049))
    (not (running comp1048))
  )
  :effect (and
    (not (evaluate comp1049))
    (evaluate comp1050)
    (one-off comp1049)
  )
)
(:action evaluate-comp1049-off-comp1120
  :parameters ()
  :precondition (and
    (evaluate comp1049)
    (not (rebooted comp1049))
    (not (running comp1120))
  )
  :effect (and
    (not (evaluate comp1049))
    (evaluate comp1050)
    (one-off comp1049)
  )
)
(:action evaluate-comp1050-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1050)
    (rebooted comp1050)
  )
  :effect (and
    (not (evaluate comp1050))
    (evaluate comp1051)
  )
)
(:action evaluate-comp1050-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1050)
    (not (rebooted comp1050))
    (running comp1049)
  )
  :effect (and
    (not (evaluate comp1050))
    (evaluate comp1051)
    (all-on comp1050)
  )
)
(:action evaluate-comp1050-off-comp1049
  :parameters ()
  :precondition (and
    (evaluate comp1050)
    (not (rebooted comp1050))
    (not (running comp1049))
  )
  :effect (and
    (not (evaluate comp1050))
    (evaluate comp1051)
    (one-off comp1050)
  )
)
(:action evaluate-comp1051-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1051)
    (rebooted comp1051)
  )
  :effect (and
    (not (evaluate comp1051))
    (evaluate comp1052)
  )
)
(:action evaluate-comp1051-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1051)
    (not (rebooted comp1051))
    (running comp1050)
  )
  :effect (and
    (not (evaluate comp1051))
    (evaluate comp1052)
    (all-on comp1051)
  )
)
(:action evaluate-comp1051-off-comp1050
  :parameters ()
  :precondition (and
    (evaluate comp1051)
    (not (rebooted comp1051))
    (not (running comp1050))
  )
  :effect (and
    (not (evaluate comp1051))
    (evaluate comp1052)
    (one-off comp1051)
  )
)
(:action evaluate-comp1052-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1052)
    (rebooted comp1052)
  )
  :effect (and
    (not (evaluate comp1052))
    (evaluate comp1053)
  )
)
(:action evaluate-comp1052-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1052)
    (not (rebooted comp1052))
    (running comp1051)
  )
  :effect (and
    (not (evaluate comp1052))
    (evaluate comp1053)
    (all-on comp1052)
  )
)
(:action evaluate-comp1052-off-comp1051
  :parameters ()
  :precondition (and
    (evaluate comp1052)
    (not (rebooted comp1052))
    (not (running comp1051))
  )
  :effect (and
    (not (evaluate comp1052))
    (evaluate comp1053)
    (one-off comp1052)
  )
)
(:action evaluate-comp1053-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1053)
    (rebooted comp1053)
  )
  :effect (and
    (not (evaluate comp1053))
    (evaluate comp1054)
  )
)
(:action evaluate-comp1053-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1053)
    (not (rebooted comp1053))
    (running comp1052)
    (running comp1642)
  )
  :effect (and
    (not (evaluate comp1053))
    (evaluate comp1054)
    (all-on comp1053)
  )
)
(:action evaluate-comp1053-off-comp1052
  :parameters ()
  :precondition (and
    (evaluate comp1053)
    (not (rebooted comp1053))
    (not (running comp1052))
  )
  :effect (and
    (not (evaluate comp1053))
    (evaluate comp1054)
    (one-off comp1053)
  )
)
(:action evaluate-comp1053-off-comp1642
  :parameters ()
  :precondition (and
    (evaluate comp1053)
    (not (rebooted comp1053))
    (not (running comp1642))
  )
  :effect (and
    (not (evaluate comp1053))
    (evaluate comp1054)
    (one-off comp1053)
  )
)
(:action evaluate-comp1054-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1054)
    (rebooted comp1054)
  )
  :effect (and
    (not (evaluate comp1054))
    (evaluate comp1055)
  )
)
(:action evaluate-comp1054-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1054)
    (not (rebooted comp1054))
    (running comp1053)
    (running comp1907)
  )
  :effect (and
    (not (evaluate comp1054))
    (evaluate comp1055)
    (all-on comp1054)
  )
)
(:action evaluate-comp1054-off-comp1053
  :parameters ()
  :precondition (and
    (evaluate comp1054)
    (not (rebooted comp1054))
    (not (running comp1053))
  )
  :effect (and
    (not (evaluate comp1054))
    (evaluate comp1055)
    (one-off comp1054)
  )
)
(:action evaluate-comp1054-off-comp1907
  :parameters ()
  :precondition (and
    (evaluate comp1054)
    (not (rebooted comp1054))
    (not (running comp1907))
  )
  :effect (and
    (not (evaluate comp1054))
    (evaluate comp1055)
    (one-off comp1054)
  )
)
(:action evaluate-comp1055-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1055)
    (rebooted comp1055)
  )
  :effect (and
    (not (evaluate comp1055))
    (evaluate comp1056)
  )
)
(:action evaluate-comp1055-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1055)
    (not (rebooted comp1055))
    (running comp1054)
  )
  :effect (and
    (not (evaluate comp1055))
    (evaluate comp1056)
    (all-on comp1055)
  )
)
(:action evaluate-comp1055-off-comp1054
  :parameters ()
  :precondition (and
    (evaluate comp1055)
    (not (rebooted comp1055))
    (not (running comp1054))
  )
  :effect (and
    (not (evaluate comp1055))
    (evaluate comp1056)
    (one-off comp1055)
  )
)
(:action evaluate-comp1056-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1056)
    (rebooted comp1056)
  )
  :effect (and
    (not (evaluate comp1056))
    (evaluate comp1057)
  )
)
(:action evaluate-comp1056-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1056)
    (not (rebooted comp1056))
    (running comp1055)
  )
  :effect (and
    (not (evaluate comp1056))
    (evaluate comp1057)
    (all-on comp1056)
  )
)
(:action evaluate-comp1056-off-comp1055
  :parameters ()
  :precondition (and
    (evaluate comp1056)
    (not (rebooted comp1056))
    (not (running comp1055))
  )
  :effect (and
    (not (evaluate comp1056))
    (evaluate comp1057)
    (one-off comp1056)
  )
)
(:action evaluate-comp1057-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1057)
    (rebooted comp1057)
  )
  :effect (and
    (not (evaluate comp1057))
    (evaluate comp1058)
  )
)
(:action evaluate-comp1057-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1057)
    (not (rebooted comp1057))
    (running comp1056)
  )
  :effect (and
    (not (evaluate comp1057))
    (evaluate comp1058)
    (all-on comp1057)
  )
)
(:action evaluate-comp1057-off-comp1056
  :parameters ()
  :precondition (and
    (evaluate comp1057)
    (not (rebooted comp1057))
    (not (running comp1056))
  )
  :effect (and
    (not (evaluate comp1057))
    (evaluate comp1058)
    (one-off comp1057)
  )
)
(:action evaluate-comp1058-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1058)
    (rebooted comp1058)
  )
  :effect (and
    (not (evaluate comp1058))
    (evaluate comp1059)
  )
)
(:action evaluate-comp1058-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1058)
    (not (rebooted comp1058))
    (running comp532)
    (running comp985)
    (running comp1057)
  )
  :effect (and
    (not (evaluate comp1058))
    (evaluate comp1059)
    (all-on comp1058)
  )
)
(:action evaluate-comp1058-off-comp532
  :parameters ()
  :precondition (and
    (evaluate comp1058)
    (not (rebooted comp1058))
    (not (running comp532))
  )
  :effect (and
    (not (evaluate comp1058))
    (evaluate comp1059)
    (one-off comp1058)
  )
)
(:action evaluate-comp1058-off-comp985
  :parameters ()
  :precondition (and
    (evaluate comp1058)
    (not (rebooted comp1058))
    (not (running comp985))
  )
  :effect (and
    (not (evaluate comp1058))
    (evaluate comp1059)
    (one-off comp1058)
  )
)
(:action evaluate-comp1058-off-comp1057
  :parameters ()
  :precondition (and
    (evaluate comp1058)
    (not (rebooted comp1058))
    (not (running comp1057))
  )
  :effect (and
    (not (evaluate comp1058))
    (evaluate comp1059)
    (one-off comp1058)
  )
)
(:action evaluate-comp1059-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1059)
    (rebooted comp1059)
  )
  :effect (and
    (not (evaluate comp1059))
    (evaluate comp1060)
  )
)
(:action evaluate-comp1059-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1059)
    (not (rebooted comp1059))
    (running comp1058)
  )
  :effect (and
    (not (evaluate comp1059))
    (evaluate comp1060)
    (all-on comp1059)
  )
)
(:action evaluate-comp1059-off-comp1058
  :parameters ()
  :precondition (and
    (evaluate comp1059)
    (not (rebooted comp1059))
    (not (running comp1058))
  )
  :effect (and
    (not (evaluate comp1059))
    (evaluate comp1060)
    (one-off comp1059)
  )
)
(:action evaluate-comp1060-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1060)
    (rebooted comp1060)
  )
  :effect (and
    (not (evaluate comp1060))
    (evaluate comp1061)
  )
)
(:action evaluate-comp1060-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1060)
    (not (rebooted comp1060))
    (running comp617)
    (running comp1059)
  )
  :effect (and
    (not (evaluate comp1060))
    (evaluate comp1061)
    (all-on comp1060)
  )
)
(:action evaluate-comp1060-off-comp617
  :parameters ()
  :precondition (and
    (evaluate comp1060)
    (not (rebooted comp1060))
    (not (running comp617))
  )
  :effect (and
    (not (evaluate comp1060))
    (evaluate comp1061)
    (one-off comp1060)
  )
)
(:action evaluate-comp1060-off-comp1059
  :parameters ()
  :precondition (and
    (evaluate comp1060)
    (not (rebooted comp1060))
    (not (running comp1059))
  )
  :effect (and
    (not (evaluate comp1060))
    (evaluate comp1061)
    (one-off comp1060)
  )
)
(:action evaluate-comp1061-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1061)
    (rebooted comp1061)
  )
  :effect (and
    (not (evaluate comp1061))
    (evaluate comp1062)
  )
)
(:action evaluate-comp1061-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1061)
    (not (rebooted comp1061))
    (running comp687)
    (running comp1060)
  )
  :effect (and
    (not (evaluate comp1061))
    (evaluate comp1062)
    (all-on comp1061)
  )
)
(:action evaluate-comp1061-off-comp687
  :parameters ()
  :precondition (and
    (evaluate comp1061)
    (not (rebooted comp1061))
    (not (running comp687))
  )
  :effect (and
    (not (evaluate comp1061))
    (evaluate comp1062)
    (one-off comp1061)
  )
)
(:action evaluate-comp1061-off-comp1060
  :parameters ()
  :precondition (and
    (evaluate comp1061)
    (not (rebooted comp1061))
    (not (running comp1060))
  )
  :effect (and
    (not (evaluate comp1061))
    (evaluate comp1062)
    (one-off comp1061)
  )
)
(:action evaluate-comp1062-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1062)
    (rebooted comp1062)
  )
  :effect (and
    (not (evaluate comp1062))
    (evaluate comp1063)
  )
)
(:action evaluate-comp1062-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1062)
    (not (rebooted comp1062))
    (running comp1061)
  )
  :effect (and
    (not (evaluate comp1062))
    (evaluate comp1063)
    (all-on comp1062)
  )
)
(:action evaluate-comp1062-off-comp1061
  :parameters ()
  :precondition (and
    (evaluate comp1062)
    (not (rebooted comp1062))
    (not (running comp1061))
  )
  :effect (and
    (not (evaluate comp1062))
    (evaluate comp1063)
    (one-off comp1062)
  )
)
(:action evaluate-comp1063-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1063)
    (rebooted comp1063)
  )
  :effect (and
    (not (evaluate comp1063))
    (evaluate comp1064)
  )
)
(:action evaluate-comp1063-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1063)
    (not (rebooted comp1063))
    (running comp1062)
  )
  :effect (and
    (not (evaluate comp1063))
    (evaluate comp1064)
    (all-on comp1063)
  )
)
(:action evaluate-comp1063-off-comp1062
  :parameters ()
  :precondition (and
    (evaluate comp1063)
    (not (rebooted comp1063))
    (not (running comp1062))
  )
  :effect (and
    (not (evaluate comp1063))
    (evaluate comp1064)
    (one-off comp1063)
  )
)
(:action evaluate-comp1064-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1064)
    (rebooted comp1064)
  )
  :effect (and
    (not (evaluate comp1064))
    (evaluate comp1065)
  )
)
(:action evaluate-comp1064-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1064)
    (not (rebooted comp1064))
    (running comp1063)
  )
  :effect (and
    (not (evaluate comp1064))
    (evaluate comp1065)
    (all-on comp1064)
  )
)
(:action evaluate-comp1064-off-comp1063
  :parameters ()
  :precondition (and
    (evaluate comp1064)
    (not (rebooted comp1064))
    (not (running comp1063))
  )
  :effect (and
    (not (evaluate comp1064))
    (evaluate comp1065)
    (one-off comp1064)
  )
)
(:action evaluate-comp1065-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1065)
    (rebooted comp1065)
  )
  :effect (and
    (not (evaluate comp1065))
    (evaluate comp1066)
  )
)
(:action evaluate-comp1065-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1065)
    (not (rebooted comp1065))
    (running comp1064)
  )
  :effect (and
    (not (evaluate comp1065))
    (evaluate comp1066)
    (all-on comp1065)
  )
)
(:action evaluate-comp1065-off-comp1064
  :parameters ()
  :precondition (and
    (evaluate comp1065)
    (not (rebooted comp1065))
    (not (running comp1064))
  )
  :effect (and
    (not (evaluate comp1065))
    (evaluate comp1066)
    (one-off comp1065)
  )
)
(:action evaluate-comp1066-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1066)
    (rebooted comp1066)
  )
  :effect (and
    (not (evaluate comp1066))
    (evaluate comp1067)
  )
)
(:action evaluate-comp1066-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1066)
    (not (rebooted comp1066))
    (running comp1065)
    (running comp1631)
  )
  :effect (and
    (not (evaluate comp1066))
    (evaluate comp1067)
    (all-on comp1066)
  )
)
(:action evaluate-comp1066-off-comp1065
  :parameters ()
  :precondition (and
    (evaluate comp1066)
    (not (rebooted comp1066))
    (not (running comp1065))
  )
  :effect (and
    (not (evaluate comp1066))
    (evaluate comp1067)
    (one-off comp1066)
  )
)
(:action evaluate-comp1066-off-comp1631
  :parameters ()
  :precondition (and
    (evaluate comp1066)
    (not (rebooted comp1066))
    (not (running comp1631))
  )
  :effect (and
    (not (evaluate comp1066))
    (evaluate comp1067)
    (one-off comp1066)
  )
)
(:action evaluate-comp1067-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1067)
    (rebooted comp1067)
  )
  :effect (and
    (not (evaluate comp1067))
    (evaluate comp1068)
  )
)
(:action evaluate-comp1067-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1067)
    (not (rebooted comp1067))
    (running comp1066)
  )
  :effect (and
    (not (evaluate comp1067))
    (evaluate comp1068)
    (all-on comp1067)
  )
)
(:action evaluate-comp1067-off-comp1066
  :parameters ()
  :precondition (and
    (evaluate comp1067)
    (not (rebooted comp1067))
    (not (running comp1066))
  )
  :effect (and
    (not (evaluate comp1067))
    (evaluate comp1068)
    (one-off comp1067)
  )
)
(:action evaluate-comp1068-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1068)
    (rebooted comp1068)
  )
  :effect (and
    (not (evaluate comp1068))
    (evaluate comp1069)
  )
)
(:action evaluate-comp1068-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1068)
    (not (rebooted comp1068))
    (running comp1067)
  )
  :effect (and
    (not (evaluate comp1068))
    (evaluate comp1069)
    (all-on comp1068)
  )
)
(:action evaluate-comp1068-off-comp1067
  :parameters ()
  :precondition (and
    (evaluate comp1068)
    (not (rebooted comp1068))
    (not (running comp1067))
  )
  :effect (and
    (not (evaluate comp1068))
    (evaluate comp1069)
    (one-off comp1068)
  )
)
(:action evaluate-comp1069-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1069)
    (rebooted comp1069)
  )
  :effect (and
    (not (evaluate comp1069))
    (evaluate comp1070)
  )
)
(:action evaluate-comp1069-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1069)
    (not (rebooted comp1069))
    (running comp733)
    (running comp1068)
    (running comp1397)
  )
  :effect (and
    (not (evaluate comp1069))
    (evaluate comp1070)
    (all-on comp1069)
  )
)
(:action evaluate-comp1069-off-comp733
  :parameters ()
  :precondition (and
    (evaluate comp1069)
    (not (rebooted comp1069))
    (not (running comp733))
  )
  :effect (and
    (not (evaluate comp1069))
    (evaluate comp1070)
    (one-off comp1069)
  )
)
(:action evaluate-comp1069-off-comp1068
  :parameters ()
  :precondition (and
    (evaluate comp1069)
    (not (rebooted comp1069))
    (not (running comp1068))
  )
  :effect (and
    (not (evaluate comp1069))
    (evaluate comp1070)
    (one-off comp1069)
  )
)
(:action evaluate-comp1069-off-comp1397
  :parameters ()
  :precondition (and
    (evaluate comp1069)
    (not (rebooted comp1069))
    (not (running comp1397))
  )
  :effect (and
    (not (evaluate comp1069))
    (evaluate comp1070)
    (one-off comp1069)
  )
)
(:action evaluate-comp1070-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1070)
    (rebooted comp1070)
  )
  :effect (and
    (not (evaluate comp1070))
    (evaluate comp1071)
  )
)
(:action evaluate-comp1070-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1070)
    (not (rebooted comp1070))
    (running comp1069)
  )
  :effect (and
    (not (evaluate comp1070))
    (evaluate comp1071)
    (all-on comp1070)
  )
)
(:action evaluate-comp1070-off-comp1069
  :parameters ()
  :precondition (and
    (evaluate comp1070)
    (not (rebooted comp1070))
    (not (running comp1069))
  )
  :effect (and
    (not (evaluate comp1070))
    (evaluate comp1071)
    (one-off comp1070)
  )
)
(:action evaluate-comp1071-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1071)
    (rebooted comp1071)
  )
  :effect (and
    (not (evaluate comp1071))
    (evaluate comp1072)
  )
)
(:action evaluate-comp1071-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1071)
    (not (rebooted comp1071))
    (running comp1070)
  )
  :effect (and
    (not (evaluate comp1071))
    (evaluate comp1072)
    (all-on comp1071)
  )
)
(:action evaluate-comp1071-off-comp1070
  :parameters ()
  :precondition (and
    (evaluate comp1071)
    (not (rebooted comp1071))
    (not (running comp1070))
  )
  :effect (and
    (not (evaluate comp1071))
    (evaluate comp1072)
    (one-off comp1071)
  )
)
(:action evaluate-comp1072-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1072)
    (rebooted comp1072)
  )
  :effect (and
    (not (evaluate comp1072))
    (evaluate comp1073)
  )
)
(:action evaluate-comp1072-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1072)
    (not (rebooted comp1072))
    (running comp1071)
  )
  :effect (and
    (not (evaluate comp1072))
    (evaluate comp1073)
    (all-on comp1072)
  )
)
(:action evaluate-comp1072-off-comp1071
  :parameters ()
  :precondition (and
    (evaluate comp1072)
    (not (rebooted comp1072))
    (not (running comp1071))
  )
  :effect (and
    (not (evaluate comp1072))
    (evaluate comp1073)
    (one-off comp1072)
  )
)
(:action evaluate-comp1073-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1073)
    (rebooted comp1073)
  )
  :effect (and
    (not (evaluate comp1073))
    (evaluate comp1074)
  )
)
(:action evaluate-comp1073-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1073)
    (not (rebooted comp1073))
    (running comp1072)
  )
  :effect (and
    (not (evaluate comp1073))
    (evaluate comp1074)
    (all-on comp1073)
  )
)
(:action evaluate-comp1073-off-comp1072
  :parameters ()
  :precondition (and
    (evaluate comp1073)
    (not (rebooted comp1073))
    (not (running comp1072))
  )
  :effect (and
    (not (evaluate comp1073))
    (evaluate comp1074)
    (one-off comp1073)
  )
)
(:action evaluate-comp1074-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1074)
    (rebooted comp1074)
  )
  :effect (and
    (not (evaluate comp1074))
    (evaluate comp1075)
  )
)
(:action evaluate-comp1074-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1074)
    (not (rebooted comp1074))
    (running comp1073)
  )
  :effect (and
    (not (evaluate comp1074))
    (evaluate comp1075)
    (all-on comp1074)
  )
)
(:action evaluate-comp1074-off-comp1073
  :parameters ()
  :precondition (and
    (evaluate comp1074)
    (not (rebooted comp1074))
    (not (running comp1073))
  )
  :effect (and
    (not (evaluate comp1074))
    (evaluate comp1075)
    (one-off comp1074)
  )
)
(:action evaluate-comp1075-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1075)
    (rebooted comp1075)
  )
  :effect (and
    (not (evaluate comp1075))
    (evaluate comp1076)
  )
)
(:action evaluate-comp1075-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1075)
    (not (rebooted comp1075))
    (running comp667)
    (running comp1074)
  )
  :effect (and
    (not (evaluate comp1075))
    (evaluate comp1076)
    (all-on comp1075)
  )
)
(:action evaluate-comp1075-off-comp667
  :parameters ()
  :precondition (and
    (evaluate comp1075)
    (not (rebooted comp1075))
    (not (running comp667))
  )
  :effect (and
    (not (evaluate comp1075))
    (evaluate comp1076)
    (one-off comp1075)
  )
)
(:action evaluate-comp1075-off-comp1074
  :parameters ()
  :precondition (and
    (evaluate comp1075)
    (not (rebooted comp1075))
    (not (running comp1074))
  )
  :effect (and
    (not (evaluate comp1075))
    (evaluate comp1076)
    (one-off comp1075)
  )
)
(:action evaluate-comp1076-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1076)
    (rebooted comp1076)
  )
  :effect (and
    (not (evaluate comp1076))
    (evaluate comp1077)
  )
)
(:action evaluate-comp1076-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1076)
    (not (rebooted comp1076))
    (running comp1075)
  )
  :effect (and
    (not (evaluate comp1076))
    (evaluate comp1077)
    (all-on comp1076)
  )
)
(:action evaluate-comp1076-off-comp1075
  :parameters ()
  :precondition (and
    (evaluate comp1076)
    (not (rebooted comp1076))
    (not (running comp1075))
  )
  :effect (and
    (not (evaluate comp1076))
    (evaluate comp1077)
    (one-off comp1076)
  )
)
(:action evaluate-comp1077-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1077)
    (rebooted comp1077)
  )
  :effect (and
    (not (evaluate comp1077))
    (evaluate comp1078)
  )
)
(:action evaluate-comp1077-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1077)
    (not (rebooted comp1077))
    (running comp1076)
    (running comp1476)
  )
  :effect (and
    (not (evaluate comp1077))
    (evaluate comp1078)
    (all-on comp1077)
  )
)
(:action evaluate-comp1077-off-comp1076
  :parameters ()
  :precondition (and
    (evaluate comp1077)
    (not (rebooted comp1077))
    (not (running comp1076))
  )
  :effect (and
    (not (evaluate comp1077))
    (evaluate comp1078)
    (one-off comp1077)
  )
)
(:action evaluate-comp1077-off-comp1476
  :parameters ()
  :precondition (and
    (evaluate comp1077)
    (not (rebooted comp1077))
    (not (running comp1476))
  )
  :effect (and
    (not (evaluate comp1077))
    (evaluate comp1078)
    (one-off comp1077)
  )
)
(:action evaluate-comp1078-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1078)
    (rebooted comp1078)
  )
  :effect (and
    (not (evaluate comp1078))
    (evaluate comp1079)
  )
)
(:action evaluate-comp1078-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1078)
    (not (rebooted comp1078))
    (running comp1077)
  )
  :effect (and
    (not (evaluate comp1078))
    (evaluate comp1079)
    (all-on comp1078)
  )
)
(:action evaluate-comp1078-off-comp1077
  :parameters ()
  :precondition (and
    (evaluate comp1078)
    (not (rebooted comp1078))
    (not (running comp1077))
  )
  :effect (and
    (not (evaluate comp1078))
    (evaluate comp1079)
    (one-off comp1078)
  )
)
(:action evaluate-comp1079-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1079)
    (rebooted comp1079)
  )
  :effect (and
    (not (evaluate comp1079))
    (evaluate comp1080)
  )
)
(:action evaluate-comp1079-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1079)
    (not (rebooted comp1079))
    (running comp1078)
  )
  :effect (and
    (not (evaluate comp1079))
    (evaluate comp1080)
    (all-on comp1079)
  )
)
(:action evaluate-comp1079-off-comp1078
  :parameters ()
  :precondition (and
    (evaluate comp1079)
    (not (rebooted comp1079))
    (not (running comp1078))
  )
  :effect (and
    (not (evaluate comp1079))
    (evaluate comp1080)
    (one-off comp1079)
  )
)
(:action evaluate-comp1080-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1080)
    (rebooted comp1080)
  )
  :effect (and
    (not (evaluate comp1080))
    (evaluate comp1081)
  )
)
(:action evaluate-comp1080-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1080)
    (not (rebooted comp1080))
    (running comp1079)
    (running comp1278)
  )
  :effect (and
    (not (evaluate comp1080))
    (evaluate comp1081)
    (all-on comp1080)
  )
)
(:action evaluate-comp1080-off-comp1079
  :parameters ()
  :precondition (and
    (evaluate comp1080)
    (not (rebooted comp1080))
    (not (running comp1079))
  )
  :effect (and
    (not (evaluate comp1080))
    (evaluate comp1081)
    (one-off comp1080)
  )
)
(:action evaluate-comp1080-off-comp1278
  :parameters ()
  :precondition (and
    (evaluate comp1080)
    (not (rebooted comp1080))
    (not (running comp1278))
  )
  :effect (and
    (not (evaluate comp1080))
    (evaluate comp1081)
    (one-off comp1080)
  )
)
(:action evaluate-comp1081-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1081)
    (rebooted comp1081)
  )
  :effect (and
    (not (evaluate comp1081))
    (evaluate comp1082)
  )
)
(:action evaluate-comp1081-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1081)
    (not (rebooted comp1081))
    (running comp1080)
  )
  :effect (and
    (not (evaluate comp1081))
    (evaluate comp1082)
    (all-on comp1081)
  )
)
(:action evaluate-comp1081-off-comp1080
  :parameters ()
  :precondition (and
    (evaluate comp1081)
    (not (rebooted comp1081))
    (not (running comp1080))
  )
  :effect (and
    (not (evaluate comp1081))
    (evaluate comp1082)
    (one-off comp1081)
  )
)
(:action evaluate-comp1082-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1082)
    (rebooted comp1082)
  )
  :effect (and
    (not (evaluate comp1082))
    (evaluate comp1083)
  )
)
(:action evaluate-comp1082-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1082)
    (not (rebooted comp1082))
    (running comp595)
    (running comp631)
    (running comp1081)
  )
  :effect (and
    (not (evaluate comp1082))
    (evaluate comp1083)
    (all-on comp1082)
  )
)
(:action evaluate-comp1082-off-comp595
  :parameters ()
  :precondition (and
    (evaluate comp1082)
    (not (rebooted comp1082))
    (not (running comp595))
  )
  :effect (and
    (not (evaluate comp1082))
    (evaluate comp1083)
    (one-off comp1082)
  )
)
(:action evaluate-comp1082-off-comp631
  :parameters ()
  :precondition (and
    (evaluate comp1082)
    (not (rebooted comp1082))
    (not (running comp631))
  )
  :effect (and
    (not (evaluate comp1082))
    (evaluate comp1083)
    (one-off comp1082)
  )
)
(:action evaluate-comp1082-off-comp1081
  :parameters ()
  :precondition (and
    (evaluate comp1082)
    (not (rebooted comp1082))
    (not (running comp1081))
  )
  :effect (and
    (not (evaluate comp1082))
    (evaluate comp1083)
    (one-off comp1082)
  )
)
(:action evaluate-comp1083-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1083)
    (rebooted comp1083)
  )
  :effect (and
    (not (evaluate comp1083))
    (evaluate comp1084)
  )
)
(:action evaluate-comp1083-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1083)
    (not (rebooted comp1083))
    (running comp1082)
  )
  :effect (and
    (not (evaluate comp1083))
    (evaluate comp1084)
    (all-on comp1083)
  )
)
(:action evaluate-comp1083-off-comp1082
  :parameters ()
  :precondition (and
    (evaluate comp1083)
    (not (rebooted comp1083))
    (not (running comp1082))
  )
  :effect (and
    (not (evaluate comp1083))
    (evaluate comp1084)
    (one-off comp1083)
  )
)
(:action evaluate-comp1084-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1084)
    (rebooted comp1084)
  )
  :effect (and
    (not (evaluate comp1084))
    (evaluate comp1085)
  )
)
(:action evaluate-comp1084-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1084)
    (not (rebooted comp1084))
    (running comp1083)
    (running comp1751)
  )
  :effect (and
    (not (evaluate comp1084))
    (evaluate comp1085)
    (all-on comp1084)
  )
)
(:action evaluate-comp1084-off-comp1083
  :parameters ()
  :precondition (and
    (evaluate comp1084)
    (not (rebooted comp1084))
    (not (running comp1083))
  )
  :effect (and
    (not (evaluate comp1084))
    (evaluate comp1085)
    (one-off comp1084)
  )
)
(:action evaluate-comp1084-off-comp1751
  :parameters ()
  :precondition (and
    (evaluate comp1084)
    (not (rebooted comp1084))
    (not (running comp1751))
  )
  :effect (and
    (not (evaluate comp1084))
    (evaluate comp1085)
    (one-off comp1084)
  )
)
(:action evaluate-comp1085-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1085)
    (rebooted comp1085)
  )
  :effect (and
    (not (evaluate comp1085))
    (evaluate comp1086)
  )
)
(:action evaluate-comp1085-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1085)
    (not (rebooted comp1085))
    (running comp136)
    (running comp1084)
  )
  :effect (and
    (not (evaluate comp1085))
    (evaluate comp1086)
    (all-on comp1085)
  )
)
(:action evaluate-comp1085-off-comp136
  :parameters ()
  :precondition (and
    (evaluate comp1085)
    (not (rebooted comp1085))
    (not (running comp136))
  )
  :effect (and
    (not (evaluate comp1085))
    (evaluate comp1086)
    (one-off comp1085)
  )
)
(:action evaluate-comp1085-off-comp1084
  :parameters ()
  :precondition (and
    (evaluate comp1085)
    (not (rebooted comp1085))
    (not (running comp1084))
  )
  :effect (and
    (not (evaluate comp1085))
    (evaluate comp1086)
    (one-off comp1085)
  )
)
(:action evaluate-comp1086-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1086)
    (rebooted comp1086)
  )
  :effect (and
    (not (evaluate comp1086))
    (evaluate comp1087)
  )
)
(:action evaluate-comp1086-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1086)
    (not (rebooted comp1086))
    (running comp1085)
  )
  :effect (and
    (not (evaluate comp1086))
    (evaluate comp1087)
    (all-on comp1086)
  )
)
(:action evaluate-comp1086-off-comp1085
  :parameters ()
  :precondition (and
    (evaluate comp1086)
    (not (rebooted comp1086))
    (not (running comp1085))
  )
  :effect (and
    (not (evaluate comp1086))
    (evaluate comp1087)
    (one-off comp1086)
  )
)
(:action evaluate-comp1087-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1087)
    (rebooted comp1087)
  )
  :effect (and
    (not (evaluate comp1087))
    (evaluate comp1088)
  )
)
(:action evaluate-comp1087-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1087)
    (not (rebooted comp1087))
    (running comp1086)
  )
  :effect (and
    (not (evaluate comp1087))
    (evaluate comp1088)
    (all-on comp1087)
  )
)
(:action evaluate-comp1087-off-comp1086
  :parameters ()
  :precondition (and
    (evaluate comp1087)
    (not (rebooted comp1087))
    (not (running comp1086))
  )
  :effect (and
    (not (evaluate comp1087))
    (evaluate comp1088)
    (one-off comp1087)
  )
)
(:action evaluate-comp1088-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1088)
    (rebooted comp1088)
  )
  :effect (and
    (not (evaluate comp1088))
    (evaluate comp1089)
  )
)
(:action evaluate-comp1088-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1088)
    (not (rebooted comp1088))
    (running comp1087)
    (running comp1138)
  )
  :effect (and
    (not (evaluate comp1088))
    (evaluate comp1089)
    (all-on comp1088)
  )
)
(:action evaluate-comp1088-off-comp1087
  :parameters ()
  :precondition (and
    (evaluate comp1088)
    (not (rebooted comp1088))
    (not (running comp1087))
  )
  :effect (and
    (not (evaluate comp1088))
    (evaluate comp1089)
    (one-off comp1088)
  )
)
(:action evaluate-comp1088-off-comp1138
  :parameters ()
  :precondition (and
    (evaluate comp1088)
    (not (rebooted comp1088))
    (not (running comp1138))
  )
  :effect (and
    (not (evaluate comp1088))
    (evaluate comp1089)
    (one-off comp1088)
  )
)
(:action evaluate-comp1089-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1089)
    (rebooted comp1089)
  )
  :effect (and
    (not (evaluate comp1089))
    (evaluate comp1090)
  )
)
(:action evaluate-comp1089-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1089)
    (not (rebooted comp1089))
    (running comp1088)
  )
  :effect (and
    (not (evaluate comp1089))
    (evaluate comp1090)
    (all-on comp1089)
  )
)
(:action evaluate-comp1089-off-comp1088
  :parameters ()
  :precondition (and
    (evaluate comp1089)
    (not (rebooted comp1089))
    (not (running comp1088))
  )
  :effect (and
    (not (evaluate comp1089))
    (evaluate comp1090)
    (one-off comp1089)
  )
)
(:action evaluate-comp1090-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1090)
    (rebooted comp1090)
  )
  :effect (and
    (not (evaluate comp1090))
    (evaluate comp1091)
  )
)
(:action evaluate-comp1090-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1090)
    (not (rebooted comp1090))
    (running comp71)
    (running comp1089)
  )
  :effect (and
    (not (evaluate comp1090))
    (evaluate comp1091)
    (all-on comp1090)
  )
)
(:action evaluate-comp1090-off-comp71
  :parameters ()
  :precondition (and
    (evaluate comp1090)
    (not (rebooted comp1090))
    (not (running comp71))
  )
  :effect (and
    (not (evaluate comp1090))
    (evaluate comp1091)
    (one-off comp1090)
  )
)
(:action evaluate-comp1090-off-comp1089
  :parameters ()
  :precondition (and
    (evaluate comp1090)
    (not (rebooted comp1090))
    (not (running comp1089))
  )
  :effect (and
    (not (evaluate comp1090))
    (evaluate comp1091)
    (one-off comp1090)
  )
)
(:action evaluate-comp1091-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1091)
    (rebooted comp1091)
  )
  :effect (and
    (not (evaluate comp1091))
    (evaluate comp1092)
  )
)
(:action evaluate-comp1091-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1091)
    (not (rebooted comp1091))
    (running comp1090)
  )
  :effect (and
    (not (evaluate comp1091))
    (evaluate comp1092)
    (all-on comp1091)
  )
)
(:action evaluate-comp1091-off-comp1090
  :parameters ()
  :precondition (and
    (evaluate comp1091)
    (not (rebooted comp1091))
    (not (running comp1090))
  )
  :effect (and
    (not (evaluate comp1091))
    (evaluate comp1092)
    (one-off comp1091)
  )
)
(:action evaluate-comp1092-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1092)
    (rebooted comp1092)
  )
  :effect (and
    (not (evaluate comp1092))
    (evaluate comp1093)
  )
)
(:action evaluate-comp1092-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1092)
    (not (rebooted comp1092))
    (running comp52)
    (running comp1091)
  )
  :effect (and
    (not (evaluate comp1092))
    (evaluate comp1093)
    (all-on comp1092)
  )
)
(:action evaluate-comp1092-off-comp52
  :parameters ()
  :precondition (and
    (evaluate comp1092)
    (not (rebooted comp1092))
    (not (running comp52))
  )
  :effect (and
    (not (evaluate comp1092))
    (evaluate comp1093)
    (one-off comp1092)
  )
)
(:action evaluate-comp1092-off-comp1091
  :parameters ()
  :precondition (and
    (evaluate comp1092)
    (not (rebooted comp1092))
    (not (running comp1091))
  )
  :effect (and
    (not (evaluate comp1092))
    (evaluate comp1093)
    (one-off comp1092)
  )
)
(:action evaluate-comp1093-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1093)
    (rebooted comp1093)
  )
  :effect (and
    (not (evaluate comp1093))
    (evaluate comp1094)
  )
)
(:action evaluate-comp1093-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1093)
    (not (rebooted comp1093))
    (running comp1092)
    (running comp1715)
  )
  :effect (and
    (not (evaluate comp1093))
    (evaluate comp1094)
    (all-on comp1093)
  )
)
(:action evaluate-comp1093-off-comp1092
  :parameters ()
  :precondition (and
    (evaluate comp1093)
    (not (rebooted comp1093))
    (not (running comp1092))
  )
  :effect (and
    (not (evaluate comp1093))
    (evaluate comp1094)
    (one-off comp1093)
  )
)
(:action evaluate-comp1093-off-comp1715
  :parameters ()
  :precondition (and
    (evaluate comp1093)
    (not (rebooted comp1093))
    (not (running comp1715))
  )
  :effect (and
    (not (evaluate comp1093))
    (evaluate comp1094)
    (one-off comp1093)
  )
)
(:action evaluate-comp1094-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1094)
    (rebooted comp1094)
  )
  :effect (and
    (not (evaluate comp1094))
    (evaluate comp1095)
  )
)
(:action evaluate-comp1094-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1094)
    (not (rebooted comp1094))
    (running comp1093)
  )
  :effect (and
    (not (evaluate comp1094))
    (evaluate comp1095)
    (all-on comp1094)
  )
)
(:action evaluate-comp1094-off-comp1093
  :parameters ()
  :precondition (and
    (evaluate comp1094)
    (not (rebooted comp1094))
    (not (running comp1093))
  )
  :effect (and
    (not (evaluate comp1094))
    (evaluate comp1095)
    (one-off comp1094)
  )
)
(:action evaluate-comp1095-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1095)
    (rebooted comp1095)
  )
  :effect (and
    (not (evaluate comp1095))
    (evaluate comp1096)
  )
)
(:action evaluate-comp1095-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1095)
    (not (rebooted comp1095))
    (running comp1094)
  )
  :effect (and
    (not (evaluate comp1095))
    (evaluate comp1096)
    (all-on comp1095)
  )
)
(:action evaluate-comp1095-off-comp1094
  :parameters ()
  :precondition (and
    (evaluate comp1095)
    (not (rebooted comp1095))
    (not (running comp1094))
  )
  :effect (and
    (not (evaluate comp1095))
    (evaluate comp1096)
    (one-off comp1095)
  )
)
(:action evaluate-comp1096-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1096)
    (rebooted comp1096)
  )
  :effect (and
    (not (evaluate comp1096))
    (evaluate comp1097)
  )
)
(:action evaluate-comp1096-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1096)
    (not (rebooted comp1096))
    (running comp1095)
  )
  :effect (and
    (not (evaluate comp1096))
    (evaluate comp1097)
    (all-on comp1096)
  )
)
(:action evaluate-comp1096-off-comp1095
  :parameters ()
  :precondition (and
    (evaluate comp1096)
    (not (rebooted comp1096))
    (not (running comp1095))
  )
  :effect (and
    (not (evaluate comp1096))
    (evaluate comp1097)
    (one-off comp1096)
  )
)
(:action evaluate-comp1097-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1097)
    (rebooted comp1097)
  )
  :effect (and
    (not (evaluate comp1097))
    (evaluate comp1098)
  )
)
(:action evaluate-comp1097-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1097)
    (not (rebooted comp1097))
    (running comp1096)
  )
  :effect (and
    (not (evaluate comp1097))
    (evaluate comp1098)
    (all-on comp1097)
  )
)
(:action evaluate-comp1097-off-comp1096
  :parameters ()
  :precondition (and
    (evaluate comp1097)
    (not (rebooted comp1097))
    (not (running comp1096))
  )
  :effect (and
    (not (evaluate comp1097))
    (evaluate comp1098)
    (one-off comp1097)
  )
)
(:action evaluate-comp1098-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1098)
    (rebooted comp1098)
  )
  :effect (and
    (not (evaluate comp1098))
    (evaluate comp1099)
  )
)
(:action evaluate-comp1098-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1098)
    (not (rebooted comp1098))
    (running comp1024)
    (running comp1097)
  )
  :effect (and
    (not (evaluate comp1098))
    (evaluate comp1099)
    (all-on comp1098)
  )
)
(:action evaluate-comp1098-off-comp1024
  :parameters ()
  :precondition (and
    (evaluate comp1098)
    (not (rebooted comp1098))
    (not (running comp1024))
  )
  :effect (and
    (not (evaluate comp1098))
    (evaluate comp1099)
    (one-off comp1098)
  )
)
(:action evaluate-comp1098-off-comp1097
  :parameters ()
  :precondition (and
    (evaluate comp1098)
    (not (rebooted comp1098))
    (not (running comp1097))
  )
  :effect (and
    (not (evaluate comp1098))
    (evaluate comp1099)
    (one-off comp1098)
  )
)
(:action evaluate-comp1099-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1099)
    (rebooted comp1099)
  )
  :effect (and
    (not (evaluate comp1099))
    (evaluate comp1100)
  )
)
(:action evaluate-comp1099-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1099)
    (not (rebooted comp1099))
    (running comp1098)
  )
  :effect (and
    (not (evaluate comp1099))
    (evaluate comp1100)
    (all-on comp1099)
  )
)
(:action evaluate-comp1099-off-comp1098
  :parameters ()
  :precondition (and
    (evaluate comp1099)
    (not (rebooted comp1099))
    (not (running comp1098))
  )
  :effect (and
    (not (evaluate comp1099))
    (evaluate comp1100)
    (one-off comp1099)
  )
)
(:action evaluate-comp1100-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1100)
    (rebooted comp1100)
  )
  :effect (and
    (not (evaluate comp1100))
    (evaluate comp1101)
  )
)
(:action evaluate-comp1100-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1100)
    (not (rebooted comp1100))
    (running comp1099)
  )
  :effect (and
    (not (evaluate comp1100))
    (evaluate comp1101)
    (all-on comp1100)
  )
)
(:action evaluate-comp1100-off-comp1099
  :parameters ()
  :precondition (and
    (evaluate comp1100)
    (not (rebooted comp1100))
    (not (running comp1099))
  )
  :effect (and
    (not (evaluate comp1100))
    (evaluate comp1101)
    (one-off comp1100)
  )
)
(:action evaluate-comp1101-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1101)
    (rebooted comp1101)
  )
  :effect (and
    (not (evaluate comp1101))
    (evaluate comp1102)
  )
)
(:action evaluate-comp1101-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1101)
    (not (rebooted comp1101))
    (running comp1100)
  )
  :effect (and
    (not (evaluate comp1101))
    (evaluate comp1102)
    (all-on comp1101)
  )
)
(:action evaluate-comp1101-off-comp1100
  :parameters ()
  :precondition (and
    (evaluate comp1101)
    (not (rebooted comp1101))
    (not (running comp1100))
  )
  :effect (and
    (not (evaluate comp1101))
    (evaluate comp1102)
    (one-off comp1101)
  )
)
(:action evaluate-comp1102-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1102)
    (rebooted comp1102)
  )
  :effect (and
    (not (evaluate comp1102))
    (evaluate comp1103)
  )
)
(:action evaluate-comp1102-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1102)
    (not (rebooted comp1102))
    (running comp1101)
  )
  :effect (and
    (not (evaluate comp1102))
    (evaluate comp1103)
    (all-on comp1102)
  )
)
(:action evaluate-comp1102-off-comp1101
  :parameters ()
  :precondition (and
    (evaluate comp1102)
    (not (rebooted comp1102))
    (not (running comp1101))
  )
  :effect (and
    (not (evaluate comp1102))
    (evaluate comp1103)
    (one-off comp1102)
  )
)
(:action evaluate-comp1103-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1103)
    (rebooted comp1103)
  )
  :effect (and
    (not (evaluate comp1103))
    (evaluate comp1104)
  )
)
(:action evaluate-comp1103-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1103)
    (not (rebooted comp1103))
    (running comp1102)
    (running comp1373)
  )
  :effect (and
    (not (evaluate comp1103))
    (evaluate comp1104)
    (all-on comp1103)
  )
)
(:action evaluate-comp1103-off-comp1102
  :parameters ()
  :precondition (and
    (evaluate comp1103)
    (not (rebooted comp1103))
    (not (running comp1102))
  )
  :effect (and
    (not (evaluate comp1103))
    (evaluate comp1104)
    (one-off comp1103)
  )
)
(:action evaluate-comp1103-off-comp1373
  :parameters ()
  :precondition (and
    (evaluate comp1103)
    (not (rebooted comp1103))
    (not (running comp1373))
  )
  :effect (and
    (not (evaluate comp1103))
    (evaluate comp1104)
    (one-off comp1103)
  )
)
(:action evaluate-comp1104-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1104)
    (rebooted comp1104)
  )
  :effect (and
    (not (evaluate comp1104))
    (evaluate comp1105)
  )
)
(:action evaluate-comp1104-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1104)
    (not (rebooted comp1104))
    (running comp1103)
    (running comp1131)
  )
  :effect (and
    (not (evaluate comp1104))
    (evaluate comp1105)
    (all-on comp1104)
  )
)
(:action evaluate-comp1104-off-comp1103
  :parameters ()
  :precondition (and
    (evaluate comp1104)
    (not (rebooted comp1104))
    (not (running comp1103))
  )
  :effect (and
    (not (evaluate comp1104))
    (evaluate comp1105)
    (one-off comp1104)
  )
)
(:action evaluate-comp1104-off-comp1131
  :parameters ()
  :precondition (and
    (evaluate comp1104)
    (not (rebooted comp1104))
    (not (running comp1131))
  )
  :effect (and
    (not (evaluate comp1104))
    (evaluate comp1105)
    (one-off comp1104)
  )
)
(:action evaluate-comp1105-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1105)
    (rebooted comp1105)
  )
  :effect (and
    (not (evaluate comp1105))
    (evaluate comp1106)
  )
)
(:action evaluate-comp1105-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1105)
    (not (rebooted comp1105))
    (running comp705)
    (running comp1104)
  )
  :effect (and
    (not (evaluate comp1105))
    (evaluate comp1106)
    (all-on comp1105)
  )
)
(:action evaluate-comp1105-off-comp705
  :parameters ()
  :precondition (and
    (evaluate comp1105)
    (not (rebooted comp1105))
    (not (running comp705))
  )
  :effect (and
    (not (evaluate comp1105))
    (evaluate comp1106)
    (one-off comp1105)
  )
)
(:action evaluate-comp1105-off-comp1104
  :parameters ()
  :precondition (and
    (evaluate comp1105)
    (not (rebooted comp1105))
    (not (running comp1104))
  )
  :effect (and
    (not (evaluate comp1105))
    (evaluate comp1106)
    (one-off comp1105)
  )
)
(:action evaluate-comp1106-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1106)
    (rebooted comp1106)
  )
  :effect (and
    (not (evaluate comp1106))
    (evaluate comp1107)
  )
)
(:action evaluate-comp1106-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1106)
    (not (rebooted comp1106))
    (running comp1105)
  )
  :effect (and
    (not (evaluate comp1106))
    (evaluate comp1107)
    (all-on comp1106)
  )
)
(:action evaluate-comp1106-off-comp1105
  :parameters ()
  :precondition (and
    (evaluate comp1106)
    (not (rebooted comp1106))
    (not (running comp1105))
  )
  :effect (and
    (not (evaluate comp1106))
    (evaluate comp1107)
    (one-off comp1106)
  )
)
(:action evaluate-comp1107-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1107)
    (rebooted comp1107)
  )
  :effect (and
    (not (evaluate comp1107))
    (evaluate comp1108)
  )
)
(:action evaluate-comp1107-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1107)
    (not (rebooted comp1107))
    (running comp1106)
  )
  :effect (and
    (not (evaluate comp1107))
    (evaluate comp1108)
    (all-on comp1107)
  )
)
(:action evaluate-comp1107-off-comp1106
  :parameters ()
  :precondition (and
    (evaluate comp1107)
    (not (rebooted comp1107))
    (not (running comp1106))
  )
  :effect (and
    (not (evaluate comp1107))
    (evaluate comp1108)
    (one-off comp1107)
  )
)
(:action evaluate-comp1108-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1108)
    (rebooted comp1108)
  )
  :effect (and
    (not (evaluate comp1108))
    (evaluate comp1109)
  )
)
(:action evaluate-comp1108-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1108)
    (not (rebooted comp1108))
    (running comp927)
    (running comp1107)
  )
  :effect (and
    (not (evaluate comp1108))
    (evaluate comp1109)
    (all-on comp1108)
  )
)
(:action evaluate-comp1108-off-comp927
  :parameters ()
  :precondition (and
    (evaluate comp1108)
    (not (rebooted comp1108))
    (not (running comp927))
  )
  :effect (and
    (not (evaluate comp1108))
    (evaluate comp1109)
    (one-off comp1108)
  )
)
(:action evaluate-comp1108-off-comp1107
  :parameters ()
  :precondition (and
    (evaluate comp1108)
    (not (rebooted comp1108))
    (not (running comp1107))
  )
  :effect (and
    (not (evaluate comp1108))
    (evaluate comp1109)
    (one-off comp1108)
  )
)
(:action evaluate-comp1109-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1109)
    (rebooted comp1109)
  )
  :effect (and
    (not (evaluate comp1109))
    (evaluate comp1110)
  )
)
(:action evaluate-comp1109-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1109)
    (not (rebooted comp1109))
    (running comp1108)
    (running comp1564)
  )
  :effect (and
    (not (evaluate comp1109))
    (evaluate comp1110)
    (all-on comp1109)
  )
)
(:action evaluate-comp1109-off-comp1108
  :parameters ()
  :precondition (and
    (evaluate comp1109)
    (not (rebooted comp1109))
    (not (running comp1108))
  )
  :effect (and
    (not (evaluate comp1109))
    (evaluate comp1110)
    (one-off comp1109)
  )
)
(:action evaluate-comp1109-off-comp1564
  :parameters ()
  :precondition (and
    (evaluate comp1109)
    (not (rebooted comp1109))
    (not (running comp1564))
  )
  :effect (and
    (not (evaluate comp1109))
    (evaluate comp1110)
    (one-off comp1109)
  )
)
(:action evaluate-comp1110-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1110)
    (rebooted comp1110)
  )
  :effect (and
    (not (evaluate comp1110))
    (evaluate comp1111)
  )
)
(:action evaluate-comp1110-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1110)
    (not (rebooted comp1110))
    (running comp1109)
    (running comp1564)
  )
  :effect (and
    (not (evaluate comp1110))
    (evaluate comp1111)
    (all-on comp1110)
  )
)
(:action evaluate-comp1110-off-comp1109
  :parameters ()
  :precondition (and
    (evaluate comp1110)
    (not (rebooted comp1110))
    (not (running comp1109))
  )
  :effect (and
    (not (evaluate comp1110))
    (evaluate comp1111)
    (one-off comp1110)
  )
)
(:action evaluate-comp1110-off-comp1564
  :parameters ()
  :precondition (and
    (evaluate comp1110)
    (not (rebooted comp1110))
    (not (running comp1564))
  )
  :effect (and
    (not (evaluate comp1110))
    (evaluate comp1111)
    (one-off comp1110)
  )
)
(:action evaluate-comp1111-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1111)
    (rebooted comp1111)
  )
  :effect (and
    (not (evaluate comp1111))
    (evaluate comp1112)
  )
)
(:action evaluate-comp1111-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1111)
    (not (rebooted comp1111))
    (running comp157)
    (running comp1110)
  )
  :effect (and
    (not (evaluate comp1111))
    (evaluate comp1112)
    (all-on comp1111)
  )
)
(:action evaluate-comp1111-off-comp157
  :parameters ()
  :precondition (and
    (evaluate comp1111)
    (not (rebooted comp1111))
    (not (running comp157))
  )
  :effect (and
    (not (evaluate comp1111))
    (evaluate comp1112)
    (one-off comp1111)
  )
)
(:action evaluate-comp1111-off-comp1110
  :parameters ()
  :precondition (and
    (evaluate comp1111)
    (not (rebooted comp1111))
    (not (running comp1110))
  )
  :effect (and
    (not (evaluate comp1111))
    (evaluate comp1112)
    (one-off comp1111)
  )
)
(:action evaluate-comp1112-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1112)
    (rebooted comp1112)
  )
  :effect (and
    (not (evaluate comp1112))
    (evaluate comp1113)
  )
)
(:action evaluate-comp1112-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1112)
    (not (rebooted comp1112))
    (running comp1111)
  )
  :effect (and
    (not (evaluate comp1112))
    (evaluate comp1113)
    (all-on comp1112)
  )
)
(:action evaluate-comp1112-off-comp1111
  :parameters ()
  :precondition (and
    (evaluate comp1112)
    (not (rebooted comp1112))
    (not (running comp1111))
  )
  :effect (and
    (not (evaluate comp1112))
    (evaluate comp1113)
    (one-off comp1112)
  )
)
(:action evaluate-comp1113-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1113)
    (rebooted comp1113)
  )
  :effect (and
    (not (evaluate comp1113))
    (evaluate comp1114)
  )
)
(:action evaluate-comp1113-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1113)
    (not (rebooted comp1113))
    (running comp1112)
  )
  :effect (and
    (not (evaluate comp1113))
    (evaluate comp1114)
    (all-on comp1113)
  )
)
(:action evaluate-comp1113-off-comp1112
  :parameters ()
  :precondition (and
    (evaluate comp1113)
    (not (rebooted comp1113))
    (not (running comp1112))
  )
  :effect (and
    (not (evaluate comp1113))
    (evaluate comp1114)
    (one-off comp1113)
  )
)
(:action evaluate-comp1114-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1114)
    (rebooted comp1114)
  )
  :effect (and
    (not (evaluate comp1114))
    (evaluate comp1115)
  )
)
(:action evaluate-comp1114-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1114)
    (not (rebooted comp1114))
    (running comp1113)
  )
  :effect (and
    (not (evaluate comp1114))
    (evaluate comp1115)
    (all-on comp1114)
  )
)
(:action evaluate-comp1114-off-comp1113
  :parameters ()
  :precondition (and
    (evaluate comp1114)
    (not (rebooted comp1114))
    (not (running comp1113))
  )
  :effect (and
    (not (evaluate comp1114))
    (evaluate comp1115)
    (one-off comp1114)
  )
)
(:action evaluate-comp1115-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1115)
    (rebooted comp1115)
  )
  :effect (and
    (not (evaluate comp1115))
    (evaluate comp1116)
  )
)
(:action evaluate-comp1115-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1115)
    (not (rebooted comp1115))
    (running comp1114)
    (running comp1557)
  )
  :effect (and
    (not (evaluate comp1115))
    (evaluate comp1116)
    (all-on comp1115)
  )
)
(:action evaluate-comp1115-off-comp1114
  :parameters ()
  :precondition (and
    (evaluate comp1115)
    (not (rebooted comp1115))
    (not (running comp1114))
  )
  :effect (and
    (not (evaluate comp1115))
    (evaluate comp1116)
    (one-off comp1115)
  )
)
(:action evaluate-comp1115-off-comp1557
  :parameters ()
  :precondition (and
    (evaluate comp1115)
    (not (rebooted comp1115))
    (not (running comp1557))
  )
  :effect (and
    (not (evaluate comp1115))
    (evaluate comp1116)
    (one-off comp1115)
  )
)
(:action evaluate-comp1116-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1116)
    (rebooted comp1116)
  )
  :effect (and
    (not (evaluate comp1116))
    (evaluate comp1117)
  )
)
(:action evaluate-comp1116-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1116)
    (not (rebooted comp1116))
    (running comp1115)
  )
  :effect (and
    (not (evaluate comp1116))
    (evaluate comp1117)
    (all-on comp1116)
  )
)
(:action evaluate-comp1116-off-comp1115
  :parameters ()
  :precondition (and
    (evaluate comp1116)
    (not (rebooted comp1116))
    (not (running comp1115))
  )
  :effect (and
    (not (evaluate comp1116))
    (evaluate comp1117)
    (one-off comp1116)
  )
)
(:action evaluate-comp1117-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1117)
    (rebooted comp1117)
  )
  :effect (and
    (not (evaluate comp1117))
    (evaluate comp1118)
  )
)
(:action evaluate-comp1117-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1117)
    (not (rebooted comp1117))
    (running comp623)
    (running comp1116)
  )
  :effect (and
    (not (evaluate comp1117))
    (evaluate comp1118)
    (all-on comp1117)
  )
)
(:action evaluate-comp1117-off-comp623
  :parameters ()
  :precondition (and
    (evaluate comp1117)
    (not (rebooted comp1117))
    (not (running comp623))
  )
  :effect (and
    (not (evaluate comp1117))
    (evaluate comp1118)
    (one-off comp1117)
  )
)
(:action evaluate-comp1117-off-comp1116
  :parameters ()
  :precondition (and
    (evaluate comp1117)
    (not (rebooted comp1117))
    (not (running comp1116))
  )
  :effect (and
    (not (evaluate comp1117))
    (evaluate comp1118)
    (one-off comp1117)
  )
)
(:action evaluate-comp1118-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1118)
    (rebooted comp1118)
  )
  :effect (and
    (not (evaluate comp1118))
    (evaluate comp1119)
  )
)
(:action evaluate-comp1118-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1118)
    (not (rebooted comp1118))
    (running comp1117)
  )
  :effect (and
    (not (evaluate comp1118))
    (evaluate comp1119)
    (all-on comp1118)
  )
)
(:action evaluate-comp1118-off-comp1117
  :parameters ()
  :precondition (and
    (evaluate comp1118)
    (not (rebooted comp1118))
    (not (running comp1117))
  )
  :effect (and
    (not (evaluate comp1118))
    (evaluate comp1119)
    (one-off comp1118)
  )
)
(:action evaluate-comp1119-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1119)
    (rebooted comp1119)
  )
  :effect (and
    (not (evaluate comp1119))
    (evaluate comp1120)
  )
)
(:action evaluate-comp1119-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1119)
    (not (rebooted comp1119))
    (running comp1118)
    (running comp1914)
  )
  :effect (and
    (not (evaluate comp1119))
    (evaluate comp1120)
    (all-on comp1119)
  )
)
(:action evaluate-comp1119-off-comp1118
  :parameters ()
  :precondition (and
    (evaluate comp1119)
    (not (rebooted comp1119))
    (not (running comp1118))
  )
  :effect (and
    (not (evaluate comp1119))
    (evaluate comp1120)
    (one-off comp1119)
  )
)
(:action evaluate-comp1119-off-comp1914
  :parameters ()
  :precondition (and
    (evaluate comp1119)
    (not (rebooted comp1119))
    (not (running comp1914))
  )
  :effect (and
    (not (evaluate comp1119))
    (evaluate comp1120)
    (one-off comp1119)
  )
)
(:action evaluate-comp1120-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1120)
    (rebooted comp1120)
  )
  :effect (and
    (not (evaluate comp1120))
    (evaluate comp1121)
  )
)
(:action evaluate-comp1120-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1120)
    (not (rebooted comp1120))
    (running comp1119)
    (running comp1224)
  )
  :effect (and
    (not (evaluate comp1120))
    (evaluate comp1121)
    (all-on comp1120)
  )
)
(:action evaluate-comp1120-off-comp1119
  :parameters ()
  :precondition (and
    (evaluate comp1120)
    (not (rebooted comp1120))
    (not (running comp1119))
  )
  :effect (and
    (not (evaluate comp1120))
    (evaluate comp1121)
    (one-off comp1120)
  )
)
(:action evaluate-comp1120-off-comp1224
  :parameters ()
  :precondition (and
    (evaluate comp1120)
    (not (rebooted comp1120))
    (not (running comp1224))
  )
  :effect (and
    (not (evaluate comp1120))
    (evaluate comp1121)
    (one-off comp1120)
  )
)
(:action evaluate-comp1121-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1121)
    (rebooted comp1121)
  )
  :effect (and
    (not (evaluate comp1121))
    (evaluate comp1122)
  )
)
(:action evaluate-comp1121-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1121)
    (not (rebooted comp1121))
    (running comp1120)
  )
  :effect (and
    (not (evaluate comp1121))
    (evaluate comp1122)
    (all-on comp1121)
  )
)
(:action evaluate-comp1121-off-comp1120
  :parameters ()
  :precondition (and
    (evaluate comp1121)
    (not (rebooted comp1121))
    (not (running comp1120))
  )
  :effect (and
    (not (evaluate comp1121))
    (evaluate comp1122)
    (one-off comp1121)
  )
)
(:action evaluate-comp1122-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1122)
    (rebooted comp1122)
  )
  :effect (and
    (not (evaluate comp1122))
    (evaluate comp1123)
  )
)
(:action evaluate-comp1122-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1122)
    (not (rebooted comp1122))
    (running comp1121)
  )
  :effect (and
    (not (evaluate comp1122))
    (evaluate comp1123)
    (all-on comp1122)
  )
)
(:action evaluate-comp1122-off-comp1121
  :parameters ()
  :precondition (and
    (evaluate comp1122)
    (not (rebooted comp1122))
    (not (running comp1121))
  )
  :effect (and
    (not (evaluate comp1122))
    (evaluate comp1123)
    (one-off comp1122)
  )
)
(:action evaluate-comp1123-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1123)
    (rebooted comp1123)
  )
  :effect (and
    (not (evaluate comp1123))
    (evaluate comp1124)
  )
)
(:action evaluate-comp1123-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1123)
    (not (rebooted comp1123))
    (running comp1122)
  )
  :effect (and
    (not (evaluate comp1123))
    (evaluate comp1124)
    (all-on comp1123)
  )
)
(:action evaluate-comp1123-off-comp1122
  :parameters ()
  :precondition (and
    (evaluate comp1123)
    (not (rebooted comp1123))
    (not (running comp1122))
  )
  :effect (and
    (not (evaluate comp1123))
    (evaluate comp1124)
    (one-off comp1123)
  )
)
(:action evaluate-comp1124-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1124)
    (rebooted comp1124)
  )
  :effect (and
    (not (evaluate comp1124))
    (evaluate comp1125)
  )
)
(:action evaluate-comp1124-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1124)
    (not (rebooted comp1124))
    (running comp1123)
  )
  :effect (and
    (not (evaluate comp1124))
    (evaluate comp1125)
    (all-on comp1124)
  )
)
(:action evaluate-comp1124-off-comp1123
  :parameters ()
  :precondition (and
    (evaluate comp1124)
    (not (rebooted comp1124))
    (not (running comp1123))
  )
  :effect (and
    (not (evaluate comp1124))
    (evaluate comp1125)
    (one-off comp1124)
  )
)
(:action evaluate-comp1125-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1125)
    (rebooted comp1125)
  )
  :effect (and
    (not (evaluate comp1125))
    (evaluate comp1126)
  )
)
(:action evaluate-comp1125-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1125)
    (not (rebooted comp1125))
    (running comp1124)
  )
  :effect (and
    (not (evaluate comp1125))
    (evaluate comp1126)
    (all-on comp1125)
  )
)
(:action evaluate-comp1125-off-comp1124
  :parameters ()
  :precondition (and
    (evaluate comp1125)
    (not (rebooted comp1125))
    (not (running comp1124))
  )
  :effect (and
    (not (evaluate comp1125))
    (evaluate comp1126)
    (one-off comp1125)
  )
)
(:action evaluate-comp1126-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1126)
    (rebooted comp1126)
  )
  :effect (and
    (not (evaluate comp1126))
    (evaluate comp1127)
  )
)
(:action evaluate-comp1126-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1126)
    (not (rebooted comp1126))
    (running comp1125)
  )
  :effect (and
    (not (evaluate comp1126))
    (evaluate comp1127)
    (all-on comp1126)
  )
)
(:action evaluate-comp1126-off-comp1125
  :parameters ()
  :precondition (and
    (evaluate comp1126)
    (not (rebooted comp1126))
    (not (running comp1125))
  )
  :effect (and
    (not (evaluate comp1126))
    (evaluate comp1127)
    (one-off comp1126)
  )
)
(:action evaluate-comp1127-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1127)
    (rebooted comp1127)
  )
  :effect (and
    (not (evaluate comp1127))
    (evaluate comp1128)
  )
)
(:action evaluate-comp1127-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1127)
    (not (rebooted comp1127))
    (running comp1126)
  )
  :effect (and
    (not (evaluate comp1127))
    (evaluate comp1128)
    (all-on comp1127)
  )
)
(:action evaluate-comp1127-off-comp1126
  :parameters ()
  :precondition (and
    (evaluate comp1127)
    (not (rebooted comp1127))
    (not (running comp1126))
  )
  :effect (and
    (not (evaluate comp1127))
    (evaluate comp1128)
    (one-off comp1127)
  )
)
(:action evaluate-comp1128-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1128)
    (rebooted comp1128)
  )
  :effect (and
    (not (evaluate comp1128))
    (evaluate comp1129)
  )
)
(:action evaluate-comp1128-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1128)
    (not (rebooted comp1128))
    (running comp1127)
    (running comp1567)
  )
  :effect (and
    (not (evaluate comp1128))
    (evaluate comp1129)
    (all-on comp1128)
  )
)
(:action evaluate-comp1128-off-comp1127
  :parameters ()
  :precondition (and
    (evaluate comp1128)
    (not (rebooted comp1128))
    (not (running comp1127))
  )
  :effect (and
    (not (evaluate comp1128))
    (evaluate comp1129)
    (one-off comp1128)
  )
)
(:action evaluate-comp1128-off-comp1567
  :parameters ()
  :precondition (and
    (evaluate comp1128)
    (not (rebooted comp1128))
    (not (running comp1567))
  )
  :effect (and
    (not (evaluate comp1128))
    (evaluate comp1129)
    (one-off comp1128)
  )
)
(:action evaluate-comp1129-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1129)
    (rebooted comp1129)
  )
  :effect (and
    (not (evaluate comp1129))
    (evaluate comp1130)
  )
)
(:action evaluate-comp1129-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1129)
    (not (rebooted comp1129))
    (running comp1128)
  )
  :effect (and
    (not (evaluate comp1129))
    (evaluate comp1130)
    (all-on comp1129)
  )
)
(:action evaluate-comp1129-off-comp1128
  :parameters ()
  :precondition (and
    (evaluate comp1129)
    (not (rebooted comp1129))
    (not (running comp1128))
  )
  :effect (and
    (not (evaluate comp1129))
    (evaluate comp1130)
    (one-off comp1129)
  )
)
(:action evaluate-comp1130-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1130)
    (rebooted comp1130)
  )
  :effect (and
    (not (evaluate comp1130))
    (evaluate comp1131)
  )
)
(:action evaluate-comp1130-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1130)
    (not (rebooted comp1130))
    (running comp1129)
    (running comp1743)
  )
  :effect (and
    (not (evaluate comp1130))
    (evaluate comp1131)
    (all-on comp1130)
  )
)
(:action evaluate-comp1130-off-comp1129
  :parameters ()
  :precondition (and
    (evaluate comp1130)
    (not (rebooted comp1130))
    (not (running comp1129))
  )
  :effect (and
    (not (evaluate comp1130))
    (evaluate comp1131)
    (one-off comp1130)
  )
)
(:action evaluate-comp1130-off-comp1743
  :parameters ()
  :precondition (and
    (evaluate comp1130)
    (not (rebooted comp1130))
    (not (running comp1743))
  )
  :effect (and
    (not (evaluate comp1130))
    (evaluate comp1131)
    (one-off comp1130)
  )
)
(:action evaluate-comp1131-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1131)
    (rebooted comp1131)
  )
  :effect (and
    (not (evaluate comp1131))
    (evaluate comp1132)
  )
)
(:action evaluate-comp1131-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1131)
    (not (rebooted comp1131))
    (running comp1130)
  )
  :effect (and
    (not (evaluate comp1131))
    (evaluate comp1132)
    (all-on comp1131)
  )
)
(:action evaluate-comp1131-off-comp1130
  :parameters ()
  :precondition (and
    (evaluate comp1131)
    (not (rebooted comp1131))
    (not (running comp1130))
  )
  :effect (and
    (not (evaluate comp1131))
    (evaluate comp1132)
    (one-off comp1131)
  )
)
(:action evaluate-comp1132-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1132)
    (rebooted comp1132)
  )
  :effect (and
    (not (evaluate comp1132))
    (evaluate comp1133)
  )
)
(:action evaluate-comp1132-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1132)
    (not (rebooted comp1132))
    (running comp1131)
  )
  :effect (and
    (not (evaluate comp1132))
    (evaluate comp1133)
    (all-on comp1132)
  )
)
(:action evaluate-comp1132-off-comp1131
  :parameters ()
  :precondition (and
    (evaluate comp1132)
    (not (rebooted comp1132))
    (not (running comp1131))
  )
  :effect (and
    (not (evaluate comp1132))
    (evaluate comp1133)
    (one-off comp1132)
  )
)
(:action evaluate-comp1133-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1133)
    (rebooted comp1133)
  )
  :effect (and
    (not (evaluate comp1133))
    (evaluate comp1134)
  )
)
(:action evaluate-comp1133-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1133)
    (not (rebooted comp1133))
    (running comp1132)
  )
  :effect (and
    (not (evaluate comp1133))
    (evaluate comp1134)
    (all-on comp1133)
  )
)
(:action evaluate-comp1133-off-comp1132
  :parameters ()
  :precondition (and
    (evaluate comp1133)
    (not (rebooted comp1133))
    (not (running comp1132))
  )
  :effect (and
    (not (evaluate comp1133))
    (evaluate comp1134)
    (one-off comp1133)
  )
)
(:action evaluate-comp1134-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1134)
    (rebooted comp1134)
  )
  :effect (and
    (not (evaluate comp1134))
    (evaluate comp1135)
  )
)
(:action evaluate-comp1134-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1134)
    (not (rebooted comp1134))
    (running comp524)
    (running comp1133)
  )
  :effect (and
    (not (evaluate comp1134))
    (evaluate comp1135)
    (all-on comp1134)
  )
)
(:action evaluate-comp1134-off-comp524
  :parameters ()
  :precondition (and
    (evaluate comp1134)
    (not (rebooted comp1134))
    (not (running comp524))
  )
  :effect (and
    (not (evaluate comp1134))
    (evaluate comp1135)
    (one-off comp1134)
  )
)
(:action evaluate-comp1134-off-comp1133
  :parameters ()
  :precondition (and
    (evaluate comp1134)
    (not (rebooted comp1134))
    (not (running comp1133))
  )
  :effect (and
    (not (evaluate comp1134))
    (evaluate comp1135)
    (one-off comp1134)
  )
)
(:action evaluate-comp1135-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1135)
    (rebooted comp1135)
  )
  :effect (and
    (not (evaluate comp1135))
    (evaluate comp1136)
  )
)
(:action evaluate-comp1135-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1135)
    (not (rebooted comp1135))
    (running comp1134)
  )
  :effect (and
    (not (evaluate comp1135))
    (evaluate comp1136)
    (all-on comp1135)
  )
)
(:action evaluate-comp1135-off-comp1134
  :parameters ()
  :precondition (and
    (evaluate comp1135)
    (not (rebooted comp1135))
    (not (running comp1134))
  )
  :effect (and
    (not (evaluate comp1135))
    (evaluate comp1136)
    (one-off comp1135)
  )
)
(:action evaluate-comp1136-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1136)
    (rebooted comp1136)
  )
  :effect (and
    (not (evaluate comp1136))
    (evaluate comp1137)
  )
)
(:action evaluate-comp1136-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1136)
    (not (rebooted comp1136))
    (running comp253)
    (running comp1135)
  )
  :effect (and
    (not (evaluate comp1136))
    (evaluate comp1137)
    (all-on comp1136)
  )
)
(:action evaluate-comp1136-off-comp253
  :parameters ()
  :precondition (and
    (evaluate comp1136)
    (not (rebooted comp1136))
    (not (running comp253))
  )
  :effect (and
    (not (evaluate comp1136))
    (evaluate comp1137)
    (one-off comp1136)
  )
)
(:action evaluate-comp1136-off-comp1135
  :parameters ()
  :precondition (and
    (evaluate comp1136)
    (not (rebooted comp1136))
    (not (running comp1135))
  )
  :effect (and
    (not (evaluate comp1136))
    (evaluate comp1137)
    (one-off comp1136)
  )
)
(:action evaluate-comp1137-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1137)
    (rebooted comp1137)
  )
  :effect (and
    (not (evaluate comp1137))
    (evaluate comp1138)
  )
)
(:action evaluate-comp1137-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1137)
    (not (rebooted comp1137))
    (running comp1136)
  )
  :effect (and
    (not (evaluate comp1137))
    (evaluate comp1138)
    (all-on comp1137)
  )
)
(:action evaluate-comp1137-off-comp1136
  :parameters ()
  :precondition (and
    (evaluate comp1137)
    (not (rebooted comp1137))
    (not (running comp1136))
  )
  :effect (and
    (not (evaluate comp1137))
    (evaluate comp1138)
    (one-off comp1137)
  )
)
(:action evaluate-comp1138-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1138)
    (rebooted comp1138)
  )
  :effect (and
    (not (evaluate comp1138))
    (evaluate comp1139)
  )
)
(:action evaluate-comp1138-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1138)
    (not (rebooted comp1138))
    (running comp1137)
  )
  :effect (and
    (not (evaluate comp1138))
    (evaluate comp1139)
    (all-on comp1138)
  )
)
(:action evaluate-comp1138-off-comp1137
  :parameters ()
  :precondition (and
    (evaluate comp1138)
    (not (rebooted comp1138))
    (not (running comp1137))
  )
  :effect (and
    (not (evaluate comp1138))
    (evaluate comp1139)
    (one-off comp1138)
  )
)
(:action evaluate-comp1139-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1139)
    (rebooted comp1139)
  )
  :effect (and
    (not (evaluate comp1139))
    (evaluate comp1140)
  )
)
(:action evaluate-comp1139-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1139)
    (not (rebooted comp1139))
    (running comp1138)
    (running comp1423)
  )
  :effect (and
    (not (evaluate comp1139))
    (evaluate comp1140)
    (all-on comp1139)
  )
)
(:action evaluate-comp1139-off-comp1138
  :parameters ()
  :precondition (and
    (evaluate comp1139)
    (not (rebooted comp1139))
    (not (running comp1138))
  )
  :effect (and
    (not (evaluate comp1139))
    (evaluate comp1140)
    (one-off comp1139)
  )
)
(:action evaluate-comp1139-off-comp1423
  :parameters ()
  :precondition (and
    (evaluate comp1139)
    (not (rebooted comp1139))
    (not (running comp1423))
  )
  :effect (and
    (not (evaluate comp1139))
    (evaluate comp1140)
    (one-off comp1139)
  )
)
(:action evaluate-comp1140-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1140)
    (rebooted comp1140)
  )
  :effect (and
    (not (evaluate comp1140))
    (evaluate comp1141)
  )
)
(:action evaluate-comp1140-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1140)
    (not (rebooted comp1140))
    (running comp1139)
  )
  :effect (and
    (not (evaluate comp1140))
    (evaluate comp1141)
    (all-on comp1140)
  )
)
(:action evaluate-comp1140-off-comp1139
  :parameters ()
  :precondition (and
    (evaluate comp1140)
    (not (rebooted comp1140))
    (not (running comp1139))
  )
  :effect (and
    (not (evaluate comp1140))
    (evaluate comp1141)
    (one-off comp1140)
  )
)
(:action evaluate-comp1141-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1141)
    (rebooted comp1141)
  )
  :effect (and
    (not (evaluate comp1141))
    (evaluate comp1142)
  )
)
(:action evaluate-comp1141-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1141)
    (not (rebooted comp1141))
    (running comp1140)
  )
  :effect (and
    (not (evaluate comp1141))
    (evaluate comp1142)
    (all-on comp1141)
  )
)
(:action evaluate-comp1141-off-comp1140
  :parameters ()
  :precondition (and
    (evaluate comp1141)
    (not (rebooted comp1141))
    (not (running comp1140))
  )
  :effect (and
    (not (evaluate comp1141))
    (evaluate comp1142)
    (one-off comp1141)
  )
)
(:action evaluate-comp1142-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1142)
    (rebooted comp1142)
  )
  :effect (and
    (not (evaluate comp1142))
    (evaluate comp1143)
  )
)
(:action evaluate-comp1142-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1142)
    (not (rebooted comp1142))
    (running comp1141)
  )
  :effect (and
    (not (evaluate comp1142))
    (evaluate comp1143)
    (all-on comp1142)
  )
)
(:action evaluate-comp1142-off-comp1141
  :parameters ()
  :precondition (and
    (evaluate comp1142)
    (not (rebooted comp1142))
    (not (running comp1141))
  )
  :effect (and
    (not (evaluate comp1142))
    (evaluate comp1143)
    (one-off comp1142)
  )
)
(:action evaluate-comp1143-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1143)
    (rebooted comp1143)
  )
  :effect (and
    (not (evaluate comp1143))
    (evaluate comp1144)
  )
)
(:action evaluate-comp1143-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1143)
    (not (rebooted comp1143))
    (running comp1142)
  )
  :effect (and
    (not (evaluate comp1143))
    (evaluate comp1144)
    (all-on comp1143)
  )
)
(:action evaluate-comp1143-off-comp1142
  :parameters ()
  :precondition (and
    (evaluate comp1143)
    (not (rebooted comp1143))
    (not (running comp1142))
  )
  :effect (and
    (not (evaluate comp1143))
    (evaluate comp1144)
    (one-off comp1143)
  )
)
(:action evaluate-comp1144-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1144)
    (rebooted comp1144)
  )
  :effect (and
    (not (evaluate comp1144))
    (evaluate comp1145)
  )
)
(:action evaluate-comp1144-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1144)
    (not (rebooted comp1144))
    (running comp1143)
  )
  :effect (and
    (not (evaluate comp1144))
    (evaluate comp1145)
    (all-on comp1144)
  )
)
(:action evaluate-comp1144-off-comp1143
  :parameters ()
  :precondition (and
    (evaluate comp1144)
    (not (rebooted comp1144))
    (not (running comp1143))
  )
  :effect (and
    (not (evaluate comp1144))
    (evaluate comp1145)
    (one-off comp1144)
  )
)
(:action evaluate-comp1145-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1145)
    (rebooted comp1145)
  )
  :effect (and
    (not (evaluate comp1145))
    (evaluate comp1146)
  )
)
(:action evaluate-comp1145-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1145)
    (not (rebooted comp1145))
    (running comp1144)
  )
  :effect (and
    (not (evaluate comp1145))
    (evaluate comp1146)
    (all-on comp1145)
  )
)
(:action evaluate-comp1145-off-comp1144
  :parameters ()
  :precondition (and
    (evaluate comp1145)
    (not (rebooted comp1145))
    (not (running comp1144))
  )
  :effect (and
    (not (evaluate comp1145))
    (evaluate comp1146)
    (one-off comp1145)
  )
)
(:action evaluate-comp1146-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1146)
    (rebooted comp1146)
  )
  :effect (and
    (not (evaluate comp1146))
    (evaluate comp1147)
  )
)
(:action evaluate-comp1146-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1146)
    (not (rebooted comp1146))
    (running comp1145)
  )
  :effect (and
    (not (evaluate comp1146))
    (evaluate comp1147)
    (all-on comp1146)
  )
)
(:action evaluate-comp1146-off-comp1145
  :parameters ()
  :precondition (and
    (evaluate comp1146)
    (not (rebooted comp1146))
    (not (running comp1145))
  )
  :effect (and
    (not (evaluate comp1146))
    (evaluate comp1147)
    (one-off comp1146)
  )
)
(:action evaluate-comp1147-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1147)
    (rebooted comp1147)
  )
  :effect (and
    (not (evaluate comp1147))
    (evaluate comp1148)
  )
)
(:action evaluate-comp1147-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1147)
    (not (rebooted comp1147))
    (running comp1146)
  )
  :effect (and
    (not (evaluate comp1147))
    (evaluate comp1148)
    (all-on comp1147)
  )
)
(:action evaluate-comp1147-off-comp1146
  :parameters ()
  :precondition (and
    (evaluate comp1147)
    (not (rebooted comp1147))
    (not (running comp1146))
  )
  :effect (and
    (not (evaluate comp1147))
    (evaluate comp1148)
    (one-off comp1147)
  )
)
(:action evaluate-comp1148-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1148)
    (rebooted comp1148)
  )
  :effect (and
    (not (evaluate comp1148))
    (evaluate comp1149)
  )
)
(:action evaluate-comp1148-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1148)
    (not (rebooted comp1148))
    (running comp1147)
    (running comp1737)
  )
  :effect (and
    (not (evaluate comp1148))
    (evaluate comp1149)
    (all-on comp1148)
  )
)
(:action evaluate-comp1148-off-comp1147
  :parameters ()
  :precondition (and
    (evaluate comp1148)
    (not (rebooted comp1148))
    (not (running comp1147))
  )
  :effect (and
    (not (evaluate comp1148))
    (evaluate comp1149)
    (one-off comp1148)
  )
)
(:action evaluate-comp1148-off-comp1737
  :parameters ()
  :precondition (and
    (evaluate comp1148)
    (not (rebooted comp1148))
    (not (running comp1737))
  )
  :effect (and
    (not (evaluate comp1148))
    (evaluate comp1149)
    (one-off comp1148)
  )
)
(:action evaluate-comp1149-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1149)
    (rebooted comp1149)
  )
  :effect (and
    (not (evaluate comp1149))
    (evaluate comp1150)
  )
)
(:action evaluate-comp1149-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1149)
    (not (rebooted comp1149))
    (running comp566)
    (running comp1148)
  )
  :effect (and
    (not (evaluate comp1149))
    (evaluate comp1150)
    (all-on comp1149)
  )
)
(:action evaluate-comp1149-off-comp566
  :parameters ()
  :precondition (and
    (evaluate comp1149)
    (not (rebooted comp1149))
    (not (running comp566))
  )
  :effect (and
    (not (evaluate comp1149))
    (evaluate comp1150)
    (one-off comp1149)
  )
)
(:action evaluate-comp1149-off-comp1148
  :parameters ()
  :precondition (and
    (evaluate comp1149)
    (not (rebooted comp1149))
    (not (running comp1148))
  )
  :effect (and
    (not (evaluate comp1149))
    (evaluate comp1150)
    (one-off comp1149)
  )
)
(:action evaluate-comp1150-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1150)
    (rebooted comp1150)
  )
  :effect (and
    (not (evaluate comp1150))
    (evaluate comp1151)
  )
)
(:action evaluate-comp1150-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1150)
    (not (rebooted comp1150))
    (running comp1149)
  )
  :effect (and
    (not (evaluate comp1150))
    (evaluate comp1151)
    (all-on comp1150)
  )
)
(:action evaluate-comp1150-off-comp1149
  :parameters ()
  :precondition (and
    (evaluate comp1150)
    (not (rebooted comp1150))
    (not (running comp1149))
  )
  :effect (and
    (not (evaluate comp1150))
    (evaluate comp1151)
    (one-off comp1150)
  )
)
(:action evaluate-comp1151-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1151)
    (rebooted comp1151)
  )
  :effect (and
    (not (evaluate comp1151))
    (evaluate comp1152)
  )
)
(:action evaluate-comp1151-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1151)
    (not (rebooted comp1151))
    (running comp1150)
  )
  :effect (and
    (not (evaluate comp1151))
    (evaluate comp1152)
    (all-on comp1151)
  )
)
(:action evaluate-comp1151-off-comp1150
  :parameters ()
  :precondition (and
    (evaluate comp1151)
    (not (rebooted comp1151))
    (not (running comp1150))
  )
  :effect (and
    (not (evaluate comp1151))
    (evaluate comp1152)
    (one-off comp1151)
  )
)
(:action evaluate-comp1152-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1152)
    (rebooted comp1152)
  )
  :effect (and
    (not (evaluate comp1152))
    (evaluate comp1153)
  )
)
(:action evaluate-comp1152-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1152)
    (not (rebooted comp1152))
    (running comp1151)
    (running comp1692)
  )
  :effect (and
    (not (evaluate comp1152))
    (evaluate comp1153)
    (all-on comp1152)
  )
)
(:action evaluate-comp1152-off-comp1151
  :parameters ()
  :precondition (and
    (evaluate comp1152)
    (not (rebooted comp1152))
    (not (running comp1151))
  )
  :effect (and
    (not (evaluate comp1152))
    (evaluate comp1153)
    (one-off comp1152)
  )
)
(:action evaluate-comp1152-off-comp1692
  :parameters ()
  :precondition (and
    (evaluate comp1152)
    (not (rebooted comp1152))
    (not (running comp1692))
  )
  :effect (and
    (not (evaluate comp1152))
    (evaluate comp1153)
    (one-off comp1152)
  )
)
(:action evaluate-comp1153-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1153)
    (rebooted comp1153)
  )
  :effect (and
    (not (evaluate comp1153))
    (evaluate comp1154)
  )
)
(:action evaluate-comp1153-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1153)
    (not (rebooted comp1153))
    (running comp1152)
    (running comp1899)
  )
  :effect (and
    (not (evaluate comp1153))
    (evaluate comp1154)
    (all-on comp1153)
  )
)
(:action evaluate-comp1153-off-comp1152
  :parameters ()
  :precondition (and
    (evaluate comp1153)
    (not (rebooted comp1153))
    (not (running comp1152))
  )
  :effect (and
    (not (evaluate comp1153))
    (evaluate comp1154)
    (one-off comp1153)
  )
)
(:action evaluate-comp1153-off-comp1899
  :parameters ()
  :precondition (and
    (evaluate comp1153)
    (not (rebooted comp1153))
    (not (running comp1899))
  )
  :effect (and
    (not (evaluate comp1153))
    (evaluate comp1154)
    (one-off comp1153)
  )
)
(:action evaluate-comp1154-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1154)
    (rebooted comp1154)
  )
  :effect (and
    (not (evaluate comp1154))
    (evaluate comp1155)
  )
)
(:action evaluate-comp1154-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1154)
    (not (rebooted comp1154))
    (running comp1153)
  )
  :effect (and
    (not (evaluate comp1154))
    (evaluate comp1155)
    (all-on comp1154)
  )
)
(:action evaluate-comp1154-off-comp1153
  :parameters ()
  :precondition (and
    (evaluate comp1154)
    (not (rebooted comp1154))
    (not (running comp1153))
  )
  :effect (and
    (not (evaluate comp1154))
    (evaluate comp1155)
    (one-off comp1154)
  )
)
(:action evaluate-comp1155-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1155)
    (rebooted comp1155)
  )
  :effect (and
    (not (evaluate comp1155))
    (evaluate comp1156)
  )
)
(:action evaluate-comp1155-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1155)
    (not (rebooted comp1155))
    (running comp32)
    (running comp1154)
    (running comp1432)
  )
  :effect (and
    (not (evaluate comp1155))
    (evaluate comp1156)
    (all-on comp1155)
  )
)
(:action evaluate-comp1155-off-comp32
  :parameters ()
  :precondition (and
    (evaluate comp1155)
    (not (rebooted comp1155))
    (not (running comp32))
  )
  :effect (and
    (not (evaluate comp1155))
    (evaluate comp1156)
    (one-off comp1155)
  )
)
(:action evaluate-comp1155-off-comp1154
  :parameters ()
  :precondition (and
    (evaluate comp1155)
    (not (rebooted comp1155))
    (not (running comp1154))
  )
  :effect (and
    (not (evaluate comp1155))
    (evaluate comp1156)
    (one-off comp1155)
  )
)
(:action evaluate-comp1155-off-comp1432
  :parameters ()
  :precondition (and
    (evaluate comp1155)
    (not (rebooted comp1155))
    (not (running comp1432))
  )
  :effect (and
    (not (evaluate comp1155))
    (evaluate comp1156)
    (one-off comp1155)
  )
)
(:action evaluate-comp1156-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1156)
    (rebooted comp1156)
  )
  :effect (and
    (not (evaluate comp1156))
    (evaluate comp1157)
  )
)
(:action evaluate-comp1156-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1156)
    (not (rebooted comp1156))
    (running comp1155)
  )
  :effect (and
    (not (evaluate comp1156))
    (evaluate comp1157)
    (all-on comp1156)
  )
)
(:action evaluate-comp1156-off-comp1155
  :parameters ()
  :precondition (and
    (evaluate comp1156)
    (not (rebooted comp1156))
    (not (running comp1155))
  )
  :effect (and
    (not (evaluate comp1156))
    (evaluate comp1157)
    (one-off comp1156)
  )
)
(:action evaluate-comp1157-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1157)
    (rebooted comp1157)
  )
  :effect (and
    (not (evaluate comp1157))
    (evaluate comp1158)
  )
)
(:action evaluate-comp1157-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1157)
    (not (rebooted comp1157))
    (running comp1156)
  )
  :effect (and
    (not (evaluate comp1157))
    (evaluate comp1158)
    (all-on comp1157)
  )
)
(:action evaluate-comp1157-off-comp1156
  :parameters ()
  :precondition (and
    (evaluate comp1157)
    (not (rebooted comp1157))
    (not (running comp1156))
  )
  :effect (and
    (not (evaluate comp1157))
    (evaluate comp1158)
    (one-off comp1157)
  )
)
(:action evaluate-comp1158-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1158)
    (rebooted comp1158)
  )
  :effect (and
    (not (evaluate comp1158))
    (evaluate comp1159)
  )
)
(:action evaluate-comp1158-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1158)
    (not (rebooted comp1158))
    (running comp1157)
  )
  :effect (and
    (not (evaluate comp1158))
    (evaluate comp1159)
    (all-on comp1158)
  )
)
(:action evaluate-comp1158-off-comp1157
  :parameters ()
  :precondition (and
    (evaluate comp1158)
    (not (rebooted comp1158))
    (not (running comp1157))
  )
  :effect (and
    (not (evaluate comp1158))
    (evaluate comp1159)
    (one-off comp1158)
  )
)
(:action evaluate-comp1159-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1159)
    (rebooted comp1159)
  )
  :effect (and
    (not (evaluate comp1159))
    (evaluate comp1160)
  )
)
(:action evaluate-comp1159-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1159)
    (not (rebooted comp1159))
    (running comp617)
    (running comp1158)
  )
  :effect (and
    (not (evaluate comp1159))
    (evaluate comp1160)
    (all-on comp1159)
  )
)
(:action evaluate-comp1159-off-comp617
  :parameters ()
  :precondition (and
    (evaluate comp1159)
    (not (rebooted comp1159))
    (not (running comp617))
  )
  :effect (and
    (not (evaluate comp1159))
    (evaluate comp1160)
    (one-off comp1159)
  )
)
(:action evaluate-comp1159-off-comp1158
  :parameters ()
  :precondition (and
    (evaluate comp1159)
    (not (rebooted comp1159))
    (not (running comp1158))
  )
  :effect (and
    (not (evaluate comp1159))
    (evaluate comp1160)
    (one-off comp1159)
  )
)
(:action evaluate-comp1160-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1160)
    (rebooted comp1160)
  )
  :effect (and
    (not (evaluate comp1160))
    (evaluate comp1161)
  )
)
(:action evaluate-comp1160-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1160)
    (not (rebooted comp1160))
    (running comp1085)
    (running comp1159)
  )
  :effect (and
    (not (evaluate comp1160))
    (evaluate comp1161)
    (all-on comp1160)
  )
)
(:action evaluate-comp1160-off-comp1085
  :parameters ()
  :precondition (and
    (evaluate comp1160)
    (not (rebooted comp1160))
    (not (running comp1085))
  )
  :effect (and
    (not (evaluate comp1160))
    (evaluate comp1161)
    (one-off comp1160)
  )
)
(:action evaluate-comp1160-off-comp1159
  :parameters ()
  :precondition (and
    (evaluate comp1160)
    (not (rebooted comp1160))
    (not (running comp1159))
  )
  :effect (and
    (not (evaluate comp1160))
    (evaluate comp1161)
    (one-off comp1160)
  )
)
(:action evaluate-comp1161-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1161)
    (rebooted comp1161)
  )
  :effect (and
    (not (evaluate comp1161))
    (evaluate comp1162)
  )
)
(:action evaluate-comp1161-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1161)
    (not (rebooted comp1161))
    (running comp586)
    (running comp775)
    (running comp1160)
  )
  :effect (and
    (not (evaluate comp1161))
    (evaluate comp1162)
    (all-on comp1161)
  )
)
(:action evaluate-comp1161-off-comp586
  :parameters ()
  :precondition (and
    (evaluate comp1161)
    (not (rebooted comp1161))
    (not (running comp586))
  )
  :effect (and
    (not (evaluate comp1161))
    (evaluate comp1162)
    (one-off comp1161)
  )
)
(:action evaluate-comp1161-off-comp775
  :parameters ()
  :precondition (and
    (evaluate comp1161)
    (not (rebooted comp1161))
    (not (running comp775))
  )
  :effect (and
    (not (evaluate comp1161))
    (evaluate comp1162)
    (one-off comp1161)
  )
)
(:action evaluate-comp1161-off-comp1160
  :parameters ()
  :precondition (and
    (evaluate comp1161)
    (not (rebooted comp1161))
    (not (running comp1160))
  )
  :effect (and
    (not (evaluate comp1161))
    (evaluate comp1162)
    (one-off comp1161)
  )
)
(:action evaluate-comp1162-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1162)
    (rebooted comp1162)
  )
  :effect (and
    (not (evaluate comp1162))
    (evaluate comp1163)
  )
)
(:action evaluate-comp1162-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1162)
    (not (rebooted comp1162))
    (running comp1161)
  )
  :effect (and
    (not (evaluate comp1162))
    (evaluate comp1163)
    (all-on comp1162)
  )
)
(:action evaluate-comp1162-off-comp1161
  :parameters ()
  :precondition (and
    (evaluate comp1162)
    (not (rebooted comp1162))
    (not (running comp1161))
  )
  :effect (and
    (not (evaluate comp1162))
    (evaluate comp1163)
    (one-off comp1162)
  )
)
(:action evaluate-comp1163-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1163)
    (rebooted comp1163)
  )
  :effect (and
    (not (evaluate comp1163))
    (evaluate comp1164)
  )
)
(:action evaluate-comp1163-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1163)
    (not (rebooted comp1163))
    (running comp1162)
    (running comp1789)
  )
  :effect (and
    (not (evaluate comp1163))
    (evaluate comp1164)
    (all-on comp1163)
  )
)
(:action evaluate-comp1163-off-comp1162
  :parameters ()
  :precondition (and
    (evaluate comp1163)
    (not (rebooted comp1163))
    (not (running comp1162))
  )
  :effect (and
    (not (evaluate comp1163))
    (evaluate comp1164)
    (one-off comp1163)
  )
)
(:action evaluate-comp1163-off-comp1789
  :parameters ()
  :precondition (and
    (evaluate comp1163)
    (not (rebooted comp1163))
    (not (running comp1789))
  )
  :effect (and
    (not (evaluate comp1163))
    (evaluate comp1164)
    (one-off comp1163)
  )
)
(:action evaluate-comp1164-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1164)
    (rebooted comp1164)
  )
  :effect (and
    (not (evaluate comp1164))
    (evaluate comp1165)
  )
)
(:action evaluate-comp1164-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1164)
    (not (rebooted comp1164))
    (running comp1163)
  )
  :effect (and
    (not (evaluate comp1164))
    (evaluate comp1165)
    (all-on comp1164)
  )
)
(:action evaluate-comp1164-off-comp1163
  :parameters ()
  :precondition (and
    (evaluate comp1164)
    (not (rebooted comp1164))
    (not (running comp1163))
  )
  :effect (and
    (not (evaluate comp1164))
    (evaluate comp1165)
    (one-off comp1164)
  )
)
(:action evaluate-comp1165-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1165)
    (rebooted comp1165)
  )
  :effect (and
    (not (evaluate comp1165))
    (evaluate comp1166)
  )
)
(:action evaluate-comp1165-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1165)
    (not (rebooted comp1165))
    (running comp1164)
  )
  :effect (and
    (not (evaluate comp1165))
    (evaluate comp1166)
    (all-on comp1165)
  )
)
(:action evaluate-comp1165-off-comp1164
  :parameters ()
  :precondition (and
    (evaluate comp1165)
    (not (rebooted comp1165))
    (not (running comp1164))
  )
  :effect (and
    (not (evaluate comp1165))
    (evaluate comp1166)
    (one-off comp1165)
  )
)
(:action evaluate-comp1166-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1166)
    (rebooted comp1166)
  )
  :effect (and
    (not (evaluate comp1166))
    (evaluate comp1167)
  )
)
(:action evaluate-comp1166-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1166)
    (not (rebooted comp1166))
    (running comp1165)
  )
  :effect (and
    (not (evaluate comp1166))
    (evaluate comp1167)
    (all-on comp1166)
  )
)
(:action evaluate-comp1166-off-comp1165
  :parameters ()
  :precondition (and
    (evaluate comp1166)
    (not (rebooted comp1166))
    (not (running comp1165))
  )
  :effect (and
    (not (evaluate comp1166))
    (evaluate comp1167)
    (one-off comp1166)
  )
)
(:action evaluate-comp1167-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1167)
    (rebooted comp1167)
  )
  :effect (and
    (not (evaluate comp1167))
    (evaluate comp1168)
  )
)
(:action evaluate-comp1167-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1167)
    (not (rebooted comp1167))
    (running comp1166)
    (running comp1648)
  )
  :effect (and
    (not (evaluate comp1167))
    (evaluate comp1168)
    (all-on comp1167)
  )
)
(:action evaluate-comp1167-off-comp1166
  :parameters ()
  :precondition (and
    (evaluate comp1167)
    (not (rebooted comp1167))
    (not (running comp1166))
  )
  :effect (and
    (not (evaluate comp1167))
    (evaluate comp1168)
    (one-off comp1167)
  )
)
(:action evaluate-comp1167-off-comp1648
  :parameters ()
  :precondition (and
    (evaluate comp1167)
    (not (rebooted comp1167))
    (not (running comp1648))
  )
  :effect (and
    (not (evaluate comp1167))
    (evaluate comp1168)
    (one-off comp1167)
  )
)
(:action evaluate-comp1168-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1168)
    (rebooted comp1168)
  )
  :effect (and
    (not (evaluate comp1168))
    (evaluate comp1169)
  )
)
(:action evaluate-comp1168-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1168)
    (not (rebooted comp1168))
    (running comp1032)
    (running comp1167)
  )
  :effect (and
    (not (evaluate comp1168))
    (evaluate comp1169)
    (all-on comp1168)
  )
)