# proyect_template

created for used in all project for speedcoding.


¿That use the proyecto?
- It uses a layered architecture based on Clean Architecture. These layers are: Presentation, Domain and Data. In the `core` folder you will find these 3 layers, as well as other functionalities such as the application theme, utilities, resources, constants, among others. Everything in `core` is shared by the entire app. The various features of the application are found in `features`. Each of these modules contains its own `presentation`,` domain` and `data` layers. The functionalities within each `feature` are ** NOT ** shared with other modules. In the `di` folder you will find the configuration for dependency injection. This is not modified manually, but example [injectable] is used, code generator for example [get_it]
