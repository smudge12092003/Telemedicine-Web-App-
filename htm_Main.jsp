<html>
    <head>
        <title>
            Telemedicine.com
        </title>
        <style>
            .container2 {
                display: flex;
                background-color: black;
                color: white;
            }
            .container2 a {
                text-decoration: none;
                color: white; /* Setting link color to white */
            }
            .container3 {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            .box1,.box2,.box3,.box4{
                display: flex;
                align-items: center;
                margin-top:20px;
                margin-bottom: 20px;
                background-color: #f1c27d;
            }
            .box1 img,.box2 img ,.box3 img,.box4 img{
                height: 200px;
                width: 250px;
                margin-right: 20px;
            }
            button{
                padding: 14px 14px 14px 14px;
                margin-right: 120px;
                margin-left: 120px;
                border: 2px solid;
                border-radius: 5px;
                cursor: pointer;
                background-color: transparent;
                color: green;
                width: 200px;
            }
            a{
                text-decoration: none;
            }
            
        </style>
    </head>
    <body>
        <div class="container1" >
            <h2 style="color: black; font-family: 'Times New Roman', Times, serif; font-size: xxx-large;background-color:#D3D3D3; "><center>Telemedicine App</center></h2>
        </div>
        <div class="container2">
         <a href="htm_Main.jsp">HOME</a>&nbsp;|&nbsp;
            <a href="htm_About.html">ABOUT</a>&nbsp;|&nbsp;
            <a href="htm_tablets.html">TABLETS</a>&nbsp;|&nbsp;
            <a href="htm_Contact.html">CONTACT</a>
        </div>
        <div class="container4">
        <center><h1 style="background-color:#D3D3D3; ">KNOW YOUR DOCTORS</h1></center>
        </div>
        <div class="container3">
            <hr width="100%">
            <div class="box1">
                <img src="doctor1.png">
                <div>
                    <h2>Dr Vineeth:</h2>
                    <p>
                        <h4>Dr. Vineeth, a renowned cardiologist from Mumbai, India, is celebrated for his groundbreaking research in cardiac imaging techniques. His compassionate bedside manner and dedication to patient care have earned him widespread admiration among colleagues and patients alike.</h4>
                    </p>
                    <h2>TIMINGS : 6:00AM - 12:00PM</h2>
                </div>
            </div>
            <hr width="100%">
            <div class="box2">
                <img src="doctor2.jpg">
                <div>
                    <h2>Dr Pradhyuman:</h2>
                    <p>
                        <h4>Dr. Pradhyuman, a prominent neurosurgeon hailing from Chennai, is renowned for his innovative surgical approaches and his tireless efforts in advancing neurological care. His unwavering commitment to patient well-being and his expertise in complex brain surgeries have garnered him accolades both locally and internationally.</h4>
                    </p>
                    <h2>TIMINGS : 1:00PM - 9:00PM</h2>
                </div>
            </div>
            <hr width="100%">
            <div class="box3">
                <img src="doctor3.avif">
                <div>
                    <h2>Dr Harish:</h2>
                    <p>
                        <h4>Dr. Harish, a distinguished spinal surgeon from Bangalore, is revered for his mastery in treating complex spine conditions with precision and compassion. Patients from across the country seek his expertise, knowing they will receive unparalleled care and a path to renewed mobility and comfort.</h4>
                    </p>
                    <h2>TIMINGS : 10:00PM - 5:00AM</h2>
                </div>
            </div>
            <hr width="100%">
            <a href="insert.jsp"><button style="color: green;">Register</button></a>

        </div>
    </body>
</html>

