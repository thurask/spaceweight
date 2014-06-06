/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

Page {
    attachedObjects: [
        ComponentDefinition {
            id: helpSheetDefinition
            HelpSheet {
            
            }
        }
    ]
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {
            onTriggered: {
                var help = helpSheetDefinition.createObject()
                help.open();
            }
        }
    }
    titleBar: TitleBar {
        title: "SpaceWeight"

    }
    Container {
        DropDown {
            id: const_picker
            title: "Choose an astronomical body"
            Option {
                value: "Sun"
                text: "The Sun"
            }
            Option {
                value: "Mercury"
                text: value
            }
            Option {
                value: "Venus"
                text: value
            }
            Option {
                value: "Moon"
                text: "The Moon"
            }
            Option {
                value: "Mars"
                text: value
            }
            Option {
                value: "Phobos"
                text: value
            }
            Option {
                value: "Deimos"
                text: value
            }
            Option {
                value: "Jupiter"
                text: value    
            }
            Option {
                value: "Io"
                text: value    
            }
            Option {
                value: "Europa"
                text: value    
            }
            Option {
                value: "Ganymede"
                text: value    
            }
            Option {
                value: "Callisto"
                text: value    
            }
            Option {
                value: "Saturn"
                text: value
            }
            Option {
                value: "Titan"
                text: value    
            }
            Option {
                value: "Uranus"
                text: value
            }
            Option {
                value: "Titania"
                text: value
            }
            Option {
                value: "Oberon"
                text: value
            }
            Option {
                value: "Neptune"
                text: value        
            }
            Option {
                value: "Triton"
                text: value
            }
            Option {
                value: "Pluto"
                text: value
            }
            Option {
                value: "Charon"
                text: value
            }
            onSelectedOptionChanged: {
                if (const_picker.selectedValue == "Sun") {
                    output_weight.text = "Your weight on the Sun is: kg"
                    }
                    if (const_picker.selectedValue == "Mercury") {
                        output_weight.text = "Your weight on Mercury is: kg"
                    }
                    if (const_picker.selectedValue == "Venus") {
                        output_weight.text = "Your weight on Venus is: kg"
                    }
                    if (const_picker.selectedValue == "Moon") {
                        output_weight.text = "Your weight on the Earth's moon is: kg"
                    }
                    if (const_picker.selectedValue == "Mars") {
                        output_weight.text = "Your weight on Mars is: kg"
                    }
                    if (const_picker.selectedValue == "Phobos") {
                        output_weight.text = "Your weight on Mars' moon Phobos is: kg"
                    }
                    if (const_picker.selectedValue == "Deimos") {
                        output_weight.text = "Your weight on Mars' moon Deimos is: kg"
                    }
                    if (const_picker.selectedValue == "Jupiter") {
                        output_weight.text = "Your weight on Jupiter is: kg"
                    }
                    if (const_picker.selectedValue == "Io") {
                        output_weight.text = "Your weight on Jupiter's moon Io is: kg"
                    }
                    if (const_picker.selectedValue == "Europa") {
                        output_weight.text = "Your weight on Jupiter's moon Europa is: kg"
                    }
                    if (const_picker.selectedValue == "Ganymede") {
                        output_weight.text = "Your weight on Jupiter's moon Ganymede is: kg"
                    }
                    if (const_picker.selectedValue == "Callisto") {
                        output_weight.text = "Your weight on Jupiter's moon Callisto is: kg"
                    }
                    if (const_picker.selectedValue == "Saturn") {
                        output_weight.text = "Your weight on Saturn is: kg"
                    }
                    if (const_picker.selectedValue == "Titan") {
                        output_weight.text = "Your weight on Saturn's moon Titan is: kg"
                    }
                    if (const_picker.selectedValue == "Uranus") {
                        output_weight.text = "Your weight on Uranus is: kg"
                    }
                    if (const_picker.selectedValue == "Titania") {
                        output_weight.text = "Your weight on Uranus' moon Titania is: kg"
                    }
                    if (const_picker.selectedValue == "Oberon") {
                        output_weight.text = "Your weight on Uranus' moon Oberon is: kg"
                    }
                    if (const_picker.selectedValue == "Neptune") {
                        output_weight.text = "Your weight on Neptune is: kg"
                    }
                    if (const_picker.selectedValue == "Triton") {
                        output_weight.text = "Your weight on Neptune's moon Triton is: kg"
                    }
                    if (const_picker.selectedValue == "Pluto") {
                        output_weight.text = "Your weight on Pluto is: kg"
                    }
                    if (const_picker.selectedValue == "Charon") {
                        output_weight.text = "Your weight on Pluto's moon Charon is: kg"
                    }
                }
            }
        Label {
            text: "Input your weight on Earth (kg):"
        }
        Container {
            id: container_weight
            property double weight_earth
            property double weight_sun
            property double weight_mercury
            property double weight_venus
            property double weight_moon
            property double weight_mars
            property double weight_phobos
            property double weight_deimos
            property double weight_jupiter
            property double weight_io
            property double weight_europa
            property double weight_ganymede
            property double weight_callisto
            property double weight_saturn
            property double weight_titan
            property double weight_uranus
            property double weight_titania
            property double weight_oberon
            property double weight_neptune
            property double weight_triton
            property double weight_pluto
            property double weight_charon
        }
        TextField {
            id: earthweight
            hintText: "Earth weight"
            onTextChanged: {
                container_weight.weight_earth = earthweight.text
            }
            inputMode: TextFieldInputMode.NumbersAndPunctuation
        }
        Button {
            id: calculate
            horizontalAlignment: HorizontalAlignment.Center
            text: "Calculate!"
            onClicked: {
                if (const_picker.selectedValue == "Sun") {
                    container_weight.weight_sun = 27.90*container_weight.weight_earth
                    output_weight.text = "Your weight on the Sun is: " + container_weight.weight_sun.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Mercury") {
                    container_weight.weight_mercury = 0.3770*container_weight.weight_earth
                    output_weight.text = "Your weight on Mercury is: " + container_weight.weight_mercury.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Venus") {
                    container_weight.weight_venus = 0.9032*container_weight.weight_earth
                    output_weight.text = "Your weight on Venus is: " + container_weight.weight_venus.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Moon") {
                    container_weight.weight_moon = 0.1655*container_weight.weight_earth
                    output_weight.text = "Your weight on the Earth's moon is: " + container_weight.weight_moon.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Mars") {
                    container_weight.weight_mars = 0.3895*container_weight.weight_earth
                    output_weight.text = "Your weight on Mars is: " + container_weight.weight_mars.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Phobos") {
                    container_weight.weight_phobos = 0.0057*container_weight.weight_earth
                    output_weight.text = "Your weight on Mars' moon Phobos is: " + container_weight.weight_phobos.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Deimos") {
                    container_weight.weight_deimos = 0.0030*container_weight.weight_earth
                    output_weight.text = "Your weight on Mars' moon Deimos is: " + container_weight.weight_deimos.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Jupiter") {
                    container_weight.weight_jupiter = 2.640*container_weight.weight_earth
                    output_weight.text = "Your weight on Jupiter is: " + container_weight.weight_jupiter.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Io") {
                    container_weight.weight_io = 0.182*container_weight.weight_earth
                    output_weight.text = "Your weight on Jupiter's moon Io is: " + container_weight.weight_io.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Europa") {
                    container_weight.weight_europa = 0.134*container_weight.weight_earth
                    output_weight.text = "Your weight on Jupiter's moon Europa is: " + container_weight.weight_europa.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Ganymede") {
                    container_weight.weight_ganymede = 0.145*container_weight.weight_earth
                    output_weight.text = "Your weight on Jupiter's moon Ganymede is: " + container_weight.weight_ganymede.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Callisto") {
                    container_weight.weight_callisto = 0.126*container_weight.weight_earth
                    output_weight.text = "Your weight on Jupiter's moon Callisto is: " + container_weight.weight_callisto.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Saturn") {
                    container_weight.weight_saturn = 1.065*container_weight.weight_earth
                    output_weight.text = "Your weight on Saturn is: " + container_weight.weight_saturn.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Titan") {
                    container_weight.weight_titan = 0.14*container_weight.weight_earth
                    output_weight.text = "Your weight on Saturn's moon Titan is: " + container_weight.weight_titan.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Uranus") {
                    container_weight.weight_uranus = 0.9170*container_weight.weight_earth
                    output_weight.text = "Your weight on Uranus is: " + container_weight.weight_uranus.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Titania") {
                    container_weight.weight_titania = 0.039*container_weight.weight_earth
                    output_weight.text = "Your weight on Uranus' moon Titania is: " + container_weight.weight_titania.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Oberon") {
                    container_weight.weight_oberon = 0.035*container_weight.weight_earth
                    output_weight.text = "Your weight on Uranus' moon Oberon is: " + container_weight.weight_oberon.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Neptune") {
                    container_weight.weight_neptune = 1.148*container_weight.weight_earth
                    output_weight.text = "Your weight on Neptune is: " + container_weight.weight_neptune.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Triton") {
                    container_weight.weight_triton = 0.079*container_weight.weight_earth
                    output_weight.text = "Your weight on Neptune's moon Triton is: " + container_weight.weight_triton.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Pluto") {
                    container_weight.weight_pluto = 0.0621*container_weight.weight_earth
                    output_weight.text = "Your weight on Pluto is: " + container_weight.weight_pluto.toFixed(3) + " kg"
                }
                if (const_picker.selectedValue == "Charon") {
                    container_weight.weight_charon = 0.0283*container_weight.weight_earth
                    output_weight.text = "Your weight on Pluto's moon Charon is: " + container_weight.weight_charon.toFixed(3) + " kg"
                }             
                }
        }
        Label {
            id:output_weight
            multiline: true
            text: "Choose an astronomical body"
        }
    }
}
