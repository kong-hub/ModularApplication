platform :ios, '12.2'

use_frameworks!

workspace 'ModularApplication'

#core module
def core_pods
    pod 'RxSwift'
end

target 'Core' do
    project 'Core/Core.project'
    pod 'RxSwift'
end

#application
def application_pods
    pod 'RxSwift'
end
 
target 'Application' do
    project 'Application/Application.project'
    application_pods
end

#feature - PLP
def product_list_pods
    pod 'RxSwift'
end

target 'ProductList' do
    project 'ProductList/ProductList.project'
    product_list_pods
end
