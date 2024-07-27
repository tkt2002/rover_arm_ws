#!/usr/bin/env python3

import os
import sys
import rclpy
import numpy as np
from geometry_msgs.msg import PoseStamped, Pose
from moveit.planning import MoveItPy
from moveit.core.robot_state import RobotState
from moveit_configs_utils import MoveItConfigsBuilder
from ament_index_python.packages import get_package_share_directory

# Initialize rclpy
rclpy.init()

# Create ROS 2 node
node = rclpy.create_node('moveit_py_example')

# Load MoveIt! configuration
moveit_config = (
    MoveItConfigsBuilder("new_full_arm", package_name="final_config")
    .robot_description(file_path="config/new_full_arm.urdf.xacro")
    .robot_description_semantic(file_path="config/new_full_arm.srdf")  # Added semantic description
    .trajectory_execution(file_path="config/moveit_controllers.yaml")
    .planning_scene_monitor(
        publish_robot_description=True, 
        publish_robot_description_semantic=True
    )
    .planning_pipelines(
        pipelines=["ompl", "chomp", "pilz_industrial_motion_planner"]
    )
    .to_moveit_configs()
).to_dict()

# Instantiate MoveItPy with the node
new_arm = MoveItPy(node, moveit_config)

# Get the planning component for the arm
arm = new_arm.get_planning_component("arm")

def plan_and_execute(
        robot,
        planning_component,
        single_plan_parameters=None,
        multi_plan_parameters=None,
):
    """A helper function to plan and execute a motion."""
    # Plan to goal
    if multi_plan_parameters is not None:
        plan_result = planning_component.plan(
            multi_plan_parameters=multi_plan_parameters
        )
    elif single_plan_parameters is not None:
        plan_result = planning_component.plan(
            single_plan_parameters=single_plan_parameters
        )
    else:
        plan_result = planning_component.plan()

    # Execute the plan
    if plan_result:
        robot_trajectory = plan_result.trajectory
        success = robot.execute(robot_trajectory, controllers=[])
        if success:
            print("Execution succeeded")
        else:
            print("Execution failed")
    else:
        print("Planning failed")

try:
    while True:
        # Set plan start state using predefined state
        arm.set_start_state("home")

        # Set pose goal using predefined state
        arm.set_goal_state(configuration_name="high")

        # Plan to goal
        plan_and_execute(new_arm, arm)

        # Set plan start state using predefined state
        arm.set_start_state("high")

        # Set pose goal using predefined state
        arm.set_goal_state(configuration_name="home")

        # Plan to goal
        plan_and_execute(new_arm, arm)

except KeyboardInterrupt:
    print("Interrupted by user")

finally:
    # Shutdown ROS 2
    rclpy.shutdown()

