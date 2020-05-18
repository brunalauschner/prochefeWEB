<template>
  <div class="home">
    <div id="informacoes">
      <label class="infoHome" id="infotelefone">(47) 3854-6201</label>
      <label id="traco">|</label>
      <label class="infoHome" id="infoemail">padariabrugael@contato.com</label>
      <label class="infoHome" id="infoendereco">Rua Sem Criatividade 1529 - Blumenau</label>
    </div><br>
    <div id="links">
      <router-link class="link" to="/">Home</router-link>
      <router-link class="link" to="/sobrenos">Sobre Nós</router-link>
      <router-link class="link" to="/cardapio">Cardápio</router-link>
      <router-link class="link" to="/delivery">Delivery</router-link>
      <router-link class="link" to="/fidelidade">Fidelidade</router-link>
      <router-link class="link" to="/sugestoes">Sugestões</router-link>
      <router-link class="link" to="/intranet">Intranet</router-link>
    </div>
  </div>
</template>

<script>

export default {
}
</script>

<style>
.home{
  background-color: rgb(249, 218, 138);
  height: 160px;
  width: 100%; /* pesquisar como tirar margin ao redor*/
  margin: 0px 0px 0px 0px;
}

#links{
  width: 1100px;
  height: 40px;
  margin: 50px 0px 0px 120px;
}
.link{
  color: black;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-decoration: none;
  margin: 0px 0px 0px 70px;
  font-size: 20px;
}
.link:hover{
  text-decoration: underline;
}
#informacoes{
  width: 1350px;
  height: 30px;
  padding: 5px 0px 0px 0px;
}
.infoHome{
  color: black;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-decoration: none;
}
#infotelefone{
  margin: 0px 0px 0px 80px;
}
#infoemail{
  margin: 0px 0px 0px 20px;
}
#infoendereco{
  margin: 0px 0px 0px 580px;
}
#traco{
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  margin: 0px 0px 0px 20px;
}
</style>
