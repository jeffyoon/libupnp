@ECHO OFF

SETLOCAL EnableDelayedExpansion

for %%i in (..src\upnp\*) do (
    echo applying patch: %%~nxi
    git apply --reject --ignore-space-change --ignore-whitespace --whitespace=nowarn %%i
)

EXIT /B 0