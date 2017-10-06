package com.dan41k.conductorsample.ui.common.activity

import android.app.Activity
import android.content.res.Configuration
import com.dan41k.conductorsample.App


val Activity.app: App
    get() = application as App

fun Activity.isLandscapeOrientation() = Configuration.ORIENTATION_LANDSCAPE == resources.configuration.orientation

fun Activity.isTablet(): Boolean {
    val xlarge = resources.configuration.screenLayout and
            Configuration.SCREENLAYOUT_SIZE_MASK == Configuration.SCREENLAYOUT_SIZE_XLARGE
    val large = resources.configuration.screenLayout and
            Configuration.SCREENLAYOUT_SIZE_MASK == Configuration.SCREENLAYOUT_SIZE_LARGE
    return xlarge || large
}