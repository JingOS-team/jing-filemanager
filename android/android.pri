QT += androidextras

RESOURCES += \
    $$PWD/android.qrc \
    $$PWD/../kirigami-icons.qrc \
    $$PWD/../app/icons.qrc \

ANDROID_PACKAGE_SOURCE_DIR = $$PWD

HEADERS += \
    $$PWD/android.h

SOURCES += \
    $$PWD/android.cpp

DISTFILES += \
    $$PWD/AndroidManifest.xml \
    $$PWD/gradle/wrapper/gradle-wrapper.jar \
    $$PWD/gradlew \
    $$PWD/res/values/libs.xml \
    $$PWD/build.gradle \
    $$PWD/gradle/wrapper/gradle-wrapper.properties \
    $$PWD/gradlew.bat