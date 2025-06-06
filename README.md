# andeRsen

An R package containing the texts of Hans Christian Andersen's fairy tales in
multiple languages. The tales are stored in a compressed RDS file inside the
package and can be accessed with the `load_eventyr_texts()` function.

```r
# Load the package and the data
library(andeRsen)
tales <- load_eventyr_texts()
```
