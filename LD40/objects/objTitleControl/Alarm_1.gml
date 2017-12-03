/// @description Move view
// You can write your code in this editor

var oldX = camera_get_view_x(camera);
var oldY = camera_get_view_y(camera);
var newX = oldX + dir * viewSpeed;


camera_set_view_pos(camera, newX, oldY);


//view_set_xport(view_current, oldX + dir * viewSpeed);

if (dir == -1) {
  if (newX == 0) {
    movingView = false;
  } else {
    alarm[1] = 1; 
  }
} else {
  if (newX == 800) {
    movingView = false;
  } else {
    alarm[1] = 1; 
  }
}