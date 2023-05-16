class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource) #サインイン後どこへ遷移するか設定できるメソッド
   about_path #これでaboutへ上書きした
  end

  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end

end

#指定したデータが保存できるように許可を与える処理。
#ここでは、デフォのemailとpasswordに加えて、nameを許可しようとしている。
#devise利用の機能が使われる前に、configure_permitted_parametersメソッドが実行される。
#configure_permitted_parametersメソッドでは、devise_parameter_sanitizer.permitメソッドを使うことで
#ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可しています。