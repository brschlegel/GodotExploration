shader_type canvas_item;

uniform float intensity = 5.0f;
void fragment() {
	// Place fragment code here.
	float modu = float(int(UV.x * 100.0f) % 100) * float(int(UV.y * 100.0f) % 100) ;
	if(modu == 0.0f){
		modu = 1.0f;
	}
	else
	{
		modu = 0.0f;
	}
	COLOR = vec4(UV.x,UV.y, 0, modu);
}
