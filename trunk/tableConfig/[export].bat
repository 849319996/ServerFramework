@echo off
rd/s/q temp
md temp

"../tools/release/XlsxToLua/XlsxToLua.exe" "../tableConfig" "-notExportLua" "-noClient" "-noLang" "-autoNameCsvClassParam(classNamePostfix=VO)" "-exportJavaClass($all)" "-exportJavaClassParam(exportPath=temp|package=org.zhangqi.tableConfig|import=|isUseDate=true|isGenerateConstructorWithoutFields=true|isGenerateConstructorWithAllFields=true)" "-exportJson($all)" "-exportJsonParam(exportPath=temp|extension=txt|isFormat=false|isExportJsonArrayFormat=false|isMapIncludeKeyColumnValue=true)" 

set errorLevel = %errorlevel%
if not errorLevel == 0 (
    @echo ����ʧ�ܣ��������������������
    pause
    exit
) 

::������GM������
xcopy /y temp\*.java ..\gm\src\main\java\org\zhangqi\tableConfig\
xcopy /y temp\*.txt ..\gm\src\main\resources\tableConfig

::������logicServer
xcopy /y temp\*.java ..\logicServer\src\main\java\org\zhangqi\tableConfig\
xcopy /y temp\*.txt ..\logicServer\src\main\resources\tableConfig

::������battleServer
xcopy /y temp\*.java ..\battleServer\src\main\java\org\zhangqi\tableConfig\
xcopy /y temp\*.txt ..\battleServer\src\main\resources\tableConfig

rd/s/q temp
@echo �����ɹ�
pause