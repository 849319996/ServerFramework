@echo off
::��bat�Ĺ����ǽ�gm��gateway��logicServer��battleServer�й��õĴ������ͬ������

::��logicServer��dao��Ϊ��׼��ͬ����gm��battleServer��gatewayֻ��ҪLoadBalanceDAO��UserDAO
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\dao gm\src\main\java\org\zhangqi\dao\
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\dao battleServer\src\main\java\org\zhangqi\dao\
xcopy /y logicServer\src\main\java\org\zhangqi\dao\LoadBalanceDAO.java gateway\src\main\java\org\zhangqi\dao\
xcopy /y logicServer\src\main\java\org\zhangqi\dao\UserDAO.java gateway\src\main\java\org\zhangqi\dao\

::��logicServer��service��Ϊ��׼��ͬ����gm��battleServer���ų�MatchService����gatewayֻ��ҪLoadBalanceService��UserService
xcopy /s /e /y /EXCLUDE:exclude.txt logicServer\src\main\java\org\zhangqi\service gm\src\main\java\org\zhangqi\service\
xcopy /s /e /y /EXCLUDE:exclude.txt logicServer\src\main\java\org\zhangqi\service battleServer\src\main\java\org\zhangqi\service\
xcopy /y logicServer\src\main\java\org\zhangqi\service\LoadBalanceService.java gateway\src\main\java\org\zhangqi\service\
xcopy /y logicServer\src\main\java\org\zhangqi\service\UserService.java gateway\src\main\java\org\zhangqi\service\

::��logicServer��constants��Ϊ��׼��ͬ����gm��gateway��battleServer
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\constants gm\src\main\java\org\zhangqi\constants\
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\constants gateway\src\main\java\org\zhangqi\constants\
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\constants battleServer\src\main\java\org\zhangqi\constants\

::��logicServer��utils��Ϊ��׼��ͬ����gm��gateway��battleServer
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\utils gm\src\main\java\org\zhangqi\utils\
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\utils gateway\src\main\java\org\zhangqi\utils\
xcopy /s /e /y logicServer\src\main\java\org\zhangqi\utils battleServer\src\main\java\org\zhangqi\utils\

::��logicServer��manager\TableConfigManagerΪ��׼��ͬ����gm��battleServer
xcopy /y logicServer\src\main\java\org\zhangqi\manager\TableConfigManager.java gm\src\main\java\org\zhangqi\manager\
xcopy /y logicServer\src\main\java\org\zhangqi\manager\TableConfigManager.java battleServer\src\main\java\org\zhangqi\manager\

::��logicServer��action\BaseMessageActionΪ��׼��ͬ����battleServer
xcopy /y logicServer\src\main\java\org\zhangqi\action\BaseMessageAction.java battleServer\src\main\java\org\zhangqi\action\

::��logicServer��actor\BaseMessageActorΪ��׼��ͬ����battleServer
xcopy /y logicServer\src\main\java\org\zhangqi\actor\BaseMessageActor.java battleServer\src\main\java\org\zhangqi\actor\

pause