from xlsx_to_html_extractor import XlsxExtractor

extractor = XlsxExtractor(
    source_xlsx='data.xlsx',
    dest_html_file='result.html',
    show_formulas=True,
    grid_labels=True,
    cell_titles=True
)

extractor.extract()
