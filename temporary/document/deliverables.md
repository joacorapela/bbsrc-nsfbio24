# Vision

Simultaneously, but disjointlly, at the SWC/GCNU and at the AIND we are
performing a radiclly new type of experimentation that is Naturalistic, where
experiments are of Long Duration, and are Continuous, spanning weeks to months
(i.e., NaLoDuCo experiments).

We will disseminate software and hardware to
enable NaLoDuCo experimentation.

We will test the disseminated hardware and software on three different
experimental setups:

a. freely-moving foraging mice (SWC)
b. head-fixed foraging mice (AIND)
c. freely-moving odour exploration mice (AIND)

## Relevance

- NaLoDuCo experimental data will allow the estimation of more complex time series neuroscience models than has been possible with shorter and non-continual datasets. We envision that NaLoDuCo experimental data will be for the neuroscience community what MNIST has been for the computer vision community.

- this collaborative experience will help both the SWC/GCNU and the AIND use better neuroinformatics/statistical tools to process their data.

---

# Data collection, management, quality control, intelligent close-loop experimentation

## Deliverables

1. hardware specifications for long-duration recordings of behaviour and neural activity (foraging arenas, video cameras, ultrasound microphones, weight scales, Neuropixels probes, commutator, [ONIX](https://www.nature.com/articles/s41592-024-02521-1))
2. software for managing long-duration recordings (data storage, data indexing)
3. software for online/offline quality control
4. software for online data visualisation
5. software for online data analysis
6. software for intelligent close-loop control of experiments

## Previous work

- at the SWC we have performed foraging experiments
    - lasting xx weeks and recording behaviour only
    - lasting yy weeks and recording behaviour and electrophysiology
    - data is stored in files and in a MySQL database
- items 1-3: above have been completed for the SWC foraging experiments
- item 4: we have developed some online data visualisation tools in Bonsai
- items 5 and 6: funded by BBSRC, we have integrated into Bonsai tools for online data
  analysis, to be used for the close-loop control of experiments:
    - estimate kinematics of mice
    - estimate kinematic states of mice using Hidden Markov Models
    - clusterless point-process decoder of mice position and replay from spikes
- disseminated detailed documentation on software used at the SWC to control
  NaLoDuCo experiments (see [repo](https://github.com/SainsburyWellcomeCentre/aeon_mecha)).
- disseminated detailed documentation on machine learning methods integrated
  into Bonsai for analyzing behavioral and neural tie series in real time (see
  [repo](https://bonsai-rx.org/machinelearning/)).

## Future work

- item 3: at the SWC and at the AIND we have developed several tools for offline quality control. We next need to build online versions of them.
- item 4: develop more software for data visualisation.
- items 5 and 6: develop more software for online data analysis.
    - online estimate of latent variables from Neuropixels recordings.
    - online estimate of RL models.
- help Dr. Carl Schoonover (AIND) use hardware and software developed at the SWC/GCNU to create his olfaction NaLoDuCo experiments.

---

# Data sharing

## Deliverables

1. dashboard (or examples of how) to convert data collected in NaLoDuCo experiments to the Zarr format, and to upload the Zarr files to DANDI.
2. dashboard to stream data collected from NaLoDuCo experiments to DANDI

## Previous work

- the AIND is experienced on sharing their recordings on DANDI. However, these recordings are not as large as those in NaLoDuCo experiments and they are not continual.

## Future work

- develop dashboard to convert data collected in NaLoDuCo experiments to the Zarr format
- develop dashboard to stream data collected from NaLoDuCo experiments to DANDI
- test dashboards on data from:
    a. freely-moving foraging mice (SWC)
    b. head-fixed foraging mice (AIND)
    c. freely-moving odour exploration mice (AIND)
- DANDI is typically used to store neurophysiological datasets much smaller than those generated in NaLoDuCo experiments. Conventional methods to access data in DANDI may not be fast enough to allow performant data visualisation and/or data analysis. We may need to explore parallel computing and/or resource efficient cloud configurations (i.e., optimising cloud configurations to improve runtime performance).

---

# Visualisation tools

## Comment

 - a unique feature of the NaLoDuCo recordings collected at the SWC and the AIND, is that they are long-duration and continual. Greatest insights will come from investigating these recordings as a whole, and not by analysing separately its parts. For example, the analysis of shorter duration recordings will not be able to capture long-term temporal dependencies in neural activity, that could be critical to understand infradian modulations of behaviour. Thus, we need software infrastructure to browse and visualise week- to month-long experimental recordings on the order of hundreds of terabytes. It is not feasible to download these huge datasets in order to visualise them. Hence, **offline data visualisation needs to be done on the cloud**, as in Neurosift.

## Deliverables

1. web-based dashboard for **online** visualisation of quality control measures.
2. web-based dashboard for **online** data analysis and visualisation of its results.
3. web-based dashboard for **offline** visualisation of NaLoDuCo behavioural and neural recordings on DANDI.
4. web-based dashboard for **offline** visualisation of data analysis results on DANDI.

## Questions

- can I see the visualisation tools from the AIND?
- does the AIND has visualisation tools running on the cloud?
- what visualisation tools do we have at the SWC? developed by Datajoint?
- is the AIND collaborating with Jeremy Magland?

## Previous work

- Neurosift [repo](https://github.com/flatironinstitute/neurosift) [paper](https://joss.theoj.org/papers/10.21105/joss.06590) allows to visualise shorter-duration behavioural and neural recordings in DANDI.
- Dendro [repo](https://github.com/magland/dendro) allows to perform analysis on the cloud and visualise the results of such analysis.
- offline and precomputed visualisations developed at the SWC, with the help of Datajoint.
- offline and precomputed quality control visualisations developed at the AIND.
- offline and precomputed visualisations developed at the AIND for shorter-duration experiments.
- offline and precomputed visualisations from IBL for short-duration experiments.

## Future work

- Neurosift has been designed to visualise relatively short duration datasets. We will extend it with data pyramids (e.g., https://github.com/carbonplan/ndpyramid) to enable it to operate on long-duration recordings.

---

# Spike sorting of long-duration experiments

## Deliverables

1. method (and software implementation) for sorting spikes from Neuropixels probes in long-duration experiments
2. software for curation of results of sorting spikes from Neuropixels probes in long-duration experiments
3. quality control measures for the results of sorting spikes from Neuropixels probes in long-duration experiments

## Previous work

- methods exist for sorting, curating and quality control spikes from short duration experiments
- Dr. Carl Schoonover (AIND) has developed methods to sort spikes from long-duration experiments (find out more about these methods)
- the SWC has managed to sort spikes from a small subset of channels of a Neuropixels probe

---

# Data analysis on DANDI

## Deliverables

1. methods to analyse behavioural and electrophysiological recordings from NaLoDuCo experiments that are **online** and **adaptive to non-stationary** in measurements.

For behavioural data, we will investigate methods to:
    - track multiple body parts of animals
    - infer kinematics of foraging mice
    - segment behaviour into discrete states
    - infer the rules that govern mice behaviour from behavioural observations only] (i.e., policy inference).

For neural data, we will investigate methods to:
    - estimate low-dimensional continual representations of neural activity (i.e., latents inference) 
    - segment neural activity into discrete states
    - decode environment variables from neural activity

2. integration of these methods into DANDI, as in Dendro, so that users can run them on NaLoDuCo datasets stored in DANDI.

## Previous work

- At the Gatsby we have invented several methods for the characterisation of neural time series
- [Dendro](https://github.com/magland/dendro) allows to perform advanced data analysis on DANDI. It allows to reuse previous analysis.
