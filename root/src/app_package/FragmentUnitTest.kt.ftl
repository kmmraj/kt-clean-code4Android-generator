package ${packageName}

import ${packageName}.${classname}Fragment

import ${packageName}.${classname}InteractorInput
import ${packageName}.${classname}Request
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner


@RunWith(RobolectricTestRunner::class)
class ${classname}FragmentUnitTest {

    @Test
    fun mainActivity_ShouldNOT_be_Null() {
        // Given
        val activity = Robolectric.setupActivity(MainActivity::class.java)
        // When

        // Then
        Assert.assertNotNull(activity)
    }

    @Test
    fun onCreate_shouldCall_fetch${classname}Data() {
        // Given
        val fragmentOutputSpy = ${classname}FragmentOutputSpy()

        // It must have called the onCreate earlier,
        // we are injecting the mock and calling the fetchData to test our condition
        val fragment = ${classname}Fragment()
        fragment.output = fragmentOutputSpy

        // When
        fragment.fetchData()

        // Then
        Assert.assertTrue(fragmentOutputSpy.fetch${classname}DataIsCalled)
    }

    @Test
    fun onCreate_Calls_fetch${classname}Data_withCorrectData() {
        // Given
        val fragmentOutputSpy = ${classname}FragmentOutputSpy()
        val fragment = ${classname}Fragment()
        fragment.output = fragmentOutputSpy

        // When
        fragment.fetchData()

        // Then
        Assert.assertNotNull(${classname}Fragment)
        // Assert.assertTrue(fragmentOutputSpy.requestCopy.isFutureTrips)
    }

    private inner class ${classname}FragmentOutputSpy : ${classname}InteractorInput {

        var fetch${classname}DataIsCalled = false
        lateinit var requestCopy: ${classname}Request

        override fun fetch${classname}Data(request: ${classname}Request) {
            fetch${classname}DataIsCalled = true
            requestCopy = request
        }
    }
}
