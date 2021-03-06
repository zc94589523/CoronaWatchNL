d=`date +%Y%m%d`

python workflows/rivm/depr.py
python workflows/rivm/download_rivm_map_data.py
python workflows/rivm/merge_data.py
python workflows/rivm/data_rivm_geo.py
python workflows/rivm/data_rivm_dashboard.py
python workflows/json/json-api.py
python workflows/rivm/merge_website_charts.py
python workflows/nice/nice_download_merge.py
python workflows/nice/data-ic_nice.py
python workflows/lcps/data-ic_lcps.py
pdftotext reports/COVID-19_epidemiological_report_${d}.pdf
python workflows/rivm_pdf/parse_pdf_table.py
python workflows/rivm/data_rivm_desc.py
python workflows/rivm_pdf/data_rivm_pdf_misc.py
python tests.py

