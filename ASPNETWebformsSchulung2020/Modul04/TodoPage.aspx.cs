﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul04
{
    public partial class TodoPage : System.Web.UI.Page
    {
        public List<String> ToDoItems { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ToDoItems = File.ReadAllLines(Server.MapPath("~/app_data/todo.txt")).ToList();
            //todo.txt per Hand anlegen q&d
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            File.AppendAllText(Server.MapPath("~/app_data/todo.txt"),
                task.Text + System.Environment.NewLine);
            ToDoItems.Add(task.Text);
            task.Text = "";

        }
    }
    }