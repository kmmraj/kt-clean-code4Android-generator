package ${packageName}

import android.util.Log
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner


@RunWith(RobolectricTestRunner::class)
class ${classname}PresenterUnitTest {

    @Test
    fun present${classname}Data_with_validInput_shouldCall_display${classname}Data() {
        // Given
        val presenter = ${classname}Presenter()
        val response = ${classname}Response()
        // Set up the Spy or Mocks
        // response.listOfFlights = FlightWorker().futureFlights


        // When
        presenter.present${classname}Data(response)

        // Then
        // Assert.assertTrue("When the valid input is passed to presenter" +
        //        "Then display${classname}Data should be called",
        //         homeFragmentInputSpy.isDisplayHomeMetaDataCalled)
    }

    companion object {
        const val TAG = "HomePresenterUnitTest"
    }
    }
