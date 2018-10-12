<?xml version="1.0"?>
<globals>
  <global id="resOut" value="${resDir}" />
  <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
  <global id="testOut" value="${testDir}/${slashedPackageName(packageName)}" />
  <global id="unitTestOut" value="${escapeXmlAttribute(projectOut)}/src/test/java/${slashedPackageName(packageName)}" />
</globals>
