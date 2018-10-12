<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Fragment.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Fragment.kt" />
	<instantiate from="root/src/app_package/Configurator.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Configurator.kt"/>
	<instantiate from="root/src/app_package/Interactor.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Interactor.kt"/>
	<instantiate from="root/src/app_package/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Presenter.kt"/>
	<instantiate from="root/src/app_package/Router.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Router.kt"/>
	<instantiate from="root/src/app_package/Worker.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Worker.kt"/>
	<instantiate from="root/src/app_package/Model.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${classname}Model.kt"/>
	<instantiate from="root/res/layout/blank_fragment.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(classname)}.xml" />

	<instantiate from="root/src/app_package/PresenterUnitTest.kt.ftl" to="${escapeXmlAttribute(unitTestOut)}/${classname}PresenterUnitTest.kt"/>
	<instantiate from="root/src/app_package/FragmentUnitTest.kt.ftl" to="${escapeXmlAttribute(unitTestOut)}/${classname}FragmentUnitTest.kt"/>
	<instantiate from="root/src/app_package/InteractorUnitTest.kt.ftl" to="${escapeXmlAttribute(unitTestOut)}/${classname}InteractorUnitTest.kt"/>
		<dependency mavenUrl="junit:junit:4.12" gradleConfiguration="testCompile" />
		<dependency mavenUrl="org.robolectric:robolectric:3.8" gradleConfiguration="testCompile" />

	<open file="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(classname)}.xml" />
  <open file="${srcOut}/${classname}Fragment.kt"/>
</recipe>
