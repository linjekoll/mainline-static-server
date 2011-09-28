describe "server" do
  let(:valid_json) {
    {
      this: "could",
      be: "any",
      anything: nil
    }.to_json  
  }
  
  let(:invalid_json) {
    "invalid!"
  }
  
  context "POST /" do
    it "should freak out (a.k.a 400) if data is invalid" do
      post "/", { data:  invalid_json }
      last_response.status.should eq(400)
    end
    
    it "should return 200 if data is invalid" do
      Stalker.should_receive(:enqueue).once
      post "/", { data:  valid_json }
      last_response.status.should eq(200)
    end
  end  
end