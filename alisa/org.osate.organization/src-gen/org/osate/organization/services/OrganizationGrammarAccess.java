/*
* generated by Xtext
*/
package org.osate.organization.services;

import com.google.inject.Singleton;
import com.google.inject.Inject;

import java.util.List;

import org.eclipse.xtext.*;
import org.eclipse.xtext.service.GrammarProvider;
import org.eclipse.xtext.service.AbstractElementFinder.*;

import org.osate.alisa.common.services.CommonGrammarAccess;

@Singleton
public class OrganizationGrammarAccess extends AbstractGrammarElementFinder {
	
	
	public class OrganizationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Organization");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cOrganizationKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Assignment cStakeholderAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cStakeholderStakeholderParserRuleCall_2_0 = (RuleCall)cStakeholderAssignment_2.eContents().get(0);
		
		//Organization:
		//	"organization" name=ID stakeholder+=Stakeholder+;
		public ParserRule getRule() { return rule; }

		//"organization" name=ID stakeholder+=Stakeholder+
		public Group getGroup() { return cGroup; }

		//"organization"
		public Keyword getOrganizationKeyword_0() { return cOrganizationKeyword_0; }

		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }

		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }

		//stakeholder+=Stakeholder+
		public Assignment getStakeholderAssignment_2() { return cStakeholderAssignment_2; }

		//Stakeholder
		public RuleCall getStakeholderStakeholderParserRuleCall_2_0() { return cStakeholderStakeholderParserRuleCall_2_0; }
	}

	public class StakeholderElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Stakeholder");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cStakeholderKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cLeftSquareBracketKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final UnorderedGroup cUnorderedGroup_3 = (UnorderedGroup)cGroup.eContents().get(3);
		private final Group cGroup_3_0 = (Group)cUnorderedGroup_3.eContents().get(0);
		private final Keyword cTitleKeyword_3_0_0 = (Keyword)cGroup_3_0.eContents().get(0);
		private final Assignment cTitleAssignment_3_0_1 = (Assignment)cGroup_3_0.eContents().get(1);
		private final RuleCall cTitleValueStringParserRuleCall_3_0_1_0 = (RuleCall)cTitleAssignment_3_0_1.eContents().get(0);
		private final Group cGroup_3_1 = (Group)cUnorderedGroup_3.eContents().get(1);
		private final Keyword cDescriptionKeyword_3_1_0 = (Keyword)cGroup_3_1.eContents().get(0);
		private final Assignment cDescriptionAssignment_3_1_1 = (Assignment)cGroup_3_1.eContents().get(1);
		private final RuleCall cDescriptionValueStringParserRuleCall_3_1_1_0 = (RuleCall)cDescriptionAssignment_3_1_1.eContents().get(0);
		private final Group cGroup_3_2 = (Group)cUnorderedGroup_3.eContents().get(2);
		private final Keyword cRoleKeyword_3_2_0 = (Keyword)cGroup_3_2.eContents().get(0);
		private final Assignment cRoleAssignment_3_2_1 = (Assignment)cGroup_3_2.eContents().get(1);
		private final RuleCall cRoleValueStringParserRuleCall_3_2_1_0 = (RuleCall)cRoleAssignment_3_2_1.eContents().get(0);
		private final Group cGroup_3_3 = (Group)cUnorderedGroup_3.eContents().get(3);
		private final Keyword cEmailKeyword_3_3_0 = (Keyword)cGroup_3_3.eContents().get(0);
		private final Assignment cEmailAssignment_3_3_1 = (Assignment)cGroup_3_3.eContents().get(1);
		private final RuleCall cEmailValueStringParserRuleCall_3_3_1_0 = (RuleCall)cEmailAssignment_3_3_1.eContents().get(0);
		private final Group cGroup_3_4 = (Group)cUnorderedGroup_3.eContents().get(4);
		private final Keyword cPhoneKeyword_3_4_0 = (Keyword)cGroup_3_4.eContents().get(0);
		private final Assignment cPhoneAssignment_3_4_1 = (Assignment)cGroup_3_4.eContents().get(1);
		private final RuleCall cPhoneValueStringParserRuleCall_3_4_1_0 = (RuleCall)cPhoneAssignment_3_4_1.eContents().get(0);
		private final Keyword cRightSquareBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		/// *
		// * Stakeholder
		// * / Stakeholder:
		//	"stakeholder" name=ID "[" (("title" title=ValueString)? & ("description" description=ValueString)? & ("role"
		//	role=ValueString)? & ("email" email=ValueString)? & ("phone" phone=ValueString)?) "]";
		public ParserRule getRule() { return rule; }

		//"stakeholder" name=ID "[" (("title" title=ValueString)? & ("description" description=ValueString)? & ("role"
		//role=ValueString)? & ("email" email=ValueString)? & ("phone" phone=ValueString)?) "]"
		public Group getGroup() { return cGroup; }

		//"stakeholder"
		public Keyword getStakeholderKeyword_0() { return cStakeholderKeyword_0; }

		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }

		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }

		//"["
		public Keyword getLeftSquareBracketKeyword_2() { return cLeftSquareBracketKeyword_2; }

		//("title" title=ValueString)? & ("description" description=ValueString)? & ("role" role=ValueString)? & ("email"
		//email=ValueString)? & ("phone" phone=ValueString)?
		public UnorderedGroup getUnorderedGroup_3() { return cUnorderedGroup_3; }

		//("title" title=ValueString)?
		public Group getGroup_3_0() { return cGroup_3_0; }

		//"title"
		public Keyword getTitleKeyword_3_0_0() { return cTitleKeyword_3_0_0; }

		//title=ValueString
		public Assignment getTitleAssignment_3_0_1() { return cTitleAssignment_3_0_1; }

		//ValueString
		public RuleCall getTitleValueStringParserRuleCall_3_0_1_0() { return cTitleValueStringParserRuleCall_3_0_1_0; }

		//("description" description=ValueString)?
		public Group getGroup_3_1() { return cGroup_3_1; }

		//"description"
		public Keyword getDescriptionKeyword_3_1_0() { return cDescriptionKeyword_3_1_0; }

		//description=ValueString
		public Assignment getDescriptionAssignment_3_1_1() { return cDescriptionAssignment_3_1_1; }

		//ValueString
		public RuleCall getDescriptionValueStringParserRuleCall_3_1_1_0() { return cDescriptionValueStringParserRuleCall_3_1_1_0; }

		//("role" role=ValueString)?
		public Group getGroup_3_2() { return cGroup_3_2; }

		//"role"
		public Keyword getRoleKeyword_3_2_0() { return cRoleKeyword_3_2_0; }

		//role=ValueString
		public Assignment getRoleAssignment_3_2_1() { return cRoleAssignment_3_2_1; }

		//ValueString
		public RuleCall getRoleValueStringParserRuleCall_3_2_1_0() { return cRoleValueStringParserRuleCall_3_2_1_0; }

		//("email" email=ValueString)?
		public Group getGroup_3_3() { return cGroup_3_3; }

		//"email"
		public Keyword getEmailKeyword_3_3_0() { return cEmailKeyword_3_3_0; }

		//email=ValueString
		public Assignment getEmailAssignment_3_3_1() { return cEmailAssignment_3_3_1; }

		//ValueString
		public RuleCall getEmailValueStringParserRuleCall_3_3_1_0() { return cEmailValueStringParserRuleCall_3_3_1_0; }

		//("phone" phone=ValueString)?
		public Group getGroup_3_4() { return cGroup_3_4; }

		//"phone"
		public Keyword getPhoneKeyword_3_4_0() { return cPhoneKeyword_3_4_0; }

		//phone=ValueString
		public Assignment getPhoneAssignment_3_4_1() { return cPhoneAssignment_3_4_1; }

		//ValueString
		public RuleCall getPhoneValueStringParserRuleCall_3_4_1_0() { return cPhoneValueStringParserRuleCall_3_4_1_0; }

		//"]"
		public Keyword getRightSquareBracketKeyword_4() { return cRightSquareBracketKeyword_4; }
	}
	
	
	private final OrganizationElements pOrganization;
	private final StakeholderElements pStakeholder;
	
	private final Grammar grammar;

	private final CommonGrammarAccess gaCommon;

	@Inject
	public OrganizationGrammarAccess(GrammarProvider grammarProvider,
		CommonGrammarAccess gaCommon) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaCommon = gaCommon;
		this.pOrganization = new OrganizationElements();
		this.pStakeholder = new StakeholderElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.osate.organization.Organization".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	
	public Grammar getGrammar() {
		return grammar;
	}
	

	public CommonGrammarAccess getCommonGrammarAccess() {
		return gaCommon;
	}

	
	//Organization:
	//	"organization" name=ID stakeholder+=Stakeholder+;
	public OrganizationElements getOrganizationAccess() {
		return pOrganization;
	}
	
	public ParserRule getOrganizationRule() {
		return getOrganizationAccess().getRule();
	}

	/// *
	// * Stakeholder
	// * / Stakeholder:
	//	"stakeholder" name=ID "[" (("title" title=ValueString)? & ("description" description=ValueString)? & ("role"
	//	role=ValueString)? & ("email" email=ValueString)? & ("phone" phone=ValueString)?) "]";
	public StakeholderElements getStakeholderAccess() {
		return pStakeholder;
	}
	
	public ParserRule getStakeholderRule() {
		return getStakeholderAccess().getRule();
	}

	//Model:
	//	content=Description;
	public CommonGrammarAccess.ModelElements getModelAccess() {
		return gaCommon.getModelAccess();
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}

	//Description:
	//	description+=DescriptionElement+;
	public CommonGrammarAccess.DescriptionElements getDescriptionAccess() {
		return gaCommon.getDescriptionAccess();
	}
	
	public ParserRule getDescriptionRule() {
		return getDescriptionAccess().getRule();
	}

	//DescriptionElement:
	//	text=STRING | ref=[ecore::EObject];
	public CommonGrammarAccess.DescriptionElementElements getDescriptionElementAccess() {
		return gaCommon.getDescriptionElementAccess();
	}
	
	public ParserRule getDescriptionElementRule() {
		return getDescriptionElementAccess().getRule();
	}

	//ReferencePath:
	//	ref=[ecore::EObject] ("." subpath=ReferencePath);
	public CommonGrammarAccess.ReferencePathElements getReferencePathAccess() {
		return gaCommon.getReferencePathAccess();
	}
	
	public ParserRule getReferencePathRule() {
		return getReferencePathAccess().getRule();
	}

	//ValueString: // remove quotes from string in ValueConverter 
	//	STRING;
	public CommonGrammarAccess.ValueStringElements getValueStringAccess() {
		return gaCommon.getValueStringAccess();
	}
	
	public ParserRule getValueStringRule() {
		return getValueStringAccess().getRule();
	}

	//// dotted path as relative reference
	//DOTTEDREF:
	//	ID ("." ID)*;
	public CommonGrammarAccess.DOTTEDREFElements getDOTTEDREFAccess() {
		return gaCommon.getDOTTEDREFAccess();
	}
	
	public ParserRule getDOTTEDREFRule() {
		return getDOTTEDREFAccess().getRule();
	}

	//// :: qualified classifier reference
	//QNEREF:
	//	(ID "::")* ID ("." ID)?;
	public CommonGrammarAccess.QNEREFElements getQNEREFAccess() {
		return gaCommon.getQNEREFAccess();
	}
	
	public ParserRule getQNEREFRule() {
		return getQNEREFAccess().getRule();
	}

	//// dotted path as relative reference
	//CATREF:
	//	ID "." ID;
	public CommonGrammarAccess.CATREFElements getCATREFAccess() {
		return gaCommon.getCATREFAccess();
	}
	
	public ParserRule getCATREFRule() {
		return getCATREFAccess().getRule();
	}

	//terminal ID:
	//	"^"? ("a".."z" | "A".."Z" | "_") ("a".."z" | "A".."Z" | "_" | "0".."9")*;
	public TerminalRule getIDRule() {
		return gaCommon.getIDRule();
	} 

	//terminal INT returns ecore::EInt:
	//	"0".."9"+;
	public TerminalRule getINTRule() {
		return gaCommon.getINTRule();
	} 

	//terminal STRING:
	//	"\"" ("\\" . / * 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' * / | !("\\" | "\""))* "\"" | "\'" ("\\" .
	//	/ * 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' * / | !("\\" | "\'"))* "\'";
	public TerminalRule getSTRINGRule() {
		return gaCommon.getSTRINGRule();
	} 

	//terminal ML_COMMENT:
	//	"/ *"->"* /";
	public TerminalRule getML_COMMENTRule() {
		return gaCommon.getML_COMMENTRule();
	} 

	//terminal SL_COMMENT:
	//	"//" !("\n" | "\r")* ("\r"? "\n")?;
	public TerminalRule getSL_COMMENTRule() {
		return gaCommon.getSL_COMMENTRule();
	} 

	//terminal WS:
	//	(" " | "\t" | "\r" | "\n")+;
	public TerminalRule getWSRule() {
		return gaCommon.getWSRule();
	} 

	//terminal ANY_OTHER:
	//	.;
	public TerminalRule getANY_OTHERRule() {
		return gaCommon.getANY_OTHERRule();
	} 
}
