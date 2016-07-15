/*
 * generated by Xtext
 */
grammar PsiInternalBug287988TestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.linking.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.linking.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.linking.idea.lang.Bug287988TestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.linking.services.Bug287988TestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected Bug287988TestLanguageGrammarAccess grammarAccess;

	protected Bug287988TestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalBug287988TestLanguageParser(PsiBuilder builder, TokenStream input, Bug287988TestLanguageElementTypeProvider elementTypeProvider, Bug287988TestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Model";
	}

}

//Entry rule entryRuleModel
entryRuleModel returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModelElementType()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getModel_ActionsKeyword_0_0ElementType());
			}
			otherlv_0='actions'
			{
				doneLeaf(otherlv_0);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_AttributesBaseAttributeParserRuleCall_0_1_0ElementType());
					}
					lv_attributes_1_0=ruleBaseAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)*
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_SimpleKeyword_1_0ElementType());
			}
			otherlv_2='simple'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_AttributesSimpleAttributeParserRuleCall_1_1_0ElementType());
					}
					lv_attributes_3_0=ruleSimpleAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)*
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_RulecallKeyword_2_0ElementType());
			}
			otherlv_4='rulecall'
			{
				doneLeaf(otherlv_4);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_AttributesRuleCallAttributeParserRuleCall_2_1_0ElementType());
					}
					lv_attributes_5_0=ruleRuleCallAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)*
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_Rulecall2Keyword_3_0ElementType());
			}
			otherlv_6='rulecall2'
			{
				doneLeaf(otherlv_6);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_AttributesRuleCallAttribute2ParserRuleCall_3_1_0ElementType());
					}
					lv_attributes_7_0=ruleRuleCallAttribute2
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)*
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_Rulecall3Keyword_4_0ElementType());
			}
			otherlv_8='rulecall3'
			{
				doneLeaf(otherlv_8);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_AttributesRuleCallAttribute3ParserRuleCall_4_1_0ElementType());
					}
					lv_attributes_9_0=ruleRuleCallAttribute3
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)*
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_InlinedActionsKeyword_5_0ElementType());
			}
			otherlv_10='inlinedActions'
			{
				doneLeaf(otherlv_10);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_AttributesActionAttributeParserRuleCall_5_1_0ElementType());
					}
					lv_attributes_11_0=ruleActionAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)*
		)
	)
;

//Entry rule entryRuleBaseAttribute
entryRuleBaseAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getBaseAttributeElementType()); }
	iv_ruleBaseAttribute=ruleBaseAttribute
	{ $current=$iv_ruleBaseAttribute.current; }
	EOF;

// Rule BaseAttribute
ruleBaseAttribute returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getBaseAttribute_AttributeParserRuleCall_0_0ElementType());
			}
			this_Attribute_0=ruleAttribute
			{
				$current = $this_Attribute_0.current;
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getBaseAttribute_MasterParserRuleCall_0_1ElementType());
			}
			this_Master_1=ruleMaster
			{
				$current = $this_Master_1.current;
				doneComposite();
			}
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getBaseAttribute_RefKeyword_1_0_0ElementType());
				}
				otherlv_2='ref'
				{
					doneLeaf(otherlv_2);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getBaseAttribute_TypeRefBaseAttributeCrossReference_1_0_1_0ElementType());
						}
						otherlv_3=RULE_ID
						{
							doneLeaf(otherlv_3);
						}
					)
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getBaseAttribute_TypeIDTerminalRuleCall_1_1_0ElementType());
					}
					lv_type_4_0=RULE_ID
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_type_4_0);
					}
				)
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getBaseAttribute_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_5_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_5_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getBaseAttribute_SemicolonKeyword_3ElementType());
		}
		otherlv_6=';'
		{
			doneLeaf(otherlv_6);
		}
	)
;

//Entry rule entryRuleAttribute
entryRuleAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getAttributeElementType()); }
	iv_ruleAttribute=ruleAttribute
	{ $current=$iv_ruleAttribute.current; }
	EOF;

// Rule Attribute
ruleAttribute returns [Boolean current=false]
:
	(
		(
			{
				precedeComposite(elementTypeProvider.getAttribute_AttributeAction_0ElementType());
				doneComposite();
				associateWithSemanticElement();
			}
		)
		{
			markLeaf(elementTypeProvider.getAttribute_AttributeKeyword_1ElementType());
		}
		otherlv_1='attribute'
		{
			doneLeaf(otherlv_1);
		}
	)
;

//Entry rule entryRuleMaster
entryRuleMaster returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getMasterElementType()); }
	iv_ruleMaster=ruleMaster
	{ $current=$iv_ruleMaster.current; }
	EOF;

// Rule Master
ruleMaster returns [Boolean current=false]
:
	(
		(
			{
				precedeComposite(elementTypeProvider.getMaster_MasterAction_0ElementType());
				doneComposite();
				associateWithSemanticElement();
			}
		)
		{
			markLeaf(elementTypeProvider.getMaster_MasterKeyword_1ElementType());
		}
		otherlv_1='master'
		{
			doneLeaf(otherlv_1);
		}
	)
;

//Entry rule entryRuleActionAttribute
entryRuleActionAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getActionAttributeElementType()); }
	iv_ruleActionAttribute=ruleActionAttribute
	{ $current=$iv_ruleActionAttribute.current; }
	EOF;

// Rule ActionAttribute
ruleActionAttribute returns [Boolean current=false]
:
	(
		(
			(
				(
					{
						precedeComposite(elementTypeProvider.getActionAttribute_AttributeAction_0_0_0ElementType());
						doneComposite();
						associateWithSemanticElement();
					}
				)
				{
					markLeaf(elementTypeProvider.getActionAttribute_AttributeKeyword_0_0_1ElementType());
				}
				otherlv_1='attribute'
				{
					doneLeaf(otherlv_1);
				}
			)
			    |
			(
				(
					{
						precedeComposite(elementTypeProvider.getActionAttribute_MasterAction_0_1_0ElementType());
						doneComposite();
						associateWithSemanticElement();
					}
				)
				{
					markLeaf(elementTypeProvider.getActionAttribute_MasterKeyword_0_1_1ElementType());
				}
				otherlv_3='master'
				{
					doneLeaf(otherlv_3);
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getActionAttribute_RefKeyword_1_0_0ElementType());
				}
				otherlv_4='ref'
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getActionAttribute_TypeRefBaseAttributeCrossReference_1_0_1_0ElementType());
						}
						otherlv_5=RULE_ID
						{
							doneLeaf(otherlv_5);
						}
					)
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getActionAttribute_TypeIDTerminalRuleCall_1_1_0ElementType());
					}
					lv_type_6_0=RULE_ID
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_type_6_0);
					}
				)
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getActionAttribute_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_7_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_7_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getActionAttribute_SemicolonKeyword_3ElementType());
		}
		otherlv_8=';'
		{
			doneLeaf(otherlv_8);
		}
	)
;

//Entry rule entryRuleSimpleAttribute
entryRuleSimpleAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getSimpleAttributeElementType()); }
	iv_ruleSimpleAttribute=ruleSimpleAttribute
	{ $current=$iv_ruleSimpleAttribute.current; }
	EOF;

// Rule SimpleAttribute
ruleSimpleAttribute returns [Boolean current=false]
:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getSimpleAttribute_RefKeyword_0_0_0ElementType());
				}
				otherlv_0='ref'
				{
					doneLeaf(otherlv_0);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getSimpleAttribute_TypeRefBaseAttributeCrossReference_0_0_1_0ElementType());
						}
						otherlv_1=RULE_ID
						{
							doneLeaf(otherlv_1);
						}
					)
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getSimpleAttribute_TypeIDTerminalRuleCall_0_1_0ElementType());
					}
					lv_type_2_0=RULE_ID
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_type_2_0);
					}
				)
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getSimpleAttribute_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_3_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_3_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getSimpleAttribute_SemicolonKeyword_2ElementType());
		}
		otherlv_4=';'
		{
			doneLeaf(otherlv_4);
		}
	)
;

//Entry rule entryRuleRuleCallAttribute
entryRuleRuleCallAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getRuleCallAttributeElementType()); }
	iv_ruleRuleCallAttribute=ruleRuleCallAttribute
	{ $current=$iv_ruleRuleCallAttribute.current; }
	EOF;

// Rule RuleCallAttribute
ruleRuleCallAttribute returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getRuleCallAttribute_CallMeParserRuleCall_0ElementType());
		}
		this_CallMe_0=ruleCallMe
		{
			$current = $this_CallMe_0.current;
			doneComposite();
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getRuleCallAttribute_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getRuleCallAttribute_SemicolonKeyword_2ElementType());
		}
		otherlv_2=';'
		{
			doneLeaf(otherlv_2);
		}
	)
;

//Entry rule entryRuleCallMe
entryRuleCallMe returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getCallMeElementType()); }
	iv_ruleCallMe=ruleCallMe
	{ $current=$iv_ruleCallMe.current; }
	EOF;

// Rule CallMe
ruleCallMe returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getCallMe_RefKeyword_0_0ElementType());
			}
			otherlv_0='ref'
			{
				doneLeaf(otherlv_0);
			}
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getCallMe_TypeRefBaseAttributeCrossReference_0_1_0ElementType());
					}
					otherlv_1=RULE_ID
					{
						doneLeaf(otherlv_1);
					}
				)
			)
		)
		    |
		(
			(
				{
					markLeaf(elementTypeProvider.getCallMe_TypeIDTerminalRuleCall_1_0ElementType());
				}
				lv_type_2_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_type_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleRuleCallAttribute2
entryRuleRuleCallAttribute2 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getRuleCallAttribute2ElementType()); }
	iv_ruleRuleCallAttribute2=ruleRuleCallAttribute2
	{ $current=$iv_ruleRuleCallAttribute2.current; }
	EOF;

// Rule RuleCallAttribute2
ruleRuleCallAttribute2 returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getRuleCallAttribute2_CallMe2ParserRuleCall_0ElementType());
		}
		this_CallMe2_0=ruleCallMe2
		{
			$current = $this_CallMe2_0.current;
			doneComposite();
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getRuleCallAttribute2_RefKeyword_1_0_0ElementType());
				}
				otherlv_1='ref'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getRuleCallAttribute2_TypeRefBaseAttributeCrossReference_1_0_1_0ElementType());
						}
						otherlv_2=RULE_ID
						{
							doneLeaf(otherlv_2);
						}
					)
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getRuleCallAttribute2_TypeIDTerminalRuleCall_1_1_0ElementType());
					}
					lv_type_3_0=RULE_ID
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_type_3_0);
					}
				)
			)
		)
		{
			markLeaf(elementTypeProvider.getRuleCallAttribute2_SemicolonKeyword_2ElementType());
		}
		otherlv_4=';'
		{
			doneLeaf(otherlv_4);
		}
	)
;

//Entry rule entryRuleCallMe2
entryRuleCallMe2 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getCallMe2ElementType()); }
	iv_ruleCallMe2=ruleCallMe2
	{ $current=$iv_ruleCallMe2.current; }
	EOF;

// Rule CallMe2
ruleCallMe2 returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getCallMe2_NameIDTerminalRuleCall_0ElementType());
			}
			lv_name_0_0=RULE_ID
			{
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
			{
				doneLeaf(lv_name_0_0);
			}
		)
	)
;

//Entry rule entryRuleRuleCallAttribute3
entryRuleRuleCallAttribute3 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getRuleCallAttribute3ElementType()); }
	iv_ruleRuleCallAttribute3=ruleRuleCallAttribute3
	{ $current=$iv_ruleRuleCallAttribute3.current; }
	EOF;

// Rule RuleCallAttribute3
ruleRuleCallAttribute3 returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getRuleCallAttribute3_CallMe3ParserRuleCall_0ElementType());
		}
		this_CallMe3_0=ruleCallMe3
		{
			$current = $this_CallMe3_0.current;
			doneComposite();
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getRuleCallAttribute3_RefKeyword_1_0_0ElementType());
				}
				otherlv_1='ref'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getRuleCallAttribute3_TypeRefBaseAttributeCrossReference_1_0_1_0ElementType());
						}
						otherlv_2=RULE_ID
						{
							doneLeaf(otherlv_2);
						}
					)
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getRuleCallAttribute3_TypeIDTerminalRuleCall_1_1_0ElementType());
					}
					lv_type_3_0=RULE_ID
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_type_3_0);
					}
				)
			)
		)
		{
			markLeaf(elementTypeProvider.getRuleCallAttribute3_SemicolonKeyword_2ElementType());
		}
		otherlv_4=';'
		{
			doneLeaf(otherlv_4);
		}
	)
;

//Entry rule entryRuleCallMe3
entryRuleCallMe3 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getCallMe3ElementType()); }
	iv_ruleCallMe3=ruleCallMe3
	{ $current=$iv_ruleCallMe3.current; }
	EOF;

// Rule CallMe3
ruleCallMe3 returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getCallMe3_CallKeyword_0ElementType());
		}
		otherlv_0='call'
		{
			doneLeaf(otherlv_0);
		}
		{
			markLeaf(elementTypeProvider.getCallMe3_MeKeyword_1ElementType());
		}
		otherlv_1='me'
		{
			doneLeaf(otherlv_1);
		}
		{
			markComposite(elementTypeProvider.getCallMe3_CallMe4ParserRuleCall_2ElementType());
		}
		this_CallMe4_2=ruleCallMe4
		{
			$current = $this_CallMe4_2.current;
			doneComposite();
		}
	)
;

//Entry rule entryRuleCallMe4
entryRuleCallMe4 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getCallMe4ElementType()); }
	iv_ruleCallMe4=ruleCallMe4
	{ $current=$iv_ruleCallMe4.current; }
	EOF;

// Rule CallMe4
ruleCallMe4 returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getCallMe4_NameIDTerminalRuleCall_0ElementType());
			}
			lv_name_0_0=RULE_ID
			{
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
			{
				doneLeaf(lv_name_0_0);
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;