<?php
 session_start();
 require_once __DIR__ . "/../../vendor/autoload.php";

use app\model\Manager;

$manager = new Manager();

// if (empty($_GET['pd'])) {
//     header("Location: ./homepage.php?error-code=FR30");
//     exit();
// }
// Aruak esteve por aqui 
// Davi esteve por aqui! 

$idProduto = 7;
$returnProduto = $manager->getInfo('user_produto', 'id_produto', $idProduto);

$returnImagemProduto = $manager->getInfo('user_produtos_img', 'id_produto', $idProduto);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Copia
    </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/f">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="styleproduto.css">
</head>

<body>
    <div class="container">
        <div class="wrapper">
            <div class="product-box">
                <div class="all-images">
                <div class="small-images">
                    <img src="<?=$returnProduto[0]['imagem_principal_produto']?>" onclick="clickimg(this)">
                                                <!--Inicio For-->
                                                <?php
                            if (count($returnImagemProduto) > 0) :
                                for ($i = 0, $iMax = count($returnImagemProduto); $i < $iMax; $i++) :
                            ?>
                    <img src="<?=$returnImagemProduto[$i]['link_img']?>" onclick="clickimg(this)">
                            <?php
                                endfor;
                            endif;
                            ?>
                            <!--Fim For-->
                    <!-- <img src="img/img2 (2).jpg" onclick="clickimg(this)">
                    <img src="img/img3 (2).jpg" onclick="clickimg(this)"> -->
                    <!-- <img src="img/img4.jpg" onclick="clickimg(this)"> -->
                </div>
                <div class="main-images">
                    <img src="<?=$returnProduto[0]['imagem_principal_produto']?>" id="imagebox"> <!-- Imagem grande -->
                </div>
            </div>
        </div>

            <div class="text">
                <div class="content">
                
                    <h2><?= $returnProduto[0]['nome_produto'] ?></h2>                            <!--Nome do produto -->
                    <p class="paragrafh"><?= $returnProduto[0]['descricao_produto'] ?></p>       <!--Descrição do produto -->
                    <br>

                    <!-- Avaliação  -->
                    <?php
                    //Avaliação
                        $countAvaliacao = $manager->countProdutoCarrinho('user_avaliacao', 'id_avaliacao', 'id_produto', $idProduto);
                    ?>
                    <div class="review">
                        <span>(<?php if($countAvaliacao[0]['COUNT(id_avaliacao)'] == 0){
                            print "-";
                            }else{
                                print $countAvaliacao[0]['COUNT(id_avaliacao)'];
                            };
                            ?>)</span>
                        <span class="fa fa-star"></span>
                    </div>
                    <!-- Fim Avaliação -->

                        <!-- Marca do celular -->
                    <form class="select-form">
                        <div class="select-container">
                            <select class="styled-select" id="colour" name="colour">
                                <option value="select-colour">Marca:</option>
                                <option value="iphone">Iphone</option>
                                <option value="sam">Samsungo</option>
                            </select>
                        </div>
                        <!-- Fim Marca do celular -->
                    

                        <!-- Modelo de capa -->
                        <div class="select-container">
                            <select class="styled-select" id="modelo" name="modelo"> 
                                <option value="select-model">Modelo:</option>
                            </select>
                        </div>
                    </form>
                    


                    <script>
                        const colourSelect = document.getElementById('colour');
                        const modeloSelect = document.getElementById('modelo');
                        
                        const modelosPorCor = {
                            iphone: ['Iphone 13 Pro Max','Iphone 14', 'Iphone 14 Pro Max'],
                            sam: ['A53', 'S23', 'S23 Ultra']
                        };
                        
                        colourSelect.addEventListener('change', function() {
                            const selectedColour = colourSelect.value;
                            modeloSelect.innerHTML = ''; // Limpa as opções anteriores
                            
                            if (selectedColour !== 'select-colour') {
                                for (const modelo of modelosPorCor[selectedColour]) {
                                    const option = document.createElement('option');
                                    option.value = modelo.toLowerCase().replace(/\s/g, '-');
                                    option.textContent = modelo;
                                    modeloSelect.appendChild(option);
                                }
                            } else {
                                const defaultOption = document.createElement('option');
                                defaultOption.value = 'select-model';
                                defaultOption.textContent = 'Modelo';
                                modeloSelect.appendChild(defaultOption);
                            }
                        });
                    </script>
                    <!-- Fim do Modelo de capa -->

                



                    <div class="price-box"><br>
                        <p class="price-1"><strike>R$ 89,900</strike></p><br>
                        <p class="price">R$ <?= $returnProduto[0]['preco_produto']?></p>
                </div> 
                <div class="buttons">
                        <button class="buy">
                            <span class="icon"></span>
                            COMPRAR
                        </button>
                                <button class="calculator">
                                    <span class="fa fa-shopping-cart"></span>
                                    CALCULAR FRETE
                                </button>
                               
                           
            </div>
            </div>
            <div class="text-box">
                <div class="placeholder-image"></div>
                <input type="text" placeholder="">
            </div>
        </div>
     
    </div>

<script>
    function clickimg(smallImg){
        var fullImg = document.getElementById("imagebox");
        fullImg.src = smallImg.src
    }
</script>

</body>
</html>
