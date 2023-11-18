const dms_books={
    template: `<h1> Welcome to the books page </h1>
    
    <table class = "table table-striped">
        <thead>
            <tr>
                <th>ISBN</th>
                <th>Name</th>
                <th>Topic Name</th>
                <th v-if="super_user == 'Y'">Admin actions</th>
                <th>Book Image</th>
                <th v-if="logged_state">Action</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for = "x in output">
                <td>{{ x.isbn }}</td>
                <td>{{ x.name }}</td>
                <td>{{ x.topic_name }} </td> 
                <td v-if="super_user == 'Y'">
                <button 
                    v-if="super_user == 'Y'"
                    @click = "editTopId = x.topid"
                    type="button"
                    class="btn btn-light mr-1"
                    data-bs-toggle="modal"
                    data-bs-target="#topicEditModal">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                    </svg>
                </button> </td>

                <div> <img width="50" height="50" :src="photoPath + x.isbn + '.png'"> </div>

                <td>
                    <button
                        v-if="logged_state"
                        style = "background-color:black; color:white;" 
                        @click = "reservationCheck(x.isbn)"
                        class = "btn btn-light mr-1"
                        data-bs-toggle = "modal"
                        data-bs-target = "#reserveModal"> Reserve 
                    </button> <button 
                        v-if="logged_state"
                        @click = "returnIsbn = x.isbn"
                        style = "background-color:blue; color:white;"
                        class = "btn btn-light mr-1"
                        data-bs-toggle = "modal"
                        data-bs-target = "#returnModal"> Return 
                    </button>
                </td>
            </tr>
        </tbody>
    </table>
    
    <div class="modal fade" id="reserveModal" aria-labelledby="reserveModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="reserveModalLabel">Reservation Status</h5>
                </div>
                <div class="modal-body">
                    <div v-if="availability_status"> Your Reservation has been confirmed. Please return the book {{ reserveBookNumber }} by {{ er_date }} to avoid penalty. </div>
                    <div v-else> This book is not available currently </div>
                    <br>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Ok </button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="returnModal" aria-labelledby="returnModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="returnModalLabel">Return Book</h5>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> Book Number </span>
                                <input type="text" class="form-control" v-model="returnBookNumber"> 
                            </div>
                            <span> (Please enter the 4-digit number from the front page) </span>
                        </div>
                    </div>

                    <br>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" @click="returnBook()" data-bs-toggle = "modal"
                    data-bs-target = "#successfullReturnModal"> Return 
                    </button> <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Close 
                    </button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="successfullReturnModal" aria-labelledby="successfullReturnModalLabel" aria-hidden="true" >
        <div class="modal-dialog modal-lg modal-dialog-centered" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="reserveModalLabel">Return Status</h5>
                </div>
                <div class="modal-body">
                    <div v-if = "talert == false"> Thank you for returning the book {{ returnBookNumber }}. Please pay the invoice amount {{ inv_amt }} before leaving. </div>
                    <div v-else> Please ensure to enter the correct details against the correct books. </div>
                    <br>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Ok </button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="topicEditModal" aria-labelledby="topicEditModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="topicEditModalLabel">Please edit your topic name</h5>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-row bd-highlight mb-3">
                        <div class="p-2 w-70 bd-highlight">
                            <div class="input-group mb-3">
                                <span class="input-group-text"> New topic name </span>
                                <input type="text" class="form-control" v-model="editTopName"> 
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" @click=editTopics()> Edit 
                    </button> <button type="button" class="btn btn-primary" data-bs-dismiss="modal"> Cancel </button>
                </div>
            </div>
        </div>
    </div>`,


    data() {
        return {
            dms_books: [],
            dms_topics: [],
            dms_copies: [],
            dms_rentals: [],

            output: [],
            availability_status: false,
            returnBookNumber: '',
            reserveBookNumber: '',
            returnIsbn: '',


            b_date: '',
            er_date: '',
            inv_amt: '',
            editTopName: '',
            editTopId: '',
            talert : false,

            logged_state: false,
            logged_user_c_id: '',
            super_user: '',

            photoPath: variables.PHOTO_URL
        }
    },
    methods: {
        clearVal() {
            this.returnBookNumber = ''
            this.reserveBookNumber = ''
        },
        getBooks() {
            axios.get(variables.API_URL + "dms_books")
            .then((response) => {
                this.dms_books = response.data;
            }).finally(() => this.getTopics());
        },
        getTopics() {
            axios.get(variables.API_URL + "dms_topics")
            .then((response) => {
                this.dms_topics = response.data;
            }).finally(() => {
                this.refreshData()
                this.getCopies()
            });
        },
        getCopies() {
            axios.get(variables.API_URL + "dms_copies")
            .then((response) => {
                this.dms_copies = response.data;
            }).finally(() => this.getRentals());
        },
        getRentals() {
            axios.get(variables.API_URL + "dms_rentals")
            .then((response) => {
                this.dms_rentals = response.data;
            })
        },
        refreshData() {
            if(this.dms_books && this.dms_topics) {
                var temp1= {}
                for (bk of this.dms_books) {
                    var temp = {}
                    for (tp of this.dms_topics) {
                        if(bk.topid == tp.topid) {
                            temp1[bk.topid] = tp.topic_name
                            break;
                        }
                    }
                    temp['isbn'] = bk.isbn
                    temp['name'] = bk.name
                    temp['topid'] = bk.topid
                    temp['topic_name'] = temp1[bk.topid]
                    this.output.push(temp)
                }
            }
        },
        reservationCheck(isbn='') {
            var availability_check = []
            this.availability_status = false

            if(this.dms_copies)
                for (copies of this.dms_copies)
                    if (isbn == copies.isbn)
                        availability_check.push(copies)

            for (ac of availability_check)
                if (ac.avail_status == 'Y') {
                    this.availability_status = true
                    this.reserveBookNumber = ac.book_num
                }

            if (this.availability_status)
                this.insertToRentalTable(isbn)
        },
        insertToRentalTable(isbn) {
            this.er_date = ''
            this.b_date = ''

            var today = new Date();
            this.b_date = today.toISOString().slice(0, 19).replace('T', ' ')

            today.setDate(today.getDate() + 7);
            this.er_date = (new Date(today).toISOString() + 7) .slice(0, 19).replace('T', ' ')
            
        

            axios.post(variables.API_URL + "dms_rentals", {
                rid: parseInt(this.dms_rentals[this.dms_rentals.length - 1].rid) + 1,
                c_id: variables.USER_CID,
                book_num: this.reserveBookNumber,
                b_date: this.b_date,
                er_date: this.er_date,
                ar_date: "null"
            }).then(() => this.changeReservation(isbn, 'N', this.reserveBookNumber))
        },
        changeReservation(isbn, stat, book_no) {
            axios.put(variables.API_URL + "dms_copies", {
                book_num: book_no,
                isbn: isbn,
                avail_status: stat
            }).then(() => this.getBooks())
        },
        returnBook() {
            var rid = ''
            var isbn = ''
            var today = new Date();
            var ar_date = today.toISOString().slice(0, 19).replace('T', ' ')
            var b_date = ''
            var er_date = ''
            var bkn = []
            this.talert = false

            for(rent of this.dms_rentals) 
                if (rent.c_id == variables.USER_CID && rent.book_num == this.returnBookNumber) {
                    if (!rent.ar_date || rent.ar_date == "0000-00-00 00:00:00") 
                        rid = rent.rid
                
                    b_date = rent.b_date
                    er_date = rent.er_date
                }

            for (copies of this.dms_copies) {
                if(this.returnIsbn == copies.isbn)
                    bkn.push(copies.book_num)
            }
            for (copies of this.dms_copies){
                if (this.returnBookNumber == copies.book_num && copies.avail_status == 'N') {
                    isbn = copies.isbn;
                    break;
                }
            }

            if (isbn != this.returnIsbn || !rid || !bkn.includes(this.returnBookNumber)) {
                this.talert=true
                this.returnBookNumber = ''
                return;
            }
           
            axios.put(variables.API_URL + "dms_rentals", {
                rid: rid,
                c_id: variables.USER_CID,
                book_num: this.returnBookNumber,
                b_date: b_date,
                er_date: er_date,
                ar_date: ar_date
            }).then(() => {
                this.getInvoice(rid)
                this.changeReservation(isbn, 'Y', this.returnBookNumber)
            })
        },
        getInvoice(rid) {
            this.inv_amt = ''
            axios.get(variables.API_URL + "dms_invoice")
            .then((response) => {
                this.dms_invoice = response.data;
                for (inv of this.dms_invoice){
                    if (inv.rid == rid) {
                        this.inv_amt = inv.inv_amt
                    }
                }
            })
        },
        editTopics() {
            axios.put(variables.API_URL + "dms_topics", {
                topid: this.editTopId,
                topic_name: this.editTopName
            }).then(() => this.getTopics())
            .finally(() => {
                alert("Topic name has been changed successfully")
                this.editTopId = ''
                this.editTopName = ''
            })
        }
    },
    mounted:function(){
        if (variables.LOGGED_USER) {
            this.logged_user_c_id = variables.USER_CID
            this.logged_state = true
            this.super_user = variables.SUPER_USER
        }
            
        this.getBooks();
    }
}