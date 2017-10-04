package com.dan41k.conductorsample.ui

import android.os.Bundle
import android.util.Log
import android.view.ViewGroup
import com.dan41k.conductorsample.R
import com.dan41k.conductorsample.ui.common.activity.BaseActivity
import com.dan41k.conductorsample.ui.common.annotation.Layout
import kotlinx.android.synthetic.main.activity_main.*

@Layout(R.layout.activity_main)
class SecondActivity : BaseActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Log.w("SECONDACTIVITY", router.toString())
    }

    override fun container(): ViewGroup = container
}