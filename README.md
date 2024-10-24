# BMI Calculator App

## Description
This is a BMI (Body Mass Index) Calculator app designed to help users determine their BMI based on their weight and height. The app provides a simple and intuitive interface for users to input their weight and height, and it calculates and displays the BMI along with a health advice message.

## Features
- **Splash Screen**: Displays a loading screen with a BMI logo.
- **BMI Calculator Screen**: Allows users to enter their weight (in kg) and height (in feet) to calculate their BMI.
- **BMI Result Screen**: Shows the calculated BMI value, the corresponding weight category, and health advice.

## Screenshots
### Splash Screen
- Displays a BMI logo with a loading indicator.

### BMI Calculator Screen
- Input fields for weight and height.
- Submit button to calculate BMI.

### BMI Result Screen
- Displays the calculated BMI value.
- Shows the weight category (e.g., Normal weight).
- Provides health advice based on the BMI result.

  ![BMI Result Screen](https://github.com/user-attachments/assets/0c564205-3d04-4f21-ad92-5e76d23d95ad)


## Installation
Clone the repository and install the dependencies:
```bash
git clone https://github.com/samwaseee/bmi-calculator-with-flutter
cd your-repository
flutter pub get
```
## Usage
Run the application using:
```bash
flutter run
```
## Code Overview
- **HomePage Widget**: The main widget of the app, defined in a Stateless Widget.
- **Sections**: An array of maps that hold image URLs and labels for each section.
- **FlexibleSpaceBar**: Customizes the app bar with a title and background color.
- **SliverAppBar**: Expands and collapses with the scroll.
- **GridView.builder**: Creates a responsive grid layout for the sections.
- **Image.network**: Displays images from URLs with hover zoom effects.

## How It Works
### HomePage Widget:
- Defines a list of sections, each containing an image URL and a label.
- Uses a `Stack` layout to layer the `CustomScrollView` and `GridView`.

### SliverAppBar:
- Configured to expand with a flexible space displaying the title "ONLINE SOFT SELL" and a subtitle.
- Background color is set to green.

### GridView.builder:
- Positioned just below the SliverAppBar.
- Uses cards and images with hover effects for each section.

## Health Advice Categories
- **Underweight**: BMI less than 18.5
- **Normal weight**: BMI between 18.5 and 24.9
- **Overweight**: BMI between 25 and 29.9
- **Obesity**: BMI 30 or greater

## Cloning the Repository
To clone the repository, run:
```bash
git clone https://github.com/samwaseee/bmi-calculator-with-flutter
```
## Contributing
Contributions are welcome! Follow these steps to contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a pull request.



