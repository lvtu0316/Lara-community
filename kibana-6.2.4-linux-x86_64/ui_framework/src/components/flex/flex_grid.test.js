'use strict';

var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

var _enzyme = require('enzyme');

var _required_props = require('../../test/required_props');

var _flex_grid = require('./flex_grid');

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

describe('KuiFlexGrid', () => {
  test('is rendered', () => {
    const component = (0, _enzyme.render)(_react2.default.createElement(_flex_grid.KuiFlexGrid, _extends({ columns: 3 }, _required_props.requiredProps)));

    expect(component).toMatchSnapshot();
  });
});
