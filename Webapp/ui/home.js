const home={
    template: `
    
    <div v-if="!loginstate">

        <br>
        
        <h1 style="font-size:75px"> Welcome to REAL </h1>
        <h2 style="font-size:40px"> Please login to continue </h2>
        
        
        <br>

        <button 
            style = "background-color:black; color:white; font-size:25px" 
            class = "btn btn-light mr-1"
            data-bs-toggle = "modal"
            data-bs-target = "#loginModal"> Login 
        </button> <button 
            style = "background-color:black; color:white;font-size:25px" 
            class = "btn btn-light mr-1"
            data-bs-toggle = "modal"
            data-bs-target = "#registerModal"> Register a new user 
        </button> 
    </div>

    <div v-else>
        <h1> Welcome {{ this.loggeduser }} </h1>

        <button 
            style = "background-color:black; color:white; font-size:25px" 
            class = "btn btn-light mr-1"
            @click = "logout()"> Logout 
        </button> </div> <div v-if="adminSuperUser == 'Y'"> <button 
            style = "background-color:black; color:white; font-size:25px" 
            class = "btn btn-light mr-1"
            data-bs-toggle = "modal"
            data-bs-target = "#customerModal"> Manage Customer Details 
        </button>
    </div>

    <br>
    <div> 
        <img src="bg2.jpg"> 
    </div>
    
    
    <div class="modal fade" id="loginModal" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Login</h5>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Username </span>
                                <input type="text" class="form-control" v-model="username"> 
                            </div>
                        </div>
                    </div>

                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Password </span>
                                <input type="password" class="form-control" v-model="password"> 
                            </div>
                        </div>
                    </div>

                    <br>
                    <div> <button type="text" data-bs-toggle = "modal" data-bs-target = "#passModal" data-bs-dismiss="modal"> Click here if you forgot your password. </button> </div>

                    <br>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" @click="login()"> Login 
                    </button> <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Close 
                    </button>

                    <br>
                </div>
            </div>
        </div>
    </div>
    

    <div class="modal fade" id="registerModal" aria-labelledby="registerModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="registerModalLabel">Register a new user</h5>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Please enter your first name </span>
                                <input type="text" class="form-control" v-model="r_fname"> 
                            </div>
                        </div>

                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Please enter a new user id </span>
                                <input type="text" class="form-control" v-model="r_userid"> 
                            </div>
                        </div>
                    </div>

                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Password </span>
                                <input type="password" class="form-control" v-model="r_pass"> 
                            </div>
                        </div>

                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Confirm your Password </span>
                                <input type="password" class="form-control" v-model="r_cpass"> 
                            </div>
                        </div>
                    </div>
                    <div class="help-block">
                        <strong>Note:</strong>
                        <p>Passwords must be at least 6 characters long.</p>
                        <p>Passwords must include at least one lowercase letter, one uppercase letter, one number and one special character.</p>
                    </div>

                    <br>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" @click="register()"> Register 
                    </button> <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Cancel 
                    </button>

                    <br>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="passModal" aria-labelledby="passModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="passModalLabel">Reset your password</h5>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Please enter your User id </span>
                                <input type="text" class="form-control" v-model="reset_userid"> 
                            </div>
                        </div>
                    </div>

                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Password </span>
                                <input type="password" class="form-control" v-model="reset_pass"> 
                            </div>
                        </div>

                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Confirm your Password </span>
                                <input type="password" class="form-control" v-model="reset_cpass"> 
                            </div>
                        </div>
                    </div>

                    <br>

                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" @click="reset()"> Reset 
                    </button> <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Cancel 
                    </button>

                    <br>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="customerModal" aria-labelledby="customerModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="customerModalLabel">Login</h5>
                </div>
                <div class="modal-body">
                    <table class = "table table-striped">
                        <thead>
                            <tr>
                                <th>Fname</th>
                                <th>User Id</th>
                                <th>Super User</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for = "x in dms_customer">
                                <td>{{ x.fname }}</td>
                                <td>{{ x.userid }}</td>
                                <td>{{ x.superuser }} </td> 
                
                                <td>
                                    <button
                                        style = "background-color:black; color:white;" 
                                        class = "btn btn-light mr-1"
                                        data-bs-toggle = "modal"
                                        data-bs-target = "#adminEditModal"
                                        @click = "temp = x">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                        </svg> 
                                    </button> <button 
                                        style = "background-color:blue; color:white;"
                                        class = "btn btn-light mr-1"
                                        @click = "adminDelCust(x)">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                        </svg> 
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Ok </button>

                    <br>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="adminEditModal" aria-labelledby="adminEditModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="adminEditModalLabel">Reservation Status</h5>
                </div>
                <div class="modal-body">
                    <select v-model="adminSuperUser">
                        <option value="Y"> Enable Admin Privileges</option>
                        <option value="N"> Disable Admin Privileges</option>
                    </select>

                    <br> <br>

                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" @click="adminEditCust()"> Ok 
                    </button> <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Cancel </button>
                </div>
            </div>
        </div>
    </div>
    `,
    data() {
        return {
            dms_customer: [],
            username: '',
            password: '',
            loginstate: false,
            loggeduser: '',

            r_userid: '',
            r_pass: '',
            r_cpass: '',
            r_fname: '',
            adminSuperUser: '',
            

            reset_userid: '',
            reset_pass: '',
            reset_cpass: '',
            temp: ''
        }
    },
    methods: {
        getCustomer() {
            axios.get(variables.API_URL + "dms_customer")
            .then((response) => {
                this.dms_customer = response.data;
            })
        },
        login() {
            this.errorMessage = false
            
            if(this.username && this.password)
                for (cs of this.dms_customer)
                    if (cs.userid == this.username && cs.pwd == this.password) {
                        this.loginstate = true;
                        this.loggeduser = this.username;
                        this.adminSuperUser = cs.superuser;

                        variables.LOGGED_USER = this.username;
                        variables.SUPER_USER = cs.superuser;
                        variables.USER_CID = cs.c_id;

                        break;        
                    }
            
            if(!this.loginstate) 
                alert("Please check your username and password");
            this.password = ''
        },
        logout() {
            this.loginstate = false;
            this.username = '';
            this.loggeduser = '';
            this.adminSuperUser = '';

            variables.LOGGED_USER = "";
            variables.Super_USER = "";
        },
        reset() {
            if(!confirm("Are you sure you want to reset?"))
                return;
            
            if (!(this.reset_userid && this.reset_pass && this.reset_cpass)) {
                alert("Please enter all the fields before registering")
                return
            }
            
            if (!(this.reset_pass == this.reset_cpass)) {
                alert("Please confirm that the passwords match")
                return
            }

            for (cs of this.dms_customer)
                if (cs.userid == this.reset_userid) {
                    axios.put(variables.API_URL + "dms_customer", {
                        c_id: cs.c_id,
                        id_type: cs.id_type,
                        id_num: cs.id_num,
                        fname: cs.fname,
                        mname: cs.mname,
                        lname: cs.lname,
                        email: cs.email,
                        phone_num: cs.phone_num,
                        st_add: cs.st_add,
                        apt_num: cs.apt_num,
                        City: cs.City,
                        state: cs.state,
                        country: cs.country,
                        ZIP: cs.ZIP,
                        userid: cs.userid,
                        pwd: this.reset_pass,
                        superuser: cs.superuser
                    }).then(() => alert("Your password was successfully reset "))
                    .finally(() => this.getCustomer())
                }
            
        },
        register() {
            
            if (!(this.r_userid && this.r_fname && this.r_pass && this.r_cpass)) {
                alert("Please enter all the fields before registering")
                return
            }

            if (!(this.r_pass == this.r_cpass)) {
                alert("Please confirm that the passwords match")
                return
            }

            axios.post(variables.API_URL + "dms_customer", {
                c_id: parseInt(this.dms_customer[this.dms_customer.length - 1].c_id) + 1,
                id_type: 'PPT',
                id_num: 'A' + (parseInt(this.dms_customer[this.dms_customer.length - 1].c_id) + 1),
                fname: this.r_fname,
                mname: 'null',
                lname: 'null',
                email: 'null',
                phone_num: 'null',
                st_add: 'null',
                apt_num: 'null',
                City: 'null',
                state: 'null',
                country: 'null',
                ZIP: 'null',
                userid: this.r_userid,
                pwd: this.r_pass,
                superuser: 'N'
            }).then(() => alert("Successfully registered the user " + this.r_userid))
            .finally(() => this.getCustomer())
        },
        adminEditCust() {

            if (!this.adminSuperUser) {
                alert("Please set a privilege before editing")
                return
            }

            var x = this.temp
            this.temp = ''

            
            axios.put(variables.API_URL + "dms_customer", {
                c_id: x.c_id,
                id_type: x.id_type,
                id_num: x.id_num,
                fname: x.fname,
                mname: (x.mname)? x.mname : "null",
                lname: (x.lname)? x.lname : "null",
                email: (x.email)? x.email : "null",
                phone_num: (x.phone_num)? x.phone_num : "null",
                st_add: (x.st_add)? x.st_add : "null",
                apt_num: (x.apt_num)? x.apt_num : "null",
                City: (x.City)? x.City : "null",
                state: (x.state)? x.state : "null",
                country: (x.country)? x.country : "null",
                ZIP: (x.ZIP)? x.ZIP : "null",
                userid: (x.userid)? x.userid : "null",
                pwd: (x.pwd)? x.pwd : "null",
                superuser: this.adminSuperUser
            }).then(() => alert("Privileges have been updated"))
            .finally(() => this.getCustomer())
        },
        adminDelCust(x) {
            axios.delete(variables.API_URL + "dms_customer/" + x.c_id)
            .then(() => alert("Customer has been deleted from the server"))
            .finally(() => this.getCustomer())
        }
    },
    mounted:function(){
        this.loggeduser = variables.LOGGED_USER;
        this.adminSuperUser = variables.SUPER_USER;

        if (this.loggeduser)
            this.loginstate = true;
        this.getCustomer();
    }
}