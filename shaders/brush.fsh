uniform sampler2D texture;
uniform lowp float qt_Opacity;
uniform lowp vec4 color;

varying highp vec2 vTexCoord;

void main()
{
    lowp vec4 shade = texture2D(texture, vTexCoord) ;
    lowp vec4 c = vec4(color.xyz + shade.xyz, color.w);
    gl_FragColor = c * qt_Opacity;
}
