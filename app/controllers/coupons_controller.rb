class CouponsController < ApplicationController

def index
  @coupons = Coupon.all
end

def show
  @coupon = Coupon.find(params[:id])
end

def new
end

def create
  @newcoup = Coupon.new
  @newcoup.coupon_code = params[:coupon_code]
  @newcoup.store = params[:store]
  @newcoup.save
  redirect_to coupon_path(@newcoup)

end

end
