import { BrowserRouter, Routes, Route } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "./App.css";
import Products from "./components/Products";
import ProductDetail from "./components/ProductDetail";
import Users from "./components/Users";
import UserDetail from "./components/UserDetail";
import Categories from "./components/Categories";

function App() {
  return (
    <>
      <div className="App">
        <BrowserRouter>
          <Routes>
            <Route path="/" element={<Products />} />
            <Route path="/products/:id" element={<ProductDetail />} />
            <Route path="/users/" element={<Users />} />
            <Route path="/users/:id" element={<UserDetail />} />
            <Route path="/categories" element={<Categories />} />
          </Routes>
        </BrowserRouter>
      </div>
    </>
  );
}

export default App;
