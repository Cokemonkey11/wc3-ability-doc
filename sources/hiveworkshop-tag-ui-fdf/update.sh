#!/usr/bin/env bash

set -euxo pipefail

now=$(date --iso-8601)

declare -A urls
urls["how-to-make-a-ability-button"]="https://www.hiveworkshop.com/threads/how-to-make-a-ability-button.340704/"
urls["tasyen-the-big-ui-frame-tutorial"]="https://www.hiveworkshop.com/threads/the-big-ui-frame-tutorial.335296/"
urls["tasyen-ui-save-and-load-frames"]="https://www.hiveworkshop.com/threads/ui-save-load-frames.327849/"
urls["tasyen-ui-simpleframes"]="https://www.hiveworkshop.com/threads/ui-simpleframes.320385/"
urls["tasyen-ui-parent-frames"]="https://www.hiveworkshop.com/threads/ui-the-concept-of-parent-frames.320238/"
urls["tasyen-textarea-scrolling-frame"]="https://www.hiveworkshop.com/threads/ui-textarea-the-scrolling-text-frame.318877/"
urls["tasyen-ui-gluebutton"]="https://www.hiveworkshop.com/threads/ui-gluebutton.318621/"
urls["tasyen-frameevents-and-frametypes"]="https://www.hiveworkshop.com/threads/ui-frameevents-and-frametypes.318309/"
urls["tasyen-ui-list-default-mainframes"]="https://www.hiveworkshop.com/threads/ui-list-default-mainframes.317884/"
urls["tasyen-ui-frames-and-tooltips"]="https://www.hiveworkshop.com/threads/ui-frames-and-tooltips.316665/"
urls["tasyen-ui-showing-3-multiboards"]="https://www.hiveworkshop.com/threads/ui-showing-3-multiboards.316610/"
urls["tasyen-ui-creating-a-bar"]="https://www.hiveworkshop.com/threads/ui-creating-a-bar.316254/"
urls["tasyen-ui-editbox-text-input"]="https://www.hiveworkshop.com/threads/ui-editbox-text-input.316239/"
urls["tasyen-ui-originframes"]="https://www.hiveworkshop.com/threads/ui-originframes.316034/"
urls["tasyen-ui-what-are-backdrops"]="https://www.hiveworkshop.com/threads/ui-what-are-backdrops.315967/"
urls["tasyen-ui-creating-a-cam-control"]="https://www.hiveworkshop.com/threads/ui-creating-a-cam-control.315961/"
urls["tasyen-ui-create-a-textbutton"]="https://www.hiveworkshop.com/threads/ui-create-a-textbutton.315897/"
urls["tasyen-ui-positionate-frames"]="https://www.hiveworkshop.com/threads/ui-positionate-frames.315860/"
urls["tasyen-ui-toc-files"]="https://www.hiveworkshop.com/threads/ui-toc-files.315854/"
urls["tasyen-ui-reading-a-fdf"]="https://www.hiveworkshop.com/threads/ui-reading-a-fdf.315850/"
urls["tasyen-default-names-for-blzgetframebyname"]="https://www.hiveworkshop.com/threads/default-names-for-blzgetframebyname.315846/"

for title in "${!urls[@]}"; do
  url=${urls[$title]}

  wget --output-document $title.$now.html $url

  pandoc -r html -w gfm $title.$now.html -o $title.$now.md
done
