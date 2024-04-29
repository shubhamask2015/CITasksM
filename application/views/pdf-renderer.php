<!-- PDF Js Library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>

<!-- Pdf Rendering -->
<script>
    //Page Renderer Function
    let pageNo = 1, scale = 1, pages = 0, pdf_ = null;
    function renderPage(pageNo, canvas){
        
        pdf_.getPage(pageNo).then(page =>{
            let viewport = page.getViewport({scale:scale});
            canvas.height = viewport.height;
            canvas.width = viewport.width;

            //Rendering Page
            let renderContext ={
                canvasContext:canvas.getContext('2d'),
                viewport:viewport,
            }

            page.render(renderContext).promise.then(()=>{
                console.log(`Page No ${pageNo} Rendered Successfully!`);
            })
        });
    }

    // loading pdf 
    pdfjsLib.getDocument("<?= $pdf;?>").promise.then(pdf => {
        pages = pdf._pdfInfo.numPages;
        pdf_ = pdf;
        let canvas = document.getElementById('pdf-canvas-1');
        renderPage(pageNo, canvas)

        if(pages == 2){
            canvas = document.getElementById('pdf-canvas-2');
            renderPage(pageNo+1, canvas)
        }
    });
</script>