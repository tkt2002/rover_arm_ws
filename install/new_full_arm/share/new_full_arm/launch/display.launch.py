# File: display_launch.py
import os
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch_ros.actions import Node
from ament_index_python.packages import get_package_share_directory

def generate_launch_description():
    # Get the package share directory
    new_full_arm_share_dir = get_package_share_directory('new_full_arm')

    # Define launch arguments
    model_arg = DeclareLaunchArgument('model', description='Name of the model to load')

    # Define parameters and nodes
    robot_description = Node(
        package='robot_state_publisher',
        executable='robot_state_publisher',
        output='screen',
        parameters=[{'robot_description': open(os.path.join(new_full_arm_share_dir, 'urdf', 'new_full_arm.urdf')).read()}]
    )

    joint_state_publisher_gui = Node(
        package='joint_state_publisher_gui',
        executable='joint_state_publisher_gui',
        output='screen'
    )

    rviz = Node(
        package='rviz2',
        executable='rviz2',
        name='rviz',
        output='screen',
        arguments=['-d', os.path.join(new_full_arm_share_dir, 'urdf', 'urdf.rviz')]
    )

    # Return LaunchDescription
    return LaunchDescription([
        model_arg,
        robot_description,
        joint_state_publisher_gui,
        rviz
    ])

