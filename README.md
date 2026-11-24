# ecb-pelican

Static site for English Comedy Brussels, built with Pelican.

## Quick Start / Local Development

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Start the local development server with live auto-reload:
   ```bash
   make devserver
   ```
   Open [http://localhost:8000](http://localhost:8000) in your browser.

3. Other Makefile commands:
   - `make html`: Build the site to `output/`
   - `make clean`: Remove generated `output/`
   - `make publish`: Build using production settings (`publishconf.py`)
   - `make stop`: Stop running server on port 8000

## TODO
- [ ] make past_events_toggler be expanded by default
- [ ] add facebook link to event in body text. (currently only link to facebook is the image itself.) 
- [ ] add promo video to front page
