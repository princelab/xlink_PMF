require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

Fasta_files = load_tfiles("*.fasta")

describe 'Pmf_searcher' do 

end

describe "#create_theoretical_pmf(fasta_file)" do 
  before :all do 
    @searchers = Fasta_files.map do |ff|
      MS::SearchEngine::Searcher.new(ff)
    end
  end
  it 'runs' do 
    begin 
      @theoretical_pmf = @searchers.first.create_theoretical_pmf
    end
  end
  it "returns a PMFList object" do 
    @theoretical_pmf.class.should be_equal(MS::DataStructs::PMFList)
  end
end
