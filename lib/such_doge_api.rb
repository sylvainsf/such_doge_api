require "such_doge_api/version"
require 'httparty'

module SuchDogeApi
  @apikey = DOGE_API_KEY
  @base_url = "https://dogeapi.com/wow/?api_key="

  def self.get_balance
    endpoint = "get_balance" 
    self.api_call(endpoint)
  end

  def self.withdraw(payment_address, amount)
    endpoint = "withdraw&amount=#{amount}&payment_address=#{payment_address}" 
    self.api_call(endpoint)
  end

  def self.get_payment_address(payment_address_label)
    endpoint = "new_address&address_label=#{payment_address_label}"
    self.api_call(endpoint)
  end

  def self.get_my_addresses
    endpoint = "get_my_addresses"
    self.api_call(endpoint)
  end

  def self.get_address_received(address_label)
    endpoint = "get_address_received&address_label=#{address_label}"
    self.api_call(endpoint)
  end

  def self.get_address_by_label(address_label)
    endpoint = "get_address_by_label&address_label=#{address_label}"
    self.api_call(endpoint)
  end

  def self.get_difficulty
    endpoint = "get_difficulty"
    self.api_call(endpoint)
  end

  def self.get_current_block
    endpoint = "get_current_block"
    self.api_call(endpoint)
  end

  private

  def self.api_call(endpoint)
    response = HTTParty.get("#{@base_url + @apikey + "&a=" + endpoint}")
    response.body
  end

end
