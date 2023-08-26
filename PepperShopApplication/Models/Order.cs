using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    [Table("orders")]
    public class Order
    {
        [Key]
        public int Id { get; set; }

        public Customer Customer { get; set; }
        public Employee Employee { get; set; }
        public int Status { get; set; }
        public DateTime OrderTime { get; set; } = DateTime.Now;
        public DateTime? CompleteTime { get; set; }

    }
}
