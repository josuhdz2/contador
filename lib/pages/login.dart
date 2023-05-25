import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget
{
  const LoginPage({ Key? key }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Stack
      (
        children:
        const [
          Background(),
          Contenido()
        ]
      )
    );
  }
}
//fondo
class Background extends StatelessWidget
{
  const Background({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      decoration: BoxDecoration
      (
        gradient: LinearGradient
        (
          colors:
          [
            Colors.blue.shade200,
            Colors.blue
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        )
      )
    );//
  }
}
//contenido
class Contenido extends StatefulWidget
{
  const Contenido({ Key? key }) : super(key: key);
  @override
  State<Contenido> createState() => _ContenidoState();
}
class _ContenidoState extends State<Contenido>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric
      (
        horizontal: 20,
      ),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,//centra de arriba a bajo
        crossAxisAlignment: CrossAxisAlignment.start,//centra de izquierda a derecha
        children:
        const [
          Text
          (
            "Login",
            style: TextStyle
            (
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox
          (
            height: 5
          ),
          Text
          (
            "Welcome to your account",
            style: TextStyle
            (
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5
            )
          ),
          SizedBox
          (
            height: 10
          ),
          Datos()
        ],
      )
    );
  }
}
//datos
class Datos extends StatefulWidget
{
  const Datos({ Key? key }) : super(key: key);
  @override
  State<Datos> createState() => _DatosState();
}
class _DatosState extends State<Datos>
{
  bool obs=true;
  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: const EdgeInsets.all(20),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const Text
          (
            "Email",
            style: TextStyle
            (
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          const SizedBox
          (
            height: 5
          ),
          TextFormField
          (
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration
            (
              border: OutlineInputBorder(),
              hintText: "email@example.com"
            ),
          ),
          const SizedBox
          (
            height: 5
          ),
          const Text
          (
            "Password",
            style: TextStyle
            (
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          const SizedBox
          (
            height: 5
          ),
          TextFormField
          (
            decoration: InputDecoration
            (
              border: const OutlineInputBorder(),
              hintText: "example123",
              suffixIcon: IconButton
              (
                onPressed: ()
                {
                  setState(()
                  {
                    obs=obs==true?false:true;
                  });
                },
                icon: const Icon(Icons.remove_red_eye_outlined)
              )
            ),
            obscureText: obs,
          ),
          const SizedBox(height: 10),
          const Remember(),
          const SizedBox(height: 10),
          const Botones()
        ],
      ),
    );
  }
}
//remember
class Remember extends StatefulWidget
{
  const Remember({ Key? key }) : super(key: key);
  @override
  State<Remember> createState() => _RememberState();
}
class _RememberState extends State<Remember>
{
  bool valor=false;
  @override
  Widget build(BuildContext context)
  {
    return Row
    (
      children:
      [
        Checkbox
        (
          value: valor,
          onChanged:(valor)
          {
            setState(()
            {
              valor=valor==true?false:true;
            });
          },
        ),
        const Text("Recordar contrasena?"),
        Spacer(),
        TextButton
        (
          onPressed: (){},
          child: const Text("Olvidaste tu contrasena?")
        )
      ],
    );
  }
}
//botones
class Botones extends StatelessWidget
{
  const Botones({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      children:
      [
        SizedBox
        (
          width: double.infinity,
          height: 50,
          child: ElevatedButton
          (
            onPressed:(){},
            style: ButtonStyle
            (
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff142047))
            ),
            child:const Text
            (
              "Login",
              style: TextStyle
              (
                color: Colors.white,
                fontSize: 18
              )
            )
          )
        ),
        const SizedBox
        (
          height: 10,
        ),
        const Text
        (
          "o ingresa con",
          style: TextStyle
          (
            color: Colors.grey
          ),
        ),
        const SizedBox
        (
          height: 25,
        ),
        SizedBox
        (
          width: double.infinity,
          height: 50,
          child: OutlinedButton
          (
            onPressed:(){},
            child:const Text
            (
              "Accede con Google",
              style: TextStyle
              (
                color: Color(0xff142047),
                fontSize: 18
              ),
            )
          )
        ),
        const SizedBox
        (
          height: 10,
        ),
        SizedBox
        (
          width: double.infinity,
          height: 50,
          child: OutlinedButton
          (
            onPressed:(){},
            child: const Text
            (
              "Accede con Facebook",
              style: TextStyle
              (
                color: Color(0xff142047),
                fontSize: 18
              ),
            )
          ),
        )
      ],
    );
  }
}