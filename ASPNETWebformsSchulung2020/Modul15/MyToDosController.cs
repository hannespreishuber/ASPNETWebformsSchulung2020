using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using ASPNETWebformsSchulung2020.Modul09;

namespace ASPNETWebformsSchulung2020.Modul15
{
    public class MyToDosController : ApiController
    {
        private DbTodo db = new DbTodo();

        // GET: api/MyToDos
        public IQueryable<MyToDos> GetMyToDos()
        {
            return db.MyToDos;
        }

        // GET: api/MyToDos/5
        [ResponseType(typeof(MyToDos))]
        public IHttpActionResult GetMyToDos(int id)
        {
            MyToDos myToDos = db.MyToDos.Find(id);
            if (myToDos == null)
            {
                return NotFound();
            }

            return Ok(myToDos);
        }

        // PUT: api/MyToDos/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutMyToDos(int id, MyToDos myToDos)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != myToDos.Id)
            {
                return BadRequest();
            }

            db.Entry(myToDos).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MyToDosExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/MyToDos
        [ResponseType(typeof(MyToDos))]
        public IHttpActionResult PostMyToDos(MyToDos myToDos)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.MyToDos.Add(myToDos);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = myToDos.Id }, myToDos);
        }

        // DELETE: api/MyToDos/5
        [ResponseType(typeof(MyToDos))]
        public IHttpActionResult DeleteMyToDos(int id)
        {
            MyToDos myToDos = db.MyToDos.Find(id);
            if (myToDos == null)
            {
                return NotFound();
            }

            db.MyToDos.Remove(myToDos);
            db.SaveChanges();

            return Ok(myToDos);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MyToDosExists(int id)
        {
            return db.MyToDos.Count(e => e.Id == id) > 0;
        }
    }
}