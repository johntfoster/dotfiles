#/usr/bin/env python
#
# Copyright 2020-2021 John T. Foster
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
import unittest

class TestSolution(unittest.TestCase):
    
    def test_lla(self):

        with open('lla.txt', 'r') as f:

            first_line = f.readline()
            split_line = first_line.rstrip().split()

            assert split_line[0] == 'alias'
            assert split_line[1] == "lla='ls"
            assert split_line[2] == "-la'"


if __name__ == '__main__':
    unittest.main()
