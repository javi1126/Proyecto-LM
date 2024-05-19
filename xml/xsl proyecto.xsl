<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Información Meteorológica</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Información Meteorológica para Madrid</h2>
        <table>
          <tr>
            <th>Fecha</th>
            <th>Temperatura Máxima (°C)</th>
            <th>Temperatura Mínima (°C)</th>
            <th>Descripción</th>
            <th>Humedad (%)</th>
            <th>Viento (km/h)</th>
          </tr>
          <xsl:for-each select="data/*[starts-with(name(), 'day')]">
            <tr>
              <td><xsl:value-of select="date"/></td>
              <td><xsl:value-of select="temperature_max"/></td>
              <td><xsl:value-of select="temperature_min"/></td>
              <td><xsl:value-of select="text"/></td>
              <td><xsl:value-of select="humidity"/></td>
              <td><xsl:value-of select="wind"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
