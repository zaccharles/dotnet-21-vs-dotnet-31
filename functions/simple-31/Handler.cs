using System.IO;

namespace LambdaBenchmark
{
    public class Handler
    {
       public Stream Handle(Stream request)
       {
           return request;
       }
    }
}
