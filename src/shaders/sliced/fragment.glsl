
uniform float uSlicedStart;
uniform float uSlicedArc;

varying vec3 vPosition;

void main(){

    float angle = atan(vPosition.y, vPosition.x); 
    angle -= uSlicedStart;
    angle = mod(angle, PI2);
    
    if(angle > 0.0 && angle < uSlicedArc){
        discard;
    }

    // csm_FragColor = vec4(vec3(angle), 1.0);
}