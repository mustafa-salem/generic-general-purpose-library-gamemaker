### Built-In Constants

`infinity`

* `infinity == infinity`
* `infinity == (infinity + 1)`
* `infinity == abs(-infinity)`
* `infinity != -infinity`
* `is_infinity(-infinity) == true`
* `infinity != (infinity - infinity)`
* `(-infinity != infinity - infinity - infinity)`
* `is_nan(infinity - infinity) == true`
* `typeof(infinity) == "number"`
* `is_numeric(infinity) == true`
* `is_real(infinity) == true`
* `is_int32(infinity) == false`
* `is_int64(infinity) == false`

`NaN`
* `NaN != NaN`
* `is_nan(NaN) == true`