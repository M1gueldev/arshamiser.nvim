local internals = function(palette) -- Internals {{{
  return {
    Normal = { -- {{{
      fg = palette.white,
      bg = palette.base0,
    },
    NormalNC = {
      -- normal text in non-current windows
      fg = palette.white,
      bg = palette.base0,
    },
    NormalSB = {
      -- normal text in non-current windows
      fg = palette.white,
      bg = palette.sidebar_bg,
    },
    NormalFloat = {
      -- normal text and background color for floating windows
      bg = palette.pmenu,
    }, -- }}}
    Pmenu = { --{{{
      -- Popup menu: normal item.
      bg = palette.pmenu,
    },
    PmenuSel = {
      -- Popup menu: selected item.
      fg = palette.pmenu,
      bg = palette.blue_pale,
      bold = true,
    },
    PmenuSelBold = {
      fg = palette.base4,
      bg = palette.blue_pale,
    },
    PmenuThumb = {
      -- Popup menu: Thumb of the scrollbar.
      fg = palette.purple,
      bg = palette.blue_light,
    },
    PmenuSbar = {
      -- Popup menu: scrollbar.
      fg = palette.none,
      bg = palette.base3,
    }, --}}}
    Cursor = { --{{{
      fg = palette.none,
      bg = palette.none,
      reverse = true,
    },
    lCursor = {
      -- the character under the cursor when language-mapping is used.
      fg = palette.none,
      bg = palette.none,
      reverse = true,
    },
    vCursor = {
      -- the character under the cursor
      fg = palette.none,
      bg = palette.none,
      reverse = true,
    },
    iCursor = {
      fg = palette.none,
      bg = palette.none,
      reverse = true,
    },
    CursorIM = {
      -- like Cursor, but used when in IME mode.
      fg = palette.none,
      bg = palette.none,
      reverse = true,
    },
    CursorColumn = {
      -- Screen-column at the cursor, when 'cursorcolumn' is set.
      fg = palette.none,
      bg = palette.base3,
    },
    ColorColumn = {
      --  used for the columns set with 'colorcolumn'
      fg = palette.none,
      bg = palette.color_column,
    },
    CursorLine = {
      -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority
      -- if foreground (ctermfg OR fg) is not set.
      bg = palette.base3,
    },
    ToolbarLine = {
      fg = palette.white,
      bg = palette.base3,
    },
    ToolbarButton = {
      fg = palette.white,
      bg = palette.none,
      bold = true,
    }, --}}}
    NormalMode = { --{{{
      -- Normal mode message in the cmdline
      fg = palette.accent,
      bg = palette.none,
      reverse = true,
    },
    InsertMode = {
      -- Insert mode message in the cmdline
      fg = palette.green,
      bg = palette.none,
      reverse = true,
    },
    ReplacelMode = {
      -- Replace mode message in the cmdline
      fg = palette.red,
      bg = palette.none,
      reverse = true,
    },
    VisualMode = {
      -- Visual mode message in the cmdline
      fg = palette.purple,
      bg = palette.none,
      reverse = true,
    },
    CommandMode = {
      -- Command mode message in the cmdline
      fg = palette.grey,
      bg = palette.none,
      reverse = true,
    }, --}}}
    healthError = { --{{{
      fg = palette.error,
    },
    healthSuccess = {
      fg = palette.green,
    },
    healthWarning = {
      fg = palette.yellow,
    },
    Warnings = {
      fg = palette.yellow,
    },
    NonText = {
      -- '@' at the end of the window, characters from 'showbreak' and other
      -- characters that do not really exist in the text (e.g., ">" displayed
      -- when a double-wide character doesn't fit at the end of the line).
      -- See also |hl-EndOfBuffer|.
      fg = palette.base5,
    }, --}}}
    Visual = { --{{{
      -- Visual mode selection
      bg = palette.base5,
    },
    VisualNOS = {
      -- Visual mode selection when vim is "Not Owning the Selection".
      bg = palette.base3,
    },
    Substitute = {
      -- |:substitute| replacement text highlighting
      bg = palette.red,
      fg = palette.black,
    },
    Search = {
      -- Last search pattern highlighting (see 'hlsearch').  Also used for
      -- similar items that need to stand out.
      fg = palette.base0,
      bg = palette.accent,
      bold = true,
    },
    IncSearch = {
      -- 'incsearch' highlighting; also used for the text replaced with
      -- ":s///c"
      fg = palette.base2,
      bg = palette.yellow,
    }, --}}}
    CursorLineNr = { --{{{
      -- Like LineNr when 'cursorline' or 'relativenumber' is set for the
      -- cursor line.
      fg = palette.orange,
      bg = palette.base2,
    },
    MatchParen = {
      -- The character under the cursor or just before it, if it is a paired
      -- bracket, and its match. |pi_paren.txt|
      fg = palette.pink,
      bg = palette.none,
    },
    Question = {
      -- |hit-enter| prompt and yes/no questions
      fg = palette.yellow,
    }, --}}}
    ModeMsg = { --{{{
      -- 'showmode' message (e.g., "-- INSERT -- ")
      fg = palette.white,
      bg = palette.none,
      bold = true,
    },
    MsgArea = {
      -- Area for messages and cmdline
      fg = palette.fg_dark,
    },
    MoreMsg = {
      -- |more-prompt|
      fg = palette.white,
      bg = palette.none,
      bold = true,
    },
    ErrorMsg = {
      -- error messages
      fg = palette.red,
      bg = palette.none,
      bold = true,
    },
    WarningMsg = {
      -- warning messages
      fg = palette.yellow,
      bg = palette.none,
      bold = true,
    }, --}}}
    VertSplit = { --{{{
      fg = palette.blue_pale,
      bg = palette.base0,
    },
    LineNr = {
      fg = palette.base6,
      bg = palette.base2,
    },
    SignColumn = {
      fg = palette.base5,
      bg = palette.base2,
    },
    SignColumnSB = {
      -- column where |signs| are displayed
      bg = palette.sidebar_bg,
      fg = palette.white,
    }, --}}}
    StatusLine = { --{{{
      -- status line of current window
      fg = palette.base7,
      bg = palette.base2,
    },
    StatusLineNC = {
      -- status lines of not-current windows Note: if this is equal to
      -- "StatusLine" Vim will use "^^^" in the status line of the current
      -- window.
      fg = palette.grey,
      bg = palette.base2,
    },
    StatusLineTerm = {
      -- status line of current terminal window
      fg = palette.white,
      bg = palette.active,
    },
    StatusLineTermNC = {
      -- status lines of not-current terminal windows Note: if this is equal
      -- to "StatusLine" Vim will use "^^^" in the status line of the current
      -- window.
      fg = palette.text,
      bg = palette.base0,
    },
    Title = {
      -- titles for output from ":set all", ":autocmd" etc.
      fg = palette.yellow,
      bold = true,
    }, --}}}
    TabLine = { --{{{
      -- tab pages line, not active tab page label
      bg = palette.blue_dark,
      fg = palette.blue_pale,
    },
    TabLineFill = {
      -- tab pages line, where there are no labels
      bg = palette.base0,
      fg = palette.base4,
    },
    TabLineSel = {
      -- tab pages line, active tab page label
      bg = palette.blue_pale,
      fg = palette.white,
      bold = true,
    },
    TabLineSepSel = {
      bg = palette.blue_pale,
      fg = palette.white,
    },
    TabLineSep = {
      bg = palette.blue_dark,
      fg = palette.white,
    },
    TabLineModifiedSel = {
      bg = palette.blue_pale,
      fg = palette.white,
    },
    TabLineModified = {
      bg = palette.blue_pale,
      fg = palette.white,
    }, --}}}
    -- GPS {{{
    NavicIcons = {
      fg = palette.blue_pale,
      bg = palette.base3,
    },
    NavicText = {
      fg = palette.white,
    },
    NavicIconsFile = {
      link = "CmpItemKindFile",
    },
    NavicIconsModule = {
      link = "CmpItemKindModule",
    },
    NavicIconsNamespace = {
      link = "CmpItemKindNamespace",
    },
    NavicIconsPackage = {
      link = "CmpItemKindPackage",
    },
    NavicIconsClass = {
      link = "CmpItemKindClass",
    },
    NavicIconsMethod = {
      link = "CmpItemKindMethod",
    },
    NavicIconsProperty = {
      link = "CmpItemKindProperty",
    },
    NavicIconsField = {
      link = "CmpItemKindField",
    },
    NavicIconsConstructor = {
      link = "CmpItemKindConstructor",
    },
    NavicIconsEnum = {
      link = "CmpItemKindEnum",
    },
    NavicIconsInterface = {
      link = "CmpItemKindInterface",
    },
    NavicIconsFunction = {
      link = "CmpItemKindFunction",
    },
    NavicIconsVariable = {
      link = "CmpItemKindVariable",
    },
    NavicIconsConstant = {
      link = "CmpItemKindConstant",
    },
    NavicIconsString = {
      link = "CmpItemKindString",
    },
    NavicIconsNumber = {
      link = "CmpItemKindNumber",
    },
    NavicIconsBoolean = {
      link = "CmpItemKindBoolean",
    },
    NavicIconsArray = {
      link = "CmpItemKindArray",
    },
    NavicIconsObject = {
      link = "CmpItemKindObject",
    },
    NavicIconsKey = {
      link = "CmpItemKindKey",
    },
    NavicIconsNull = {
      link = "CmpItemKindNull",
    },
    NavicIconsEnumMember = {
      link = "CmpItemKindEnumMember",
    },
    NavicIconsStruct = {
      link = "CmpItemKindStruct",
    },
    NavicIconsEvent = {
      link = "CmpItemKindEvent",
    },
    NavicIconsOperator = {
      link = "CmpItemKindOperator",
    },
    NavicIconsTypeParameter = {
      link = "CmpItemKindTypeParameter",
    }, --}}}
    SpellBad = { --{{{
      -- Word that is not recognized by the spellchecker. |spell| Combined
      -- with the highlighting used otherwise.
      fg = palette.red,
      bg = palette.none,
      undercurl = true,
      sp = palette.red,
    },
    SpellCap = {
      -- Word that should start with a capital. |spell| Combined with the
      -- highlighting used otherwise.
      fg = palette.purple,
      bg = palette.none,
      undercurl = true,
      sp = palette.purple,
    },
    SpellRare = {
      -- Word that is recognized by the spellchecker as one that is hardly
      -- ever used.  |spell| Combined with the highlighting used otherwise.
      fg = palette.aqua,
      bg = palette.none,
      undercurl = true,
      sp = palette.aqua,
    },
    SpellLocal = {
      -- Word that is recognized by the spellchecker as one that is used in
      -- another region. |spell| Combined with the highlighting used
      -- otherwise.
      fg = palette.pink,
      bg = palette.none,
      undercurl = true,
      sp = palette.pink,
    }, --}}}
    DiffAdd = { -- {{{
      -- diff mode: Added line
      bg = palette.diff_add_bg,
    },
    DiffDelete = {
      -- diff mode: Deleted line
      bg = palette.diff_remove_bg,
    },
    DiffChange = {
      --  diff mode: Changed line
      bg = palette.diff_change_bg,
    },
    DiffText = {
      -- diff mode: Changed text within a changed line
      bg = palette.diff_text_bg,
    },
    diffAdded = {
      fg = palette.green,
    },
    diffRemoved = {
      fg = palette.pink,
    },
    diffChanged = {
      fg = palette.blue,
    },
    diffOldFile = {
      fg = palette.text,
    },
    diffNewFile = {
      fg = palette.title,
    },
    diffFile = {
      fg = palette.grey,
    },
    diffLine = {
      fg = palette.cyan,
    },
    diffIndexLine = {
      fg = palette.purple,
    },
    -- }}}
    Folded = { --{{{
      -- line used for closed folds
      fg = palette.border,
      bg = palette.base3,
    },
    FoldColumn = {
      -- 'foldcolumn'
      fg = palette.border,
      bg = palette.base2,
    },
    Constant = {
      fg = palette.aqua,
    },
    Number = {
      fg = palette.purple,
    },
    Float = {
      fg = palette.purple,
    },
    Boolean = {
      -- a boolean constant: TRUE, false
      fg = palette.purple,
    },
    Character = {
      fg = palette.yellow,
    },
    String = {
      fg = palette.yellow,
    },
    Type = {
      -- int, long, char, etc.
      fg = palette.aqua,
    },
    Structure = {
      -- struct, union, enum, etc.
      fg = palette.aqua,
    },
    StorageClass = {
      -- static, register, volatile, etc.
      fg = palette.aqua,
    },
    Typedef = {
      -- A typedef
      fg = palette.aqua,
    },
    Identifier = {
      fg = palette.white,
    },
    Function = {
      fg = palette.green,
    },
    Statement = {
      -- any statement
      fg = palette.pink,
    },
    Operator = {
      fg = palette.pink,
    },
    Label = {
      -- case, default, etc.
      fg = palette.pink,
    },
    Keyword = {
      fg = palette.pink,
    },
    PreProc = {
      -- generic Preprocessor
      fg = palette.green,
    },
    Include = {
      -- preprocessor #include
      fg = palette.pink,
    },
    Define = {
      -- preprocessor #define
      fg = palette.pink,
    },
    Macro = {
      -- same as Define
      fg = palette.pink,
    },
    PreCondit = {
      -- preprocessor #if, #else, #endif, etc.
      fg = palette.pink,
    }, --}}}
    Special = { --{{{
      -- any special symbol
      fg = palette.white,
    },
    SpecialChar = {
      -- special character in a constant
      fg = palette.pink,
    },
    SpecialKey = {
      -- Unprintable characters: text displayed differently from what it
      -- really is.  But not 'listchars' whitespace. |hl-Whitespace|
      fg = palette.pink,
    },
    Delimiter = {
      fg = palette.white,
    },
    SpecialComment = {
      -- special things inside a comment
      fg = palette.grey,
      bold = true,
    },
    Tag = {
      -- you can use CTRL-] on this
      fg = palette.orange,
    },
    Todo = {
      -- anything that needs extra attention; mostly the keywords TODO FIXME
      -- and XXX
      fg = palette.orange,
      bg = palette.none,
      bold = true,
      italic = true,
    },
    Comment = {
      fg = palette.base6,
    },
    Underlined = {
      -- text that stands out, HTML links
      fg = palette.none,
      underline = true,
    },
    Bold = {
      bold = true,
    },
    Italic = {
      italic = true,
    },
    Ignore = {
      -- left blank, hidden
      fg = palette.none,
    },
    Error = {
      -- any erroneous construct
      fg = palette.red,
    },
    Terminal = {
      fg = palette.white,
      bg = palette.base2,
    },
    EndOfBuffer = {
      -- filler lines (~) after the end of the buffer.
      fg = palette.base2,
      bg = palette.none,
    },
    Conceal = {
      -- placeholder characters substituted for concealed text (see
      -- 'conceallevel')
      fg = palette.grey,
    }, --}}}
    WildMenu = { --{{{
      -- current match in 'wildmenu' completion
      fg = palette.white,
      bg = palette.orange,
    }, --}}}
    QuickFixLine = { --{{{
      -- Current |quickfix| item in the quickfix window. Combined with
      -- |hl-CursorLine| when the cursor is there.
      fg = palette.purple,
      bold = true,
    },
    qfLineNr = {
      -- Line numbers for quickfix lists
      fg = palette.highlight,
      bg = palette.title,
      reverse = true,
    },
    qfFileName = {
      fg = palette.blue,
    }, --}}}
    Debug = { --{{{
      -- debugging statements
      fg = palette.orange,
    },
    debugBreakpoint = {
      fg = palette.base2,
      bg = palette.red,
    },
    htmlLink = {
      fg = palette.link,
      underline = true,
    },
    htmlH1 = {
      fg = palette.cyan,
      bold = true,
    },
    htmlH2 = {
      fg = palette.red,
      bold = true,
    },
    mkdCodeDelimiter = {
      bg = palette.terminal_black,
      fg = palette.white,
    },
    mkdCodeStart = {
      fg = palette.teal,
      bold = true,
    },
    mkdCodeEnd = {
      fg = palette.teal,
      bold = true,
    },
    markdownHeadingDelimiter = {
      fg = palette.orange,
      bold = true,
    },
    markdownCode = {
      fg = palette.teal,
    },
    markdownCodeBlock = {
      fg = palette.teal,
    },
    htmlH3 = {
      fg = palette.green,
      bold = true,
    },
    htmlH4 = {
      fg = palette.yellow,
      bold = true,
    },
    htmlH5 = {
      fg = palette.purple,
      bold = true,
    },
    markdownH1 = {
      fg = palette.cyan,
      bold = true,
    },
    markdownH2 = {
      fg = palette.red,
      bold = true,
    },
    markdownLinkText = {
      fg = palette.blue,
      underline = true,
    },
    debugPC = {
      bg = palette.sidebar_bg,
    }, -- used for highlighting the current line in terminal-debug
    markdownH3 = {
      fg = palette.green,
      bold = true,
    },
    markdownH1Delimiter = {
      -- character that needs attention like , or .
      fg = palette.cyan,
    },
    markdownH2Delimiter = {
      fg = palette.red,
    },
    markdownH3Delimiter = {
      fg = palette.green,
    }, --}}}
    Conditional = { --{{{
      fg = palette.pink,
    },
    Directory = {
      -- directory names (and other special names in listings)
      fg = palette.aqua,
    },
    Repeat = {
      fg = palette.pink,
    },
    Exception = {
      fg = palette.pink,
    },
    Whitespace = {
      -- "nbsp", "space", "tab" and "trail" in 'listchars'
      fg = palette.base3,
    },
    ExtraWhitespace = {
      fg = palette.base1,
      bg = palette.diff_add_fg,
    }, --}}}
    -- Help {{{
    helpHyperTextJump = {
      link = "Statement",
    },
    --}}}
  }
end
-- }}}

local plugin_syntax = function(palette) -- Plugins {{{
  return {
    -- CMP {{{
    CmpDocumentation = {
      fg = palette.green,
      bg = palette.blue,
    },
    CmpDocumentationBorder = {
      fg = palette.border_highlight,
      bg = palette.blue,
    },
    CmpItemAbbr = {
      fg = palette.white,
    },
    CmpItemAbbrDeprecated = {
      fg = palette.grey,
      strikethrough = true,
    },
    CmpItemAbbrMatch = {
      fg = palette.blue,
    },
    CmpItemAbbrMatchFuzzy = {
      fg = palette.blue,
    },
    CmpItemKind = {
      fg = palette.orange,
    },
    CmpItemKindClass = {
      fg = palette.orange,
    },
    CmpItemKindConstant = {
      fg = palette.magenta,
    },
    CmpItemKindConstructor = {
      fg = palette.blue,
    },
    CmpItemKindDefault = {
      fg = palette.green_dark,
    },
    CmpItemKindEnum = {
      fg = palette.orange,
    },
    CmpItemKindEnumMember = {
      fg = palette.green,
    },
    CmpItemKindEvent = {
      fg = palette.orange,
    },
    CmpItemKindField = {
      fg = palette.green,
    },
    CmpItemKindFunction = {
      fg = palette.blue,
    },
    CmpItemKindInterface = {
      fg = palette.aqua,
    },
    CmpItemKindKeyword = {
      fg = palette.cyan,
    },
    CmpItemKindMethod = {
      fg = palette.blue,
    },
    CmpItemKindModule = {
      fg = palette.yellow,
    },
    CmpItemKindOperator = {
      fg = palette.green,
    },
    CmpItemKindProperty = {
      fg = palette.green,
    },
    CmpItemKindReference = {
      fg = palette.magenta,
    },
    CmpItemKindSnippet = {
      fg = palette.blue,
    },
    CmpItemKindStruct = {
      fg = palette.orange,
    },
    CmpItemKindText = {
      fg = palette.aqua,
    },
    CmpItemKindTypeParameter = {
      fg = palette.green,
    },
    CmpItemKindUnit = {
      fg = palette.orange,
    },
    CmpItemKindValue = {
      fg = palette.magenta,
    },
    CmpItemKindVariable = {
      fg = palette.aqua,
    },
    CmpItemMenu = {
      fg = palette.base7,
    }, --}}}
    -- Treesitter {{{
    TSString = {
      fg = palette.yellow,
    },
    TSStringRegex = {
      -- For regexes.
      fg = palette.purple,
    },
    TSStringEscape = {
      -- For escape characters within a string.
      fg = palette.purple,
    },
    TSInclude = {
      -- For includes: `#include` in C, `use` or `extern crate` in Rust, or
      -- `require` in Lua.
      fg = palette.pink,
    },
    TSVariable = {
      fg = palette.white,
    },
    TSVariableBuiltin = {
      fg = palette.orange,
    },
    TSAnnotation = {
      -- For C++/Dart attributes, annotations that can be attached to the
      -- code to denote some kind of meta information.
      fg = palette.green,
    },
    TSAttribute = {
      fg = palette.yellow,
    },
    TSBoolean = {
      -- For booleans.
      fg = palette.orange,
    },
    TSComment = {
      fg = palette.base6,
    },
    TSConstant = {
      fg = palette.aqua,
    },
    TSConstBuiltin = {
      -- For constant that are built in the language: `nil` in Lua.
      fg = palette.orange,
    },
    TSConstMacro = {
      -- For constants that are defined by macros: `NULL` in C.
      fg = palette.purple,
    },
    TSError = {
      -- For syntax/parser errors.
      fg = palette.error,
      italic = true,
    },
    TSConditional = {
      fg = palette.pink,
    },
    TSCharacter = {
      -- For characters.
      -- any character constant: 'c', '\n'
      fg = palette.yellow,
    },
    TSConstructor = {
      -- For constructor calls and definitions: `= { }` in Lua, and Java
      -- constructors.
      fg = palette.purple,
    },
    TSFunction = {
      fg = palette.green,
    },
    TSFuncBuiltin = {
      fg = palette.aqua,
    },
    TSFuncMacro = {
      -- For macro defined fuctions (calls and definitions): each
      -- `macro_rules` in Rust.
      fg = palette.green,
    },
    TSKeyword = {
      fg = palette.pink,
    },
    TSKeywordFunction = {
      fg = palette.pink,
    },
    TSKeywordOperator = {
      -- sizeof", "+", "*", etc.
      fg = palette.pink,
    },
    TSKeywordReturn = {
      fg = palette.pink,
    },
    TSMethod = {
      fg = palette.green,
    },
    TSNamespace = {
      -- For identifiers referring to modules and namespaces.
      fg = palette.purple,
    },
    TSNumber = {
      fg = palette.purple,
    },
    TSOperator = {
      -- For any operator: `+`, but also `->` and `*` in C.
      fg = palette.pink,
    },
    TSParameter = {
      -- For parameters of a function.
      fg = palette.white,
    },
    TSParameterReference = {
      -- For references to parameters of a function.
      fg = palette.white,
    },
    TSProperty = {
      -- Same as `TSField`,accesing for struct members in C.
      fg = palette.green,
    },
    TSPunctDelimiter = {
      -- For delimiters ie: `.`
      fg = palette.white,
    },
    TSPunctBracket = {
      -- For brackets and parens.
      fg = palette.white,
    },
    TSPunctSpecial = {
      -- For special punctutation that does not fall in the catagories
      -- before.
      fg = palette.pink,
    },
    TSRepeat = {
      fg = palette.pink,
    },
    TSSymbol = {
      -- For identifiers referring to symbols or atoms.
      fg = palette.yellow,
    },
    TSTag = {
      -- Tags like html tag names.
      fg = palette.pink,
    },
    TSTagDelimiter = {
      -- Tag delimiter like `<` `>` `/`
      fg = palette.white,
    },
    TSText = {
      -- For strings considered text in a markup language.
      fg = palette.text,
    },
    TSTextReference = {
      fg = palette.yellow,
    },
    TSEmphasis = {
      -- For text to be represented with emphasis.
      fg = palette.blue_pale,
    },
    TSUnderline = {
      -- For text to be represented with an underline.
      fg = palette.white,
      bg = palette.none,
      underline = true,
    },
    TSTitle = {
      -- Text that is part of a title.
      fg = palette.title,
      bg = palette.none,
      bold = true,
    },
    TSLiteral = {
      -- Literal text.
      fg = palette.white,
    },
    TSURI = {
      -- Any URI like a link or email.
      fg = palette.link,
    },
    TSTagAttribute = {
      fg = palette.green,
    },
    TSLabel = {
      -- For labels: `label:` in C and `:label:` in Lua.
      fg = palette.pink,
    },
    TSType = {
      -- For types.
      fg = palette.aqua,
    },
    TSTypeBuiltin = {
      -- For builtin types.
      fg = palette.purple,
    },
    TSException = {
      -- For exception related keywords.  try, catch, throw
      fg = palette.pink,
    },
    TSField = {
      -- For fields.
      fg = palette.white,
    },
    TSFloat = {
      fg = palette.purple,
    },
    TSNote = {
      fg = palette.orange,
      bg = palette.info,
      bold = true,
    },
    TSWarning = {
      -- TODO, HACK, WARNING
      fg = palette.black,
      bg = palette.warning,
      bold = true,
    },
    TSDanger = {
      -- FIXME, XXX, BUG
      fg = palette.black,
      bg = palette.error,
      bold = true,
    },
    TSDefinitionUsage = {
      bg = palette.base5,
    },
    TSDefinition = {
      bg = palette.base5,
    },
    -- }}}
    -- LSP {{{
    LspCodeLens = {
      fg = palette.orange,
    },
    LspReferenceText = {
      -- used for highlighting "text" references
      fg = palette.accent,
      bg = palette.highlight,
    },
    LspReferenceRead = {
      -- used for highlighting "read" references
      fg = palette.accent,
      bg = palette.highlight,
    },
    LspReferenceWrite = {
      -- used for highlighting "write" references
      fg = palette.accent,
      bg = palette.highlight,
    },
    -- }}}
    -- Diagnostics {{{
    DiagnosticError = {
      fg = palette.error,
    },
    DiagnosticLineNrError = {
      fg = palette.base4,
      bg = palette.error,
    },
    DiagnosticWarn = {
      fg = palette.warning,
    },
    DiagnosticLineNrWarn = {
      fg = palette.base4,
      bg = palette.warning,
    },
    DiagnosticInfo = {
      fg = palette.green,
    },
    DiagnosticLineNrInfo = {
      fg = palette.base4,
      bg = palette.green,
    },
    DiagnosticHint = {
      fg = palette.blue_pale,
    },
    DiagnosticLineNrHint = {
      fg = palette.base4,
      bg = palette.blue_pale,
    },
    -- }}}
    -- ALE {{{
    ALEErrorSign = {
      fg = palette.error,
      bg = palette.base2,
    },
    ALEStyleErrorSign = {
      fg = palette.error,
      bg = palette.base2,
    },
    ALEWarningSign = {
      fg = palette.warning,
      bg = palette.base2,
    },
    ALEStyleWarningSign = {
      fg = palette.warning,
      bg = palette.base2,
    },
    ALEInfoSign = {
      fg = palette.green,
      bg = palette.base2,
    },
    ALEDummySign = {
      fg = palette.blue_pale,
      bg = palette.base2,
    },
    -- }}}
    -- Misc {{{
    illuminatedWord = {
      bg = palette.white,
    },
    illuminatedCurWord = {
      bg = palette.white,
    },
    CursorWord0 = {
      bg = palette.white,
      fg = palette.black,
    },
    CursorWord1 = {
      bg = palette.white,
      fg = palette.black,
    },
    -- }}}
    -- Nvim-Tree {{{
    NvimTreeFolderName = {
      fg = palette.white,
    },
    NvimTreeFolderIcon = {
      fg = palette.accent,
    },
    NvimTreeEmptyFolderName = {
      fg = palette.disabled,
    },
    NvimTreeOpenedFolderName = {
      fg = palette.accent,
      italic = true,
    },
    NvimTreeIndentMarker = {
      fg = palette.disabled,
    },
    NvimTreeGitDirty = {
      fg = palette.blue,
    },
    NvimTreeGitNew = {
      fg = palette.green,
    },
    NvimTreeGitStaged = {
      fg = palette.comments,
    },
    NvimTreeGitDeleted = {
      fg = palette.red,
    },
    NvimTreeOpenedFile = {
      fg = palette.accent,
    },
    NvimTreeImageFile = {
      fg = palette.yellow,
    },
    NvimTreeMarkdownFile = {
      fg = palette.pink,
    },
    NvimTreeExecFile = {
      fg = palette.green,
    },
    NvimTreeRootFolder = {
      fg = palette.pink,
    },
    NvimTreeSpecialFile = {
      fg = palette.white,
      bg = palette.none,
    },
    NvimTreeNormal = {
      fg = palette.white,
      bg = palette.sidebar_bg,
    },
    -- }}}
    -- Git Signs {{{
    GitSignsAdd = {
      fg = palette.sign_add_bg,
      bg = palette.base2,
    },
    GitSignsAddNr = {
      fg = palette.sign_add_bg,
      bg = palette.base2,
    },
    GitSignsAddInline = {
      fg = palette.sign_add_bg,
      bg = palette.base2,
    },
    GitSignsAddLnInline = {
      fg = palette.sign_add_bg,
      bg = palette.base2,
    },
    GitSignsAddVirtLnInline = {
      fg = palette.sign_add_bg,
      bg = palette.base2,
    },
    GitSignsChange = {
      fg = palette.sign_change_bg,
      bg = palette.base2,
    },
    GitSignsChangeNr = {
      fg = palette.sign_change_bg,
      bg = palette.base2,
    },
    GitSignsChangeInLine = {
      fg = palette.sign_change_bg,
      bg = palette.base2,
    },
    GitSignsChangeVirtLnInline = {
      fg = palette.sign_change_bg,
      bg = palette.base2,
    },
    GitSignsChangeLnInline = {
      fg = palette.sign_change_bg,
      bg = palette.base2,
    },
    GitSignsDelete = {
      fg = palette.sign_remove_bg,
      bg = palette.base2,
    },
    GitSignsDeleteNr = {
      fg = palette.sign_remove_bg,
      bg = palette.base2,
    },
    GitSignsDeleteInLine = {
      fg = palette.sign_remove_bg,
      bg = palette.base2,
    },
    GitSignsDeleteLnInline = {
      fg = palette.sign_remove_bg,
      bg = palette.base2,
    },
    GitSignsDeleteVirtLnInline = {
      fg = palette.sign_remove_bg,
      bg = palette.base2,
    },
    -- }}}
    -- Notifications {{{
    NotifyERRORBorder = {
      fg = palette.error,
    },
    NotifyWARNBorder = {
      fg = palette.warning,
    },
    NotifyINFOBorder = {
      fg = palette.green,
    },
    NotifyDEBUGBorder = {
      fg = palette.grey,
    },
    NotifyTRACEBorder = {
      fg = palette.pink,
    },
    NotifyERRORIcon = {
      fg = palette.error,
    },
    NotifyWARNIcon = {
      fg = palette.warning,
    },
    NotifyINFOIcon = {
      fg = palette.green,
    },
    NotifyDEBUGIcon = {
      fg = palette.grey,
    },
    NotifyTRACEIcon = {
      fg = palette.pink,
    },
    NotifyERRORTitle = {
      fg = palette.error,
    },
    NotifyWARNTitle = {
      fg = palette.warning,
    },
    NotifyINFOTitle = {
      fg = palette.green,
    },
    NotifyDEBUGTitle = {
      fg = palette.grey,
    },
    NotifyTRACETitle = {
      fg = palette.pink,
    },
    -- }}}
    -- Fidget {{{
    FidgetTitle = {
      fg = palette.blue_pale,
    },
    FidgetTask = {
      fg = palette.green,
    },
    --}}}
    -- BQF {{{
    BqfPreviewBorder = {
      fg = palette.green_dark,
    },
    BqfPreviewRange = {
      link = "Search",
    },
    --}}}
  }
end
-- }}}

-- Setup function {{{
---Creates all highlighting from the given palette.
---@param palette string could be 'light_palette' or 'dark_palette'
---@param name string the colour scheme name
local setup = function(palette, name) --{{{
  vim.api.nvim_command("clear")
  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
  end

  vim.g.colors_name = name
  for group, colors in pairs(internals(palette)) do
    vim.api.nvim_set_hl(0, group, colors)
  end
  for group, colors in pairs(plugin_syntax(palette)) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end --}}}

return {
  setup = setup,
}
-- }}}

-- vim: fdm=marker fdl=1
