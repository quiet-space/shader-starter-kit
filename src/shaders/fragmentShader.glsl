precision highp float;

uniform vec2 u_resolution; // 현재 해상도
uniform float u_time;

uniform sampler2D channel0;
uniform sampler2D channel1;

void main() {
  // gl_FragCoord.xy = 현재 픽셀의 좌표 (0~512)
  vec2 uv = gl_FragCoord.xy / u_resolution;
  // uv = 0~1 소수점

    float dist = step(0.5, uv.x);
  // step ? dist가 0.5보다 작을때는 0.0 클때는 1을 반환하게 되어서 선명한 원이 됩니다.
  // dist = step(0.5, dist);

 // vec 3 = RGB,
 // vec 4 = vec3 + Alpha (Opacity)
  gl_FragColor = vec4(vec3(dist), 1.0);
}
