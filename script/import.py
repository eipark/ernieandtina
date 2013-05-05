import csv
import shlex

with open('people.csv', 'rb') as file:
  reader = csv.DictReader(file)
  writer = csv.writer(file)
  for row in reader:
    name = shlex.split(row['who'])
    print 'INSERT INTO guests (first_name, last_name, nick_name, rsvp_code, created_at, updated_at) VALUES (\'%s\', \'%s\', \'%s\', \'%s\', \'NOW()\', \'NOW()\')' % (name[0], name[1], row['nick_name'], row['rsvp_code'])
