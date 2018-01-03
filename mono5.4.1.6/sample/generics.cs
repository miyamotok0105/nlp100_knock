//mcs generics.cs
//mono generics.exe

using System;

public class Generics
{
    static public void Main ()
    {

        int inum1 = 1;
        int inum2 = 2;
        Console.WriteLine(Max(inum1, inum2));

        double dnum1 = 1.0;
        double dnum2 = 2.0;
        Console.WriteLine(Max(dnum1, dnum2));

        Console.WriteLine(MaxG(inum1, inum1));
        Console.WriteLine(MaxG(dnum1, dnum2));
    }

    static int Max(int x, int  y)
    {
      return x > y ? x : y;
    }

    static double Max(double x, double y)
    {
      return x > y ? x : y;
    }

    //ジェネリックは、よしなに型を決めてくれる
    static Type MaxG<Type>(Type a, Type b)
      where Type : IComparable
    {
      return a.CompareTo(b) > 0 ? a : b;
    }

}
