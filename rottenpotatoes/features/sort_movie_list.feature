Feature: display list of movies sorted by different criteria

  As an avid moviegoer
  So that I can quickly browse movies based on my preferences
  I want to see movies sorted by title or release date

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And I am on the RottenPotatoes home page
  Then 10 seed movies should exist

Scenario: sort movies alphabetically
  When I follow "Movie Title"
  #And I press "ratings_submit"
  Then I should see "2001: A Space Odyssey" before "Aladdin" on the RottenPotatoes home page sorted by title
  And I should see "Aladdin" before "Amelie" on the RottenPotatoes home page sorted by title
  And I should see "Amelie" before "Chicken Run" on the RottenPotatoes home page sorted by title
  And I should see "Chicken Run" before "Chocolat" on the RottenPotatoes home page sorted by title
  And I should see "Chocolat" before "Raiders of the Lost Ark" on the RottenPotatoes home page sorted by title
  And I should see "Raiders of the Lost Ark" before "The Help" on the RottenPotatoes home page sorted by title
  And I should see "The Help" before "The Incredibles" on the RottenPotatoes home page sorted by title
  And I should see "The Incredibles" before "The Terminator" on the RottenPotatoes home page sorted by title
  And I should see "The Terminator" before "When Harry Met Sally" on the RottenPotatoes home page sorted by title

Scenario: sort movies in increasing order of release date
  When I follow "Release Date"
  #And I press "ratings_submit"
  Then I should see "1968-04-06" before "1981-06-12" on the RottenPotatoes home page sorted by release_date
  And I should see "1981-06-12" before "1984-10-26" on the RottenPotatoes home page sorted by release_date
  And I should see "1984-10-26" before "1989-07-21" on the RottenPotatoes home page sorted by release_date
  And I should see "1989-07-21" before "1992-11-25" on the RottenPotatoes home page sorted by release_date
  And I should see "1992-11-25" before "2000-06-21" on the RottenPotatoes home page sorted by release_date
  And I should see "2000-06-21" before "2001-01-05" on the RottenPotatoes home page sorted by release_date
  And I should see "2001-01-05" before "2001-04-25" on the RottenPotatoes home page sorted by release_date
  And I should see "2001-04-25" before "2004-11-05" on the RottenPotatoes home page sorted by release_date
  And I should see "2004-11-05" before "2011-08-10" on the RottenPotatoes home page sorted by release_date
