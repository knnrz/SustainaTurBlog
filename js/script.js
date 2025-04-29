// === Mostrar ou esconder o botão voltar ao topo ===
const backToTopButton = document.getElementById('back-to-top');

window.addEventListener('scroll', () => {
  if (window.pageYOffset > 300) {
    backToTopButton.style.display = 'block';
  } else {
    backToTopButton.style.display = 'none';
  }
});

// === Voltar ao topo quando clicar ===
backToTopButton.addEventListener('click', () => {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
});

// === Validação do formulário ===
const form = document.getElementById('formulario-contato');

if (form) {
  form.addEventListener('submit', function (e) {
    e.preventDefault();

    const nome = document.getElementById('nome');
    const email = document.getElementById('email');
    const mensagem = document.getElementById('mensagem');

    if (nome.value.trim() === '' || email.value.trim() === '' || mensagem.value.trim() === '') {
      alert('Por favor, preencha todos os campos!');
      return;
    }

    // Se quiser integrar o EmailJS, aqui seria o lugar:
    /*
    emailjs.send('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', {
      from_name: nome.value,
      from_email: email.value,
      message: mensagem.value,
    }).then(function(response) {
      console.log('SUCESSO!', response.status, response.text);
      alert('Mensagem enviada com sucesso!');
      form.reset();
    }, function(error) {
      console.error('ERRO...', error);
      alert('Erro ao enviar mensagem, tente novamente.');
    });
    */

    alert('Mensagem validada! (Integre o EmailJS aqui)');
  });
}