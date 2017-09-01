require_relative 'pages/home_page'
require_relative 'pages/budget_page'

module BudgetApp

  def homepage
    HomePage.new($driver)
  end

  def budgetpage
    BudgetPage.new($driver)
  end

end