class User; end

# Userクラス自身のクラスはClassクラス
User.class
# => Class

# ClassクラスのスーパークラスはModuleクラス
Class.superclass
# => Module

module Loggable; end
# Loggableモジュール自身のクラスはModuleクラス

Loggable.class
# => Module

# ModuleクラスのスーパークラスはObjectクラス
Module.superclass
# => Object
