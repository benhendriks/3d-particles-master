//atttribute vec3 position; 

varying vec3 vPosition;

uniform float uTime;

void main() {
  vPosition = position;

  vec3 pos = position;
  pos.x += sin(uTime );

  vec4 mvPosition = modelViewMatrix * vec4( pos, 1.0 );
  gl_Position = projectionMatrix * mvPosition;
  gl_PointSize = 8.0 / -mvPosition.z;
}