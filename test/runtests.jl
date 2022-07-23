using Dummyvar
using Test

@testset "Dummyvar.jl" begin
    @test Dummyvar.dummy_create(collect(1:2)) == [1.0 0.0; 0.0 1.0]
    @test Dummyvar.dummy_create([1.0, 0.0]) == [1.0 0.0; 0.0 1.0]
    @test Dummyvar.dummy_create(['a', 'b']) == [1.0 0.0; 0.0 1.0]
    @test Dummyvar.dummy_create(['a', 4]) == [1.0 0.0; 0.0 1.0]
end
