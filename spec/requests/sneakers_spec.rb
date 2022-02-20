require 'rails_helper'

RSpec.describe 'Sneakers', type: :request do
  describe 'GET /index' do
    before(:example) { get sneakers_path }

    it 'renders a successful response' do
      expect(response).to be_successful
    end

    it 'should returns 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'should return all sneakers' do
      expect(assigns(:sneakers)).to eq(Sneaker.all)
    end

    it 'should return index template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET /show' do
    let(:sneaker) { create(:sneaker) }
    before(:example) { get sneaker_path(sneaker) }

    it 'renders a successful response' do
      expect(response).to be_successful
    end

    it 'should returns 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'should return the sneaker with the given id' do
      expect(assigns(:sneaker)).to eq(sneaker)
    end

    it 'should return index template' do
      expect(response).to render_template('show')
    end
  end
end
