#222222222222
rosservice call turtle1/teleport_absolute 1 8 1.57
rosservice call clear
rosservice call kill /turtle2
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call turtle1/teleport_absolute 1 6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.3, 0.0, 0.0]' '[0.0, 0.0, 0]'
rosservice call kill /turtle1

#4444444444
rosservice call spawn 3 8.5 0 /turtle2
rosservice call turtle2/teleport_absolute 3 7 0
rosservice call turtle2/teleport_absolute 4 7 0
rosservice call turtle2/teleport_absolute 4 8.5 0
rosservice call turtle2/teleport_absolute 4 6 0
rosservice call kill /turtle2

#4444444444
rosservice call spawn 4.5 8.5 0 /turtle2
rosservice call turtle2/teleport_absolute 4.5 7 0
rosservice call turtle2/teleport_absolute 5.5 7 0
rosservice call turtle2/teleport_absolute 5.5 8.5 0
rosservice call turtle2/teleport_absolute 5.5 6 0
rosservice call kill /turtle2

#777777777777777
rosservice call spawn 6 8.5 0 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1, 0.0, 0.0]' '[0.0, 0.0, 0]'
rosservice call turtle2/teleport_absolute 6 6 0
rosservice call kill /turtle2

#222222222222
rosservice call spawn 7.5 8 1.57 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call turtle2/teleport_absolute 7.5 6 0
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1.3, 0.0, 0.0]' '[0.0, 0.0, 0]'
rosservice call kill /turtle2

#222222222222
rosservice call spawn 9 8 1.57 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call turtle2/teleport_absolute 9 6 0
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1.3, 0.0, 0.0]' '[0.0, 0.0, 0]'
rosservice call kill /turtle2

