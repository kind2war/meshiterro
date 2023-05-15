class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
 end
end

#devise利用の機能が使われる前に、configure_permitted_parametersメソッドが実行される。
#configure_permitted_parametersメソッドでは、devise_parameter_sanitizer.permitメソッドを使うことで
#ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可しています。