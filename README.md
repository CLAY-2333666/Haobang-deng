# haobang-deng
[Project1](#project-1-brief-description) | [Project2](#project-2-brief-description)
# Project 1 brief description
https://drive.google.com/file/d/1CkcU6-fWl0r-VpmLVHGrSgvhqaL_t-rY/view?usp=sharing
## How it work
- click mouse to generate lion for feeding Du 
- Two du have randomly different behavior like random stop for a rest, diversion.
- Du will not eat lion unless the lion is in his sighting.
## The function not covered in the class
- I think ```popMatrix()```(line31-33) and the array of class had not been covered at that time.(line2-4)
- the use of ```frameCount``` to run the certain function every certain time. (line 17)
# Project 2 brief description
https://drive.google.com/file/d/1SAzD3Pi66fg0tpUsOUku6YDhdxAQm2q9/view?usp=sharing
## How it work
- click mouse to jump
- gameover pop up if hit the vine
- double click to activate the supermode when the energy is ready
## The function not covered in the class
- ```tint()``` to control the opcity(line10 in l class)
- the use of ```get()``` function to implemtn of the charge of energy bar. (line 17)
# Project 3 brief description

## Origin image:

![This is an image](https://github.com/CLAY-2333666/Haobang-deng/blob/main/PROJECT_3/data/4b1cb1e6a92501df96fce722ecbb8138--landscape-oil-paintings-landscape-art.jpg)
## How it work
- Turn the phote to the sketching initially[^1][^4].
  <details>
  
  1. Convert the color image to grayscale.
  2. Invert the grayscale image to get a negative.
  3. Apply a Gaussian blur to the negative from step 2.
  4. Blend the grayscale image from step 1 with the blurred negative from step 3 using a color dodge.
  
  </details>
- Move the mouse to change the area inside the circle into square combination.
- Press left mouse button to change the square area inside according to the laplacian matrix.[^2] [^3] 
- Scroll the mouse wheel to adjust the affected range
- right click to reset to the sketching
## The function not covered in the class
- ```mouseWheel()``` (line25)
- ```constrain()```  (line 4-6)
# Project 4 brief description
## How it work
- Click the piano to play
- autoplay the piano according to the array converted from midi.https://github.com/ScroogeD2/owmidiconverter[^5]
- Click space to active the autoplay
- click l to chage mode between Simulated piano sounds and real piano sounds.
## The function not covered in the class
- ```IntDict``` Control piano key trigger (line 111)
- ```rewind()``` to rewind the audio (line25)
### **Reference**
[^1]: https://subscription.packtpub.com/book/application-development/9781785282690/1/ch01lvl1sec10/creating-a-black-and-white-pencil-sketch
[^2]: https://en.wikipedia.org/wiki/Discrete_Laplace_operator
[^3]: https://processing.org/examples/convolution.html
[^4]: https://dyclassroom.com/image-processing-project/how-to-convert-a-color-image-into-negative
[^5]: https://github.com/ScroogeD2/owmidiconverter
