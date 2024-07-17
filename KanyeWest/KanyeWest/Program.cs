using System;
using System.Net.Http;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace KanyeWest
{
    class Program
    {
        static void Main(string[] args)
        {
            
            
            
            for  (int i = 0; i < 5; i++)
            {
                KanyeQuote();

                RonQuote();
            }
        }
            
                public static void KanyeQuote()
                {
                var client = new HttpClient();

                var kanyeURL = "https://api.kanye.rest/";

                var kanyeResponse = client.GetStringAsync(kanyeURL).Result;

                var kanyeQuote = JObject.Parse(kanyeResponse).GetValue("quote").ToString();



                Console.WriteLine($"Kanye: {kanyeQuote}");

                Console.WriteLine("");
                }

                public static void RonQuote()
                {
                var client = new HttpClient();

                var ronURL = "https://ron-swanson-quotes.herokuapp.com/v2/quotes";

                var ronResponse = client.GetStringAsync(ronURL).Result;

                var ronQuote = JArray.Parse(ronResponse).ToString().Replace('[', ' ').Replace(']', ' ').Trim();

                Console.WriteLine($"Ron: {ronQuote}");

                Console.WriteLine("");
                }
            
    }
        
    
}