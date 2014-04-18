require "suning_json/version"

module SuningJson
  class MemInfo
    URL = "http://plazamallsit.cnsuning.com:8080/api/"

    def initialize token
      @token = "token=#{token}"
    end

    require 'open-uri'
    def get_json url
      JSON.parse(open(url).read)
    end

    def transfer method, params_hash
      url = "#{URL}#{method}?#{@token}"
      params_hash.each {|key, value| url += "&#{key}=#{value}" }
      get_json url
    end
  end
end




=begin
  
容易网接口
token 是 asdasdasdasd 

获取用户信息
http://plazamallsit.cnsuning.com:8080/api/get_member_info?phone=18626464667&token=asdasdasdasd
用会员卡获取用户信息
http://plazamallsit.cnsuning.com:8080/api/get_member_info_by_card?vip_card=510202000025&token=asdasdasdasd
调整用户积分
http://plazamallsit.cnsuning.com:8080/api/bonus_adjustment? vip_card=510202000025&bonus=-1&reason=测试接⼝口&token=asdasdasdasd
获取用户兑换记录
http://plazamallsit.cnsuning.com:8080/api/get_member_redeem_row_count?vip_card=510202000025&token=asdasdasdasd
兑换商品
http://plazamallsit.cnsuning.com:8080/api/get_member_gift_redeem?vip_card=510202000025&gift_id=21&token=asdasdasdasd
获取 所有的 商品
http://plazamallsit.cnsuning.com:8080/api/get_all_gift?token=asdasdasdasd
  
=end