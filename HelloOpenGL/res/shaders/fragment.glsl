#version 330 core

out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoord;

uniform float mixValue;

uniform sampler2D u_texture1;
uniform sampler2D u_texture2;

void main()
{
    FragColor = mix(texture(u_texture1, TexCoord), texture(u_texture2, TexCoord), mixValue);
};
