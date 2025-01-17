﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Facebook.Models
{
    public class PostModel
    {
        [Key]
        public int Id { get; set; }

        [Display(Name = "First Name: ")]
        public string FirstName { get; set; }

        [Display(Name = "Last Name: ")]
        public string LastName { get; set; }

        [Display(Name = "Email: ")]
        public string Email { get; set; }

        [Display(Name = "Post Date Time: ")]
        public DateTime PostDateTime { get; set; }

        [Display(Name = "Post: ")]
        public string Post { get; set; }
        public string ImageName { get; set; }
        public string ImagePath { get; set; }

    }
}
