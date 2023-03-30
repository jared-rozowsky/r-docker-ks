FROM r-base:4.2.3

RUN R -e 'install.packages("BiocManager")'
RUN R -e 'install.packages(c("data.table", "qqman"))'
RUN R -e 'BiocManager::install("trio")'
RUN R -e 'BiocManager::install("VariantAnnotation")'

CMD ["/bin/bash"]
