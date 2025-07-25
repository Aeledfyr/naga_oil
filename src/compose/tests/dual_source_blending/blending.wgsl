enable dual_source_blending;

struct FragmentOutput {
    @location(0) @blend_src(0) source0_: vec4<f32>,
    @location(0) @blend_src(1) source1_: vec4<f32>,
}

@fragment
fn fragment(
    @builtin(position) frag_coord: vec4<f32>,
) -> FragmentOutput {
    return FragmentOutput(frag_coord, frag_coord);
}
