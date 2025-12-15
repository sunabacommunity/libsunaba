package sunaba.spatial.mesh;

import sunaba.core.native.NativeReference;

class QuadMesh extends PlaneMesh {
    public override function onInit() {
        res = new Resource(new NativeReference("QuadMesh"));
        superInit();
    }
}