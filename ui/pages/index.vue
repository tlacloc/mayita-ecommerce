<template>
  <div>
    <head>
      <title>Mayita Accesorios</title>
    </head>

    <body data-spy="scroll" data-target="#navbarSupportedContent" data-offset="57">
      <!-- Header -->
      <header>
        Hola
      </header>
      <!-- End of header -->

      <!-- main content -->
      <!-- End of main content -->

      <!-- Speakers -->
      <!-- End of content -->

      <!-- Date and location -->
      <!-- End of date and location -->

      <!-- Form -->
      <!-- End of form -->

      <!-- footer -->
      <footer id="footer" class="pb-4 pt-4">
        <div class="container">
          <div class="row text-center text-center font-weight-normal">
            <div class="col-12 col-lg-12">
              <h2>Recibe nuestras promociones</h2>
            </div>
            <div class="col-12 col-lg-12">
              <span>Enterate de nuestras nuevas colecciones, promociones y más aquí.</span>
            </div>
            <div class="col-12 col-lg-12">
              <b-form @submit="onSubmit" @reset="onReset">
                <b-form-group
                  id="input-group-1"
                  label-for="input-1"
                >
                  <b-form-input
                    id="input-1"
                    v-model="form.email"
                    type="email"
                    placeholder="Correo electrónico"
                    required
                  />
                </b-form-group>
              </b-form>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row text-left">
            <div class="col">
              <h5>
                Mas información
              </h5>
              <h6>
                Envios
              </h6>
              <h6>
                Cambios y devoluciones
              </h6>
              <h6>
                ¿Cuál es mi talla?
              </h6>
              <h6>
                Cuidados a mi joyería
              </h6>
              <h6>
                Kueski Pay
              </h6>
              <h6>
                Mayoreo
              </h6>
              <h6>
                Aviso de privacidad
              </h6>
            </div>
            <div class="col">
              <h5>
                Contactanos
              </h5>
              <h6 href="">
                WhatsApp
              </h6>
              <h6 href="">
                Correo
              </h6>
              <h6 href="">
                Horario: Lunes a Viernes de 9:00 a 18:00 hrs.
              </h6>
            </div>
          </div>
        </div>
      </footer>
      <!-- End of footer -->

      <!-- Modal -->
      <!-- End of modal -->
    </body>
  </div>
</template>

<script>
export default {
  name: 'IndexPage',
  data () {
    return {
      form: {
        email: '',
        name: '',
        food: null,
        checked: []
      },
      foods: [{ text: 'Select One', value: null }, 'Carrots', 'Beans', 'Tomatoes', 'Corn'],
      show: true
    }
  },
  methods: {
    onSubmit (event) {
      event.preventDefault()
      alert(JSON.stringify(this.form))
    },
    onReset (event) {
      event.preventDefault()
      // Reset our form values
      this.form.email = ''
      this.form.name = ''
      this.form.food = null
      this.form.checked = []
      // Trick to reset/clear native browser form validation state
      this.show = false
      this.$nextTick(() => {
        this.show = true
      })
    }
  }
}
</script>

<style>
#footer {
  background-color: #DAA1C7;
}
</style>
