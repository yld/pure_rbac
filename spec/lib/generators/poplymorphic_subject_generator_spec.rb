# frozen_string_literal: true

require 'rails_helper'
require 'generators/poplymorphic_subject/poplymorphic_subject_generator'

RSpec.describe PoplymorphicSubjectGenerator, type: :aruba do
  before do
    run('rails g poplymorphic_subject')
  end

  it { expect(last_command_started).to be_successfully_executed }
end
