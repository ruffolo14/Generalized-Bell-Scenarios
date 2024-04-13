import LinearAlgebra
using JuMP
import Mosek
import MosekTools

#Generates the inequalities defining the ND polytope of a ncycle contextuality scenario
function NDMatrixcycle(n)
    A = zeros(n*(2^2), 2*n)
    for i =1:n
        for j = 1:4
            binary = bitstring(j-1)[end-1:end]
            A[4*(i-1) + j, i] = -(-1)^parse(Int64, binary[1])
            A[4*(i-1) + j, i%n+1] = -(-1)^parse(Int64, binary[2])
            A[4*(i-1) + j, n + i] = -((-1)^parse(Int64, binary[1]))*((-1)^parse(Int64, binary[2]))
        end
    end
    return A
end

function NCVertices(n)
    A = ones(2^n, 2*n)
    for i=1:2^n
        binary = bitstring(i-1)[end-n+1:end]
        for j = 1:n
            A[i, j] = (-1)^parse(Int64, binary[j])
        end
        for j = 1:n
            A[i, j+n] = A[i,j]*A[i, (j)%n+1]
        end
    end
    return A
end

function NCFraction(behavior, n)
    nc_vertices = NCVertices(n)
    A = NDMatrixcycle(n)

    model = Model(Mosek.Optimizer)
    set_silent(model)

    @variable(model, b[1:size(nc_vertices)[1]] .>= 0)
    @constraint(model, A*(behavior - (b'*nc_vertices)') .<= 1 - sum(b))

    @objective(model, Max, sum(b))

    optimize!(model)

    return objective_value(model)
end

costheta = sqrt(cos(pi/5)/(1+cos(pi/5)))
sintheta = sqrt(1 - costheta^2)

v = [[costheta, sintheta*cos(4*i*pi/5), sintheta*sin(4*i*pi/5)] for i in 1:5]
B = [(2*v[i]*v[i]' - LinearAlgebra.I(3)) for i in 1:5]

ket_zero = [1,0,0]
rho_zero = ket_zero*ket_zero'
ket_two = [0,0,1]
rho_two = ket_two*ket_two'
state = 0.5*rho_zero + 0.5*rho_two

single_correlators = [LinearAlgebra.tr(B[i]*state) for i in 1:5]
double_correlators = [LinearAlgebra.tr(B[i]*B[i%5+1]*state) for i in 1:5]

behavior = vcat(single_correlators, double_correlators)

NCFraction(behavior, 5)