'use strict';

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

var _enzyme = require('enzyme');

var _required_props = require('../../test/required_props');

var _table_row_check_box_cell = require('./table_row_check_box_cell');

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

test('renders KuiTableRowCheckBoxCell', () => {
  const component = _react2.default.createElement(_table_row_check_box_cell.KuiTableRowCheckBoxCell, _required_props.requiredProps);
  expect((0, _enzyme.render)(component)).toMatchSnapshot();
});
