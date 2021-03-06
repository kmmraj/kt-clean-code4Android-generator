package ${packageName}

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

interface ${classname}FragmentInput {
    fun display${classname}Data(viewModel: ${classname}ViewModel )
}

class ${classname}Fragment : Fragment(), ${classname}FragmentInput {

    lateinit var output: ${classname}InteractorInput
    lateinit var router: ${classname}Router

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                                  savedInstanceState: Bundle?): View? {
      // Do the setup
      // Inflate the layout for this fragment
      val view =  inflater.inflate(R.layout.fragment_${classToResource(classname)}, container, false)

      ${classname}Configurator.configureFragment(this)
      fetchData()

      // Do other work

      return view
     }

    fun fetchData() {
       // create Request and set the needed input
       val request = ${classname}Request()

       // Call the output to fetch the data
       output.fetch${classname}Data(request)
    }

    override fun display${classname}Data(viewModel: ${classname}ViewModel) {
        // Log.d(TAG, "display${classname}Data() called with: viewModel = [$viewModel]")
        // Deal with the data, update the states, ui etc..
     }

    companion object {
       const val TAG = "${classname}Fragment"
     }
    }
