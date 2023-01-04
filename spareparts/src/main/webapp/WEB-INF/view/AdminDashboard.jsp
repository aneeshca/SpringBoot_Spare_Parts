<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="style.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link href="'https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap'">
    <title>Admin dash</title>
    
    
    

<style type="text/css">

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

:root{
    /* ===== Colors ===== */
    --body-color: #E4E9F7;
    --sidebar-color: #FFF;
    --primary-color: #695CFE;
    --primary-color-light: #F6F5FF;
    --toggle-color: #DDD;
    --text-color: #707070;

    /* ====== Transition ====== */
    --tran-03: all 0.2s ease;
    --tran-03: all 0.3s ease;
    --tran-04: all 0.3s ease;
    --tran-05: all 0.3s ease;
}

body{
    min-height: 100vh;
    background-color: var(--body-color);
    transition: var(--tran-05);
}

::selection{
    background-color: var(--primary-color);
    color: #fff;
}

body.dark{
    --body-color: #18191a;
    --sidebar-color: #242526;
    --primary-color: #3a3b3c;
    --primary-color-light: #3a3b3c;
    --toggle-color: #fff;
    --text-color: #ccc;
}

/* ===== Sidebar ===== */
 .sidebar{
    position: fixed;
    top: 54px;
    left: 0;
    height: 100%;
    width: 250px;
    padding: 12px 14px;
    background: var(--sidebar-color);
    transition: var(--tran-05);
    z-index: 100;  
}


/* ===== Reusable code - Here ===== */
.sidebar li{
    height: 50px;
    list-style: none;
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.sidebar header .image,
.sidebar .icon{
    min-width: 60px;
    border-radius: 6px;
}

.sidebar .icon{
    min-width: 60px;
    border-radius: 6px;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.sidebar .text,
.sidebar .icon{
    color: var(--text-color);
    transition: var(--tran-03);
}

.sidebar .text{
    font-size: 17px;
    font-weight: 500;
    white-space: nowrap;
    opacity: 1;
}
.sidebar.close .text{
    opacity: 1;
}
/* =========================== */

.sidebar header{
    position: relative;
}

.sidebar header .image-text{
    display: flex;
    align-items: center;
}

header .image-text .name {
    margin-top: 2px;
    font-size: 18px;
    font-weight: 600;
}

header .image-text .profession{
    font-size: 16px;
    margin-top: -2px;
    display: block;
}

.sidebar header .image{
    display: flex;
    align-items: center;
    justify-content: center;
}

.sidebar header .image img{
    width: 40px;
    border-radius: 6px;
}



body.dark .sidebar header .toggle{
    color: var(--text-color);
}



.sidebar .menu{
    margin-top: 40px;
}

.sidebar li.search-box{
    border-radius: 6px;
    background-color: var(--primary-color-light);
    cursor: pointer;
    transition: var(--tran-1);
}

.sidebar li.search-box input{
    height: 100%;
    width: 100%;
    outline: none;
    border: none;
    background-color: var(--primary-color-light);
    color: var(--text-color);
    border-radius: 6px;
    font-size: 17px;
    font-weight: 500;
    transition: var(--tran-05);
}
.sidebar li a{
    list-style: none;
    height: 100%;
    background-color: transparent;
    display: flex;
    align-items: center;
    height: 100%;
    width: 100%;
    border-radius: 6px;
    text-decoration: none;
    transition: var(--tran-03);
}

.sidebar li a:hover{
    background-color: var(--primary-color);
}

.sidebar li a:hover .text{
    color: var(--sidebar-color);
}
body.dark .sidebar li a:hover .icon,
body.dark .sidebar li a:hover .text{
    color: var(--text-color);
}

.sidebar .menu-bar{
    height: calc(100% - 55px);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    overflow-y: scroll;
}
.menu-bar::-webkit-scrollbar{
    display: none;
}


.home{
    position: absolute;
    top: 0;
    top: 0;
    left: 250px;
    height: 100vh;
    width: calc(100% - 250px);
    background-color: var(--body-color);
    transition: var(--tran-05);
}
.home .text{
    font-size: 30px;
    font-weight: 500;
    color: var(--text-color);
    padding: 12px 60px;
}


</style>
    
</head>
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                     </span>
                <div class="text logo-text">
                    <span class="name">Spare Parts</span>
                    <span class="profession">Managing</span>
                </div>
            </div>

           
        </header>

        <div class="menu-bar">
            <div class="menu">

               

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="viewAll">
                          
                            <span class="text nav-text">View All User</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="viewsell">
                            
                            <span class="text nav-text">Manage Seller</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="adUser">
                          
                            <span class="text nav-text">Manage User</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="viewAllProuct">
                            
                            <span class="text nav-text">View All products</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="../getAdminBooking">
                          
                            <span class="text nav-text">Booking Details</span>
                        </a>
                    </li>
                    
                     <li class="nav-link">
                        <a href="../payment">
                          
                            <span class="text nav-text">Payments</span>
                        </a>
                    </li><br>
                       <li class="nav-link">
                        <a href="../logout">
                          
                            <span class="text nav-text text-danger">Logout</span>
                        </a>
                    </li>

                </ul>
            </div>

           
            <div></div>
        </div>

    </nav>
</body>
</html>