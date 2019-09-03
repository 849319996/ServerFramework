@echo off

set JAVA_HOME=%JAVA_HOME%
if "%JAVA_HOME%"=="" (
    color 04
    echo ����δ���û�������JAVA_HOME�������ú�������
    pause
    exit
)

set MAVEN_HOME=%MAVEN_HOME%
if "%MAVEN_HOME%"=="" (
    color 04
    echo ����δ���û�������MAVEN_HOME�������ú�������
    pause
    exit
)

set CLASSPATH=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar
set Path=%JAVA_HOME%\bin;%JAVA_HOME%\jar\bin;%MAVEN_HOME%\bin

color 0E
echo ���棺�����ȷ���Լ�svn��gm��gateway��logicServer��battleServer�����°汾���ٳ�����ȷ�������������
pause
color 07

::�������֮ǰ��
::echo �����֮ǰ�Ѵ���İ�
::rmdir /S /Q target\gm\target
::rmdir /S /Q target\logicServer\target
::rmdir /S /Q target\battleServer\target
::rmdir /S /Q target\gateway\target

echo ���gm������
cd target\gm
start mvn package

echo ���logicServer
cd ..\..\
cd target\logicServer
start mvn package

echo ���battleServer
cd ..\..\
cd target\battleServer
start mvn package

echo ���gateway
cd ..\..\
cd target\gateway
start mvn package

echo maven���������������ȴ��������������ɹ����ֹ��رո������ڣ�ע��鿴�Ƿ����ɹ�
pause