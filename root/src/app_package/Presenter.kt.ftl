package ${packageName}

import java.lang.ref.WeakReference

interface ${classname}PresenterInput {
    fun present${classname}Data(response : ${classname}Response)
}

class ${classname}Presenter : ${classname}PresenterInput {

    var output: WeakReference<${classname}FragmentInput>? = null

    override fun present${classname}Data(response : ${classname}Response) {
        // Log.d(TAG, "present${classname}Data() called with: response = [$response]");
        // Do your decoration or filtering here

    }

    companion object {
        const val TAG = "${classname}Presenter"
    }
}
