package ${packageName}

import android.util.Log
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import java.lang.ref.WeakReference

@RunWith(RobolectricTestRunner::class)
class ${classname}RouterUnitTest {

   @Test
    fun test_${classname}Router_determineNextScreen_when_Input_Is() {
        // Given
        // Setup Data

        val router = ${classname}Router()
        val fragment = ${classname}Fragment()
        fragment.router = router
        router.fragment = WeakReference(fragment)

        // When
        // Based on the position or some other data decide what is the next scene

        val nextFragment = router.determineNextScreen(0)

        // Then

        val nextFragmentName = nextFragment.javaClass.name
        // Assert.assertEquals("When the some Data passed to ${classname}Router" +
        //        " Then next Fragment should be ...",
        //        nextFragmentName,
        //        SomeFragment::class.java.name)
    }

    companion object {
        const val TAG = "${classname}RouterUnitTest"
    }
}
