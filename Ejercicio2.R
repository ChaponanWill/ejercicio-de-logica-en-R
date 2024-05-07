#Ejercicio 2
# Yhair, un pequeño emprendedor, desea un pequeño programa de consola que calcule rápidamente 
# el pago que debe realizar su cliente por los artículos que lleva.
# Teniendo en cuenta que Yhair solo vende 3 productos (audífonos, mouse y teclado) con los siguientes precios:
# Audifonos -> 39 soles.
# Mouse -> 49 soles.
# Teclado -> 89 soles.
# Además  debemos tener en cuenta que los artículos tienen una venta máxima de 800 por cliente.

print("-------------------------------------------------")
print("¡¡¡ Bienvenido a Nuestro Programa !!! 😀")
print("Ten en cuenta el precio de los productos")
print("AUDIFONOS  -> 39 SOLES")
print("MOUSE      -> 49 SOLES")
print("TECLADO    -> 89 SOLES")
audifono<-39
mouse<-49
teclado<-89
print("-------------------------------------------------")
foco=0
while(foco==0){
  print("-------------------------------------------------")
  print("RECUERDA: INTRODUCE EL NUMERO 0 PARA SALIR DEL PROGRAMA")
  print("-------------------------------------------------")
  print("️🔢CALCULAR ")  
  cuantosProductos<- readline("¿Cuántos Productos lleva el cliente?: ")
  if(cuantosProductos>0 && cuantosProductos<=800){
    cuantosProductos <- as.numeric(cuantosProductos)
    pagar<-0
    controlador <- 0
      while(controlador == 0){
        print("1. AUDIFONOS")
        print("2. MOUSE")
        print("3. TECLADO")
        eligeProducto<-readline("Elige el número del producto que lleva el cliente: ")
        if(eligeProducto == 1){
          pagar <- 39 * cuantosProductos
          break
        }else if(eligeProducto ==2){
          pagar <- 49 * cuantosProductos
          break
        }else if(eligeProducto == 3){
          pagar <- 89 * cuantosProductos
          break
        }else{
          print("⚠️⚠️⚠️PRODUCTO NO ENCONTRADO")
        }
      }
      #SI hay un error al introducir los numeros y no se almaceno un numero correcto
      if(is.na(pagar)){
        print("🚫🚫ALGO SALIÓ MAL")
      }else{
        print("-------------------------------------------------")
        print(paste("✅✅✅EL CLIENTE DEBE PAGAR: ", pagar, "SOLES"))
        print("-------------------------------------------------")  
      }
      
  }else if(cuantosProductos==0){
      print(" 🖖 GRACIAS POR SU PREFERENCIA ...")
      foco<-1
  #Mensaje que muestre que debemos introducir un numero válido
  }else{
    print("🙅El rango del producto es entre 0 y 800")
  }
}

