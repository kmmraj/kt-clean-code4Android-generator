<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Fragment.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/${classname}Fragment.kt" />
	<instantiate from="root/src/app_package/Configurator.kt.ftl"
								  to="${escapeXmlAttribute(srcOut)}/${classname}Configurator.kt"/>
	<instantiate from="root/src/app_package/Interactor.kt.ftl"
									to="${escapeXmlAttribute(srcOut)}/${classname}Interactor.kt"/>
	<instantiate from="root/src/app_package/Presenter.kt.ftl"
									to="${escapeXmlAttribute(srcOut)}/${classname}Presenter.kt"/>
	<instantiate from="root/src/app_package/Router.kt.ftl"
									to="${escapeXmlAttribute(srcOut)}/${classname}Router.kt"/>
	<instantiate from="root/src/app_package/Worker.kt.ftl"
									to="${escapeXmlAttribute(srcOut)}/${classname}Worker.kt"/>
	<instantiate from="root/src/app_package/Model.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${classname}Model.kt"/>
	<!-- <instantiate from="root/res/layout/blank_fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(className)}.xml" /> -->
	<instantiate from="root/src/app_package/PresenterUnitTest.kt.ftl"
		to="${escapeXmlAttribute(testOut)}/${classname}PresenterUnitTest.kt"/>

	<instantiate from="root/src/app_package/FragmentUnitTest.kt.ftl"
		to="${escapeXmlAttribute(testOut)}/${classname}FragmentUnitTest.kt"/>

	<!-- <open file="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(className)}.xml" /> -->
  <open file="${srcOut}/${classname}Fragment.kt"/>
</recipe>
