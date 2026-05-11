# [CML_sleapmodel](https://github.com/hsiulan/CML_sleapmodel)

Keywords: [SLEAP](https://sleap.ai/)、Deep Learning、Computer Vision、Object Tracking、captive dolphin  
<br><br>
First and foremost, I really want to thank my supervisor, Dr. [Wei-Cheng Yang](https://www.vm.ntu.edu.tw/products_detail/21) (DVM, PhD), for the internship at the Conservation Medicine Laboratory. Thank you for giving me the resources to learn. I named this model '[CML_sleapmodel](https://github.com/hsiulan/CML_sleapmodel)'. I also want to thank the lab seniors for all their guidance and help.
## Abstract  
My project consists of two primary stages. The first stage focuses on training the model to recognize individual dolphins and their poses using SLEAP, an open-source deep learning framework that features a graphical user interface for labeling. The second stage involves training the model to classify specific behaviors represented by these poses. This behavioral classification will be implemented using [B-SOiD](https://github.com/YttriLab/B-SOID?tab=readme-ov-file) on top of the SLEAP outputs. As I am currently in the process of training the SLEAP models, I have not yet transitioned to the B-SOiD implementation.

## Introduction  
Before Artificial Intelligence, it was all Human Intelligence, Instead of wasting time manually sorting long videos, we need a system that can process data in bulk to save time and effort.  
This SLEAP model can track multiple bottlenose dolphins in the same videos at the same time. It provides coordinate sequences for different body parts and supports exporting data as CSV or H5 files, making it easy to work with tools like Python Pandas or MATLAB. You can also continue training the model to fit your specific needs.  
This project is about training a model and creating a useful tool.I intend for this work to remain open-ended, providing a valuable resource for others to build upon and further develop for EX: auto-monitoring system for captive dolphin、or auto-label research data, I also hope it can be use for wild dolphin survey in the future.

## Methods  

### Video Source : 

* [野柳海洋世界](https://www.oceanworld.com.tw/)
    + Right side female pool : Tursiops aduncus
    + Square pool : Tursiops aduncus
* [遠雄海洋公園](https://www.farglory-oceanpark.com.tw/) (Unprocessed)  
    + coming soon : Tursiops

Recording Equipment : GoProhero11 Black  
Resolution : 1080  
FPS : 30

<img width="1920" height="1080" alt="Adata1_20250903GX010107" src="https://github.com/user-attachments/assets/1af8a9e6-fcbb-470a-abef-2ec829fae5c3" />


### Project skeleton

Nodes and Edges:  
Before training the model, you need to define the animal nodes and edges. I want to minimize the number of bones to simplify training, while ensuring they are sufficient to recognize individual dolphins and their various poses.


|  | Name | Symmetry |
| :---: | :---: | :---: |
| 1 | Head  |  |
| 2 | Upper Snout |  |
| 3 | Lower Snout |  |
| 4 | Anterior Body |  |
| 5 | Posterior Body |  |
| 6 | Left Caudal Fin |  |
| 7 | Right Caudal Fin |  |
| 8 | Left Pectoral Fin |  |
| 9 | Right Pectoral Fin |  |
| 10 | Dorsal Fin |  |


|  | Source | Destination |
| :---: | :---: | :---: |
| 1 | Upper Snout | Head |
| 2 | Lower Snout | Head |
| 3 | Head | Anterior Body |
| 4 | Anterior Body | Posterior Body |
| 5 | Posterior Body | Left Caudal Fin |
| 6 | Posterior Body | Right Caudal Fin |



<img width="1943" height="1834" alt="AIMG_0152" src="https://github.com/user-attachments/assets/4216d6e2-be04-4836-92ad-484ad558f560" />  

## Installation

### Install SLEAP

<pre>
uv tool install --python 3.13 "sleap[nn]"
</pre>

If you want to check the python version:
<pre>
python3 -V
</pre>

Open sleap:
<pre>
sleap-label
</pre>

## Demo/Showcase

<p align="center">
<img width="715" height="208" alt="Timeline_715x208" src="https://github.com/user-attachments/assets/7185fc17-76ff-41de-8821-f331eda381eb" />
</p>

還沒想到怎麼寫模型的install拍謝。  
先醬，我會努力更新的～～～
