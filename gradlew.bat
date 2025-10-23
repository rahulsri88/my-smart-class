@echo off
SET DIRNAME=%~dp0
IF NOT DEFINED JAVA_HOME (
    echo ERROR: JAVA_HOME is not set
    exit /b 1
)
SET CLASSPATH=%DIRNAME%gradle\wrapper\gradle-wrapper.jar
java -cp %CLASSPATH% org.gradle.wrapper.GradleWrapperMain %*
