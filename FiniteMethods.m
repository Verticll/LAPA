nx = 100;
ny = 100;
ni = 100000;
V = zeros(nx,ny);

SidesToZero = 1;
for k = 1:ni
    for i = 1:nx
        for j = 1:ny...
        
        if (i == 1)%top
        V(i,j) = 0;
        elseif (i == nx)%bottom
        V(i,j) = 0;
        elseif (j == 1)%left
        V(i,j) = 1;
        elseif (j == ny)%right
        V(i,j) = 1;
        else
        V(i,j) = (V(i+1,j)+V(i-1,j)+V(i,j+1)+V(i,j-1))/4;
        end

        if mod(k,50) == 0
            surf(V')
            pause(0.05)
        end
        end
    end
end

figure
quiver(-Ey',-Ex',1)

