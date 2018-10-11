package ${packageName}

import android.content.Intent
import android.support.annotation.NonNull
import android.view.View
import android.widget.AdapterView

import java.lang.ref.WeakReference;

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
        //
        val args =  Bundle()
        args.putParcelable("flight",flight)
        nextFragment.arguments = args
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
       // Log.e(TAG, "onItemClick() called with: parent = [" + parent + "], view = [" + view + "], position = [" + position + "], id = [" + id + "]");
        Intent intent = navigateToSomeWhere(position);
        passDataToNextScene(position, intent);
        activity.get().startActivity(intent);
    }

    companion object {
            const val TAG = "HomeRouter"
    }


}
