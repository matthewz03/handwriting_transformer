# This is our repository for Conditional Handwriting Generation: Emulating Unique Writing Styles with Transformers

We were unable to upload our model .pth files because they are too large to push. We are working on finding a way to link them.

The original "Handwriting Transformers" paper and github can be found here.

<!-- 
[arXiv](https://arxiv.org/abs/2112.10752) | [paper](https://openaccess.thecvf.com/content/ICCV2021/papers/Bhunia_Handwriting_Transformers_ICCV_2021_paper.pdf) | [demo](https://colab.research.google.com/github/ankanbhunia/Handwriting-Transformers/blob/main/demo.ipynb) | [BibTeX](#bibtex)
  -->
 <p align='center'>
  <b>
    <a href="https://ankanbhunia.github.io/Handwriting-Transformers/">Project</a>
    |
    <a href="https://arxiv.org/abs/2104.03964">ArXiv</a>
    | 
    <a href="https://openaccess.thecvf.com/content/ICCV2021/papers/Bhunia_Handwriting_Transformers_ICCV_2021_paper.pdf">Paper</a>
    | 
    <a href="https://colab.research.google.com/github/ankanbhunia/Handwriting-Transformers/blob/main/demo.ipynb">Demo</a>
  </b>
</p> 

## Software environment (From HWT GitHub)

- Python 3.7
- PyTorch >=1.4

## Setup & Training

Please see ```INSTALL.md``` for installing required libraries. You can change the content in the file ```mytext.txt``` to visualize generated handwriting while training.   


Download Dataset files and models from https://drive.google.com/file/d/16g9zgysQnWk7-353_tMig92KsZsrcM6k/view?usp=sharing and unzip inside ```files``` folder. In short, run following lines in a bash terminal. 

```bash
git clone https://github.com/ankanbhunia/Handwriting-Transformers
cd Handwriting-Transformers
pip install --upgrade --no-cache-dir gdown
gdown --id 16g9zgysQnWk7-353_tMig92KsZsrcM6k && unzip files.zip && rm files.zip
```

To start training the model: run

```
python train.py
```
