require 'spec_helper'

describe User do
  let(:omniauth) { { 'provider' => 'twitter',
                     'uid' => '5975622',
                     'info' => {
                      'nickname' => 'cmar',
                      'name' => 'Chris Mar',
                      'location' => 'Northern VA',
                      'image' => 'http://a0.twimg.com/profile_images/1845542459/189237_10150239689766786_500011785_7858436_7498852_n_normal.jpeg',
                      'description' => 'organizer for RubyLoco',
                      'urls' => {
                        'Website' => 'http://about.me/cmar',
                        'Twitter' => 'http://twitter.com/cmar' }
                      }} }

  it 'creates a user from an omniauth hash' do
    user = User.from_omniauth(omniauth)
    user.provider.should eq 'twitter'
    user.uid.should eq '5975622'
    user.nickname.should eq 'cmar'
  end
end
