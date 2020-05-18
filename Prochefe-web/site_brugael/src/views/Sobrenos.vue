<template>
  <div class="sobre">
      <div id="links2">
      <router-link class="link" to="/">Home</router-link>
      <router-link class="link" to="/sobrenos">Sobre Nós</router-link>
      <router-link class="link" to="/cardapio">Cardápio</router-link>
      <router-link class="link" to="/delivery">Delivery</router-link>
      <router-link class="link" to="/fidelidade">Fidelidade</router-link>
      <router-link class="link" to="/sugestoes">Sugestões</router-link>
      <router-link class="link" to="/intranet">Intranet</router-link>
      </div>
      <div id="informacoessobre">
          <h3 id="titulo2">Sobre nós</h3>
          <div class="perguntas">
              <h3 class="per">Quem somos?</h3>
              <label id="res1">Somos um grupo de 3 estudantes da Instituição SENAI do curso de Informática: <br> Bruna Lauschner, Gabrielly Mulhmann e Gabriel Cadore</label>
              <!-- <label id="nomes1"> Bruna Lauschner, Gabrielly Mulhmann e Gabriel Cadore</label>          -->
          </div>
          <div class="perguntas">
              <h3 class="per">Proposta</h3>
              <label id="res2">Juntos, compusemos um website para a padaria fictícia de nome "Brugael" para um projeto avaliativo que tem como objetivo final o aprendizado e o conhecimento adquirido.</label>  
          </div>
          <div class="perguntas">
              <h3 class="per">Agradecimentos</h3>
              <label id="res3">Agradecemos aos nossos professores William R. Chenta e Jorge A. Golle por nos auxiliarem na confecção deste projeto.</label>  
          </div>
      </div>
  </div>
</template>

<script>

export default {
}
</script>

<style>
.sobre{
  background-color: rgb(249, 218, 138);
  height: 60px;
  width: 100%;
  margin: 0px 0px 0px 0px;
}
#links2{
    padding: 12px 0px 0px 0px;
}
.link{
  color: black;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-decoration: none;
}
.link:hover{
  text-decoration: underline;
}
#informacoessobre{
    padding: 23px;
}
#titulo2{
    color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-decoration: bold;
    font-style: oblique;
    font-size: 40px;
    text-align: center;
}

.perguntas{
    display: flex;
    flex: wrap;
}
.per{
    color: rgb(207, 163, 50);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /* text-decoration: bold; */
    font-size: 33px;
    margin: 27px 0px 40px 90px;
}
#res1{
    color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    margin: 40px 0px 0px 180px;
    font-size: 20px;
}

#res2{
    color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    margin: 40px 38px 0px 190px;
    font-size: 20px;
}
#res3{
    color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    margin: 40px 50px 0px 90px;
    font-size: 20px;
}
</style>
