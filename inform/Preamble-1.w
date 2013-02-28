A/sr0: SR0 - Preamble.

@Purpose: The titling line and rubric, use options and a few other
technicalities before the Standard Rules get properly started.

@-------------------------------------------------------------------------------

@ The Standard Rules are like a boot program for a computer that is
starting up: at the beginning, the process is delicate, and the computer
needs a fairly exact sequence of things to be done; halfway through, the
essential work is done, but the system is still too primitive to be much
use, so we begin to create convenient intermediate-level code sitting on
top of the basics; so that, by the end, we have a fully flexible machine
ready to go in any number of directions. In this commentary, we try to
distinguish between what must be done (or else NI will crash, or fail in
some other way) and what is done simply as a design decision (to make the
Inform language come out the way we want it). Quite interesting hybrid
Informs could be built by making different decisions. Still, our design is
not entirely free, since it interacts with the I6 template layer (the
I7 equivalent of the old I6 library): a really radical alternate Inform
would need a different template layer, too.

@p Title.
Every Inform 7 extension begins with a standard titling line and a
rubric text, and the Standard Rules are no exception:

@c
Version 2/090402 of the Standard Rules by Graham Nelson begins here.

"The Standard Rules, included in every project, define the basic framework
of kinds, actions and phrases which make Inform what it is."

@p Starting up.
The following block of declarations is actually written by |indoc| and
modified each time we alter the documentation. It's a dictionary of symbolic
names like |HEADINGS| to HTML page leafnames like |doc71|.

@c
[...and so on...]
Document C8ComplexDeterminer at doc100 "6.15" "All, each and every".
Document ACTIONS C22APUnknown C22APWithNoParticiple C22NonActionIn kind_actionname at doc103 "7.1" "Actions".
Document rules_instead at doc104 "7.2" "Instead rules".
Document ph_continueaction ph_stopaction rules_before at doc105 "7.3" "Before rules".
Document C16ActionNotSpecific C16ActionTooSpecific C16UnknownTryAction1 C16UnknownTryAction2 ph_try ph_trysilently at doc106 "7.4" "Try and try silently".
Document rules_after at doc107 "7.5" "After rules".
Document C22APWithDisjunction C22APWithImmiscible at doc110 "7.8" "Rules applying to more than one action".
Document var_noun at doc112 "7.10" "The noun and the second noun".
Document C22APWithBadWhen C22NonActionInPresenceOf at doc114 "7.12" "In the presence of, and when".
Document C24GoingWithoutObject C24GoingWrongKind at doc116 "7.14" "Going by, going through, going with".
Document C24NamedAPWithActor NAP at doc117 "7.15" "Kinds of action".
Document ph_say at doc12 "2.2" "Making rules".
Document ph_change_dep at doc122 "8.1" "Change of values that vary".
Document var_prompt at doc123 "8.2" "Changing the command prompt".
Document phs_surroundings var_sl at doc124 "8.3" "Changing the status line".
Document ph_changeexit ph_changenoexit at doc126 "8.5" "Change of properties with values".
Document ph_move at doc128 "8.7" "Moving things".
Document ph_movebackdrop ph_updatebackdrop at doc129 "8.8" "Moving backdrops".
Document C5TooMuchQuotedText C5UnendingComment C5UnendingQuote C5WordTooLong C8EnigmaticPronoun C8EnigmaticThey at doc13 "2.3" "Punctuation".
Document ph_changeplayer_dep at doc130 "8.9" "Moving the player".
Document ph_remove at doc131 "8.10" "Removing things from play".
Document C14CantChangeKind C14CantForceCalling C14CantForceExistence C14CantForceGeneralised C14CantForceRelation C16BadNow1 C16BadNow2 C16BadNow3 C22RedefinedNow ph_now at doc132 "8.11" "Now...".
Document ph_decrease ph_decrement ph_increase ph_increment at doc133 "8.12" "Increasing and decreasing".
Document C22CalledThe C22CalledWithDash at doc136 "8.15" "Calling names".
Document ph_firstheld ph_holder ph_nextheld at doc138 "8.17" "Looking at containment by hand".
Document ph_randombetween ph_randomchance ph_seed at doc139 "8.18" "Randomness".
Document C14RandomImpossible ph_randomdesc at doc140 "8.19" "Random choices of things".
Document ROOMPLAYBEGINS rules_wpb at doc142 "9.1" "When play begins".
Document ph_awardpoints_dep var_score at doc143 "9.2" "Awarding points".
Document ph_end ph_enddeath_dep ph_ended ph_endeddeath_dep ph_endedvictory_dep ph_endfinally ph_endfinallysaying ph_endgamesaying_dep ph_endsaying ph_endvictory_dep ph_finallyended ph_inprogress_dep ph_notended ph_notfinallyended ph_over_dep ph_resume ph_resumegame_dep rules_wpe at doc145 "9.4" "When play ends".
Document C16NumberOfTurns rules_et at doc146 "9.5" "Every turn".
Document kind_time var_time at doc147 "9.6" "The time of day".
Document phs_timewords at doc148 "9.7" "Telling the time".
Document ph_durationhours ph_durationmins at doc149 "9.8" "Approximate times, lengths of time".
Document C20BadTitleSentence C6HeadingOverLine C6HeadingStopsBeforeEndOfLine HEADINGS at doc15 "2.5" "Headings".
Document ph_itisafter_dep ph_itisbefore_dep ph_shiftafter ph_shiftbefore ph_timeafter ph_timebefore at doc150 "9.9" "Comparing and shifting times".
Document ph_hourspart ph_minspart at doc151 "9.10" "Calculating times".
Document C10AtWithoutTime C22UnusedTimedEvent TIMEDEVENTS ph_attime ph_timefromnow ph_turnsfromnow at doc152 "9.11" "Future events".
Document C24PTAPTooComplex at doc153 "9.12" "Actions as conditions".
Document C12DescSubordinatePast C12PastActionCalled C13PastSubordinate C24PTAPMakesCallings C24PastCallings C24PastTableEntries C24PastTableLookup C6NonPresentTense at doc154 "9.13" "The past and perfect tenses".
Document SCENESINTRO kind_scene at doc158 "10.1" "Introduction to scenes".
Document C19ScenesBadCondition C19ScenesDisallowCalled C19ScenesNotPlay C19ScenesOnly C19ScenesOversetEnd C19ScenesUnknownEnd at doc159 "10.2" "Creating a scene".
Document ph_scenetimesincebegan ph_scenetimesinceended ph_scenetimewhenbegan ph_scenetimewhenended at doc160 "10.3" "Using the Scene index".
Document ph_hasended ph_hashappened ph_hasnotended ph_hasnothappened at doc161 "10.4" "During scenes".
Document LINKINGSCENES at doc162 "10.5" "Linking scenes together".
Document PHRASES ph_nothing at doc168 "11.1" "What are phrases?".
Document C22BareTo at doc169 "11.2" "The phrasebook".
Document C22AdjacentTokens C22BadTypeIndication C22PhraseTooLong C22SaySlashed C22TokenMisunderstood C22TokenWithEmptyBrackets C22TokenWithNestedBrackets C22TokenWithStipulations C22TokenWithoutCloseBracket C22TokenWithoutOpenBracket at doc170 "11.3" "Pattern matching".
Document ph_showme at doc171 "11.4" "The showme phrase".
Document C22TruthStateToDecide kind_truthstate ph_consents ph_indarkness ph_whether at doc172 "11.5" "Conditions and questions".
Document C16WrongThen C8IfOutsidePhrase ph_if ph_if_dep ph_unless at doc173 "11.6" "If".
Document C16CantUseOutsideStructure C16EndWithoutBegin C16PossibleUnterminatedIf C16PossibleUnterminatedUnless C16WrongEnd C22BeginWithoutEnd C22BlockNestingTooDeep C6BothBlockSyntaxes C6EmptyIndentedBlock C6MisalignedIndentation C6NotInOldSyntax C6RunOnsInTabbedRoutine at doc174 "11.7" "Begin and end".
Document C16BlockWithinNonblock C16CaseValueMismatch C16CaseValueNonConstant C16DoubleOtherwise C16OtherwiseIfAfterOtherwise C16OtherwiseInNonIf C16OtherwiseWithoutIf C16WrongOtherwise C16WrongOtherwise2 C16WrongOtherwise3 C6MisalignedCase C6MisalignedOtherwise C6MisarrangedOtherwise C6NonCaseInIf ph_otherwise ph_switch at doc175 "11.8" "Otherwise".
Document ph_while ph_while_dep at doc176 "11.9" "While".
Document C14CalledInRepeat ph_repeat at doc177 "11.10" "Repeat".
Document C22BadRepeatDomain ph_runthrough at doc178 "11.11" "Repeat running through".
Document C16CantUseOutsideLoop ph_break ph_next at doc179 "11.12" "Next and break".
Document C25TestBadRequirements C25TestCommandTooLong C25TestContainsUndo C25TestDoubleWith C25TestDuplicate C25TestMultiWord C25UnknownInternalTest at doc18 "2.8" "The TEST command".
Document ph_stop at doc180 "11.13" "Stop".
Document C22NotAPhraseOption C22NotTheOnlyPhraseOption C22PhraseOptionsExclusive C22SayWithPhraseOptions C22TooManyPhraseOptions ph_listcontents at doc181 "11.14" "Phrase options".
Document C22TooManyLocals ph_let ph_letdefault at doc182 "11.15" "Let and temporary variables".
Document ph_no ph_yes at doc183 "11.16" "New conditions, new adjectives".
Document C22RedundantReturnKOV C22ReturnWrongKind C22UnknownValueToDecide ph_decideon at doc184 "11.17" "Phrases to decide other things".
Document ph_enumafter ph_enumbefore ph_enumfirst ph_enumlast at doc185 "11.18" "The value after and the value before".
Document ARSUMMARY at doc188 "12.2" "How actions are processed".
Document var_person_asked at doc189 "12.3" "Giving instructions to other people".
Document rules_per at doc190 "12.4" "Persuasion".
Document rules_fail var_reason at doc191 "12.5" "Unsuccessful attempts".
Document C24ActionAlreadyExists C24ActionBothValues C24ActionClauseUnknown C24ActionMisapplied C24GrammarMismatchesAction C24MatchedAsTooLong C24MultiwordPastParticiple NEWACTIONS ph_requirescarried ph_requirescarried2 ph_requireslight ph_requirestouch ph_requirestouch2 at doc193 "12.7" "New actions".
Document C14ActionVarsPastTense C24ActionVarAnd C24ActionVarOverspecific C24ActionVarUnknownKOV C24ActionVarValue C24BadMatchingSyntax C24BadOptionalAPClause at doc196 "12.10" "Action variables".
Document C22DuplicateRuleName C22RuleWithComma at doc198 "12.12" "Check rules for actions by other people".
Document C5BogusExtension at doc20 "2.10" "Installing extensions".
Document OUTOFWORLD at doc201 "12.15" "Out of world actions".
Document rules_ri at doc202 "12.16" "Reaching inside and reaching outside rules".
Document var_person_reaching at doc204 "12.18" "Changing reachability".
Document visibility at doc205 "12.19" "Changing visibility".
Document C24SetStoredAction kind_storedaction ph_actionof ph_actionpart ph_actorpart ph_currentaction ph_involves ph_nounpart ph_secondpart ph_trystored ph_trystoredsilently at doc206 "12.20" "Stored actions".
Document VERBS at doc208 "13.1" "Sentence verbs".
Document C7ExtInadequateVM C7ExtMalformedVM C7ExtMisidentified C7ExtMisidentifiedEnds C7ExtMiswordedBeginsHere C7ExtVersionMalformed C7IncludeExtQuoted C7IncludeExtWithoutBy at doc21 "2.11" "Including extensions".
Document RELATIONS at doc210 "13.3" "What are relations?".
Document C17BadKOVForRelationProperty C9BothOneAndMany C9CantCallBoth C9CantCallLeft C9CantCallRight C9FRFUnavailable C9OneOrVariousWithWhen C9OneToOneMiscalled C9RelMalformed C9RelatedKindsUnknown C9RelationExists at doc212 "13.5" "Making new relations".
Document ph_showrelation at doc214 "13.7" "Relations in groups".
Document C9DuplicateVerbs1 C9DuplicateVerbs2 C9DuplicateVerbs3 C9PrepositionConjugated C9PrepositionLong C9PresentPluralTwice C9VerbMalformed C9VerbRedefinesBe C9VerbRelationUnknown C9VerbRelationVague C9VerbUnknownMeaning C9VerbWithoutParts at doc216 "13.9" "Defining new assertion verbs".
Document C6CanHave at doc217 "13.10" "Defining new prepositions".
Document ph_nextstep ph_numbersteps at doc218 "13.11" "Indirect relations".
Document C22BadRelationCondition C9Unassertable2 at doc219 "13.12" "Relations which express conditions".
Document C21UONotNumerical C21UnknownUseOption at doc22 "2.12" "Use options".
Document ph_ifleft ph_ifright ph_leftdomain ph_leftlookup ph_leftlookuplist ph_rightdomain ph_rightlookup ph_rightlookuplist at doc220 "13.13" "Relations involving values".
Document ph_letrelation at doc222 "13.15" "Temporary relations".
Document C17RelationWithBadProperty C17RelationWithEitherOrProperty C8BadRelation C8EveryWrongSide C8KindRelatedToValue C8PropForBadKOV at doc224 "13.17" "Review of Chapter 13: Relations".
Document C10ElementOverflow C10EvenOverflow-G C10ZMachineOverflow C12LiteralOverflow C14CantEquateValues C14InequalityFailed kind_number ph_cuberoot ph_divide ph_minus ph_nearest ph_plus ph_remainder ph_squareroot ph_times at doc226 "14.2" "Numbers".
Document C10LPBuiltInKOV C10LPEnumeration C10LPNotKOV C10NegationForbidden C10NegationInternal at doc227 "14.3" "Units".
Document C10DuplicateUnitSpec at doc228 "14.4" "Multiple notations".
Document C10LPCantScaleTwice C10LPCantScaleYet C10LPTooLittleAccuracy at doc229 "14.5" "Scaling and equivalents".
Document C10LPElementTooLarge C10LPNotAllNamed C10LPTooComplicated C10LPTooManyElements C10LPWithoutElement at doc233 "14.9" "Notations including more than one number".
Document C10BadLPNameOption C10BadLPPartOption C10LPFirstOptional C10LPMultipleOptional at doc234 "14.10" "The parts of a number specification".
Document C16TotalEitherOr C16TotalTableColumn ph_total at doc236 "14.12" "Totals".
Document C21EquationBadArithmetic C21EquationBadTarget C21EquationDimensionPower C21EquationDoesntEquate C21EquationEquatesBadly C21EquationEquatesMultiply C21EquationIncomparable C21EquationInsoluble C21EquationLeadingZero C21EquationMisnamed C21EquationMisnumbered C21EquationMispunctuated C21EquationNonIntPower C21EquationOperatorUnrecognised C21EquationSymbolBadSub C21EquationSymbolEqualsKOV C21EquationSymbolMalformed C21EquationSymbolMisdeclared C21EquationSymbolMissing C21EquationSymbolNonNumeric C21EquationSymbolNonValue C21EquationSymbolSpurious C21EquationSymbolVague C21EquationSymbolWrongKOV C21EquationTokenUnrecognised C21EquationTooComplex EQUATIONS ph_letequation at doc237 "14.13" "Equations".
Document C10BadLPEquivalent C10BadLPOffset C10MultiplyingNonKOVs C15DimensionNotBaseKOV C15DimensionRedundant C15DimensionsInconsistent C15NonDimensional C15UnitSequenceOverflow C16BadArithmetic at doc239 "14.15" "Multiplication of units".
Document C21BadICLIdentifier at doc24 "2.14" "Limits and the Settings panel".
Document C20TableCoincidesWithKind C20TableColumnAlready C20TableColumnArticle C20TableColumnBrackets C20TableColumnEmptyLists C20TableContinuationAddsRows C20TableDefiningObject C20TableDescriptionEntry C20TableEntryGeneric C20TableIncompatibleEntry C20TableKindlessColumn C20TableMisnamed C20TableNameAmbiguous C20TableNameDuplicate C20TableOfBuiltInKind C20TableOfExistingKind C20TableOfQuantifiedKind C20TablePlayerEntry C20TableRowFull C20TableTooManyColumns C20TableUndefined C20TableUnknownEntry C20TableVariableEntry C20TableWithBlankNames C20TableWithUnobviousColumn C20TableWithUnobviousColumn2 C20TableWithoutRows TABLES at doc241 "15.1" "Laying out tables".
Document ph_numrows at doc242 "15.2" "Looking up entries".
Document C12NoRowSelected ph_chooserandomrow ph_chooserow ph_chooserowwith at doc245 "15.5" "Choosing rows".
Document ph_repeattable ph_repeattablecol ph_repeattablecolreverse ph_repeattablereverse at doc246 "15.6" "Repeating through tables".
Document ph_thereis ph_thereisno at doc247 "15.7" "Blank entries".
Document ph_blankout ph_blankoutcol ph_blankoutrow ph_blankouttable ph_chooseblankrow ph_deleteentry_dep ph_numblank ph_numfilled at doc250 "15.10" "Adding and removing rows".
Document ph_sortcolumn ph_sortcolumnreverse ph_sortrandom at doc251 "15.11" "Sorting".
Document kind_tablename at doc255 "15.15" "Varying which table to look at".
Document C20TableDefiningNothing C20TableDefiningTheImpossible at doc256 "15.16" "Defining things with tables".
Document C20TableNotContinuation at doc258 "15.18" "Table continuations".
Document C20TableAmendmentMisfit C20TableAmendmentMismatch at doc259 "15.19" "Table amendments".
Document C25BizarreToken C25ComplexUnderstand C25LiteralPunctuation C25NontextualTable C25NontextualUnderstand C25NotNewCommand C25NotOldCommand C25ObsoleteHeldTokens C25OldVerbUsage C25OverComplexToken C25TextTokenRestricted C25TextlessMistake C25UnderstandAsActivity C25UnderstandAsBadValue C25UnderstandAsCompoundText C25UnderstandCommaCommand C25UnderstandCommandWhen C25UnderstandEmptyText C25UnderstandMismatch C25UnderstandVague C25UnknownToken C25UnparsableKind C25UseTextNotTopic C25UseThingNotObject at doc260 "16.1" "Understand".
Document C25GrammarIllFounded C25ThreeValuedLine C25TooManyAliases C25TooManyGrammarLines at doc261 "16.2" "New commands for old grammar".
Document var_understood at doc268 "16.9" "Understanding kinds of value".
Document C14CantAssertAdjective C14CantAssertNegatedEverywhere C14CantAssertNegatedRelations C14CantAssertNonKind C14CantAssertQuantifier C6NegatedVerb1 C6TwoLikelihoods C8NoSuchVerb C8NoSuchVerbComma at doc27 "2.17" "Review of Chapter 2: The Source Text".
Document C25UnderstandAsQualified C25UnderstandPluralValue at doc270 "16.11" "Understanding values".
Document C25OverAmbitiousSlash C25SlashedCommand at doc271 "16.12" "This/that".
Document C25MixedOutcome C25TwoValuedToken at doc272 "16.13" "New tokens".
Document C25BadReferringProperty C25BadUnderstandProperty C25BadUnderstandPropertyAs C25UnknownUnderstandProperty C25UnknownUnpermittedProperty at doc274 "16.15" "Understanding things by their properties".
Document C25GrammarBadRelation C25GrammarObjectlessRelation C25GrammarValueRelation at doc275 "16.16" "Understanding things by their relations".
Document C25BadWhen at doc276 "16.17" "Context: understanding when".
Document ph_setpronouns ph_setpronouns_dep at doc277 "16.18" "Changing the meaning of pronouns".
Document rules_dtpm at doc278 "16.19" "Does the player mean...".
Document ACTIVITIES C24BadActivityName kind_activity at doc282 "17.1" "What are activities?".
Document C22BadWhenWhile at doc285 "17.4" "While clauses".
Document EXTACTIVITIES ph_carryout ph_carryoutwith ph_continueactivity at doc286 "17.5" "New activities".
Document C24ActivityVarAnd C24ActivityVarOverspecific C24ActivityVarUnknownKOV C24ActivityVarValue C24ActivityVariableNameless at doc287 "17.6" "Activity variables".
Document ph_abandonactivity ph_abandonactivitywith ph_beginactivity ph_beginactivitywith ph_endactivity ph_endactivitywith ph_handlingactivity ph_handlingactivitywith at doc288 "17.7" "Beginning and ending activities manually".
Document C8DescriptionsEquated C8SameKindEquated MAP kind_room at doc29 "3.2" "Rooms and the map".
Document act_con var_particular at doc290 "17.9" "Deciding the concealed possessions of something".
Document act_pn ph_omit at doc291 "17.10" "Printing the name of something".
Document act_ppn at doc292 "17.11" "Printing the plural name of something".
Document act_pan at doc293 "17.12" "Printing a number of something".
Document act_lc ph_group ph_groupart ph_grouptext at doc294 "17.13" "Listing contents of something".
Document act_gt at doc295 "17.14" "Grouping together something".
Document act_details at doc296 "17.15" "Printing room description details of something".
Document act_toodark at doc297 "17.16" "Printing a refusal to act in the dark".
Document act_nowdark at doc298 "17.17" "Printing the announcement of darkness".
Document act_nowlight at doc299 "17.18" "Printing the announcement of light".
Document act_darkname at doc300 "17.19" "Printing the name of a dark room".
Document act_darkdesc at doc301 "17.20" "Printing the description of a dark room".
Document act_csl at doc302 "17.21" "Constructing the status line".
Document act_wpa at doc303 "17.22" "Writing a paragraph about".
Document act_lni at doc304 "17.23" "Listing nondescript items of something".
Document act_pld at doc305 "17.24" "Printing the locale description of something".
Document act_cnlo at doc306 "17.25" "Choosing notable locale objects for something".
Document act_plp at doc307 "17.26" "Printing a locale paragraph about".
Document act_ds ph_placecontentsinscope ph_placeinscope at doc308 "17.27" "Deciding the scope of something".
Document act_clarify at doc309 "17.28" "Clarifying the parser's choice of something".
Document C19ExistingRegion C19RegionInTwoRegions C19RegionRelation REGIONS kind_region at doc31 "3.4" "Regions and the index map".
Document act_which at doc310 "17.29" "Asking which do you mean".
Document act_smn at doc311 "17.30" "Supplying a missing noun/second noun".
Document act_reading kind_snippet ph_changecommand ph_cutsnippet ph_rejectcommand ph_replacesnippet ph_snippetdoesnotinclude ph_snippetdoesnotmatch ph_snippetincludes ph_snippetmatches var_command at doc312 "17.31" "Reading a command".
Document act_implicitly at doc313 "17.32" "Implicitly taking something".
Document act_parsererror at doc314 "17.33" "Printing a parser error".
Document act_all at doc315 "17.34" "Deciding whether all includes".
Document act_banner phs_banner at doc316 "17.35" "Printing the banner text".
Document act_obit at doc317 "17.36" "Printing the player's obituary".
Document act_amuse at doc318 "17.37" "Amusing a victorious player".
Document act_startvm at doc319 "17.38" "Starting the virtual machine".
Document C11KindsIncompatible C19BothRoomAndSupporter C19CantContainAndSupport C19MiseEnAbyme KINDS at doc32 "3.5" "Kinds".
Document C23RulebookWithAt C23RulebookWithDefinition C23RulebookWithTo RULEBOOKS kind_rule kind_rulebook at doc321 "18.1" "On rules".
Document C22BadRulePreamble C22BadRulePreambleWhen C22RuleWithDefiniteArticle C8RuleWithoutColon at doc323 "18.3" "New rules".
Document C23BadRulePlacementNegation C23ImproperRulePlacement C23NoSuchRulePlacement C23NoSuchRulePlacement2 C23NoSuchRulebookPlacement C23PlaceWithMissingRule C23UnspecifiedRulebookPlacement RLISTING at doc324 "18.4" "Listing rules explicitly".
Document NEWRULEBOOKS ph_follow at doc327 "18.7" "New rulebooks".
Document ph_followfor at doc328 "18.8" "Basis of a rulebook".
Document C23RulebookVariableAnd C23RulebookVariableBadKind C23RulebookVariableTooSpecific C23RulebookVariableVague at doc329 "18.9" "Rulebook variables".
Document C23BadDefaultOutcome C23DefaultOutcomeTwice ph_failed ph_fails ph_nodecision ph_succeeded ph_succeeds at doc330 "18.10" "Success and failure".
Document C16MisplacedRulebookOutcome C22WrongEndToPhrase C23BadOutcomeClarification C23DefaultNamedOutcomeTwice C23DefaultOutcomeAlready C23DuplicateOutcome C23NonOutcomeProperty C23TooManyRulebookOutcomes ph_rulebookoutcome at doc331 "18.11" "Named outcomes".
Document ph_producedby ph_producedbyfor ph_succeedswith at doc332 "18.12" "Rulebooks producing values".
Document ph_abide ph_abideanon ph_abidefor ph_consider ph_considerfor at doc333 "18.13" "Consider and abide".
Document rules_proc at doc334 "18.14" "Procedural rules".
Document ph_accept_dep ph_ignore_dep ph_moveafter_dep ph_movebefore_dep ph_reinstate_dep ph_reject_dep ph_restore_dep ph_substitute_dep at doc335 "18.15" "Phrases concerning rules".
Document rules_internal at doc337 "18.17" "Two rulebooks used internally".
Document C18PropertyNotPermitted at doc34 "3.7" "Properties depend on kind".
Document kind_indexedtext at doc340 "19.1" "Ordinary text and indexed text".
Document ph_charnum ph_linenum ph_numchars ph_numlines ph_numparas ph_numpwords ph_numupwords ph_numwords ph_paranum ph_pwordnum ph_upwordnum ph_wordnum at doc342 "19.3" "Characters, words, punctuated words, unpunctuated words, lines, paragraphs".
Document ph_inlower ph_inupper ph_lowercase ph_sentencecase ph_titlecase ph_uppercase at doc343 "19.4" "Upper and lower case letters".
Document ph_exactlymatches ph_matches ph_nummatches at doc344 "19.5" "Matching and exactly matching".
Document ph_exactlymatchesre ph_matchesre ph_matchtext ph_nummatchesre ph_subexpressiontext at doc345 "19.6" "Regular expression matching".
Document ph_replace ph_replacechar ph_replaceline ph_replacepara ph_replacepword ph_replacepwordin ph_replacere ph_replaceupword ph_replaceword ph_replacewordin at doc347 "19.8" "Replacements".
Document kind_listof at doc349 "20.1" "Lists and entries".
Document C16CantLetEmptyList C20BadConstantListEntry C20IncompatibleConstantListEntry C20NonconstantConstantListEntry at doc350 "20.2" "Constant lists".
Document phs_listbraced phs_listdef phs_listindef at doc351 "20.3" "Saying lists of values".
Document ph_islistedin ph_isnotlistedin ph_repeatlist at doc352 "20.4" "Testing and iterating over lists".
Document ph_addatentry ph_addlistatentry ph_addlisttolist ph_addtolist ph_rementries ph_rementry ph_remfromlist ph_remlistfromlist at doc353 "20.5" "Building lists".
Document ph_altermultipleobjectlist ph_listofdesc ph_multipleobjectlist at doc354 "20.6" "Lists of objects".
Document ph_reverselist ph_rotatelist ph_rotatelistback ph_sortlist ph_sortlistproperty ph_sortlistpropertyreverse ph_sortlistrandom ph_sortlistreverse at doc356 "20.8" "Sorting, reversing and rotating lists".
Document ph_numberentries at doc357 "20.9" "Accessing entries in a list".
Document ph_changelength ph_extend ph_truncate ph_truncatefirst ph_truncatelast at doc358 "20.10" "Lengthening or shortening a list".
Document C13EverywhereMisapplied C14CantChangeEverywhere C19EverywhereNonBackdrop kind_backdrop at doc36 "3.9" "Backdrops".
Document kind_description ph_valuematch at doc361 "21.2" "Descriptions as values".
Document ph_applied0 ph_applied1 ph_applied2 ph_applied3 ph_apply0 ph_apply1 ph_apply2 ph_apply3 at doc362 "21.3" "Phrases as values".
Document ph_appliedlist ph_filter ph_reduction at doc364 "21.5" "Map, filter and reduce".
Document C6HeadingBadVM at doc372 "22.3" "Virtual machines and story file formats".
Document FIGURES kind_figurename at doc373 "22.4" "Gathering the figures".
Document C26PictureDuplicate C26PictureNotTextual at doc374 "22.5" "Declaring and previewing the figures".
Document ph_displayfigure at doc375 "22.6" "Displaying the figures".
Document SOUNDS kind_soundname at doc376 "22.7" "Recorded sounds".
Document C26SoundDuplicate C26SoundNotTextual ph_playsf at doc377 "22.8" "Declaring and playing back sounds".
Document ph_figureid ph_soundid at doc378 "22.9" "Some technicalities about figures and sounds".
Document EFILES at doc379 "22.10" "Files".
Document C17TwoAppearances C8TextWithoutSubject at doc38 "3.11" "Two descriptions of things".
Document C26BadFileIFID C26BadFileOwner C26FilenameDuplicate C26FilenameNotTextual C26FilenameUnsafe kind_externalfile at doc380 "22.11" "Declaring files".
Document ph_fileexists ph_readtable ph_writetable at doc381 "22.12" "Writing and reading tables to external files".
Document ph_appendtext ph_saytext ph_writetext at doc382 "22.13" "Writing, reading and appending text to files".
Document ph_fileready ph_markfilenotready ph_markfileready at doc383 "22.14" "Exchanging files with other programs".
Document C20BadEpisode at doc385 "23.2" "Bibliographic data".
Document LCARDS at doc387 "23.4" "The Library Card".
Document C20NoSuchPublicRelease release_files at doc389 "23.6" "The Release button and the Materials folder".
Document C19BadMapCell C19BothWaysDoor C19DoorInThirdRoom C19DoorOverconnected C19DoorToNonRoom C19DoorUnconnected C19RoomMissingDoor kind_door ph_backside ph_directionofdoor ph_frontside ph_othersideof at doc39 "3.12" "Doors".
Document C20ReleaseAlong at doc390 "23.7" "The Joy of Feelies".
Document release_cover at doc391 "23.8" "Cover art".
Document release_booklet at doc392 "23.9" "An introductory booklet".
Document release_website at doc393 "23.10" "A website".
Document release_interpreter at doc394 "23.11" "A playable web page".
Document C19RoomInIgnoredSource at doc397 "23.14" "Republishing existing works of IF".
Document release_solution at doc398 "23.15" "Walkthrough solutions".
Document release_card release_source at doc399 "23.16" "Releasing the source text".
Document C19NoStartRoom C19StartsOutsideRooms at doc4 "1.4" "The Go! button".
Document C19MapBadRubric C19MapDirectionClue C19MapFromNonRoom C19MapHintUnknown C19MapLevelMisnamed C19MapNonLateral C19MapPlacement C19MapPlacementDirection C19MapSettingOfUnknown C19MapSettingTooLong C19MapSettingTypeFailed C19MapSettingUnknown C19MapToNonRoom C19MapUnknownColour C19MapUnknownOffset C19MapUnknownOffsetBase MAPHINTS at doc400 "23.17" "Improving the index map".
Document EPSMAP at doc401 "23.18" "Producing an EPS format map".
Document kind_device at doc41 "3.14" "Devices and descriptions".
Document EXTENSIONS at doc418 "25.1" "The status of extensions".
Document SRULES at doc419 "25.2" "The Standard Rules".
Document C6ExtBeginsAfterEndsHere C6ExtEndsWithoutBegins C6ExtMultipleBeginsHere C6ExtMultipleEndsHere C6ExtNoBeginsHere C6ExtNoEndsHere at doc421 "25.4" "A simple example extension".
Document C7ExtNoVersion C7ExtVersionTooLow phs_compextcredits phs_extcredits at doc422 "25.5" "Version numbering".
Document C6HeadingInPlaceOfUnincluded C6HeadingInPlaceOfUnknown C6UnequalHeadingInPlaceOf at doc425 "25.8" "Extensions can interact with other extensions".
Document C8ImplicationCertain C8ImplicationValueProperty at doc429 "25.12" "Implications".
Document kind_vehicle at doc43 "3.16" "Vehicles and pushable things".
Document C22BadInlineExpansion C22BadInlineTag C22InlineRule C22InlineTooLong C22NonInlineBeginEnd C5UnendingI6 at doc431 "25.14" "Defining phrases in Inform 6".
Document ph_testuseoption_dep at doc434 "25.17" "Making and testing use options".
Document C11BadObjectTranslation at doc437 "25.20" "Inform 6 objects and classes".
Document C17NonPropertyTranslated C17TranslatedTwice C20NonQuantityTranslated C20QuantityTranslatedAlready C24TranslatesActionAlready C24TranslatesNonAction C2TranslatedToNonIdentifier C2TranslatedUnknownCategory at doc438 "25.21" "Inform 6 variables, properties, actions, and attributes".
Document C25GrammarTranslatedAlready at doc439 "25.22" "Inform 6 Understand tokens".
Document kind_person at doc44 "3.17" "Men, women and animals".
Document C10UnicodeAlready C10UnicodeNonLiteral C10UnicodeOutOfRange at doc441 "25.24" "Naming Unicode characters".
Document C21BadI6Inclusion C21BeforeTheLibrary C21WhenDefiningUnknown C27NoSuchPart C27NoSuchTemplate at doc442 "25.25" "The template layer".
Document C2LabelNamespaceTooLong at doc445 "25.28" "Invocation labels, counters and storage".
Document kind_player's at doc48 "3.21" "The player's holdall".
Document C19PartOfRoom C19RoomOrDoorAsPart at doc50 "3.23" "Parts of things".
Document ph_in_dep ph_locationof at doc52 "3.25" "The location of something".
Document C19DirectionTooLong C19ImproperlyMadeDirection C19NamelessDirection C6TooManyDirections kind_direction at doc53 "3.26" "Directions".
Document NEWKINDS at doc55 "4.1" "New kinds".
Document C5PluralIsQuoted C5PluralOfQuoted at doc58 "4.4" "Plural assertions".
Document KINDSVALUE at doc59 "4.5" "Kinds of value".
Document C8ValueCantHaveProperties C8ValueCantHaveVProperties at doc60 "4.6" "Properties again".
Document C16EitherOrAsValue C8MiscellaneousEOProblem C8NonObjectCanBe C8QualifiedCanBe C8ThisIsEitherOr at doc61 "4.7" "New either/or properties".
Document C16PropertyOfKind C16PropertyOfNonProperty C17BadProvides C17PropertyUninitialisable C25BadVisibilityWhen C6PropertyCalledArticle C6PropertyCalledPresence C6PropertyNameForbidden C8PropertyKindClashes C8PropertyKindUnknown C8PropertyKindVague C8PropertyTooSpecific C8RedundantThatVaries at doc62 "4.8" "New value properties".
Document C8EitherOnThree at doc64 "4.10" "Conditions of things".
Document ph_defaultvalue at doc65 "4.11" "Default values of kinds".
Document C12BadVariableKind1 C15EmptyKind VARIABLES var_location at doc66 "4.12" "Values that vary".
Document C8TooManyDuplicates at doc67 "4.13" "Duplicates".
Document C8AssemblyLoop C8AssemblyRegress C8ComplexEvery at doc68 "4.14" "Assemblies and body parts".
Document C12TSWithComma C12TSWithPunctuation at doc72 "5.1" "Text with substitutions".
Document phs_apostrophe phs_bracket phs_closebracket phs_quotemark at doc73 "5.2" "How Inform reads quoted text".
Document phs_A phs_The phs_a phs_the phs_value at doc74 "5.3" "Text which names things".
Document phs_numwords phs_s at doc75 "5.4" "Text with numbers".
Document phs_Alistof phs_Thelistof phs_alistof phs_alistofconts phs_contents_dep phs_isalistof phs_islistof phs_isthelistof phs_listof phs_thelistof at doc76 "5.5" "Text with lists".
Document C22SayEndIfWithoutIf C22SayIfNested C22SayOtherwiseWithoutIf phs_elseif phs_elseunless phs_endif phs_endunless phs_if phs_otherwise phs_unless at doc77 "5.6" "Text with variations".
Document C22ComplicatedSayStructure C22ComplicatedSayStructure2 C22ComplicatedSayStructure3 C22ComplicatedSayStructure4 C22ComplicatedSayStructure5 phs_cycling phs_decreasing phs_firsttime phs_oneof phs_or phs_order phs_purelyrandom phs_random phs_sticky phs_stopping phs_thenpurelyrandom phs_thenrandom at doc78 "5.7" "Text with random alternatives".
Document ph_breakpending phs_clarifbreak phs_condparabreak phs_linebreak phs_nolinebreak phs_parabreak phs_runparaon phs_runparaonsls at doc79 "5.8" "Line breaks and paragraph breaks".
Document phs_bold phs_fixedspacing phs_italic phs_roman phs_varspacing at doc80 "5.9" "Text with type styles".
Document C16MidTextUnicode C16SayUnicode phs_unicode at doc82 "5.11" "Unicode characters".
Document ph_boxed at doc83 "5.12" "Displaying quotations".
Document DESCRIPTIONS ph_numberof at doc86 "6.1" "What are descriptions?".
Document C22DefinitionBadCondition C22DefinitionWithoutCondition C9AdjDomainSlippery C9AdjDomainSurreal C9AdjDomainUnknown C9ArticleAsAdjective at doc89 "6.4" "Defining new adjectives".
Document C17ComparativeMisapplied C17GradingCalled C17GradingMisphrased C17GradingNonLiteral C17GradingUnknownProperty C17GradingUnless C17GradingWrongKOV C17MultiwordGrading at doc92 "6.7" "Comparatives".
Document C16OutOfPlay at doc95 "6.10" "Existence and there".
Document ph_bestroute ph_bestroutelength ph_bestroutethrough ph_bestroutethroughlength ph_doordirof ph_roomdirof ph_roomordoor at doc99 "6.14" "Adjacent rooms and routes through the map".
[...and so on...]

@ The following has no effect, and exists only to be a default non-value for
``use option'' variables, should anyone ever create them:

@c
Use ineffectual translates as (- ; -).

@ Inform source text has a core of basic computational abilities, and then
a whole set of additional elements to handle IF. We want all of those to be
used, so:

@c
Use interactive fiction language elements.

@ Some Inform 7 projects are rather heavy-duty by the expectations of the
Inform 6 compiler (which it uses as a code-generator): I6 was written fifteen
years earlier, when computers were unimaginably smaller and slower. So many
of its default memory settings need to be raised to higher maxima.

Note that the Z-machine cannot accommodate more than 255 verbs, so this is
the highest |MAX_VERBS| setting we can safely make here.

@c
Use MAX_ARRAYS of 1500.
Use MAX_CLASSES of 200.
Use MAX_VERBS of 255.
Use MAX_LABELS of 10000.
Use MAX_ZCODE_SIZE of 100000.
Use MAX_STATIC_DATA of 180000.
Use MAX_PROP_TABLE_SIZE of 200000.
Use MAX_INDIV_PROP_TABLE_SIZE of 20000.
Use MAX_STACK_SIZE of 65536.
Use MAX_SYMBOLS of 20000.
Use MAX_EXPRESSION_NODES of 256.

@ These, on the other hand, are settings used by the dynamic memory management
code, which runs in I6 as part of the template layer. Each setting translates
to an I6 constant declaration, with the value chosen being substituted for
|{N}|.

The ``dynamic memory allocation'' defined here is slightly misleading, in
that the memory is only actually consumed in the event that any of the
kinds needing to use the heap is actually employed in the source
text being compiled. (8192 bytes may not sound much these days, but in the
tight array space of the Z-machine it's quite a large commitment, and we
want to avoid it whenever possible.)

@c
Use dynamic memory allocation of at least 8192 translates as
	(- Constant DynamicMemoryAllocation = {N}; -).
Use maximum indexed text length of at least 1024 translates as 
	(- Constant IT_MemoryBufferSize = {N}+3; -).

Use dynamic memory allocation of at least 8192.

@ This setting is to do with the Inform parser's handling of multiple objects.

@c
Use maximum things understood at once of at least 100 translates as
	(- Constant MATCH_LIST_WORDS = {N}; -).

Use maximum things understood at once of at least 100.

@ Finally, some definitions of miscellaneous options: none are used by default,
but all translate into I6 constant definitions if used. (These are constants
whose values are used in the I6 library or in the template layer, which is
how they have effect.)

@c
Use American dialect translates as (- Constant DIALECT_US; -).
Use the serial comma translates as (- Constant SERIAL_COMMA; -).
Use full-length room descriptions translates as (- Constant I7_LOOKMODE = 2; -).
Use abbreviated room descriptions translates as (- Constant I7_LOOKMODE = 3; -).
Use memory economy translates as (- Constant MEMORY_ECONOMY; -).
Use authorial modesty translates as (- Constant AUTHORIAL_MODESTY; -).
Use no scoring translates as (- Constant NO_SCORING; -).
Use command line echoing translates as (- Constant ECHO_COMMANDS; -).
Use undo prevention translates as (- Constant PREVENT_UNDO; -).
Use predictable randomisation translates as (- Constant FIX_RNG; -).
Use fast route-finding translates as (- Constant FAST_ROUTE_FINDING; -).
Use slow route-finding translates as (- Constant SLOW_ROUTE_FINDING; -).
Use numbered rules translates as (- Constant NUMBERED_RULES; -).
Use telemetry recordings translates as (- Constant TELEMETRY_ON; -).
Use no deprecated features translates as (- Constant NO_DEPRECATED_FEATURES; -).
Use VERBOSE room descriptions translates as (- Constant DEFAULT_VERBOSE_DESCRIPTIONS; -).
Use BRIEF room descriptions translates as (- Constant DEFAULT_BRIEF_DESCRIPTIONS; -).
Use SUPERBRIEF room descriptions translates as (- Constant DEFAULT_SUPERBRIEF_DESCRIPTIONS; -).
