import pytest
from sample.add import add

@pytest.mark.parametrize('input_list, expected', [
    ([2, 2], 4),
    ([3, 3], 6)
])
def test_add(input_list, expected):
    result = add(*input_list)
    assert result == expected
