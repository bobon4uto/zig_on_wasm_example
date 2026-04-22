
pub const Draw = struct {
    extern fn set_color(r: i32, g: i32,b: i32,a: f32) void;
    extern fn draw_rectangle(x: i32, y: i32,x_: i32,y_: f32) void;
};

export fn _start() void {
    Draw.set_color(255,100,100,0.5);
    Draw.draw_rectangle(100, 100, 200, 200);
}

export fn add(a: i32, b: i32) i32 {
    return a+b;
}
