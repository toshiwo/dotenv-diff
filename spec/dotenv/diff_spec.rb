require 'spec_helper'

describe Dotenv::Diff do
  it 'has a version number' do
    expect(Dotenv::Diff::VERSION).not_to be nil
  end
end

describe Dotenv::Diff do
  let(:dotenv_file) { 'spec/fixtures/_env' }
  let(:example_file) { 'spec/fixtures/_env.example' }

  before { Dotenv.load(dotenv_file) }

  subject { Dotenv::Diff.diff(example_file) }

  it { expect { subject }.to output(/\[dotenv-diff\] missing key:/).to_stdout }
  it { expect { subject }.to output(/KEY_4_1/).to_stdout }
end
