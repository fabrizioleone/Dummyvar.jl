using Dummyvar
using Test

@testset "Dummyvar.jl" begin
    @test Dummyvar.dummycreate(collect(1:2)) == [1.0 0.0; 0.0 1.0]
    @test Dummyvar.dummycreate([1.0, 0.0]) == [1.0 0.0; 0.0 1.0]
    @test Dummyvar.dummycreate(['a', 'b']) == [1.0 0.0; 0.0 1.0]
    @test Dummyvar.dummycreate(['a', 4]) == [1.0 0.0; 0.0 1.0]
end
