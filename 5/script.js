var vue = new Vue({
     el:"#app",
     data:{
         
        result1:'',
        result2:'',
        result3:'',
        x: 0.13,

        errors:[],
        txt1: null,
        txt2: null,
        txt3: null,
        txt4: null,
        txt5: null,
     },
     methods:{
         checkForm: function (e) {
             if (this.txt1 && this.txt2 && this.txt3 && this.txt4 && this.txt5){
                 return true;
             }
             this.errors=[];

             if (!this.txt1){
                 this.errors.push(' Поле 1 не заполнено!');
                 
            }
            if (!this.txt2){
                this.errors.push(' Поле 2 не заполнено');
               
            }
            if (!this.txt3){
                this.errors.push(' Поле 3 не заполнено');
               
            }
            if (!this.txt4){
                this.errors.push(' Поле 4 не заполнено');
               
            }
            if (!this.txt5){
                this.errors.push(' Поле 5 не заполнено');
              
            }
            e.preventDefault();
        },
    calc1: function(){
        this.result1 = (txt1 * txt3 *(txt5 / txt4) + txt2);
        this.result2 = eval( this.result1* this.x);
        this.result3 = eval( this.result1 - this.result2);
        },
     }
 }) 