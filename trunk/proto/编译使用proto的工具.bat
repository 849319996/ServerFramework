@echo off
set devnevExePath="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe"
if not exist %devnevExePath% (
    @echo δ��⵽Visual Studio 2007רҵ��ı�����򣬽ű��޷�����ִ�У������˳����뽫devenv.exe·���޸�Ϊ������ʵ�ʵ�·��
    pause
    exit
)
set devnev="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv"
set toolsReleasePath=..\tools\release
set toolsSrcPath=..\tools\src

::GameManager
set GameManagerSlnPath=%toolsSrcPath%\GameManager\GameManager.sln
%devnev% %GameManagerSlnPath% /Build "Debug"

::RedisDataViewer
set RedisDataViewerSlnPath=%toolsSrcPath%\RedisDataViewer\RedisDataViewer.sln
%devnev% %RedisDataViewerSlnPath% /Build "Debug"

::TestServerFramework
set TestServerFrameworkSlnPath=%toolsSrcPath%\TestServerFramework\TestServerFramework.sln
%devnev% %TestServerFrameworkSlnPath% /Build "Debug"

@echo ������ϣ���������˳�
pause