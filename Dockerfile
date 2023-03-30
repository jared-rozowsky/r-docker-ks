FROM bioconductor/bioconductor_docker:devel

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
        r-cran-data.table \
        r-cran-qqman 

RUN R -e 'BiocManager::install("trio")'
RUN R -e 'BiocManager::install("VariantAnnotation")'


