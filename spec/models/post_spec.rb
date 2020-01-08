require 'rails_helper'

describe Post do
    it 'can be created' do
        post = Post.create!(title: "Yay I'm learning testing!", description: "I asked about learning this just last week.")
        expect(post).to be_valid
    end

    it 'provides a summary' do
        post = Post.create!(title: "It's okay to ask for help(er methods)", description: "Coding is just like real life.")
        expect(post.post_summary).to eq("It's okay to ask for help(er methods) - Coding is just like real life.")
    end
    
end