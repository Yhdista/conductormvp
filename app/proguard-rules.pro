-keepattributes Signature,*Annotation*,SourceFile,LineNumberTable,InnerClasses,EnclosingMethod

# Base Android exclusions, required for proper function of various components
-keep public class * extends android.app.Activity { *; }
-keep public class * extends android.app.Application { *; }
-keep public class * extends android.app.Service { *; }
-keep public class * extends android.content.BroadcastReceiver { *; }
-keep public class * extends android.content.ContentProvider { *; }
-keep public class * extends android.preference.Preference { *; }
-keep public class * extends android.support.v4.app.Fragment { *; }
-keep public class * extends android.app.Fragment { *; }
-keep public class * extends nucleus.presenter.Presenter { *; }

# Kotlin
-dontwarn rx.internal.util.unsafe.**
-dontwarn kotlin.**
-keep class kotlin.** { *; }
-keep class org.jetbrains.kotlin.** { *; }
-keep class org.jetbrains.annotations.** { *; }
-keepclassmembers public class com.cypressworks.kotlinreflectionproguard.** { *; }
-keepclassmembers class ** { @org.jetbrains.annotations.ReadOnly public *; }
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
}
-keepclassmembers class **$WhenMappings { <fields>; }
-keep class kotlin.Metadata { *; }

# For enumeration classes, see http://proguard.sourceforge.net/manual/examples.html#enumerations
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# R
-keep class **.R
-keep class **.R$* {
    <fields>;
}

# Dependency injection
-keep class com.dan41k.conductorsample.di.** { *; }

# Support v7
-keep class android.support.v7.app.** { *; }

#CellAdapter
-keepclasseswithmembers public class * extends io.erva.celladapter.** { *; }
-keepclassmembers class * extends io.erva.celladapter.Cell {
    <init>(android.view.View);
}