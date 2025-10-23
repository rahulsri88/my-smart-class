#!/usr/bin/env sh
APP_HOME="$(dirname "$0")"
if [ -x "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" ]; then
    CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
else
    echo "ERROR: Gradle wrapper not found."
    exit 1
fi
exec java -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
