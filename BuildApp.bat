REM Build Bat File
REM Precheck the Resource 
"C:\Program Files\MRE SDK V3.0.00\tools\ResEditor\CmdShell.exe" save  "D:\MyGitHub\ralp\ralp.vcproj"
REM Copmile c file 
"C:\Program Files (x86)\CodeSourcery\Sourcery_CodeBench_Lite_for_ARM_EABI\Bin\arm-none-eabi-gcc" -c -fpic -g -mcpu=arm7tdmi-s -fvisibility=hidden -mthumb -mlittle-endian -O2 -D__MRE_COMPILER_GCC__ -fno-exceptions -fno-non-call-exceptions -o "D:\MyGitHub\ralp\arm\gccmain.o" -c "C:\Program Files\MRE SDK V3.0.00\lib\MRE30\src\gccmain.c"      -D _MINIGUI_LIB_ -D _USE_MINIGUIENTRY -D _NOUNIX_ -D _FOR_WNC -D __MRE_SDK__ -D   __MRE_VENUS_NORMAL__  -D  __MMI_MAINLCD_240X320__ -I "C:\Program Files\MRE SDK V3.0.00\include" -I "C:\Program Files\MRE SDK V3.0.00\include\service" -I "D:\MyGitHub\ralp\include" -I "D:\MyGitHub\ralp\include\service" -I "D:\MyGitHub\ralp\include\component" -I "D:\MyGitHub\ralp\ResID" -I "D:\MyGitHub\ralp\src\app\widget" -I "D:\MyGitHub\ralp\src\app\launcher" -I "D:\MyGitHub\ralp\src\app\wallpaper" -I "D:\MyGitHub\ralp\src\app\screen_lock" -I "D:\MyGitHub\ralp\include\service" -I "D:\MyGitHub\ralp\include\component" -I "D:\MyGitHub\ralp\include\service" -I "D:\MyGitHub\ralp\src\framework" -I "D:\MyGitHub\ralp\src\framework\ui_core\base" -I "D:\MyGitHub\ralp\src\framework\ui_core\mvc" -I "D:\MyGitHub\ralp\src\framework\ui_core\pme" -I "D:\MyGitHub\ralp\src\framework\mmi_core" -I "D:\MyGitHub\ralp\src\ui_engine\vrt\interface" -I "D:\MyGitHub\ralp\src\component" -I "D:\MyGitHub\ralp\src\ui_engine\framework\xml" -I "D:\MyGitHub\ralp"
REM Copmile c file 
"C:\Program Files (x86)\CodeSourcery\Sourcery_CodeBench_Lite_for_ARM_EABI\Bin\arm-none-eabi-gcc" -c -fpic -g -mcpu=arm7tdmi-s -fvisibility=hidden -mthumb -mlittle-endian -O2 -D__MRE_COMPILER_GCC__ -fno-exceptions -fno-non-call-exceptions -o "D:\MyGitHub\ralp\arm\ralp.o" -c "d:\MyGitHub\ralp\ralp.c"      -D _MINIGUI_LIB_ -D _USE_MINIGUIENTRY -D _NOUNIX_ -D _FOR_WNC -D __MRE_SDK__ -D   __MRE_VENUS_NORMAL__  -D  __MMI_MAINLCD_240X320__ -I "C:\Program Files\MRE SDK V3.0.00\include" -I "C:\Program Files\MRE SDK V3.0.00\include\service" -I "D:\MyGitHub\ralp\include" -I "D:\MyGitHub\ralp\include\service" -I "D:\MyGitHub\ralp\include\component" -I "D:\MyGitHub\ralp\ResID" -I "D:\MyGitHub\ralp\src\app\widget" -I "D:\MyGitHub\ralp\src\app\launcher" -I "D:\MyGitHub\ralp\src\app\wallpaper" -I "D:\MyGitHub\ralp\src\app\screen_lock" -I "D:\MyGitHub\ralp\include\service" -I "D:\MyGitHub\ralp\include\component" -I "D:\MyGitHub\ralp\include\service" -I "D:\MyGitHub\ralp\src\framework" -I "D:\MyGitHub\ralp\src\framework\ui_core\base" -I "D:\MyGitHub\ralp\src\framework\ui_core\mvc" -I "D:\MyGitHub\ralp\src\framework\ui_core\pme" -I "D:\MyGitHub\ralp\src\framework\mmi_core" -I "D:\MyGitHub\ralp\src\ui_engine\vrt\interface" -I "D:\MyGitHub\ralp\src\component" -I "D:\MyGitHub\ralp\src\ui_engine\framework\xml" -I "D:\MyGitHub\ralp"
REM Link app 
"C:\Program Files (x86)\CodeSourcery\Sourcery_CodeBench_Lite_for_ARM_EABI\Bin\arm-none-eabi-gcc" -o "D:\MyGitHub\ralp\ralp.axf"  "D:\MyGitHub\ralp\arm\gccmain.o"  "D:\MyGitHub\ralp\arm\ralp.o" -fpic -msvr4-struct-return -pie  -T "C:\Program Files\MRE SDK V3.0.00\lib\MRE30\armgcc\scat.ld" -l:"C:\Program Files\MRE SDK V3.0.00\lib\MRE30\armgcc\percommon.a" -l:"C:\Program Files\MRE SDK V3.0.00\lib\MRE30\armgcc\perpro.a" -l:"C:\Program Files\MRE SDK V3.0.00\lib\MRE30\armgcc\perfile.a" -l:"C:\Program Files\MRE SDK V3.0.00\lib\MRE30\armgcc\persysstorage.a" -l:"C:\Program Files\MRE SDK V3.0.00\lib\MRE30\armgcc\persysfile.a"
REM Pack resource to app 
"C:\Program Files\MRE SDK V3.0.00\tools\ResEditor\CmdShell.exe" pack -silent -resolution 240x320 -o "D:\MyGitHub\ralp\ralp.pkd" -e AXF "D:\MyGitHub\ralp\ralp.vcproj" "D:\MyGitHub\ralp\ralp.axf"
REM Add tag infromation 
"C:\Program Files\MRE SDK V3.0.00\tools\PackDigist.exe" "D:\MyGitHub\ralp\ralp.vcproj" "Ralp" "0.1.0" "RDZDX" "0" "supportBg" "Not Support rotate" "Ralp" "Ralp" "Ralp" "9246012102087182" "content" " ProMng File SysStorage SysFile" "vxp" "GCC" "PKD" "UnCompress" "NoVPI" "Adaptable" "15728960" "UnSysMemAble" "
    " "-1" "UNPUSH" "-1" ""  "UnAutoStart"  "UnTransferImg" "IdleShortcut"  D:\MyGitHub\ralp\arm D:\MyGitHub\ralp\build.log
