# ecb-pelican

Static site for English Comedy Brussels, built with Pelican.

## Quick Start / Local Development

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Start the development server with live auto-reload and open it automatically in your browser:

   ```bash
   (sleep 1 && open http://localhost:8000) & make devserver
   ```

   **Note:** If you prefer to open [http://localhost:8000](http://localhost:8000) manually, simply run `make devserver`.
   ```bash
   make devserver
   ```

3. Other Makefile commands:
   - `make html`: Build the site to `output/`
   - `make clean`: Remove generated `output/`
   - `make publish`: Build using production settings (`publishconf.py`)
   - `make stop`: Stop running server on port 8000

## TODO
- [ ] add facebook link to event in body text. (currently only link to facebook is the image itself.) 
- [ ] add promo video to front page
