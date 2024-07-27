#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from moveit_msgs.srv import GetPositionIK
from moveit_msgs.msg import RobotState
from geometry_msgs.msg import PoseStamped

class RobotStateClient(Node):
    def __init__(self):
        super().__init__('robot_state_client')

        # Initialize the client for the GetPositionIK service
        self.ik_client = self.create_client(GetPositionIK, 'compute_ik')
        while not self.ik_client.wait_for_service(timeout_sec=1.0):
            self.get_logger().info('IK service not available, waiting again...')

    def get_current_pose(self, pose_stamped):
        request = GetPositionIK.Request()
        request.ik_request.group_name = "arm"  # Your move group name
        request.ik_request.pose_stamped = pose_stamped
        future = self.ik_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)
        if future.result() is None:
            self.get_logger().error('Failed to call IK service')
            return None
        return future.result().solution

def main(args=None):
    rclpy.init(args=args)
    node = RobotStateClient()

    # Define the pose for testing
    pose_stamped = PoseStamped()
    pose_stamped.header.frame_id = "base_link"
    pose_stamped.pose.position.x = 0.4
    pose_stamped.pose.position.y = 0.1
    pose_stamped.pose.position.z = 0.4
    pose_stamped.pose.orientation.w = 1.0

    # Get the current pose
    pose_solution = node.get_current_pose(pose_stamped)
    if pose_solution:
        print("Pose Solution:", pose_solution)
    else:
        print("No pose solution found.")

    rclpy.shutdown()

if __name__ == '__main__':
    main()

