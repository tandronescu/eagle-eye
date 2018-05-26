
#with open('textfile.txt', 'r') as myfile:
 #   data = myfile.read().replace('\n', '')
#print(data)
import os
import indicoio

# reads from the file which contains the audio to speech content
__location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))
file_contents = open(os.path.join(__location__, "textfile.txt"))
text = file_contents.read()

# next, feed it into the ML API
indicoio.config.api_key = 'd08fbca96c4341957f0a8a0b21d08b5d'
print("Political Allegiance: ")
print(indicoio.political(text))
print("\n")
print("Key Words: ")
print(indicoio.keywords(text, version=2))
print("\n")
print("Important Persons: ")
print(indicoio.people(text))
print("\n")
print("Significant Locations: ")
print(indicoio.places(text))
print("\n")
print("Relevant Organizations: ")
print(indicoio.organizations(text))


