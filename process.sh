#!/usr/bin/env bash
echo "...Pulling Google Scholar data and creating citation plot..."
# create citation plot
/usr/bin/Rscript google_scholar_plot.R
# sync plot up to Google Drive
gdrive sync upload scholar_plot/ 0B-V32YNJHBSgbjdFTndOMlBub2M
#
echo "...Done..."
