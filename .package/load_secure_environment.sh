#! /bin/zsh

export SECURE_ENVIRONMENT_KEYCHAIN_NAME=secure_env.keychain

if security show-keychain-info $SECURE_ENVIRONMENT_KEYCHAIN_NAME &> /dev/null
then
  break
else
  echo "Setting up keychain"
  echo -n "keychain password:"
  read -s keychain_password
  security create-keychain -p "${keychain_password}" $SECURE_ENVIRONMENT_KEYCHAIN_NAME
fi

for KEY in $(security dump-keychain secure_env.keychain $SECURE_ENVIRONMENT_KEYCHAIN_NAME | grep '0x00000007' | cut -d"=" -f2 | sed 's/"//g')
do
  export $KEY=$(security find-generic-password -s $KEY -g -w $SECURE_ENVIRONMENT_KEYCHAIN_NAME)
done

add_secure_env() {
  env_var_name=$1
  echo -n "${env_var_name} value:"
  read -s env_var_value
  security add-generic-password -s $env_var_name -a '-' -w $env_var_value $SECURE_ENVIRONMENT_KEYCHAIN_NAME
}