# eagle-eye
EngHacks 2018 Project

The objective of the entire project was to create an Arduino powered spy box that could be discretely placed and record audio and video for analyis. The code I worked on focused on the audio aspect and consists of a script that parses for the most recent audio file submitted by the Arduino. This file is fed into a Speech-To-Text public API which subsequently feeds the .txt file into a Machine Learning AI which analyzes the content and determines the most likely political orientation of the conversation. 
