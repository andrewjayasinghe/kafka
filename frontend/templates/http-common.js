import axios from "axios";

export default axios.create({
  baseURL: "{{ api_location }}",
  headers: {
    "Content-type": "application/json"
  }
});