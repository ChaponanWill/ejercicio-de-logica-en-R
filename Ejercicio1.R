# Implementar un programa de consola que permita al usuario almacenar su lista de compras para el fin de semana.
# El usuario podrá:
#cerrar el programa y ver el listado con la opción '0'
#Ver la lista completa de los productos y si no tiene mandarle un mensaje personalizado con  la opción '1'
#Agregar productos con la opción '3' y para salir de agregar productos debe introducir el '0'
#Finalmente con la opción '3' podrá eliminar un artículo de la lista
foco<-"prendido"
listaProductos<-c()

while(foco=="prendido"){
  print("¡BIENVENIDO 🖖!")
  print("Este programa ha sido especialmente para que realices tu lista del supermercado 😀")
  print("0. Cerrar el programa y ver la lista de los productos...")
  print("1. Ver la lista completa ...")
  print("2. Agregar productos...")
  print("3. Eliminar un producto")
  
  opcion<-readline("Ingresa la opción: ")
  if (opcion == 0){
    foco<-"Apagado"
  }else if (opcion==1){
    if(is.null(listaProductos)){
      print("----------------------------------------------------------")
      print("⚠️Aún no tienes artículos en la lista, agrega algunos 😀")
      print("----------------------------------------------------------")
    }else{
      print("----------------------------------------------------------")
      print("✅Tu lista de productos es: ")
      print(listaProductos)
      print("----------------------------------------------------------")
    }
    
  }else if (opcion==2){
    controlador<-1
    while(controlador==1){
      print("----------------------------------------------------------")
      print("😀 En esta sección puedes agregar productos a tu lista del Mercado")
      print("Escribe 0 para salir ... ")
      articulo<-readline(paste("🛒Ingresa el ",(length(listaProductos)+1), "° artículo: "))
      print("----------------------------------------------------------")
      if(articulo==0){
        break
      }
      listaProductos<-c(listaProductos, articulo)
    }
    
  }else if(opcion == 3){
    print("----------------------------------------------------------")
    borrarProducto<-readline("¿Introduce el nombre del artículo que deseas eliminar?")
    if(length(which(listaProductos == borrarProducto))){
      indice <- which(listaProductos == borrarProducto)
      listaProductos <- listaProductos[-indice]
      print("✅Lista actualizada")
      print(listaProductos)
    }else{
      print("🚫Elemento no encontrado")
    }
    print("----------------------------------------------------------")
  }
}
print(listaProductos)