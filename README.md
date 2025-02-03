<style>
    img{
        border-radius:50px;
        
        height:280px;
    }
    #proj-images{
        display:flex;
        justify-content:center;
        gap:25px;
    }
    .long-img{
        border-radius:50px;
        width:900px;
        height:280px;
    }
    figcaption{
        text-align:center;
        color:white;
        font-weight:bold;
    }
</style>
# CS_491_Comp_Fabrication
 This repository is a showcase of projects completed in a computational fabrication course.
 

## Project 1: L-Systems

The project was to create plantlike structures by feeding sets of rules, in the form of 
letters that are given meaning through the program written. I created 3 different 
structures from plants I found in New Mexico. The systems are created in Processing 
using Java and a custom Turtle library. Every time the program is run the system created 
will be slightly different due to some randomization in the code. Below are examples of 
plant inspiration and the resulting L-System. Code or grasshopper files and Higher 
resolution images are in the files.

### Desert Bird of Paradise:
<div id="proj-images">
    <figure>
        <img src="L-Systems/Project1 Pictures/14642.jpg" alt="Bird of Paradise">
        <figcaption>Actual plant</figcaption>
    </figure>
    <figure>
    <img src="L-Systems/Project1 Pictures/plant2.08825.png" alt="L-System">
    <figcaption>L-System</figcaption>
    </figure>
</div>

### Broom Snakeweed:

<div id=proj-images>
    <figure>
    <img src="L-Systems/Project1 Pictures/14638.jpg" alt="Bird of Paradise">
    <figcaption>Part of the bush</figcaption>
    </figure>
    <figure>
    <img src="L-Systems/Project1 Pictures/Plant5.97715.png" alt="L-System">
    <figcaption>L-System</figcaption>
    </figure>
</div>

### Tree:

<div id=proj-images>
    <figure>
    <img src="L-Systems/Project1 Pictures/14646.jpg" alt="Bird of Paradise">
    <figcaption>Tree souce image</figcaption>
    </figure>
    <figure>
    <img src="L-Systems/Project1 Pictures/Plant95.156715.png" alt="L-System">
    <figcaption>L-System</figcaption>
    </figure>
</div>

## Parametric Vessels

The second project was creating a program to create vase like objects with variable 
attribues such as number of layers of polygons, number of sides on each layer and the 
angle of each layer etc. The program was created in grasshopper Rhino using python code.

<div id="proj-images">
    <figure>
        <img src ="Parametric_Vessels/cogVessel.png">
        <figcaption>Rhino Preview Cog</figcaption>
    </figure>
    <figure>
        <img src="Parametric_Vessels/20230925_095506.jpg">
        <figcaption>Vessel Printing</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img src ="Parametric_Vessels/20230925_234104.jpg">
        <figcaption>Star Vessel</figcaption>
    </figure>
    <figure>
        <img src="Parametric_Vessels/20230925_234147.jpg">
        <figcaption>Cog Vessel</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img src ="Parametric_Vessels/GooseNeck.png">
        <figcaption>Rhino Goose Neck Preview</figcaption>
    </figure>
    <figure>
        <img src="Parametric_Vessels/20230925_234156.jpg">
        <figcaption>Goose Neck Vessel</figcaption>
    </figure>
</div>

## Data Physicalization

This project was to take sets of data and use it to create physical objects. The first 
was visualization of Northern Flicker sightings from Audobon's christmas bird count. 
I think this data is a bit skewed by more people reporting data in more recent years 
leading to misleading visuals. The second data set I wanted to visualize a piece of music,
I chose Bach's violin partita no.3. I was able to find a MIDI file of the piece and wrote a python script for reading the midi file and getting the average value(0-127) of groups of 4 notes. I selected 100 data points from these averages and created a vessel. The final object was a topography of a mountain range in Santa Fe, New Mexico. I found a bitmap of the area and used the brightness of the pixels to create the height for certain points on the object.

<div id="proj-images">
    <figure>
        <img src="Data_Physicalization/FlickerDataVessel.jpg">
        <figcaption>Flicker Data Vessel</figcaption>
    </figure>
    <figure>
        <img src="Data_Physicalization/BachPartitaVessel.jpg">
        <figcaption>Bach partita Vessel</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img src="Data_Physicalization/Screenshot 2023-10-08 224130.png">
        <figcaption>Rhino Preview of Topography</figcaption>
    </figure>
    <figure>
        <img src="Data_Physicalization/SantaFeSkiArea.jpg">
        <figcaption>Santa Fe Ski Area Topography</figcaption>
    </figure>
</div>

## Tiling

This project was to delve in to tiling of a plane and of objects. I created a hexagonal 
tiling in grasshopper also created 3D game piece like objects that also create a tiling. 
The hexagonal tilings can be modified using a line created in Rhino to make more interesing
"escher" like tilings.

<div id="proj-images">
    <figure>
        <img src="Tiling/hexagon tiling.png">
        <figcaption>Hexagonal Tiling of a Plane</figcaption>
    </figure>
    <figure>
        <img src="Tiling/Escher hexagon tiling.png">
        <figcaption>Escher Like Tiling of a Plane</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img src="Tiling/surfaceMorph2.png">
        <figcaption>Tiling a Surface</figcaption>
    </figure>
    <figure>
        <img src="Tiling/first tile.png">
        <figcaption>Rhino Preview of 3d Tile</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img src="Tiling/3DTiles.jpg">
        <figcaption>3D Hexagonal Tiles</figcaption>
    </figure>
</div>

## Variable Ukulele 

The final project was one of our own choosing, implementing one or more of the techniques
we learned throughout the course. I chose to create an instrument with an adjustable body
shape. I used the tiling technique in the creation of the instrument body creating a line
in Rhino and using that to make a "tile" of the sides of the body leading to some 
interesting looking instruments. Some 3-D modeling came into play for the neck of the
ukulele. The instrument was playable but a better gluing method was needed as the neck 
broke off due to the stress of the strings after a while.

<div id="proj-images">
    <figure>
        <img src="Ukulele/ProjectUpdate/another body shape.png">
        <figcaption>Jaged body shape Rhino preview</figcaption>
    </figure>
    <figure>
        <img src="Ukulele/ProjectUpdate/Body photos/Rhino_body.png">
        <figcaption>Spiky wavy body Rhino preveiew</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img src="Ukulele/ProjectUpdate/Body photos/Body and neck.jpg">
        <figcaption>Printed body</figcaption>
    </figure>
    <figure>
        <img src="Ukulele/ProjectUpdate/Body photos/20231203_091749.jpg">
        <figcaption>another printed body</figcaption>
    </figure>
</div>
<div id="proj-images">
    <figure>
        <img class="long-img" src="Ukulele/ProjectUpdate/Body photos/20231206_205426.jpg">
        <figcaption>Printed body</figcaption>
    </figure>
</div>