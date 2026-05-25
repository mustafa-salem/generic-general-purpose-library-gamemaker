function MotionPlanningGrid() {

}

function gamemaker_motionplanninggrid_create(parameters = {}) {
    mp_grid_create(left, top, hcells, vcells, cellwidth, cellheight)
    return _return
}

function gamemaker_motionplanninggrid_destroy(parameters = {}) {
    mp_grid_destroy(id)
    return _return
}

gamemaker_motionplanninggrid_draw

mp_grid_draw(id)