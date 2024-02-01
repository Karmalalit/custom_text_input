# custom_text_input

`TextInputBox` Flutter widget enter text functionality.

## Features

 - InputFormatters
 - Width and height  
 - max length of character 
 - max number of lines
 - style

## Getting started

To use this package, enter text as a dependency in your pubspec.yaml file.

## Usage

Minimal example:

```dart
    CustomTextInput(
        controller: nameController,
        hint: "Enter Name"
    )
```

Custom settings:

```dart
     CustomTextInput(
         controller: nameController,
         maxlenth: 200,
         maxLine: 1,
         textsize: 15,
         textInputAction: TextInputAction.done,
         textInputType: TextInputType.text,
         width: MediaQuery.of(context).size.width,
         height: 100,
         icons: Icons.account_box_sharp,
         hint: "Enter Name")
```


