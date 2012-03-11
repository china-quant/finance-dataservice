require 'test_helper'

class TickerTest < ActiveSupport::TestCase
  # Disable Test DB Rollback
  self.use_transactional_fixtures = false

  TICKERS = [:C, :V, :AKAM, :GOOG]

  setup do
  end
  
  test "Ticker.new()" do
    ActiveRecord::Base.transaction do
      TICKERS.each do |ticker|
        logger.info(ticker)
        t1 = Ticker.new()
        t1.name = ticker
        t1.ticker_type = :stock
        t1.save()
      end
    end
  end
  

  test "Ticker.updateAll()" do
    Ticker.UpdateAll()
  end

  test "Ticker.update()" do
    
  end
  

  def logger
    return Rails.logger
  end

end
