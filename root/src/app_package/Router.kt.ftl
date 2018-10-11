package ${packageName}

import android.content.Intent
import android.view.View
import android.widget.AdapterView
import android.support.v4.app.Fragment

import java.lang.ref.WeakReference

interface ${classname}RouterInput{
    fun determineNextScreen(position: Int): Fragment
    fun passDataToNextScene(position: Int, nextFragment: Fragment)
}

class ${classname}Router : ${classname}RouterInput, AdapterView.OnItemClickListener {

    var fragment: WeakReference<${classname}Fragment>? = null

    override fun determineNextScreen(position: Int): Fragment {
       // Based on the position or some other data decide what is the next scene
       // return if (someCondition()) {
       //     OneFragment()
       // } else {
       //     TwoFragment()
       // }
        return Fragment()
    }

    override fun passDataToNextScene(position: Int, nextFragment: Fragment) {
        // Based on the position or some other data decide the data for the next scene

        // val args =  Bundle()
        // args.putParcelable("flight",flight)
        // nextFragment.arguments = args
    }

    override fun onItemClick(parent: AdapterView<*>, view: View, position: Int, id: Long) {
        // Log.d(TAG, "onItemClick() called with: parent = [$parent], "
        // + "view = [$view], position = [$position], id = [$id]")
        val nextFragment = determineNextScreen(position)
        passDataToNextScene(position, nextFragment)
        // Ask the activity to show the next fragment. eg ..
        // fragment?.get()?.homeFragmentListener?.startPastTripFragment(nextFragment)

    }

    companion object {
            const val TAG = "HomeRouter"
    }
}
