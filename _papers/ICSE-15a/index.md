---
permalink: /papers/ICSE-15a/
title: Capsule-Oriented Programming
abstract: >
  "Explicit concurrency should be abolished from all higher-level programming
  languages (i.e. everything except -perhaps- plain machine code.). Dijkstra [1]
  (paraphrased)." A promising class of concurrency abstractions replaces
  explicit concurrency mechanisms with a single linguistic mechanism that
  combines state and control and uses asynchronous messages for communications,
  e.g. active objects or actors, but that doesn’t remove the hurdle of
  understanding non-local control transfer. What if the programming model
  enabled programmers to simply do what they do best, that is, to describe a
  system in terms of its modular structure and write sequential code to
  implement the operations of those modules and handles details of concurrency?
  In a recently sponsored NSF project we are developing such a model that we
  call capsule-oriented programming and its realization in the Panini project.
  This model favors modularity over explicit concurrency, forbids use of
  explicit threads and locks, encourages concurrency correctness by
  construction, and exploits modular structure of programs to expose implicit
  concurrency.
bib: |
  @inproceedings{Rajan-Capsule,
    author = {Hridesh Rajan},
    title = {Capsule-oriented Programming},
    booktitle = {ICSE'15: The 37th International Conference on Software Engineering: NIER Track},
    location = {Florence, Italy},
    month = {May},
    year = {2015},
  }
kind: conference
download_link: Rajan-Capsule-Oriented.pdf
publication_date: 2015-05
---