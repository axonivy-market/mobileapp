1. Config demo mode on local
  - Update file assets\env\.env_demo with proper values
    demoServerUrl='XXX'
    demoUserName='XXX'
    demoPassword='XXX'
  - Update file lib\core\app\demo_config.dart by replacing `if (kReleaseMode)` by `if (true)`
