@echo off

set curDir=%~dp0

REM **************************************************
REM ** Set console window properties                **
REM **************************************************
TITLE ${maven.pom.name} - Version ${maven.pom.version}

REM **************************************************
REM ** Get passed Arguments                         **
REM **************************************************
set JAVA_EXEC=javaw
set CMD_LINE_ARGS=
:setArgs
if ""%1""=="""" goto doneSetArgs
if ""%1""==""-d"" (
  set JAVA_EXEC=java
) else (
  set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
)
shift
goto setArgs
:doneSetArgs

REM **************************************************
REM ** Get Java                                     **
REM **************************************************
if exist "%curDir%jre\bin\%JAVA_EXEC%.exe" (
  set JAVA_DIR=jre\bin\%JAVA_EXEC%.exe
) else (
  if exist "%curDir%jre\win\bin\%JAVA_EXEC%.exe" (
    set JAVA_DIR=jre\win\bin\%JAVA_EXEC%.exe
  ) else (
    if exist "%curDir%..\jre\win\bin\%JAVA_EXEC%.exe" (
      set JAVA_DIR=..\jre\win\bin\%JAVA_EXEC%.exe
    ) else (
      if exist "%curDir%..\..\jre\win\bin\%JAVA_EXEC%.exe" (
        set JAVA_DIR=..\..\jre\win\bin\%JAVA_EXEC%.exe
      ) else (
        if exist "%curDir%..\..\..\jre\win\bin\%JAVA_EXEC%.exe" (
          set JAVA_DIR=..\..\..\jre\win\bin\%JAVA_EXEC%.exe
        ) else (
          if exist "%curDir%..\..\..\..\jre\win\bin\%JAVA_EXEC%.exe" (
            set JAVA_DIR=..\..\..\..\jre\win\bin\%JAVA_EXEC%.exe
          ) else (
            set JAVA_DIR=%JAVA_EXEC%.exe
          )
        )
      )
    )
  )
)

REM ***************
REM ** Run...    **
REM ***************
if ""%JAVA_EXEC%""==""java"" (
  cd "%curDir%"
  "%JAVA_DIR%" -XX:MaxPermSize=32M -Xmx128M -cp "%curDir%lib/*" net.meisen.general.server.control.ServerController localhost ${project.settings.control.port} SHUTDOWN
) else (
  start /B /D"%curDir%" "${maven.pom.name}" "%JAVA_DIR%" -XX:MaxPermSize=32M -Xmx128M -cp "%curDir%lib/*" net.meisen.general.server.control.ServerController localhost ${project.settings.control.port} SHUTDOWN
)
