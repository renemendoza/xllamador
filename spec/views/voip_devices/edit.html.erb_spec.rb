require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/voip_devices/edit" do
  before(:each) do
    render 'voip_devices/edit'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/voip_devices/edit])
  end
end
