<%@page import="busynesLogic.models.ServiceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="busynesLogic.models.Service"%>
<%@ page import="busynesLogic.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
  <link rel="stylesheet" href="../common-files/css/fonts-v3.css">
  <link rel="stylesheet" href="../common-files/css/base-v4.css">
  <link rel="stylesheet" href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
</head>

<body>

  <div id="_1449">

    <i id="_1450">
        
    </i>

    <div id="_1451">

      <div id="_1452" data-pagelink="HomePageFindCar" class="nm-label">
        <span id="_1453">
            Home<br/>
        </span>
      </div>

      <div id="_1454" data-pagelink="TopCars" class="nm-label">
        <span id="_1455">
            Cars<br/>
        </span>
      </div>

      <div id="_1456" data-pagelink="TopSellers" class="nm-label">
        <span id="_1457">
            Sellers<br/>
        </span>
      </div>

      <div id="_1458" data-pagelink="TopServices" class="nm-label">
        <span id="_1459">
            Auto Services<br/>
        </span>
      </div>

      <div id="_1460" data-pagelink="About" class="nm-label">
        <a id="_1461" href="#">
            About<br/>
        </a>
      </div>
    </div>
    <button id="_1462" class="btn btn-default">
      Login/ Loguot

    </button>

    <div id="_1463">
      <svg id="_1464">
        <line id="_1465" x1="0" x2="935" y1="" y2="0" />
      </svg>
    </div>
<% Service ser = ServiceDAO.getInstance().getService((String)(session.getAttribute("serviceName")));%>
    <div id="_1466" class="nm-label">
      <h2 id="_1467">
            Service<br/>
        </h2>
    </div>

    <div id="_1468" class="nm-label">
      <h3 id="_1469">
            <%=ser.getName() %><br/>
        </h3>
    </div>

    <div id="_1472" class="nm-label">
      <h3 id="_1473">
           <%=ser.getLocation() %><br/>
        </h3>
    </div>

    <div id="_1474" class="nm-label">
      <h3 id="_1475">
            <%=ser.getPhone() %><br/>
        </h3>
    </div>

    <i id="_1476">
        
    </i>

    <div id="_1477">

      <div id="_1478">
        <svg id="_1479">
          <path id="_1480" d="M 3,269.2207357859532

L 75.58759521218717,232.94816053511707

L 143.18063112078346,369.38628762541805

L 448.18171926006534,237.60702341137124

L 395.905331882481,139.77090301003344

L 273.7051142546246,196.67558528428094

L 306.6692056583243,267.88963210702343

L 292.0184983677911,275.2107023411371

L 249.73122959738848,189.35451505016724

L 386.24918389553864,121.46822742474916

L 328.31229597388466,5.32943143812709

L 376.59303590859633,3

L 382.58650707290536,16.31103678929766

L 410.5560391730142,3

L 444.519042437432,4.331103678929766

L 392.57562568008706,31.951505016722408

L 434.8628944504897,116.80936454849498

L 593.3569096844396,176.04347826086956

L 613.6681175190425,165.061872909699

L 615,213.314381270903

L 508.449401523395,258.2391304347826

L 530.4254624591948,302.83110367892976

L 613.6681175190425,260.5685618729097

L 613.6681175190425,281.2006688963211

L 538.7497279651795,316.1421404682274

L 578.7062023939064,398.33779264214047

L 531.424374319913,401

L 500.1251360174103,336.7742474916388

L 375.59412404787815,398.33779264214047

L 341.6311207834603,398.33779264214047

L 491.4678998911861,322.1321070234114

L 468.4929270946682,277.54013377926424

L 183.13710554951035,399.66889632107024

L 71.92491838955387,398.33779264214047

L 125.20021762785638,376.7073578595318

L 66.930359085963,256.9080267558528

L 5.330794341675735,287.19063545150505

 Z" />
        </svg>
        <svg id="_1481">
          <path id="_1482" d="M 3,3

L 53.482233502538065,105

L 68,98.66666666666666

L 23.45685279187819,3

 Z" />
        </svg>
        <svg id="_1483">
          <path id="_1484" d="M 3,3

L 3,223.33333333333331

L 98.46900826446281,186

L 149.36363636363637,314

L 227.86776859504133,285

L 178.96900826446281,156.33333333333331

L 325,93.33333333333333

L 287.07851239669424,3

 Z" />
        </svg>
        <svg id="_1485">
          <path id="_1486" d="M 45.42285714285754,78

L 3,3

L 119,46.47345132743362

 Z" />
        </svg>
      </div>
    </div>
    <svg id="_1487">
      <path id="_1488" d="M 8.000000000000002,0L 4.473288486245162,3.1458980337503153L 0.39154786963877175,5.5278640450004195L 2.293660902229078,9.854101966249683L 3.297717981660213,14.472135954999578L 7.999999999999998,14L 12.702282018339783,14.47213595499958L 13.706339097770922,9.854101966249686L 15.60845213036123,5.527864045000423L 11.52671151375484,3.145898033750317z"
      />
    </svg>
    <svg id="_1489">
      <path id="_1490" d="M 8.000000000000002,0L 4.473288486245162,3.1458980337503153L 0.39154786963877175,5.5278640450004195L 2.293660902229078,9.854101966249683L 3.297717981660213,14.472135954999578L 7.999999999999998,14L 12.702282018339783,14.47213595499958L 13.706339097770922,9.854101966249686L 15.60845213036123,5.527864045000423L 11.52671151375484,3.145898033750317z"
      />
    </svg>
    <svg id="_1491">
      <path id="_1492" d="M 8.000000000000002,0L 4.473288486245162,3.1458980337503153L 0.39154786963877175,5.5278640450004195L 2.293660902229078,9.854101966249683L 3.297717981660213,14.472135954999578L 7.999999999999998,14L 12.702282018339783,14.47213595499958L 13.706339097770922,9.854101966249686L 15.60845213036123,5.527864045000423L 11.52671151375484,3.145898033750317z"
      />
    </svg>
    <svg id="_1493">
      <path id="_1494" d="M 8.000000000000002,0L 4.473288486245162,3.1458980337503153L 0.39154786963877175,5.5278640450004195L 2.293660902229078,9.854101966249683L 3.297717981660213,14.472135954999578L 7.999999999999998,14L 12.702282018339783,14.47213595499958L 13.706339097770922,9.854101966249686L 15.60845213036123,5.527864045000423L 11.52671151375484,3.145898033750317z"
      />
    </svg>
    <svg id="_1495">
      <path id="_1496" d="M 8.000000000000002,0L 4.473288486245162,3.1458980337503153L 0.39154786963877175,5.5278640450004195L 2.293660902229078,9.854101966249683L 3.297717981660213,14.472135954999578L 7.999999999999998,14L 12.702282018339783,14.47213595499958L 13.706339097770922,9.854101966249686L 15.60845213036123,5.527864045000423L 11.52671151375484,3.145898033750317z"
      />
    </svg>

    <div id="_1497" class="nm-label">
      <a id="_1498" href="#">
            Give Rating<br/>
        </a>
    </div>

    <table id="_1499">
      <tr>
        <td id="_1500">

          <div id="_1501" class="nm-label">
            <span id="_1502">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1503">

          <div id="_1504" class="nm-label">
            <span id="_1505">
            9:00<br/>
        </span>
          </div>
        </td>
        <td id="_1506">

          <div id="_1507" class="nm-label">
            <span id="_1508">
            10:00<br/>
        </span>
          </div>
        </td>
        <td id="_1509">

          <div id="_1510" class="nm-label">
            <span id="_1511">
            11:00<br/>
        </span>
          </div>
        </td>
        <td id="_1512">

          <div id="_1513" class="nm-label">
            <span id="_1514">
            12:00<br/>
        </span>
          </div>
        </td>
        <td id="_1515">

          <div id="_1516" class="nm-label">
            <span id="_1517">
            13:00<br/>
        </span>
          </div>
        </td>
        <td id="_1518">

          <div id="_1519" class="nm-label">
            <span id="_1520">
            14:00<br/>
        </span>
          </div>
        </td>
        <td id="_1521">

          <div id="_1522" class="nm-label">
            <span id="_1523">
            15:00<br/>
        </span>
          </div>
        </td>
        <td id="_1524">

          <div id="_1525" class="nm-label">
            <span id="_1526">
            16:00<br/>
        </span>
          </div>
        </td>
        <td id="_1527">

          <div id="_1528" class="nm-label">
            <span id="_1529">
            17:00<br/>
        </span>
          </div>
        </td>
        <td id="_1530">

          <div id="_1531" class="nm-label">
            <span id="_1532">
            18:00<br/>
        </span>
          </div>
        </td>
        <td id="_1533">

          <div id="_1534" class="nm-label">
            <span id="_1535">
            19:00<br/>
        </span>
          </div>
        </td>
      </tr>
      <tr>
        <td id="_1536">

          <div id="_1537" class="nm-label">
            <span id="_1538">
            Понеделник<br/>
        </span>
          </div>
        </td>
        <td id="_1539" data-pagelink="7c5e3ac5-3f75-bd09-bda0-735dbe402458">

          <div id="_1540" data-pagelink="7c5e3ac5-3f75-bd09-bda0-735dbe402458" class="nm-label">
            <span id="_1541">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1542">

          <div id="_1543" class="nm-label">
            <span id="_1544">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1545" data-pagelink="7c5e3ac5-3f75-bd09-bda0-735dbe402458">

          <div id="_1546" data-pagelink="7c5e3ac5-3f75-bd09-bda0-735dbe402458" class="nm-label">
            <span id="_1547">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1548">

          <div id="_1549" class="nm-label">
            <span id="_1550">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1551">

          <div id="_1552" class="nm-label">
            <span id="_1553">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1554">

          <div id="_1555" class="nm-label">
            <span id="_1556">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1557">

          <div id="_1558" class="nm-label">
            <span id="_1559">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1560">

          <div id="_1561" class="nm-label">
            <span id="_1562">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1563">

          <div id="_1564" class="nm-label">
            <span id="_1565">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1566">

          <div id="_1567" class="nm-label">
            <span id="_1568">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1569">

          <div id="_1570" class="nm-label">
            <span id="_1571">
            <br/>
        </span>
          </div>
        </td>
      </tr>
      <tr>
        <td id="_1572">

          <div id="_1573" class="nm-label">
            <span id="_1574">
            Вторник<br/>
        </span>
          </div>
        </td>
        <td id="_1575">

          <div id="_1576" class="nm-label">
            <span id="_1577">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1578">

          <div id="_1579" class="nm-label">
            <span id="_1580">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1581">

          <div id="_1582" class="nm-label">
            <span id="_1583">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1584">

          <div id="_1585" class="nm-label">
            <span id="_1586">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1587">

          <div id="_1588" class="nm-label">
            <span id="_1589">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1590">

          <div id="_1591" class="nm-label">
            <span id="_1592">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1593">

          <div id="_1594" class="nm-label">
            <span id="_1595">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1596">

          <div id="_1597" class="nm-label">
            <span id="_1598">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1599">

          <div id="_1600" class="nm-label">
            <span id="_1601">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1602">

          <div id="_1603" class="nm-label">
            <span id="_1604">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1605">

          <div id="_1606" class="nm-label">
            <span id="_1607">
            <br/>
        </span>
          </div>
        </td>
      </tr>
      <tr>
        <td id="_1608">

          <div id="_1609" class="nm-label">
            <span id="_1610">
            Сряда<br/>
        </span>
          </div>
        </td>
        <td id="_1611">

          <div id="_1612" class="nm-label">
            <span id="_1613">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1614">

          <div id="_1615" class="nm-label">
            <span id="_1616">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1617">

          <div id="_1618" class="nm-label">
            <span id="_1619">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1620">

          <div id="_1621" class="nm-label">
            <span id="_1622">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1623">

          <div id="_1624" class="nm-label">
            <span id="_1625">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1626">

          <div id="_1627" class="nm-label">
            <span id="_1628">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1629">

          <div id="_1630" class="nm-label">
            <span id="_1631">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1632">

          <div id="_1633" class="nm-label">
            <span id="_1634">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1635">

          <div id="_1636" class="nm-label">
            <span id="_1637">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1638">

          <div id="_1639" class="nm-label">
            <span id="_1640">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1641">

          <div id="_1642" class="nm-label">
            <span id="_1643">
            <br/>
        </span>
          </div>
        </td>
      </tr>
      <tr>
        <td id="_1644">

          <div id="_1645" class="nm-label">
            <span id="_1646">
            Четвъртък<br/>
        </span>
          </div>
        </td>
        <td id="_1647">

          <div id="_1648" class="nm-label">
            <span id="_1649">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1650">

          <div id="_1651" class="nm-label">
            <span id="_1652">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1653">

          <div id="_1654" class="nm-label">
            <span id="_1655">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1656">

          <div id="_1657" class="nm-label">
            <span id="_1658">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1659">

          <div id="_1660" class="nm-label">
            <span id="_1661">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1662">

          <div id="_1663" class="nm-label">
            <span id="_1664">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1665">

          <div id="_1666" class="nm-label">
            <span id="_1667">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1668">

          <div id="_1669" class="nm-label">
            <span id="_1670">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1671">

          <div id="_1672" class="nm-label">
            <span id="_1673">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1674">

          <div id="_1675" class="nm-label">
            <span id="_1676">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1677">

          <div id="_1678" class="nm-label">
            <span id="_1679">
            <br/>
        </span>
          </div>
        </td>
      </tr>
      <tr>
        <td id="_1680">

          <div id="_1681" class="nm-label">
            <span id="_1682">
            Петък<br/>
        </span>
          </div>
        </td>
        <td id="_1683">

          <div id="_1684" class="nm-label">
            <span id="_1685">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1686">

          <div id="_1687" class="nm-label">
            <span id="_1688">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1689">

          <div id="_1690" class="nm-label">
            <span id="_1691">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1692">

          <div id="_1693" class="nm-label">
            <span id="_1694">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1695">

          <div id="_1696" class="nm-label">
            <span id="_1697">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1698">

          <div id="_1699" class="nm-label">
            <span id="_1700">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1701">

          <div id="_1702" class="nm-label">
            <span id="_1703">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1704">

          <div id="_1705" class="nm-label">
            <span id="_1706">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1707">

          <div id="_1708" class="nm-label">
            <span id="_1709">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1710">

          <div id="_1711" class="nm-label">
            <span id="_1712">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1713">

          <div id="_1714" class="nm-label">
            <span id="_1715">
            <br/>
        </span>
          </div>
        </td>
      </tr>
      <tr>
        <td id="_1716">

          <div id="_1717" class="nm-label">
            <span id="_1718">
            Събота<br/>
        </span>
          </div>
        </td>
        <td id="_1719">

          <div id="_1720" class="nm-label">
            <span id="_1721">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1722">

          <div id="_1723" class="nm-label">
            <span id="_1724">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1725">

          <div id="_1726" class="nm-label">
            <span id="_1727">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1728">

          <div id="_1729" class="nm-label">
            <span id="_1730">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1731">

          <div id="_1732" class="nm-label">
            <span id="_1733">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1734">

          <div id="_1735" class="nm-label">
            <span id="_1736">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1737">

          <div id="_1738" class="nm-label">
            <span id="_1739">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1740">

          <div id="_1741" class="nm-label">
            <span id="_1742">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1743">

          <div id="_1744" class="nm-label">
            <span id="_1745">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1746">

          <div id="_1747" class="nm-label">
            <span id="_1748">
            <br/>
        </span>
          </div>
        </td>
        <td id="_1749">

          <div id="_1750" class="nm-label">
            <span id="_1751">
            <br/>
        </span>
          </div>
        </td>
      </tr>
    </table>

    <div id="_1752" data-pagelink="bbfca224-7c6f-52a3-6a60-72f57099c123" class="nm-label">
      <a id="_1753" href="#">
            Comments<br/>
        </a>
    </div>

    <div id="_1754">

      <i id="_1755">
        
    </i>

      <div id="_1756" class="nm-label">
        <h3 id="_1757">
            Send a message to the seller
<br/>
        </h3>
      </div>
      <textarea id="_1758">Type your message here...</textarea>

      <button id="_1759" class="btn btn-default">
        Send

      </button>
    </div>
  </div>
  <script type="text/javascript" src="../common-files/js/require.min.js" data-main="../scripts/startup"></script>
</body>

</html>