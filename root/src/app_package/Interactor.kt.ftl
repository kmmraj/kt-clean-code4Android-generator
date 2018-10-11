package ${packageName}

import android.util.Log

interface HomeInteractorInput {
    fun fetch${classname}Data(request: ${classname}Request)
}

class ${classname}Interactor : ${classname}InteractorInput {

    var output: ${classname}PresenterInput? = null
    var workerInput: ${classname}WorkerInput? = null
        get() { return field ?: ${classname}Worker()}

    override fun fetch${classname}Data(request: ${classname}Request) {
        // Log.d(TAG, "In method fetch${classname}Data")
        val response = {classname}Response()

        // Call the workers
        // workerInput.someWork()

        // Call the presenter
        output.present${classname}Data(response)
    }

    companion object {
        const val TAG = "${classname}Interactor"
    }
}
