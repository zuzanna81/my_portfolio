it 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My Profession'
      expect(page).to have_content 'When I am not working'
    end
  end
