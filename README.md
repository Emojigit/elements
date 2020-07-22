This mod added a lot of elements to be some mod's basic materieals.

### elements.register_element
The easiest way to register elements
 - id: The element's number (e.g. 1)
 - name: The element's name (e.g. Hydrogen)
 - metal (boolen): If true the element is a metal (That will make the element have it's ore, lump, ingot and metal block)
 - radio (boolen): If true the element is radioactive (If the element is not metal the inv image will have a radioactive logo)

### elements.register_non_metal & elements.register_metal
Will call with the `elements.register_element` function.