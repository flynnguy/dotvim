" Sahi is based on javascript so it makes sense to start with the javascript syntax file
so $VIMRUNTIME/syntax/javascript.vim

syn keyword javaScriptReserved		void prototype 
syn keyword sahiFunction            _addMock _alert _assert _assertContainsText _assertEqual _assertEqualArrays _assertExists _assertFalse _assertNotContainsText 
syn keyword sahiFunction            _assertNotEqual _assertNotExists _assertNotNull _assertNotTrue _assertNull _assertTrue _blur _call _callServer _callServer 
syn keyword sahiFunction            _check _clearLastAlert _clearLastConfirm _clearLastDownloadedFileName _clearLastPrompt _clearPrintCalled _click 
syn keyword sahiFunction            _clickLinkByAccessor _closeWindow _createCookie _debug _debugToErr _debugToFile _deleteCookie _disableKeepAlive _domain 
syn keyword sahiFunction            _doubleClick _dragDrop _dragDropXY _enableKeepAlive _eval _expectConfirm _expectPrompt _focus _highlight _keyDown _keyPress 
syn keyword sahiFunction            _keyUp _log _mockImage _mouseDown _mouseOver _mouseUp _navigateTo _popup _removeFocus _removeMock _resetSavedRandom _rightClick 
syn keyword sahiFunction            _rteWrite _saveDownloadedAs _setFile _setGlobal _setSelected _setValue _simulateEvent _simulateMouseEvent _simulateMouseEventXY 
syn keyword sahiFunction            _type _uncheck _wait _accessor _button _checkbox _image _imageSubmitButton _link _password _radio _select _submit _textarea 
syn keyword sahiFunction            _textbox _hidden _event _cell _table _byId _row _div _span _spandiv _option _reset _file _get _byText _byClassName _label 
syn keyword sahiFunction            _listItem _list _parentNode _parentCell _parentRow _parentTable _in _near _rte _iframe _tableHeader _heading1 _heading2 _heading3 
syn keyword sahiFunction            _heading4 _heading5 _heading6 _hidden _area _map _italic _bold _emphasis _strong _preformatted _code _blockquote _xy _under 
syn keyword sahiFunction            _byXPath _bySeleniumLocator _getValue _getAttribute _containsText _containsHTML _getText _getCellText _getSelectedText _lastAlert 
syn keyword sahiFunction            _lastPrompt _lastConfirm _style _cookie _position _rteHTML _rteText _isVisible _contains _title _exists _isIE _isFF _isFF3 
syn keyword sahiFunction            _isChrome _isSafari _isOpera _isHTMLUnit _fetch _random _savedRandom _getGlobal _getDB _readFile _readURL _print _printCalled 
syn keyword sahiFunction            _lastDownloadedFileName _scriptName _logException _logExceptionAsFailure _stopOnError _continueOnError _scriptPath _re _readCSVFile 
syn keyword sahiFunction            _writeFile _writeToFile _deleteFile _suiteInfo _writeCSVFile _areEqualArrays _userDataDir _setRecovery _removeRecovery _sessionInfo 
syn keyword sahiFunction            _renameFile _runUnitTests _fail _dataDrive _condition _setSpeed _selectWindow _selectDomain _userDataPath _evalOnRhino _scriptStatus 
syn keyword sahiFunction            _flex _stackTrace _dynamicInclude _execute _prompt _confirm _resolvePath _datebox _datetimebox _datetime-localbox _emailbox _monthbox 
syn keyword sahiFunction            _numberbox _rangebox _telbox _timebox _urlbox _weekbox _include

if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink sahiFunction     Function
  delcommand HiLink
endif
