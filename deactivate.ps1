$function:prompt = $function:_old_conan_conanenv_prompt
remove-item function:_old_conan_conanenv_prompt


$env:PATH=$env:CONAN_OLD_conanenv_PATH
Remove-Item env:CONAN_OLD_conanenv_PATH
Remove-Item env:GRPC_DEFAULT_SSL_ROOTS_FILE_PATH
Remove-Item env:OPENSSL_MODULES