function hexagon(x,y,radius)
    # create a hexagon given the center coordinate
    node = zeros(7,2);
    elem = zeros(Int,6,3);
    node[1,:] = [x,y];
    node[2,:] = [1.0+x,0.0+y];
    node[3,:] = [0.5+x,sqrt(3)/2+y];
    node[4,:] = [-0.5+x,sqrt(3)/2+y];
    node[5,:] = [-1.0+x,0.0+y];
    node[6,:] = [-0.5+x,-sqrt(3)/2+y];
    node[7,:] = [0.5+x,-sqrt(3)/2+y];
    node[2:7,:] *= radius;
    elem[1,:] = [1,2,3];
    elem[2,:] = [1,3,4];
    elem[3,:] = [1,4,5];
    elem[4,:] = [1,5,6];
    elem[5,:] = [1,6,7];
    elem[6,:] = [1,7,2];
    return node, elem
end
