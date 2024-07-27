import os
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration, Command, PathJoinSubstitution
from launch_ros.actions import Node
from launch_ros.substitutions import FindPackageShare

def generate_launch_description():
    # Declare the launch arguments
    declared_arguments = [
        DeclareLaunchArgument(
            'use_sim_time',
            default_value='true',
            description='Use simulation (Gazebo) clock if true'
        ),
        DeclareLaunchArgument(
            'robot_urdf',
            default_value=PathJoinSubstitution([
                FindPackageShare('new_full_arm'), 'urdf', 'new_full_arm.urdf'
            ]),
            description='Absolute path to robot urdf file'
        ),
    ]

    # Initialize Arguments
    use_sim_time = LaunchConfiguration('use_sim_time')
    robot_urdf = LaunchConfiguration('robot_urdf')

    # Robot State Publisher node
    robot_state_publisher_node = Node(
        package='robot_state_publisher',
        executable='robot_state_publisher',
        name='robot_state_publisher',
        output='screen',
        parameters=[{'use_sim_time': use_sim_time, 'robot_description': Command(['xacro ', robot_urdf])}]
    )

    # Spawn robot in Gazebo
    spawn_robot = Node(
        package='gazebo_ros',
        executable='spawn_entity.py',
        arguments=['-entity', 'my_robot', '-file', robot_urdf],
        output='screen'
    )

    # Gazebo launch file
    gazebo_launch = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([PathJoinSubstitution([
            FindPackageShare('gazebo_ros'), 'launch', 'gazebo.launch.py'
        ])])
    )

    return LaunchDescription(declared_arguments + [
        gazebo_launch,
        robot_state_publisher_node,
        spawn_robot,
    ])


