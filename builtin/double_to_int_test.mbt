// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
test "Double::to_int" {
  inspect!(0.0.to_int(), content="0")
  inspect!(1.0.to_int(), content="1")
  inspect!(1.5.to_int(), content="1")
  inspect!(1.9.to_int(), content="1")
  inspect!(2.0.to_int(), content="2")
  inspect!(2.5.to_int(), content="2")
  inspect!(2.9.to_int(), content="2")
  inspect!((-1.0).to_int(), content="-1")
  inspect!((-1.5).to_int(), content="-1")
  inspect!((-1.9).to_int(), content="-1")
  inspect!((-2.0).to_int(), content="-2")
  inspect!((-2.5).to_int(), content="-2")
  inspect!((-2.9).to_int(), content="-2")
  inspect!((0.0 / 0.0).to_int(), content="0")
  inspect!((1.0 / 0.0).to_int(), content="2147483647")
  inspect!((-1.0 / 0.0).to_int(), content="-2147483648")
  inspect!(2147483647.0.to_int(), content="2147483647")
  inspect!((-2147483648.0).to_int(), content="-2147483648")
  inspect!(2147483648.0.to_int(), content="2147483647")
  inspect!((-2147483649.0).to_int(), content="-2147483648")
}
