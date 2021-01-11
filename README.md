# randomNodeConnection
The basic idea of randomNodeConnection is that there is a group of nodes each at random x and y locations and each node is randomly connected to another node. This is represented visually by there being a line between every connection between nodes. This network appears to shutter because every frame x and y coordinates are changed slightly by a random magnitude either positively or negatively in both the x and y direction. However the x and y position for each node will trend a certain direction over time due to a bias which is applied on top of the random change. For each node here is also a small chance) each frame that the node that it  is connected to will be reassigned to a random new node. In order for visuals to be more colorful each line has a random color which is changing over time. 

![](randomNodeConnectionGif.gif);



