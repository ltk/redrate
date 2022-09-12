# frozen_string_literal: true
RSpec.describe Redrate do
  it 'has a version number' do
    expect(Redrate::VERSION).not_to be nil
  end

  it 'can be configured with a particular redis client instance' do
    custom_redis_client = double('Redis Client')
    Redrate.configure(redis: custom_redis_client)

    expect(Redrate.config.redis).to eq(custom_redis_client)
  end
end
