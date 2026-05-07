---
layout: page
title: Synthetic Trajectory Generation
description: Controlled Synthetic Trajectory Generation with a Multitask Transformer-Based Spatiotemporal Model
img: assets/img/poi_prediction.png
importance: 3
category: current
---

### Project Description

Modeling human mobility through GPS-trajectories and generating synthetic trajectories are fundamental to diverse applications such as urban planning, disaster management, and epidemiology. A critical challenge in this domain is the task of "controlled" synthetic trajectory generation, where gaps in partially specified sequences of visits must be filled accurately—an area where existing techniques fall short. Current methods for next-location prediction or synthetic trajectory generation lack the mechanisms required to constrain sequences, making them inadequate for solving this problem. Additionally, they often make oversimplified assumptions by treating space and time independently, which leads to poor temporal prediction accuracy, especially when dealing with mixed distributions or latent variables like the day of the week.

To address these limitations, we present TrajGPT, a multitask transformer-based spatiotemporal generative model. Inspired by advancements in large language models, TrajGPT frames controlled trajectory generation as a text infilling problem in natural language processing. By leveraging a joint spatiotemporal approach within a transformer architecture, and integrating a Bayesian probability model, TrajGPT ensures spatiotemporal consistency when filling gaps in visit sequences. This allows for highly accurate and constrained trajectory generation.

Our experiments, conducted on both public and proprietary datasets, demonstrate that TrajGPT not only excels at controlled synthetic visit generation but also outperforms state-of-the-art models in next-location prediction. It delivers a 26-fold improvement in temporal accuracy while maintaining over 98% spatial accuracy, making it a breakthrough tool for the next generation of mobility modeling applications.

<br>

### TrajGPT Architecture
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/projects/trajgpt-arch.png" title="trajgpt" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<br>

### Related Publications
- Shang-Ling Hsu, Emmanuel Tung, John Krumm, Cyrus Shahabi, and Khurram Shafique. 2024. **TrajGPT: Controlled Synthetic Trajectory Generation Using a Multitask Transformer-Based Spatiotemporal Model.** In The 32nd ACM International Conference on Advances in Geographic Information Systems (SIGSPATIAL ’24), October 29-November 1, 2024, Atlanta, GA, USA. ACM, New York, NY, USA, 10 pages. https://doi.org/10.1145/3678717.3691303

- Li Ziyao, Shang-Ling Hsu, and Cyrus Shahabi. **Forecasting Unseen Points of Interest Visits Using Context and Proximity Priors.** 2024 IEEE International Conference on Big Data (BigData). IEEE, 2024.

<br>

### People

<br>

<div class="row">
  <div class="col-sm mt-3 mt-md-0" style="margin-bottom: 20px;">
    <div class="text-center">
        {% include figure.html path="assets/img/people/kate.png" title="Shang-Ling" class="img-fluid rounded-circle z-depth-1 mx-auto" width="50%" %}
    </div>
    <h5 style="text-align:center;">Shang-Ling Hsu</h5>
    <p style="text-align:center;">CS PhD Student, USC</p>
  </div>
  <div class="col-sm mt-3 mt-md-0" style="margin-bottom: 20px;">
  </div>
  <div class="col-sm mt-3 mt-md-0" style="margin-bottom: 20px;">
  </div>
</div>