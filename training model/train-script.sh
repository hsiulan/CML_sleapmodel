#!/bin/bash
sleap-nn-train --config-name centroid.yaml --config-dir . trainer_config.ckpt_dir=models trainer_config.run_name=centroid_260331_091629 trainer_config.zmq.controller_port=9000 trainer_config.zmq.publish_port=9001 
sleap-nn-train --config-name centered_instance.yaml --config-dir . trainer_config.ckpt_dir=models trainer_config.run_name=centered_instance_260331_091629 trainer_config.zmq.controller_port=9000 trainer_config.zmq.publish_port=9001 
