import os
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, OpaqueFunction, IncludeLaunchDescription
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
from launch_ros.substitutions import FindPackageShare
from launch.launch_description_sources import PythonLaunchDescriptionSource

def generate_launch_description():
    declared_arguments = [
        DeclareLaunchArgument(
            "world",
            default_value=os.path.join(
                FindPackageShare('gazebo_ros').find('gazebo_ros'), 'worlds', 'empty.world'
            ),
            description="Gazebo world file",
        ),
        DeclareLaunchArgument(
            "robot_description_file",
            default_value=os.path.join(
                FindPackageShare('new_full_arm').find('new_full_arm'), 'urdf', 'your_robot.urdf'
            ),
            description="Path to the robot URDF file",
        )
    ]

    return LaunchDescription(
        declared_arguments + [OpaqueFunction(function=launch_setup)]
    )

def launch_setup(context, *args, **kwargs):
    # Gazebo launch
    gazebo_launch = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([
            os.path.join(
                FindPackageShare('gazebo_ros').find('gazebo_ros'), 'launch', 'gazebo.launch.py'
            )
        ]),
        launch_arguments={'world': LaunchConfiguration('world')}.items(),
    )

    # Spawn robot in Gazebo
    spawn_robot = Node(
        package='gazebo_ros',
        executable='spawn_entity.py',
        arguments=[
            '-file', LaunchConfiguration('robot_description_file'),
            '-entity', 'robot'
        ],
        output='screen'
    )

    return [
        gazebo_launch,
        spawn_robot,
    ]

