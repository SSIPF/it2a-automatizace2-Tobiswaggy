@echo off

    for /f "tokens=1-3 delims=,", %%a in (uzivatele.txt) do (

        net user "%%a" %%b /add

    echo Byl tvoren uzivatel "%%a"

        net localgroup %%c /add

    echo Byla vytvorena skupina "%%c"

        net localgroup "%%c" "%%a" /add

    echo Uzivatel %%a byl pridan do skupiny %%c

    )
