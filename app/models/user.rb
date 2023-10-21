class User < ApplicationRecord
    attr_keyring ENV["USER_KEYRING"],
                 digest_salt: "<custom salt>"
    attr_encrypt :email
  end