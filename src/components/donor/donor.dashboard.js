import React, { Fragment, useEffect, useState } from "react";
import axios from "axios";
import { Navbar, Nav, Container } from "react-bootstrap";
import { useHistory } from "react-router-dom";

export default function DonorDashboard() {
  const [requestData, setRequestData] = useState([]);
  const history = useHistory();
  useEffect(() => {  
    const url = "http://localhost:64702/api/Values/AllRequest";
    const data = {
      RequestType: localStorage.getItem("UserType"),
      RequestFrom: localStorage.getItem("LoggedInUser"),
    };
    axios
      .post(url, data)
      .then((json) => {
        if (json) {
          setRequestData(json.data.lstRequest);
        }
      })
      .catch((error) => console.log(error));
  }, [requestData]);

  const logout = () => {
    localStorage.removeItem('UserType');
    localStorage.removeItem("LoggedInUser");
    history.push("/");
  }

  return (
    <Fragment>
      <Navbar bg="light" expand="lg">
        <Container>
          <Navbar.Brand href="/donorDashboard">
            Logged as :<b> {localStorage.getItem("LoggedInUser")}</b>
          </Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />{" "}
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              <Nav.Link href="/donorDashboard">Dashboard</Nav.Link>
              <Nav.Link href="/request?ty=DONOR">Manage Request</Nav.Link>
              <Nav.Link onClick={() => logout()}>Logout</Nav.Link>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
      <br></br>
      <table class="table  table-striped" style={{ width:"70%", margin : "0 auto"}}>
        <thead class="thead-dark">
          <tr>
            <th>Sr. No</th>
            <th>Request Content</th>
            <th>Status</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
          {requestData &&
            requestData.map((req, index) => {
              return (
                <tr>
                  <td> {index + 1}</td>
                  <td>{req.RequestContent}</td>
                  <td>{req.RequestStatus}</td>
                  <td>{req.InsertedON}</td>
                </tr>
              );
            })}
        </tbody>
      </table>
    </Fragment>
  );
}
