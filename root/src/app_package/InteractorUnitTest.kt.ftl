package ${packageName}

import android.util.Log
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ${classname}InteractorUnitTest {

    @Test
    fun fetch${classname}Data_with_validInput_shouldCall_present${classname}Data() {
        // Given
        val interactor = ${classname}Interactor()
        val request = ${classname}Request()
        //homeRequest.isFutureTrips = true
        val presenterInputSpy = ${classname}PresenterInputSpy()
        interactor.output = presenterInputSpy
        // When
        interactor.fetch${classname}Data(request)

        // Then
        Assert.assertTrue("When the valid input is passed to ${classname}Interactor "
                + "Then present${classname}Data should be called",
                presenterInputSpy.present${classname}DataIsCalled)
    }

    private inner class ${classname}PresenterInputSpy: ${classname}PresenterInput {

        internal var present${classname}DataIsCalled = false
        internal var responseCopy: ${classname}Response? = null
        override fun present${classname}Data(response: ${classname}Response) {
            present${classname}DataIsCalled = true
            responseCopy = response
        }
    }


}
