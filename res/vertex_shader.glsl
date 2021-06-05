#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 inColor;
layout (location = 2) in vec2 aTexture;

uniform mat4 matrix;

out vec2 outTexture;
out vec3 outColor;

void main() {
    gl_Position = matrix * vec4(aPos.x, aPos.y, aPos.z, 1.0);
    outColor = inColor;
    outTexture = aTexture;
}