# General example
string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

p string =~ /quick/   # 4

p string =~ /z/ ? "Valid" : "Invalid"

p string =~ /Z/i ? "Valid" : "Invalid"  # i for case insensitive

p string.to_enum(:scan, /\d+/).map { Regexp.last_match }  # multiple integers


# email matcher
puts "Emails:"
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("alecapo@mail.com") ? "Valid" : "Invalid"       # Valid
p is_valid_email?("ale.capomail.com.ar") ? "Valid" : "Invalid"    # Invalid
p is_valid_email?("ale.capo@mail.com.ar") ? "Valid" : "Invalid"   # Valid
p is_valid_email?("ale.capo@mail") ? "Valid" : "Invalid"          # Invalid
p is_valid_email?("ale-capo@mail.com.ar") ? "Valid" : "Invalid"   # Valid
p is_valid_email?("ale_capo@mail.com.ar") ? "Valid" : "Invalid"   # Valid


# IP Address Matcher
#172.16.0.0 to 172.31.255.255
puts "IP Adresses:"
IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address? ip
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address?("999.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.16.255.255") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.16.255.256") ? "Valid" : "Invalid"

# rubular.com

