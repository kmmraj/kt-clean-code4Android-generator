package ${packageName}

import java.lang.ref.WeakReference

object ${classname}Configurator {

    fun configureFragment(fragment: ${classname}Fragment) {

        val router = ${classname}Router()
        router.fragment = WeakReference(fragment)

        val presenter = ${classname}Presenter()
        presenter.output = WeakReference(fragment)

        val interactor = ${classname}Interactor()
        interactor.output = presenter

        fragment.output = interactor
        fragment.router = router
    }
}
