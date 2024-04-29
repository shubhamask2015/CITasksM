<div class="container">
    <div class="container">
        <h1 class="text-danger">Question 4:</h1>
            <p class="fs-2 ps-3">
                Javascript <br>
                There will be 4 Textbox <br>
                A -: Enter the value in A then automatically enable the other textbox <br>
                B -: B= (A + 10) - 5 <br>
                C-: C=(B+A - 10) *2 <br>
                D-: D=A+B+C <br>
                This will be done through javascript - without page reload
            </p>
        <hr style="border: 2px solid;" class="my-4">
        <h1 class="text-success">Solution:</h1>
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text fs-2 fw-bold">A</span>
        <input type="number" class="form-control fs-3" placeholder="Enter a number here e.g. 19" id="a">
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text fs-2 fw-bold">B</span>
        <input type="number" class="form-control fs-3" placeholder="B=(A + 10) -5" disabled="true" id="b">
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text fs-2 fw-bold">C</span>
        <input type="number" class="form-control fs-3" placeholder="C=(B + A - 10) *2" disabled="true" id="c">
    </div>
    <div class="input-group mb-3 disabled">
        <span class="input-group-text fs-2 fw-bold">D</span>
        <input type="number" class="form-control fs-3" placeholder="D=A+B+C" disabled="true" id="d">
    </div>
    <script>
        const a = document.getElementById('a');
        const b = document.getElementById('b');
        const c = document.getElementById('c');
        const d = document.getElementById('d');

        a.addEventListener('keyup', () => {
            if (a.value) {
                let aval = parseInt(a.value);
                let bval = b.value = (aval + 10) - 5;
                let cval = c.value = (bval + aval - 10) * 2;
                let dval = d.value = aval + bval + cval;
            } else {
                b.value = '';
                c.value = '';
                d.value = '';
            }
        })
    </script>
</div>