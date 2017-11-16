it 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'name'
      expect(page).to have_content 'description'
    end
  end
