@echo off

        set File="uzivatele.txt"

    for /f "tokens=1-3 delims=,", %%a in (uzivatele.txt) do (

        set "Usr=%%a"
        set "Pwd=%%b"
        set "Group=%%c"

        net user "%Usr%" %Pwd% /add

    echo Byl tvoren uzivatel %Usr%.

        net localgroup "%Group%" "%Usr%" /add

    echo Uzivatel %Usr% byl pridan do skupiny %Group%

    )