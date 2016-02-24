/**
 * Copyright 2015 Carnegie Mellon University. All Rights Reserved.
 *
 * NO WARRANTY. THIS CARNEGIE MELLON UNIVERSITY AND SOFTWARE ENGINEERING INSTITUTE
 * MATERIAL IS FURNISHED ON AN "AS-IS" BASIS. CARNEGIE MELLON UNIVERSITY MAKES NO
 * WARRANTIES OF ANY KIND, EITHER EXPRESSED OR IMPLIED, AS TO ANY MATTER INCLUDING,
 * BUT NOT LIMITED TO, WARRANTY OF FITNESS FOR PURPOSE OR MERCHANTABILITY,
 * EXCLUSIVITY, OR RESULTS OBTAINED FROM USE OF THE MATERIAL. CARNEGIE MELLON
 * UNIVERSITY DOES NOT MAKE ANY WARRANTY OF ANY KIND WITH RESPECT TO FREEDOM FROM
 * PATENT, TRADEMARK, OR COPYRIGHT INFRINGEMENT.
 *
 * Released under the Eclipse Public License (http://www.eclipse.org/org/documents/epl-v10.php)
 *
 * See COPYRIGHT file for full details.
 */
parser grammar InternalReqSpecParser;

options {
	tokenVocab=InternalReqSpecLexer;
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
	
}

@header {
package org.osate.reqspec.ui.contentassist.antlr.internal; 

import java.util.Map;
import java.util.HashMap;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.osate.reqspec.services.ReqSpecGrammarAccess;

}

@members {
 
 	private ReqSpecGrammarAccess grammarAccess;
 	
 	private final Map<String, String> tokenNameToValue = new HashMap<String, String>();
 	
 	{
		tokenNameToValue.put("ExclamationMark", "'!'");
		tokenNameToValue.put("NumberSign", "'#'");
		tokenNameToValue.put("PercentSign", "'\%'");
		tokenNameToValue.put("LeftParenthesis", "'('");
		tokenNameToValue.put("RightParenthesis", "')'");
		tokenNameToValue.put("Asterisk", "'*'");
		tokenNameToValue.put("PlusSign", "'+'");
		tokenNameToValue.put("Comma", "','");
		tokenNameToValue.put("HyphenMinus", "'-'");
		tokenNameToValue.put("FullStop", "'.'");
		tokenNameToValue.put("Solidus", "'/'");
		tokenNameToValue.put("Colon", "':'");
		tokenNameToValue.put("LessThanSign", "'<'");
		tokenNameToValue.put("EqualsSign", "'='");
		tokenNameToValue.put("GreaterThanSign", "'>'");
		tokenNameToValue.put("CommercialAt", "'@'");
		tokenNameToValue.put("LeftSquareBracket", "'['");
		tokenNameToValue.put("RightSquareBracket", "']'");
		tokenNameToValue.put("LeftCurlyBracket", "'{'");
		tokenNameToValue.put("RightCurlyBracket", "'}'");
		tokenNameToValue.put("ExclamationMarkEqualsSign", "'!='");
		tokenNameToValue.put("AmpersandAmpersand", "'&&'");
		tokenNameToValue.put("AsteriskAsterisk", "'**'");
		tokenNameToValue.put("HyphenMinusGreaterThanSign", "'->'");
		tokenNameToValue.put("FullStopFullStop", "'..'");
		tokenNameToValue.put("ColonColon", "'::'");
		tokenNameToValue.put("LessThanSignGreaterThanSign", "'<>'");
		tokenNameToValue.put("EqualsSignEqualsSign", "'=='");
		tokenNameToValue.put("EqualsSignGreaterThanSign", "'=>'");
		tokenNameToValue.put("GreaterThanSignEqualsSign", "'>='");
		tokenNameToValue.put("QuestionMarkColon", "'?:'");
		tokenNameToValue.put("In", "'in'");
		tokenNameToValue.put("VerticalLineVerticalLine", "'||'");
		tokenNameToValue.put("FullStopFullStopLessThanSign", "'..<'");
		tokenNameToValue.put("Bus", "'bus'");
		tokenNameToValue.put("For", "'for'");
		tokenNameToValue.put("Img", "'img'");
		tokenNameToValue.put("See", "'see'");
		tokenNameToValue.put("Tbd", "'tbd'");
		tokenNameToValue.put("Use", "'use'");
		tokenNameToValue.put("Val", "'val'");
		tokenNameToValue.put("Data", "'data'");
		tokenNameToValue.put("Fail", "'fail'");
		tokenNameToValue.put("Goal", "'goal'");
		tokenNameToValue.put("Info", "'info'");
		tokenNameToValue.put("Mode", "'mode'");
		tokenNameToValue.put("Null", "'null'");
		tokenNameToValue.put("Self", "'self'");
		tokenNameToValue.put("This", "'this'");
		tokenNameToValue.put("True", "'true'");
		tokenNameToValue.put("Upto", "'upto'");
		tokenNameToValue.put("When", "'when'");
		tokenNameToValue.put("With", "'with'");
		tokenNameToValue.put("Error", "'error'");
		tokenNameToValue.put("False", "'false'");
		tokenNameToValue.put("Goals", "'goals'");
		tokenNameToValue.put("Group", "'group'");
		tokenNameToValue.put("State", "'state'");
		tokenNameToValue.put("Value", "'value'");
		tokenNameToValue.put("Device", "'device'");
		tokenNameToValue.put("Downto", "'downto'");
		tokenNameToValue.put("Global", "'global'");
		tokenNameToValue.put("Impact", "'impact'");
		tokenNameToValue.put("Issues", "'issues'");
		tokenNameToValue.put("Memory", "'memory'");
		tokenNameToValue.put("KW_System", "'system'");
		tokenNameToValue.put("Target", "'target'");
		tokenNameToValue.put("Thread", "'thread'");
		tokenNameToValue.put("Compute", "'compute'");
		tokenNameToValue.put("Dropped", "'dropped'");
		tokenNameToValue.put("Evolves", "'evolves'");
		tokenNameToValue.put("Include", "'include'");
		tokenNameToValue.put("Process", "'process'");
		tokenNameToValue.put("Quality", "'quality'");
		tokenNameToValue.put("Refines", "'refines'");
		tokenNameToValue.put("Section", "'section'");
		tokenNameToValue.put("Success", "'success'");
		tokenNameToValue.put("Virtual", "'virtual'");
		tokenNameToValue.put("Warning", "'warning'");
		tokenNameToValue.put("Abstract", "'abstract'");
		tokenNameToValue.put("Category", "'category'");
		tokenNameToValue.put("Document", "'document'");
		tokenNameToValue.put("Informal", "'informal'");
		tokenNameToValue.put("Inherits", "'inherits'");
		tokenNameToValue.put("Conflicts", "'conflicts'");
		tokenNameToValue.put("Constants", "'constants'");
		tokenNameToValue.put("Exception", "'exception'");
		tokenNameToValue.put("Guarantee", "'guarantee'");
		tokenNameToValue.put("Mitigates", "'mitigates'");
		tokenNameToValue.put("Predicate", "'predicate'");
		tokenNameToValue.put("Processor", "'processor'");
		tokenNameToValue.put("Rationale", "'rationale'");
		tokenNameToValue.put("Assumption", "'assumption'");
		tokenNameToValue.put("Constraint", "'constraint'");
		tokenNameToValue.put("Decomposes", "'decomposes'");
		tokenNameToValue.put("Subprogram", "'subprogram'");
		tokenNameToValue.put("Volatility", "'volatility'");
		tokenNameToValue.put("Connections", "'connections'");
		tokenNameToValue.put("Consistency", "'consistency'");
		tokenNameToValue.put("Description", "'description'");
		tokenNameToValue.put("Development", "'development'");
		tokenNameToValue.put("Requirement", "'requirement'");
		tokenNameToValue.put("Stakeholder", "'stakeholder'");
		tokenNameToValue.put("Uncertainty", "'uncertainty'");
		tokenNameToValue.put("DiagnosticId", "'diagnosticId'");
		tokenNameToValue.put("Requirements", "'requirements'");
 	}
 	
    public void setGrammarAccess(ReqSpecGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }

	@Override
    protected String getValueForTokenName(String tokenName) {
    	String result = tokenNameToValue.get(tokenName);
    	if (result == null)
    		result = tokenName;
    	return result;
    }
}




// Entry rule entryRuleReqSpec
entryRuleReqSpec 
:
{ before(grammarAccess.getReqSpecRule()); }
	 ruleReqSpec
{ after(grammarAccess.getReqSpecRule()); } 
	 EOF 
;

// Rule ReqSpec
ruleReqSpec 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
(
{ before(grammarAccess.getReqSpecAccess().getPartsAssignment()); }
(rule__ReqSpec__PartsAssignment)
{ after(grammarAccess.getReqSpecAccess().getPartsAssignment()); }
)
(
{ before(grammarAccess.getReqSpecAccess().getPartsAssignment()); }
(rule__ReqSpec__PartsAssignment)*
{ after(grammarAccess.getReqSpecAccess().getPartsAssignment()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleGlobalConstants
entryRuleGlobalConstants 
:
{ before(grammarAccess.getGlobalConstantsRule()); }
	 ruleGlobalConstants
{ after(grammarAccess.getGlobalConstantsRule()); } 
	 EOF 
;

// Rule GlobalConstants
ruleGlobalConstants 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getGlobalConstantsAccess().getGroup()); }
(rule__GlobalConstants__Group__0)
{ after(grammarAccess.getGlobalConstantsAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}







// Entry rule entryRuleStakeholderGoals
entryRuleStakeholderGoals 
:
{ before(grammarAccess.getStakeholderGoalsRule()); }
	 ruleStakeholderGoals
{ after(grammarAccess.getStakeholderGoalsRule()); } 
	 EOF 
;

// Rule StakeholderGoals
ruleStakeholderGoals 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getStakeholderGoalsAccess().getGroup()); }
(rule__StakeholderGoals__Group__0)
{ after(grammarAccess.getStakeholderGoalsAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleReqDocument
entryRuleReqDocument 
:
{ before(grammarAccess.getReqDocumentRule()); }
	 ruleReqDocument
{ after(grammarAccess.getReqDocumentRule()); } 
	 EOF 
;

// Rule ReqDocument
ruleReqDocument 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getReqDocumentAccess().getGroup()); }
(rule__ReqDocument__Group__0)
{ after(grammarAccess.getReqDocumentAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDocumentSection
entryRuleDocumentSection 
:
{ before(grammarAccess.getDocumentSectionRule()); }
	 ruleDocumentSection
{ after(grammarAccess.getDocumentSectionRule()); } 
	 EOF 
;

// Rule DocumentSection
ruleDocumentSection 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDocumentSectionAccess().getGroup()); }
(rule__DocumentSection__Group__0)
{ after(grammarAccess.getDocumentSectionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSystemRequirements
entryRuleSystemRequirements 
:
{ before(grammarAccess.getSystemRequirementsRule()); }
	 ruleSystemRequirements
{ after(grammarAccess.getSystemRequirementsRule()); } 
	 EOF 
;

// Rule SystemRequirements
ruleSystemRequirements 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getSystemRequirementsAccess().getGroup()); }
(rule__SystemRequirements__Group__0)
{ after(grammarAccess.getSystemRequirementsAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleGlobalRequirements
entryRuleGlobalRequirements 
:
{ before(grammarAccess.getGlobalRequirementsRule()); }
	 ruleGlobalRequirements
{ after(grammarAccess.getGlobalRequirementsRule()); } 
	 EOF 
;

// Rule GlobalRequirements
ruleGlobalRequirements 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getGlobalRequirementsAccess().getGroup()); }
(rule__GlobalRequirements__Group__0)
{ after(grammarAccess.getGlobalRequirementsAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDocGoal
entryRuleDocGoal 
:
{ before(grammarAccess.getDocGoalRule()); }
	 ruleDocGoal
{ after(grammarAccess.getDocGoalRule()); } 
	 EOF 
;

// Rule DocGoal
ruleDocGoal 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDocGoalAccess().getGroup()); }
(rule__DocGoal__Group__0)
{ after(grammarAccess.getDocGoalAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleGoal
entryRuleGoal 
:
{ before(grammarAccess.getGoalRule()); }
	 ruleGoal
{ after(grammarAccess.getGoalRule()); } 
	 EOF 
;

// Rule Goal
ruleGoal 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getGoalAccess().getGroup()); }
(rule__Goal__Group__0)
{ after(grammarAccess.getGoalAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSystemRequirement
entryRuleSystemRequirement 
:
{ before(grammarAccess.getSystemRequirementRule()); }
	 ruleSystemRequirement
{ after(grammarAccess.getSystemRequirementRule()); } 
	 EOF 
;

// Rule SystemRequirement
ruleSystemRequirement 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getSystemRequirementAccess().getGroup()); }
(rule__SystemRequirement__Group__0)
{ after(grammarAccess.getSystemRequirementAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleGlobalRequirement
entryRuleGlobalRequirement 
:
{ before(grammarAccess.getGlobalRequirementRule()); }
	 ruleGlobalRequirement
{ after(grammarAccess.getGlobalRequirementRule()); } 
	 EOF 
;

// Rule GlobalRequirement
ruleGlobalRequirement 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getGlobalRequirementAccess().getGroup()); }
(rule__GlobalRequirement__Group__0)
{ after(grammarAccess.getGlobalRequirementAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDocRequirement
entryRuleDocRequirement 
:
{ before(grammarAccess.getDocRequirementRule()); }
	 ruleDocRequirement
{ after(grammarAccess.getDocRequirementRule()); } 
	 EOF 
;

// Rule DocRequirement
ruleDocRequirement 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDocRequirementAccess().getGroup()); }
(rule__DocRequirement__Group__0)
{ after(grammarAccess.getDocRequirementAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleIncludeGlobalRequirement
entryRuleIncludeGlobalRequirement 
:
{ before(grammarAccess.getIncludeGlobalRequirementRule()); }
	 ruleIncludeGlobalRequirement
{ after(grammarAccess.getIncludeGlobalRequirementRule()); } 
	 EOF 
;

// Rule IncludeGlobalRequirement
ruleIncludeGlobalRequirement 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getGroup()); }
(rule__IncludeGlobalRequirement__Group__0)
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleWhenCondition
entryRuleWhenCondition 
:
{ before(grammarAccess.getWhenConditionRule()); }
	 ruleWhenCondition
{ after(grammarAccess.getWhenConditionRule()); } 
	 EOF 
;

// Rule WhenCondition
ruleWhenCondition 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getWhenConditionAccess().getGroup()); }
(rule__WhenCondition__Group__0)
{ after(grammarAccess.getWhenConditionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleReqPredicate
entryRuleReqPredicate 
:
{ before(grammarAccess.getReqPredicateRule()); }
	 ruleReqPredicate
{ after(grammarAccess.getReqPredicateRule()); } 
	 EOF 
;

// Rule ReqPredicate
ruleReqPredicate 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getReqPredicateAccess().getAlternatives()); }
(rule__ReqPredicate__Alternatives)
{ after(grammarAccess.getReqPredicateAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleInformalPredicate
entryRuleInformalPredicate 
:
{ before(grammarAccess.getInformalPredicateRule()); }
	 ruleInformalPredicate
{ after(grammarAccess.getInformalPredicateRule()); } 
	 EOF 
;

// Rule InformalPredicate
ruleInformalPredicate 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getInformalPredicateAccess().getGroup()); }
(rule__InformalPredicate__Group__0)
{ after(grammarAccess.getInformalPredicateAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePredicate
entryRulePredicate 
:
{ before(grammarAccess.getPredicateRule()); }
	 rulePredicate
{ after(grammarAccess.getPredicateRule()); } 
	 EOF 
;

// Rule Predicate
rulePredicate 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getPredicateAccess().getGroup()); }
(rule__Predicate__Group__0)
{ after(grammarAccess.getPredicateAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleValuePredicate
entryRuleValuePredicate 
:
{ before(grammarAccess.getValuePredicateRule()); }
	 ruleValuePredicate
{ after(grammarAccess.getValuePredicateRule()); } 
	 EOF 
;

// Rule ValuePredicate
ruleValuePredicate 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getValuePredicateAccess().getGroup()); }
(rule__ValuePredicate__Group__0)
{ after(grammarAccess.getValuePredicateAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDesiredValue
entryRuleDesiredValue 
:
{ before(grammarAccess.getDesiredValueRule()); }
	 ruleDesiredValue
{ after(grammarAccess.getDesiredValueRule()); } 
	 EOF 
;

// Rule DesiredValue
ruleDesiredValue 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDesiredValueAccess().getGroup()); }
(rule__DesiredValue__Group__0)
{ after(grammarAccess.getDesiredValueAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleExternalDocument
entryRuleExternalDocument 
:
{ before(grammarAccess.getExternalDocumentRule()); }
	 ruleExternalDocument
{ after(grammarAccess.getExternalDocumentRule()); } 
	 EOF 
;

// Rule ExternalDocument
ruleExternalDocument 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getExternalDocumentAccess().getGroup()); }
(rule__ExternalDocument__Group__0)
{ after(grammarAccess.getExternalDocumentAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDOCPATH
entryRuleDOCPATH 
:
{ before(grammarAccess.getDOCPATHRule()); }
	 ruleDOCPATH
{ after(grammarAccess.getDOCPATHRule()); } 
	 EOF 
;

// Rule DOCPATH
ruleDOCPATH 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDOCPATHAccess().getGroup()); }
(rule__DOCPATH__Group__0)
{ after(grammarAccess.getDOCPATHAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDOCFRAGMENT
entryRuleDOCFRAGMENT 
:
{ before(grammarAccess.getDOCFRAGMENTRule()); }
	 ruleDOCFRAGMENT
{ after(grammarAccess.getDOCFRAGMENTRule()); } 
	 EOF 
;

// Rule DOCFRAGMENT
ruleDOCFRAGMENT 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDOCFRAGMENTAccess().getGroup()); }
(rule__DOCFRAGMENT__Group__0)
{ after(grammarAccess.getDOCFRAGMENTAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDescription
entryRuleDescription 
:
{ before(grammarAccess.getDescriptionRule()); }
	 ruleDescription
{ after(grammarAccess.getDescriptionRule()); } 
	 EOF 
;

// Rule Description
ruleDescription 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDescriptionAccess().getGroup()); }
(rule__Description__Group__0)
{ after(grammarAccess.getDescriptionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDescriptionElement
entryRuleDescriptionElement 
:
{ before(grammarAccess.getDescriptionElementRule()); }
	 ruleDescriptionElement
{ after(grammarAccess.getDescriptionElementRule()); } 
	 EOF 
;

// Rule DescriptionElement
ruleDescriptionElement 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getDescriptionElementAccess().getAlternatives()); }
(rule__DescriptionElement__Alternatives)
{ after(grammarAccess.getDescriptionElementAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleRationale
entryRuleRationale 
:
{ before(grammarAccess.getRationaleRule()); }
	 ruleRationale
{ after(grammarAccess.getRationaleRule()); } 
	 EOF 
;

// Rule Rationale
ruleRationale 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getRationaleAccess().getGroup()); }
(rule__Rationale__Group__0)
{ after(grammarAccess.getRationaleAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleUncertainty
entryRuleUncertainty 
:
{ before(grammarAccess.getUncertaintyRule()); }
	 ruleUncertainty
{ after(grammarAccess.getUncertaintyRule()); } 
	 EOF 
;

// Rule Uncertainty
ruleUncertainty 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getUncertaintyAccess().getGroup()); }
(rule__Uncertainty__Group__0)
{ after(grammarAccess.getUncertaintyAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleResultIssue
entryRuleResultIssue 
:
{ before(grammarAccess.getResultIssueRule()); }
	 ruleResultIssue
{ after(grammarAccess.getResultIssueRule()); } 
	 EOF 
;

// Rule ResultIssue
ruleResultIssue 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getResultIssueAccess().getGroup()); }
(rule__ResultIssue__Group__0)
{ after(grammarAccess.getResultIssueAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleValDeclaration
entryRuleValDeclaration 
:
{ before(grammarAccess.getValDeclarationRule()); }
	 ruleValDeclaration
{ after(grammarAccess.getValDeclarationRule()); } 
	 EOF 
;

// Rule ValDeclaration
ruleValDeclaration 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getValDeclarationAccess().getGroup()); }
(rule__ValDeclaration__Group__0)
{ after(grammarAccess.getValDeclarationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleComputeDeclaration
entryRuleComputeDeclaration 
:
{ before(grammarAccess.getComputeDeclarationRule()); }
	 ruleComputeDeclaration
{ after(grammarAccess.getComputeDeclarationRule()); } 
	 EOF 
;

// Rule ComputeDeclaration
ruleComputeDeclaration 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getComputeDeclarationAccess().getGroup()); }
(rule__ComputeDeclaration__Group__0)
{ after(grammarAccess.getComputeDeclarationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAPropertyReference
entryRuleAPropertyReference 
:
{ before(grammarAccess.getAPropertyReferenceRule()); }
	 ruleAPropertyReference
{ after(grammarAccess.getAPropertyReferenceRule()); } 
	 EOF 
;

// Rule APropertyReference
ruleAPropertyReference 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAPropertyReferenceAccess().getGroup()); }
(rule__APropertyReference__Group__0)
{ after(grammarAccess.getAPropertyReferenceAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAVariableReference
entryRuleAVariableReference 
:
{ before(grammarAccess.getAVariableReferenceRule()); }
	 ruleAVariableReference
{ after(grammarAccess.getAVariableReferenceRule()); } 
	 EOF 
;

// Rule AVariableReference
ruleAVariableReference 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAVariableReferenceAccess().getGroup()); }
(rule__AVariableReference__Group__0)
{ after(grammarAccess.getAVariableReferenceAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleShowValue
entryRuleShowValue 
:
{ before(grammarAccess.getShowValueRule()); }
	 ruleShowValue
{ after(grammarAccess.getShowValueRule()); } 
	 EOF 
;

// Rule ShowValue
ruleShowValue 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getShowValueAccess().getGroup()); }
(rule__ShowValue__Group__0)
{ after(grammarAccess.getShowValueAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleImageReference
entryRuleImageReference 
:
{ before(grammarAccess.getImageReferenceRule()); }
	 ruleImageReference
{ after(grammarAccess.getImageReferenceRule()); } 
	 EOF 
;

// Rule ImageReference
ruleImageReference 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getImageReferenceAccess().getGroup()); }
(rule__ImageReference__Group__0)
{ after(grammarAccess.getImageReferenceAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleIMGREF
entryRuleIMGREF 
:
{ before(grammarAccess.getIMGREFRule()); }
	 ruleIMGREF
{ after(grammarAccess.getIMGREFRule()); } 
	 EOF 
;

// Rule IMGREF
ruleIMGREF 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getIMGREFAccess().getGroup()); }
(rule__IMGREF__Group__0)
{ after(grammarAccess.getIMGREFAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAExpression
entryRuleAExpression 
:
{ before(grammarAccess.getAExpressionRule()); }
	 ruleAExpression
{ after(grammarAccess.getAExpressionRule()); } 
	 EOF 
;

// Rule AExpression
ruleAExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAExpressionAccess().getAOrExpressionParserRuleCall()); }
	ruleAOrExpression
{ after(grammarAccess.getAExpressionAccess().getAOrExpressionParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAOrExpression
entryRuleAOrExpression 
:
{ before(grammarAccess.getAOrExpressionRule()); }
	 ruleAOrExpression
{ after(grammarAccess.getAOrExpressionRule()); } 
	 EOF 
;

// Rule AOrExpression
ruleAOrExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAOrExpressionAccess().getGroup()); }
(rule__AOrExpression__Group__0)
{ after(grammarAccess.getAOrExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpOr
entryRuleOpOr 
:
{ before(grammarAccess.getOpOrRule()); }
	 ruleOpOr
{ after(grammarAccess.getOpOrRule()); } 
	 EOF 
;

// Rule OpOr
ruleOpOr 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpOrAccess().getVerticalLineVerticalLineKeyword()); }

	VerticalLineVerticalLine 

{ after(grammarAccess.getOpOrAccess().getVerticalLineVerticalLineKeyword()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAAndExpression
entryRuleAAndExpression 
:
{ before(grammarAccess.getAAndExpressionRule()); }
	 ruleAAndExpression
{ after(grammarAccess.getAAndExpressionRule()); } 
	 EOF 
;

// Rule AAndExpression
ruleAAndExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAAndExpressionAccess().getGroup()); }
(rule__AAndExpression__Group__0)
{ after(grammarAccess.getAAndExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpAnd
entryRuleOpAnd 
:
{ before(grammarAccess.getOpAndRule()); }
	 ruleOpAnd
{ after(grammarAccess.getOpAndRule()); } 
	 EOF 
;

// Rule OpAnd
ruleOpAnd 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpAndAccess().getAmpersandAmpersandKeyword()); }

	AmpersandAmpersand 

{ after(grammarAccess.getOpAndAccess().getAmpersandAmpersandKeyword()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAEqualityExpression
entryRuleAEqualityExpression 
:
{ before(grammarAccess.getAEqualityExpressionRule()); }
	 ruleAEqualityExpression
{ after(grammarAccess.getAEqualityExpressionRule()); } 
	 EOF 
;

// Rule AEqualityExpression
ruleAEqualityExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAEqualityExpressionAccess().getGroup()); }
(rule__AEqualityExpression__Group__0)
{ after(grammarAccess.getAEqualityExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpEquality
entryRuleOpEquality 
:
{ before(grammarAccess.getOpEqualityRule()); }
	 ruleOpEquality
{ after(grammarAccess.getOpEqualityRule()); } 
	 EOF 
;

// Rule OpEquality
ruleOpEquality 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpEqualityAccess().getAlternatives()); }
(rule__OpEquality__Alternatives)
{ after(grammarAccess.getOpEqualityAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleARelationalExpression
entryRuleARelationalExpression 
:
{ before(grammarAccess.getARelationalExpressionRule()); }
	 ruleARelationalExpression
{ after(grammarAccess.getARelationalExpressionRule()); } 
	 EOF 
;

// Rule ARelationalExpression
ruleARelationalExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getARelationalExpressionAccess().getGroup()); }
(rule__ARelationalExpression__Group__0)
{ after(grammarAccess.getARelationalExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpCompare
entryRuleOpCompare 
:
{ before(grammarAccess.getOpCompareRule()); }
	 ruleOpCompare
{ after(grammarAccess.getOpCompareRule()); } 
	 EOF 
;

// Rule OpCompare
ruleOpCompare 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpCompareAccess().getAlternatives()); }
(rule__OpCompare__Alternatives)
{ after(grammarAccess.getOpCompareAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAOtherOperatorExpression
entryRuleAOtherOperatorExpression 
:
{ before(grammarAccess.getAOtherOperatorExpressionRule()); }
	 ruleAOtherOperatorExpression
{ after(grammarAccess.getAOtherOperatorExpressionRule()); } 
	 EOF 
;

// Rule AOtherOperatorExpression
ruleAOtherOperatorExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getGroup()); }
(rule__AOtherOperatorExpression__Group__0)
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpOther
entryRuleOpOther 
:
{ before(grammarAccess.getOpOtherRule()); }
	 ruleOpOther
{ after(grammarAccess.getOpOtherRule()); } 
	 EOF 
;

// Rule OpOther
ruleOpOther 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpOtherAccess().getAlternatives()); }
(rule__OpOther__Alternatives)
{ after(grammarAccess.getOpOtherAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAAdditiveExpression
entryRuleAAdditiveExpression 
:
{ before(grammarAccess.getAAdditiveExpressionRule()); }
	 ruleAAdditiveExpression
{ after(grammarAccess.getAAdditiveExpressionRule()); } 
	 EOF 
;

// Rule AAdditiveExpression
ruleAAdditiveExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getGroup()); }
(rule__AAdditiveExpression__Group__0)
{ after(grammarAccess.getAAdditiveExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpAdd
entryRuleOpAdd 
:
{ before(grammarAccess.getOpAddRule()); }
	 ruleOpAdd
{ after(grammarAccess.getOpAddRule()); } 
	 EOF 
;

// Rule OpAdd
ruleOpAdd 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpAddAccess().getAlternatives()); }
(rule__OpAdd__Alternatives)
{ after(grammarAccess.getOpAddAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAMultiplicativeExpression
entryRuleAMultiplicativeExpression 
:
{ before(grammarAccess.getAMultiplicativeExpressionRule()); }
	 ruleAMultiplicativeExpression
{ after(grammarAccess.getAMultiplicativeExpressionRule()); } 
	 EOF 
;

// Rule AMultiplicativeExpression
ruleAMultiplicativeExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getGroup()); }
(rule__AMultiplicativeExpression__Group__0)
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpMulti
entryRuleOpMulti 
:
{ before(grammarAccess.getOpMultiRule()); }
	 ruleOpMulti
{ after(grammarAccess.getOpMultiRule()); } 
	 EOF 
;

// Rule OpMulti
ruleOpMulti 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpMultiAccess().getAlternatives()); }
(rule__OpMulti__Alternatives)
{ after(grammarAccess.getOpMultiAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAUnaryOperation
entryRuleAUnaryOperation 
:
{ before(grammarAccess.getAUnaryOperationRule()); }
	 ruleAUnaryOperation
{ after(grammarAccess.getAUnaryOperationRule()); } 
	 EOF 
;

// Rule AUnaryOperation
ruleAUnaryOperation 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAUnaryOperationAccess().getAlternatives()); }
(rule__AUnaryOperation__Alternatives)
{ after(grammarAccess.getAUnaryOperationAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOpUnary
entryRuleOpUnary 
:
{ before(grammarAccess.getOpUnaryRule()); }
	 ruleOpUnary
{ after(grammarAccess.getOpUnaryRule()); } 
	 EOF 
;

// Rule OpUnary
ruleOpUnary 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getOpUnaryAccess().getAlternatives()); }
(rule__OpUnary__Alternatives)
{ after(grammarAccess.getOpUnaryAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAPrimaryExpression
entryRuleAPrimaryExpression 
:
{ before(grammarAccess.getAPrimaryExpressionRule()); }
	 ruleAPrimaryExpression
{ after(grammarAccess.getAPrimaryExpressionRule()); } 
	 EOF 
;

// Rule APrimaryExpression
ruleAPrimaryExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAPrimaryExpressionAccess().getAlternatives()); }
(rule__APrimaryExpression__Alternatives)
{ after(grammarAccess.getAPrimaryExpressionAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAFunctionCall
entryRuleAFunctionCall 
:
{ before(grammarAccess.getAFunctionCallRule()); }
	 ruleAFunctionCall
{ after(grammarAccess.getAFunctionCallRule()); } 
	 EOF 
;

// Rule AFunctionCall
ruleAFunctionCall 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAFunctionCallAccess().getGroup()); }
(rule__AFunctionCall__Group__0)
{ after(grammarAccess.getAFunctionCallAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAThis
entryRuleAThis 
:
{ before(grammarAccess.getAThisRule()); }
	 ruleAThis
{ after(grammarAccess.getAThisRule()); } 
	 EOF 
;

// Rule AThis
ruleAThis 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAThisAccess().getGroup()); }
(rule__AThis__Group__0)
{ after(grammarAccess.getAThisAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleALiteral
entryRuleALiteral 
:
{ before(grammarAccess.getALiteralRule()); }
	 ruleALiteral
{ after(grammarAccess.getALiteralRule()); } 
	 EOF 
;

// Rule ALiteral
ruleALiteral 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getALiteralAccess().getAlternatives()); }
(rule__ALiteral__Alternatives)
{ after(grammarAccess.getALiteralAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAIntegerTerm
entryRuleAIntegerTerm 
:
{ before(grammarAccess.getAIntegerTermRule()); }
	 ruleAIntegerTerm
{ after(grammarAccess.getAIntegerTermRule()); } 
	 EOF 
;

// Rule AIntegerTerm
ruleAIntegerTerm 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAIntegerTermAccess().getGroup()); }
(rule__AIntegerTerm__Group__0)
{ after(grammarAccess.getAIntegerTermAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAInt
entryRuleAInt 
:
{ before(grammarAccess.getAIntRule()); }
	 ruleAInt
{ after(grammarAccess.getAIntRule()); } 
	 EOF 
;

// Rule AInt
ruleAInt 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAIntAccess().getINTTerminalRuleCall()); }
	RULE_INT
{ after(grammarAccess.getAIntAccess().getINTTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleARealTerm
entryRuleARealTerm 
:
{ before(grammarAccess.getARealTermRule()); }
	 ruleARealTerm
{ after(grammarAccess.getARealTermRule()); } 
	 EOF 
;

// Rule ARealTerm
ruleARealTerm 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getARealTermAccess().getGroup()); }
(rule__ARealTerm__Group__0)
{ after(grammarAccess.getARealTermAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAReal
entryRuleAReal 
:
{ before(grammarAccess.getARealRule()); }
	 ruleAReal
{ after(grammarAccess.getARealRule()); } 
	 EOF 
;

// Rule AReal
ruleAReal 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getARealAccess().getREAL_LITTerminalRuleCall()); }
	RULE_REAL_LIT
{ after(grammarAccess.getARealAccess().getREAL_LITTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleNumAlt
entryRuleNumAlt 
:
{ before(grammarAccess.getNumAltRule()); }
	 ruleNumAlt
{ after(grammarAccess.getNumAltRule()); } 
	 EOF 
;

// Rule NumAlt
ruleNumAlt 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getNumAltAccess().getAlternatives()); }
(rule__NumAlt__Alternatives)
{ after(grammarAccess.getNumAltAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleASetTerm
entryRuleASetTerm 
:
{ before(grammarAccess.getASetTermRule()); }
	 ruleASetTerm
{ after(grammarAccess.getASetTermRule()); } 
	 EOF 
;

// Rule ASetTerm
ruleASetTerm 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getASetTermAccess().getGroup()); }
(rule__ASetTerm__Group__0)
{ after(grammarAccess.getASetTermAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAListTerm
entryRuleAListTerm 
:
{ before(grammarAccess.getAListTermRule()); }
	 ruleAListTerm
{ after(grammarAccess.getAListTermRule()); } 
	 EOF 
;

// Rule AListTerm
ruleAListTerm 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAListTermAccess().getGroup()); }
(rule__AListTerm__Group__0)
{ after(grammarAccess.getAListTermAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAParenthesizedExpression
entryRuleAParenthesizedExpression 
:
{ before(grammarAccess.getAParenthesizedExpressionRule()); }
	 ruleAParenthesizedExpression
{ after(grammarAccess.getAParenthesizedExpressionRule()); } 
	 EOF 
;

// Rule AParenthesizedExpression
ruleAParenthesizedExpression 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAParenthesizedExpressionAccess().getGroup()); }
(rule__AParenthesizedExpression__Group__0)
{ after(grammarAccess.getAParenthesizedExpressionAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleABooleanLiteral
entryRuleABooleanLiteral 
:
{ before(grammarAccess.getABooleanLiteralRule()); }
	 ruleABooleanLiteral
{ after(grammarAccess.getABooleanLiteralRule()); } 
	 EOF 
;

// Rule ABooleanLiteral
ruleABooleanLiteral 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getABooleanLiteralAccess().getGroup()); }
(rule__ABooleanLiteral__Group__0)
{ after(grammarAccess.getABooleanLiteralAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleANullLiteral
entryRuleANullLiteral 
:
{ before(grammarAccess.getANullLiteralRule()); }
	 ruleANullLiteral
{ after(grammarAccess.getANullLiteralRule()); } 
	 EOF 
;

// Rule ANullLiteral
ruleANullLiteral 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getANullLiteralAccess().getGroup()); }
(rule__ANullLiteral__Group__0)
{ after(grammarAccess.getANullLiteralAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleStringTerm
entryRuleStringTerm 
:
{ before(grammarAccess.getStringTermRule()); }
	 ruleStringTerm
{ after(grammarAccess.getStringTermRule()); } 
	 EOF 
;

// Rule StringTerm
ruleStringTerm 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getStringTermAccess().getValueAssignment()); }
(rule__StringTerm__ValueAssignment)
{ after(grammarAccess.getStringTermAccess().getValueAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNoQuoteString
entryRuleNoQuoteString 
:
{ before(grammarAccess.getNoQuoteStringRule()); }
	 ruleNoQuoteString
{ after(grammarAccess.getNoQuoteStringRule()); } 
	 EOF 
;

// Rule NoQuoteString
ruleNoQuoteString 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getNoQuoteStringAccess().getSTRINGTerminalRuleCall()); }
	RULE_STRING
{ after(grammarAccess.getNoQuoteStringAccess().getSTRINGTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleComponentCategory
entryRuleComponentCategory 
:
{ before(grammarAccess.getComponentCategoryRule()); }
	 ruleComponentCategory
{ after(grammarAccess.getComponentCategoryRule()); } 
	 EOF 
;

// Rule ComponentCategory
ruleComponentCategory 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getComponentCategoryAccess().getAlternatives()); }
(rule__ComponentCategory__Alternatives)
{ after(grammarAccess.getComponentCategoryAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAadlClassifierReference
entryRuleAadlClassifierReference 
:
{ before(grammarAccess.getAadlClassifierReferenceRule()); }
	 ruleAadlClassifierReference
{ after(grammarAccess.getAadlClassifierReferenceRule()); } 
	 EOF 
;

// Rule AadlClassifierReference
ruleAadlClassifierReference 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getGroup()); }
(rule__AadlClassifierReference__Group__0)
{ after(grammarAccess.getAadlClassifierReferenceAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAADLPROPERTYREFERENCE
entryRuleAADLPROPERTYREFERENCE 
:
{ before(grammarAccess.getAADLPROPERTYREFERENCERule()); }
	 ruleAADLPROPERTYREFERENCE
{ after(grammarAccess.getAADLPROPERTYREFERENCERule()); } 
	 EOF 
;

// Rule AADLPROPERTYREFERENCE
ruleAADLPROPERTYREFERENCE 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getAADLPROPERTYREFERENCEAccess().getGroup()); }
(rule__AADLPROPERTYREFERENCE__Group__0)
{ after(grammarAccess.getAADLPROPERTYREFERENCEAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleURIID
entryRuleURIID 
:
{ before(grammarAccess.getURIIDRule()); }
	 ruleURIID
{ after(grammarAccess.getURIIDRule()); } 
	 EOF 
;

// Rule URIID
ruleURIID 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getURIIDAccess().getSTRINGTerminalRuleCall()); }
	RULE_STRING
{ after(grammarAccess.getURIIDAccess().getSTRINGTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleQualifiedName
entryRuleQualifiedName 
:
{ before(grammarAccess.getQualifiedNameRule()); }
	 ruleQualifiedName
{ after(grammarAccess.getQualifiedNameRule()); } 
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName 
    @init {
		int stackSize = keepStackSize();
    }
    :
(
{ before(grammarAccess.getQualifiedNameAccess().getGroup()); }
(rule__QualifiedName__Group__0)
{ after(grammarAccess.getQualifiedNameAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




// Rule ReqKind
ruleReqKind
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqKindAccess().getAlternatives()); }
(rule__ReqKind__Alternatives)
{ after(grammarAccess.getReqKindAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Rule ResultIssueType
ruleResultIssueType
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueTypeAccess().getAlternatives()); }
(rule__ResultIssueType__Alternatives)
{ after(grammarAccess.getResultIssueTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__ReqSpec__PartsAlternatives_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqSpecAccess().getPartsSystemRequirementsParserRuleCall_0_0()); }
	ruleSystemRequirements
{ after(grammarAccess.getReqSpecAccess().getPartsSystemRequirementsParserRuleCall_0_0()); }
)

    |(
{ before(grammarAccess.getReqSpecAccess().getPartsGlobalRequirementsParserRuleCall_0_1()); }
	ruleGlobalRequirements
{ after(grammarAccess.getReqSpecAccess().getPartsGlobalRequirementsParserRuleCall_0_1()); }
)

    |(
{ before(grammarAccess.getReqSpecAccess().getPartsStakeholderGoalsParserRuleCall_0_2()); }
	ruleStakeholderGoals
{ after(grammarAccess.getReqSpecAccess().getPartsStakeholderGoalsParserRuleCall_0_2()); }
)

    |(
{ before(grammarAccess.getReqSpecAccess().getPartsReqDocumentParserRuleCall_0_3()); }
	ruleReqDocument
{ after(grammarAccess.getReqSpecAccess().getPartsReqDocumentParserRuleCall_0_3()); }
)

    |(
{ before(grammarAccess.getReqSpecAccess().getPartsGlobalConstantsParserRuleCall_0_4()); }
	ruleGlobalConstants
{ after(grammarAccess.getReqSpecAccess().getPartsGlobalConstantsParserRuleCall_0_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__StakeholderGoals__Alternatives_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getTargetAssignment_4_1_0()); }
(rule__StakeholderGoals__TargetAssignment_4_1_0)
{ after(grammarAccess.getStakeholderGoalsAccess().getTargetAssignment_4_1_0()); }
)

    |(
(
{ before(grammarAccess.getStakeholderGoalsAccess().getComponentCategoryAssignment_4_1_1()); }
(rule__StakeholderGoals__ComponentCategoryAssignment_4_1_1)
{ after(grammarAccess.getStakeholderGoalsAccess().getComponentCategoryAssignment_4_1_1()); }
)
(
{ before(grammarAccess.getStakeholderGoalsAccess().getComponentCategoryAssignment_4_1_1()); }
(rule__StakeholderGoals__ComponentCategoryAssignment_4_1_1)*
{ after(grammarAccess.getStakeholderGoalsAccess().getComponentCategoryAssignment_4_1_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__ContentAlternatives_4_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getContentDocGoalParserRuleCall_4_1_0_0()); }
	ruleDocGoal
{ after(grammarAccess.getReqDocumentAccess().getContentDocGoalParserRuleCall_4_1_0_0()); }
)

    |(
{ before(grammarAccess.getReqDocumentAccess().getContentDocRequirementParserRuleCall_4_1_0_1()); }
	ruleDocRequirement
{ after(grammarAccess.getReqDocumentAccess().getContentDocRequirementParserRuleCall_4_1_0_1()); }
)

    |(
{ before(grammarAccess.getReqDocumentAccess().getContentDocumentSectionParserRuleCall_4_1_0_2()); }
	ruleDocumentSection
{ after(grammarAccess.getReqDocumentAccess().getContentDocumentSectionParserRuleCall_4_1_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__ContentAlternatives_4_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getContentDocGoalParserRuleCall_4_1_0_0()); }
	ruleDocGoal
{ after(grammarAccess.getDocumentSectionAccess().getContentDocGoalParserRuleCall_4_1_0_0()); }
)

    |(
{ before(grammarAccess.getDocumentSectionAccess().getContentDocRequirementParserRuleCall_4_1_0_1()); }
	ruleDocRequirement
{ after(grammarAccess.getDocumentSectionAccess().getContentDocRequirementParserRuleCall_4_1_0_1()); }
)

    |(
{ before(grammarAccess.getDocumentSectionAccess().getContentDocumentSectionParserRuleCall_4_1_0_2()); }
	ruleDocumentSection
{ after(grammarAccess.getDocumentSectionAccess().getContentDocumentSectionParserRuleCall_4_1_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Alternatives_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTargetDescriptionAssignment_3_1_0()); }
(rule__DocGoal__TargetDescriptionAssignment_3_1_0)
{ after(grammarAccess.getDocGoalAccess().getTargetDescriptionAssignment_3_1_0()); }
)

    |(
{ before(grammarAccess.getDocGoalAccess().getGroup_3_1_1()); }
(rule__DocGoal__Group_3_1_1__0)
{ after(grammarAccess.getDocGoalAccess().getGroup_3_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Alternatives_6_9_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getExceptionAssignment_6_9_1_0()); }
(rule__SystemRequirement__ExceptionAssignment_6_9_1_0)
{ after(grammarAccess.getSystemRequirementAccess().getExceptionAssignment_6_9_1_0()); }
)

    |(
{ before(grammarAccess.getSystemRequirementAccess().getExceptionTextAssignment_6_9_1_1()); }
(rule__SystemRequirement__ExceptionTextAssignment_6_9_1_1)
{ after(grammarAccess.getSystemRequirementAccess().getExceptionTextAssignment_6_9_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Alternatives_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getComponentCategoryAssignment_4_1_0()); }
(rule__GlobalRequirement__ComponentCategoryAssignment_4_1_0)
{ after(grammarAccess.getGlobalRequirementAccess().getComponentCategoryAssignment_4_1_0()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getComponentCategoryAssignment_4_1_0()); }
(rule__GlobalRequirement__ComponentCategoryAssignment_4_1_0)*
{ after(grammarAccess.getGlobalRequirementAccess().getComponentCategoryAssignment_4_1_0()); }
)
)

    |(
{ before(grammarAccess.getGlobalRequirementAccess().getConnectionsAssignment_4_1_1()); }
(rule__GlobalRequirement__ConnectionsAssignment_4_1_1)
{ after(grammarAccess.getGlobalRequirementAccess().getConnectionsAssignment_4_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Alternatives_6_9_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getExceptionAssignment_6_9_1_0()); }
(rule__GlobalRequirement__ExceptionAssignment_6_9_1_0)
{ after(grammarAccess.getGlobalRequirementAccess().getExceptionAssignment_6_9_1_0()); }
)

    |(
{ before(grammarAccess.getGlobalRequirementAccess().getExceptionTextAssignment_6_9_1_1()); }
(rule__GlobalRequirement__ExceptionTextAssignment_6_9_1_1)
{ after(grammarAccess.getGlobalRequirementAccess().getExceptionTextAssignment_6_9_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Alternatives_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTargetDescriptionAssignment_4_1_0()); }
(rule__DocRequirement__TargetDescriptionAssignment_4_1_0)
{ after(grammarAccess.getDocRequirementAccess().getTargetDescriptionAssignment_4_1_0()); }
)

    |(
{ before(grammarAccess.getDocRequirementAccess().getGroup_4_1_1()); }
(rule__DocRequirement__Group_4_1_1__0)
{ after(grammarAccess.getDocRequirementAccess().getGroup_4_1_1()); }
)

    |(
(
{ before(grammarAccess.getDocRequirementAccess().getComponentCategoryAssignment_4_1_2()); }
(rule__DocRequirement__ComponentCategoryAssignment_4_1_2)
{ after(grammarAccess.getDocRequirementAccess().getComponentCategoryAssignment_4_1_2()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getComponentCategoryAssignment_4_1_2()); }
(rule__DocRequirement__ComponentCategoryAssignment_4_1_2)*
{ after(grammarAccess.getDocRequirementAccess().getComponentCategoryAssignment_4_1_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Alternatives_6_9_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getExceptionAssignment_6_9_1_0()); }
(rule__DocRequirement__ExceptionAssignment_6_9_1_0)
{ after(grammarAccess.getDocRequirementAccess().getExceptionAssignment_6_9_1_0()); }
)

    |(
{ before(grammarAccess.getDocRequirementAccess().getExceptionTextAssignment_6_9_1_1()); }
(rule__DocRequirement__ExceptionTextAssignment_6_9_1_1)
{ after(grammarAccess.getDocRequirementAccess().getExceptionTextAssignment_6_9_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__Alternatives_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getComponentCategoryAssignment_2_1_0()); }
(rule__IncludeGlobalRequirement__ComponentCategoryAssignment_2_1_0)
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getComponentCategoryAssignment_2_1_0()); }
)
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getComponentCategoryAssignment_2_1_0()); }
(rule__IncludeGlobalRequirement__ComponentCategoryAssignment_2_1_0)*
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getComponentCategoryAssignment_2_1_0()); }
)
)

    |(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getSelfAssignment_2_1_1()); }
(rule__IncludeGlobalRequirement__SelfAssignment_2_1_1)
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getSelfAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Alternatives_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getGroup_1_0()); }
(rule__WhenCondition__Group_1_0__0)
{ after(grammarAccess.getWhenConditionAccess().getGroup_1_0()); }
)

    |(
{ before(grammarAccess.getWhenConditionAccess().getGroup_1_1()); }
(rule__WhenCondition__Group_1_1__0)
{ after(grammarAccess.getWhenConditionAccess().getGroup_1_1()); }
)

    |(
{ before(grammarAccess.getWhenConditionAccess().getConditionAssignment_1_2()); }
(rule__WhenCondition__ConditionAssignment_1_2)
{ after(grammarAccess.getWhenConditionAccess().getConditionAssignment_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqPredicate__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqPredicateAccess().getInformalPredicateParserRuleCall_0()); }
	ruleInformalPredicate
{ after(grammarAccess.getReqPredicateAccess().getInformalPredicateParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getReqPredicateAccess().getPredicateParserRuleCall_1()); }
	rulePredicate
{ after(grammarAccess.getReqPredicateAccess().getPredicateParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getReqPredicateAccess().getValuePredicateParserRuleCall_2()); }
	ruleValuePredicate
{ after(grammarAccess.getReqPredicateAccess().getValuePredicateParserRuleCall_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DesiredValue__Alternatives_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDesiredValueAccess().getUptoAssignment_0_0()); }
(rule__DesiredValue__UptoAssignment_0_0)
{ after(grammarAccess.getDesiredValueAccess().getUptoAssignment_0_0()); }
)

    |(
{ before(grammarAccess.getDesiredValueAccess().getDowntoKeyword_0_1()); }

	Downto 

{ after(grammarAccess.getDesiredValueAccess().getDowntoKeyword_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionElement__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionElementAccess().getTextAssignment_0()); }
(rule__DescriptionElement__TextAssignment_0)
{ after(grammarAccess.getDescriptionElementAccess().getTextAssignment_0()); }
)

    |(
{ before(grammarAccess.getDescriptionElementAccess().getShowValueAssignment_1()); }
(rule__DescriptionElement__ShowValueAssignment_1)
{ after(grammarAccess.getDescriptionElementAccess().getShowValueAssignment_1()); }
)

    |(
{ before(grammarAccess.getDescriptionElementAccess().getThisTargetAssignment_2()); }
(rule__DescriptionElement__ThisTargetAssignment_2)
{ after(grammarAccess.getDescriptionElementAccess().getThisTargetAssignment_2()); }
)

    |(
{ before(grammarAccess.getDescriptionElementAccess().getImageAssignment_3()); }
(rule__DescriptionElement__ImageAssignment_3)
{ after(grammarAccess.getDescriptionElementAccess().getImageAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Alternatives_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getGroup_2_0()); }
(rule__ValDeclaration__Group_2_0__0)
{ after(grammarAccess.getValDeclarationAccess().getGroup_2_0()); }
)

    |(
{ before(grammarAccess.getValDeclarationAccess().getNameAssignment_2_1()); }
(rule__ValDeclaration__NameAssignment_2_1)
{ after(grammarAccess.getValDeclarationAccess().getNameAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Alternatives_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getGroup_2_0()); }
(rule__ComputeDeclaration__Group_2_0__0)
{ after(grammarAccess.getComputeDeclarationAccess().getGroup_2_0()); }
)

    |(
{ before(grammarAccess.getComputeDeclarationAccess().getNameAssignment_2_1()); }
(rule__ComputeDeclaration__NameAssignment_2_1)
{ after(grammarAccess.getComputeDeclarationAccess().getNameAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpEquality__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpEqualityAccess().getEqualsSignEqualsSignKeyword_0()); }

	EqualsSignEqualsSign 

{ after(grammarAccess.getOpEqualityAccess().getEqualsSignEqualsSignKeyword_0()); }
)

    |(
{ before(grammarAccess.getOpEqualityAccess().getExclamationMarkEqualsSignKeyword_1()); }

	ExclamationMarkEqualsSign 

{ after(grammarAccess.getOpEqualityAccess().getExclamationMarkEqualsSignKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpCompare__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpCompareAccess().getGreaterThanSignEqualsSignKeyword_0()); }

	GreaterThanSignEqualsSign 

{ after(grammarAccess.getOpCompareAccess().getGreaterThanSignEqualsSignKeyword_0()); }
)

    |(
{ before(grammarAccess.getOpCompareAccess().getGroup_1()); }
(rule__OpCompare__Group_1__0)
{ after(grammarAccess.getOpCompareAccess().getGroup_1()); }
)

    |(
{ before(grammarAccess.getOpCompareAccess().getGreaterThanSignKeyword_2()); }

	GreaterThanSign 

{ after(grammarAccess.getOpCompareAccess().getGreaterThanSignKeyword_2()); }
)

    |(
{ before(grammarAccess.getOpCompareAccess().getLessThanSignKeyword_3()); }

	LessThanSign 

{ after(grammarAccess.getOpCompareAccess().getLessThanSignKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getHyphenMinusGreaterThanSignKeyword_0()); }

	HyphenMinusGreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getHyphenMinusGreaterThanSignKeyword_0()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getFullStopFullStopLessThanSignKeyword_1()); }

	FullStopFullStopLessThanSign 

{ after(grammarAccess.getOpOtherAccess().getFullStopFullStopLessThanSignKeyword_1()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getGroup_2()); }
(rule__OpOther__Group_2__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_2()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getFullStopFullStopKeyword_3()); }

	FullStopFullStop 

{ after(grammarAccess.getOpOtherAccess().getFullStopFullStopKeyword_3()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getEqualsSignGreaterThanSignKeyword_4()); }

	EqualsSignGreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getEqualsSignGreaterThanSignKeyword_4()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getGroup_5()); }
(rule__OpOther__Group_5__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_5()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getGroup_6()); }
(rule__OpOther__Group_6__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_6()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getLessThanSignGreaterThanSignKeyword_7()); }

	LessThanSignGreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getLessThanSignGreaterThanSignKeyword_7()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getQuestionMarkColonKeyword_8()); }

	QuestionMarkColon 

{ after(grammarAccess.getOpOtherAccess().getQuestionMarkColonKeyword_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Alternatives_5_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGroup_5_1_0()); }
(rule__OpOther__Group_5_1_0__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_5_1_0()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_1_1()); }

	GreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Alternatives_6_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGroup_6_1_0()); }
(rule__OpOther__Group_6_1_0__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_6_1_0()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_1_1()); }

	LessThanSign 

{ after(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_1_1()); }
)

    |(
{ before(grammarAccess.getOpOtherAccess().getEqualsSignGreaterThanSignKeyword_6_1_2()); }

	EqualsSignGreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getEqualsSignGreaterThanSignKeyword_6_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpAdd__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpAddAccess().getPlusSignKeyword_0()); }

	PlusSign 

{ after(grammarAccess.getOpAddAccess().getPlusSignKeyword_0()); }
)

    |(
{ before(grammarAccess.getOpAddAccess().getHyphenMinusKeyword_1()); }

	HyphenMinus 

{ after(grammarAccess.getOpAddAccess().getHyphenMinusKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpMulti__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpMultiAccess().getAsteriskKeyword_0()); }

	Asterisk 

{ after(grammarAccess.getOpMultiAccess().getAsteriskKeyword_0()); }
)

    |(
{ before(grammarAccess.getOpMultiAccess().getAsteriskAsteriskKeyword_1()); }

	AsteriskAsterisk 

{ after(grammarAccess.getOpMultiAccess().getAsteriskAsteriskKeyword_1()); }
)

    |(
{ before(grammarAccess.getOpMultiAccess().getSolidusKeyword_2()); }

	Solidus 

{ after(grammarAccess.getOpMultiAccess().getSolidusKeyword_2()); }
)

    |(
{ before(grammarAccess.getOpMultiAccess().getPercentSignKeyword_3()); }

	PercentSign 

{ after(grammarAccess.getOpMultiAccess().getPercentSignKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AUnaryOperation__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAUnaryOperationAccess().getGroup_0()); }
(rule__AUnaryOperation__Group_0__0)
{ after(grammarAccess.getAUnaryOperationAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getAUnaryOperationAccess().getAPrimaryExpressionParserRuleCall_1()); }
	ruleAPrimaryExpression
{ after(grammarAccess.getAUnaryOperationAccess().getAPrimaryExpressionParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OpUnary__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpUnaryAccess().getExclamationMarkKeyword_0()); }

	ExclamationMark 

{ after(grammarAccess.getOpUnaryAccess().getExclamationMarkKeyword_0()); }
)

    |(
{ before(grammarAccess.getOpUnaryAccess().getHyphenMinusKeyword_1()); }

	HyphenMinus 

{ after(grammarAccess.getOpUnaryAccess().getHyphenMinusKeyword_1()); }
)

    |(
{ before(grammarAccess.getOpUnaryAccess().getPlusSignKeyword_2()); }

	PlusSign 

{ after(grammarAccess.getOpUnaryAccess().getPlusSignKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__APrimaryExpression__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAPrimaryExpressionAccess().getALiteralParserRuleCall_0()); }
	ruleALiteral
{ after(grammarAccess.getAPrimaryExpressionAccess().getALiteralParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getAPrimaryExpressionAccess().getAVariableReferenceParserRuleCall_1()); }
	ruleAVariableReference
{ after(grammarAccess.getAPrimaryExpressionAccess().getAVariableReferenceParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getAPrimaryExpressionAccess().getAPropertyReferenceParserRuleCall_2()); }
	ruleAPropertyReference
{ after(grammarAccess.getAPrimaryExpressionAccess().getAPropertyReferenceParserRuleCall_2()); }
)

    |(
{ before(grammarAccess.getAPrimaryExpressionAccess().getAFunctionCallParserRuleCall_3()); }
	ruleAFunctionCall
{ after(grammarAccess.getAPrimaryExpressionAccess().getAFunctionCallParserRuleCall_3()); }
)

    |(
{ before(grammarAccess.getAPrimaryExpressionAccess().getAParenthesizedExpressionParserRuleCall_4()); }
	ruleAParenthesizedExpression
{ after(grammarAccess.getAPrimaryExpressionAccess().getAParenthesizedExpressionParserRuleCall_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ALiteral__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getALiteralAccess().getASetTermParserRuleCall_0()); }
	ruleASetTerm
{ after(grammarAccess.getALiteralAccess().getASetTermParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getAListTermParserRuleCall_1()); }
	ruleAListTerm
{ after(grammarAccess.getALiteralAccess().getAListTermParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getABooleanLiteralParserRuleCall_2()); }
	ruleABooleanLiteral
{ after(grammarAccess.getALiteralAccess().getABooleanLiteralParserRuleCall_2()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getARealTermParserRuleCall_3()); }
	ruleARealTerm
{ after(grammarAccess.getALiteralAccess().getARealTermParserRuleCall_3()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getAIntegerTermParserRuleCall_4()); }
	ruleAIntegerTerm
{ after(grammarAccess.getALiteralAccess().getAIntegerTermParserRuleCall_4()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getANullLiteralParserRuleCall_5()); }
	ruleANullLiteral
{ after(grammarAccess.getALiteralAccess().getANullLiteralParserRuleCall_5()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getStringTermParserRuleCall_6()); }
	ruleStringTerm
{ after(grammarAccess.getALiteralAccess().getStringTermParserRuleCall_6()); }
)

    |(
{ before(grammarAccess.getALiteralAccess().getAThisParserRuleCall_7()); }
	ruleAThis
{ after(grammarAccess.getALiteralAccess().getAThisParserRuleCall_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NumAlt__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNumAltAccess().getARealTermParserRuleCall_0()); }
	ruleARealTerm
{ after(grammarAccess.getNumAltAccess().getARealTermParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getNumAltAccess().getAIntegerTermParserRuleCall_1()); }
	ruleAIntegerTerm
{ after(grammarAccess.getNumAltAccess().getAIntegerTermParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ABooleanLiteral__Alternatives_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getABooleanLiteralAccess().getValueAssignment_1_0()); }
(rule__ABooleanLiteral__ValueAssignment_1_0)
{ after(grammarAccess.getABooleanLiteralAccess().getValueAssignment_1_0()); }
)

    |(
{ before(grammarAccess.getABooleanLiteralAccess().getFalseKeyword_1_1()); }

	False 

{ after(grammarAccess.getABooleanLiteralAccess().getFalseKeyword_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getAbstractKeyword_0()); }

	Abstract 

{ after(grammarAccess.getComponentCategoryAccess().getAbstractKeyword_0()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getBusKeyword_1()); }

	Bus 

{ after(grammarAccess.getComponentCategoryAccess().getBusKeyword_1()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getDataKeyword_2()); }

	Data 

{ after(grammarAccess.getComponentCategoryAccess().getDataKeyword_2()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getDeviceKeyword_3()); }

	Device 

{ after(grammarAccess.getComponentCategoryAccess().getDeviceKeyword_3()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getMemoryKeyword_4()); }

	Memory 

{ after(grammarAccess.getComponentCategoryAccess().getMemoryKeyword_4()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getProcessKeyword_5()); }

	Process 

{ after(grammarAccess.getComponentCategoryAccess().getProcessKeyword_5()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getProcessorKeyword_6()); }

	Processor 

{ after(grammarAccess.getComponentCategoryAccess().getProcessorKeyword_6()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getSubprogramKeyword_7()); }

	Subprogram 

{ after(grammarAccess.getComponentCategoryAccess().getSubprogramKeyword_7()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getGroup_8()); }
(rule__ComponentCategory__Group_8__0)
{ after(grammarAccess.getComponentCategoryAccess().getGroup_8()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getSystemKeyword_9()); }

	KW_System 

{ after(grammarAccess.getComponentCategoryAccess().getSystemKeyword_9()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getGroup_10()); }
(rule__ComponentCategory__Group_10__0)
{ after(grammarAccess.getComponentCategoryAccess().getGroup_10()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getThreadKeyword_11()); }

	Thread 

{ after(grammarAccess.getComponentCategoryAccess().getThreadKeyword_11()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getGroup_12()); }
(rule__ComponentCategory__Group_12__0)
{ after(grammarAccess.getComponentCategoryAccess().getGroup_12()); }
)

    |(
{ before(grammarAccess.getComponentCategoryAccess().getGroup_13()); }
(rule__ComponentCategory__Group_13__0)
{ after(grammarAccess.getComponentCategoryAccess().getGroup_13()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqKind__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqKindAccess().getASSUMPTIONEnumLiteralDeclaration_0()); }
(	Assumption
)
{ after(grammarAccess.getReqKindAccess().getASSUMPTIONEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getReqKindAccess().getGUARANTEEEnumLiteralDeclaration_1()); }
(	Guarantee
)
{ after(grammarAccess.getReqKindAccess().getGUARANTEEEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getReqKindAccess().getCONSTRAINTEnumLiteralDeclaration_2()); }
(	Constraint
)
{ after(grammarAccess.getReqKindAccess().getCONSTRAINTEnumLiteralDeclaration_2()); }
)

    |(
{ before(grammarAccess.getReqKindAccess().getEXCEPTIONEnumLiteralDeclaration_3()); }
(	Exception
)
{ after(grammarAccess.getReqKindAccess().getEXCEPTIONEnumLiteralDeclaration_3()); }
)

    |(
{ before(grammarAccess.getReqKindAccess().getCONSISTENCYEnumLiteralDeclaration_4()); }
(	Consistency
)
{ after(grammarAccess.getReqKindAccess().getCONSISTENCYEnumLiteralDeclaration_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssueType__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueTypeAccess().getTBDEnumLiteralDeclaration_0()); }
(	Tbd
)
{ after(grammarAccess.getResultIssueTypeAccess().getTBDEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getResultIssueTypeAccess().getERROREnumLiteralDeclaration_1()); }
(	Error
)
{ after(grammarAccess.getResultIssueTypeAccess().getERROREnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getResultIssueTypeAccess().getWARNINGEnumLiteralDeclaration_2()); }
(	Warning
)
{ after(grammarAccess.getResultIssueTypeAccess().getWARNINGEnumLiteralDeclaration_2()); }
)

    |(
{ before(grammarAccess.getResultIssueTypeAccess().getINFOEnumLiteralDeclaration_3()); }
(	Info
)
{ after(grammarAccess.getResultIssueTypeAccess().getINFOEnumLiteralDeclaration_3()); }
)

    |(
{ before(grammarAccess.getResultIssueTypeAccess().getSUCCESSEnumLiteralDeclaration_4()); }
(	Success
)
{ after(grammarAccess.getResultIssueTypeAccess().getSUCCESSEnumLiteralDeclaration_4()); }
)

    |(
{ before(grammarAccess.getResultIssueTypeAccess().getFAILEnumLiteralDeclaration_5()); }
(	Fail
)
{ after(grammarAccess.getResultIssueTypeAccess().getFAILEnumLiteralDeclaration_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__GlobalConstants__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalConstants__Group__0__Impl
	rule__GlobalConstants__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getConstantsKeyword_0()); }

	Constants 

{ after(grammarAccess.getGlobalConstantsAccess().getConstantsKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalConstants__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalConstants__Group__1__Impl
	rule__GlobalConstants__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getNameAssignment_1()); }
(rule__GlobalConstants__NameAssignment_1)
{ after(grammarAccess.getGlobalConstantsAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalConstants__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalConstants__Group__2__Impl
	rule__GlobalConstants__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getLeftSquareBracketKeyword_2()); }

	LeftSquareBracket 

{ after(grammarAccess.getGlobalConstantsAccess().getLeftSquareBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalConstants__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalConstants__Group__3__Impl
	rule__GlobalConstants__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getConstantsAssignment_3()); }
(rule__GlobalConstants__ConstantsAssignment_3)*
{ after(grammarAccess.getGlobalConstantsAccess().getConstantsAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalConstants__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalConstants__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getRightSquareBracketKeyword_4()); }

	RightSquareBracket 

{ after(grammarAccess.getGlobalConstantsAccess().getRightSquareBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__StakeholderGoals__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__0__Impl
	rule__StakeholderGoals__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getStakeholderKeyword_0()); }

	Stakeholder 

{ after(grammarAccess.getStakeholderGoalsAccess().getStakeholderKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__1__Impl
	rule__StakeholderGoals__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getGoalsKeyword_1()); }

	Goals 

{ after(grammarAccess.getStakeholderGoalsAccess().getGoalsKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__2__Impl
	rule__StakeholderGoals__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getNameAssignment_2()); }
(rule__StakeholderGoals__NameAssignment_2)
{ after(grammarAccess.getStakeholderGoalsAccess().getNameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__3__Impl
	rule__StakeholderGoals__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getGroup_3()); }
(rule__StakeholderGoals__Group_3__0)?
{ after(grammarAccess.getStakeholderGoalsAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__4__Impl
	rule__StakeholderGoals__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getGroup_4()); }
(rule__StakeholderGoals__Group_4__0)
{ after(grammarAccess.getStakeholderGoalsAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__5__Impl
	rule__StakeholderGoals__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getGroup_5()); }
(rule__StakeholderGoals__Group_5__0)?
{ after(grammarAccess.getStakeholderGoalsAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__6__Impl
	rule__StakeholderGoals__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getLeftSquareBracketKeyword_6()); }

	LeftSquareBracket 

{ after(grammarAccess.getStakeholderGoalsAccess().getLeftSquareBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__7__Impl
	rule__StakeholderGoals__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7()); }
(rule__StakeholderGoals__UnorderedGroup_7)
{ after(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getRightSquareBracketKeyword_8()); }

	RightSquareBracket 

{ after(grammarAccess.getStakeholderGoalsAccess().getRightSquareBracketKeyword_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}




















rule__StakeholderGoals__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_3__0__Impl
	rule__StakeholderGoals__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getColonKeyword_3_0()); }

	Colon 

{ after(grammarAccess.getStakeholderGoalsAccess().getColonKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getTitleAssignment_3_1()); }
(rule__StakeholderGoals__TitleAssignment_3_1)
{ after(grammarAccess.getStakeholderGoalsAccess().getTitleAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__StakeholderGoals__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_4__0__Impl
	rule__StakeholderGoals__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getForKeyword_4_0()); }

	For 

{ after(grammarAccess.getStakeholderGoalsAccess().getForKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getAlternatives_4_1()); }
(rule__StakeholderGoals__Alternatives_4_1)
{ after(grammarAccess.getStakeholderGoalsAccess().getAlternatives_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__StakeholderGoals__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_5__0__Impl
	rule__StakeholderGoals__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getUseKeyword_5_0()); }

	Use 

{ after(grammarAccess.getStakeholderGoalsAccess().getUseKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_5__1__Impl
	rule__StakeholderGoals__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getConstantsKeyword_5_1()); }

	Constants 

{ after(grammarAccess.getStakeholderGoalsAccess().getConstantsKeyword_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getStakeholderGoalsAccess().getImportConstantsAssignment_5_2()); }
(rule__StakeholderGoals__ImportConstantsAssignment_5_2)
{ after(grammarAccess.getStakeholderGoalsAccess().getImportConstantsAssignment_5_2()); }
)
(
{ before(grammarAccess.getStakeholderGoalsAccess().getImportConstantsAssignment_5_2()); }
(rule__StakeholderGoals__ImportConstantsAssignment_5_2)*
{ after(grammarAccess.getStakeholderGoalsAccess().getImportConstantsAssignment_5_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__StakeholderGoals__Group_7_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_7_3__0__Impl
	rule__StakeholderGoals__Group_7_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_7_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getSeeKeyword_7_3_0()); }

	See 

{ after(grammarAccess.getStakeholderGoalsAccess().getSeeKeyword_7_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_7_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_7_3__1__Impl
	rule__StakeholderGoals__Group_7_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_7_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getDocumentKeyword_7_3_1()); }

	Document 

{ after(grammarAccess.getStakeholderGoalsAccess().getDocumentKeyword_7_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_7_3__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_7_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_7_3__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getStakeholderGoalsAccess().getDocReferenceAssignment_7_3_2()); }
(rule__StakeholderGoals__DocReferenceAssignment_7_3_2)
{ after(grammarAccess.getStakeholderGoalsAccess().getDocReferenceAssignment_7_3_2()); }
)
(
{ before(grammarAccess.getStakeholderGoalsAccess().getDocReferenceAssignment_7_3_2()); }
(rule__StakeholderGoals__DocReferenceAssignment_7_3_2)*
{ after(grammarAccess.getStakeholderGoalsAccess().getDocReferenceAssignment_7_3_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__StakeholderGoals__Group_7_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_7_4__0__Impl
	rule__StakeholderGoals__Group_7_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_7_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getIssuesKeyword_7_4_0()); }

	Issues 

{ after(grammarAccess.getStakeholderGoalsAccess().getIssuesKeyword_7_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__Group_7_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__Group_7_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__Group_7_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getStakeholderGoalsAccess().getIssuesAssignment_7_4_1()); }
(rule__StakeholderGoals__IssuesAssignment_7_4_1)
{ after(grammarAccess.getStakeholderGoalsAccess().getIssuesAssignment_7_4_1()); }
)
(
{ before(grammarAccess.getStakeholderGoalsAccess().getIssuesAssignment_7_4_1()); }
(rule__StakeholderGoals__IssuesAssignment_7_4_1)*
{ after(grammarAccess.getStakeholderGoalsAccess().getIssuesAssignment_7_4_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ReqDocument__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group__0__Impl
	rule__ReqDocument__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getDocumentKeyword_0()); }

	Document 

{ after(grammarAccess.getReqDocumentAccess().getDocumentKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group__1__Impl
	rule__ReqDocument__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getNameAssignment_1()); }
(rule__ReqDocument__NameAssignment_1)
{ after(grammarAccess.getReqDocumentAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group__2__Impl
	rule__ReqDocument__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getGroup_2()); }
(rule__ReqDocument__Group_2__0)?
{ after(grammarAccess.getReqDocumentAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group__3__Impl
	rule__ReqDocument__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getLeftSquareBracketKeyword_3()); }

	LeftSquareBracket 

{ after(grammarAccess.getReqDocumentAccess().getLeftSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group__4__Impl
	rule__ReqDocument__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4()); }
(rule__ReqDocument__UnorderedGroup_4)
{ after(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getRightSquareBracketKeyword_5()); }

	RightSquareBracket 

{ after(grammarAccess.getReqDocumentAccess().getRightSquareBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__ReqDocument__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_2__0__Impl
	rule__ReqDocument__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getColonKeyword_2_0()); }

	Colon 

{ after(grammarAccess.getReqDocumentAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getTitleAssignment_2_1()); }
(rule__ReqDocument__TitleAssignment_2_1)
{ after(grammarAccess.getReqDocumentAccess().getTitleAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ReqDocument__Group_4_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_4_2__0__Impl
	rule__ReqDocument__Group_4_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_4_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getSeeKeyword_4_2_0()); }

	See 

{ after(grammarAccess.getReqDocumentAccess().getSeeKeyword_4_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group_4_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_4_2__1__Impl
	rule__ReqDocument__Group_4_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_4_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getDocumentKeyword_4_2_1()); }

	Document 

{ after(grammarAccess.getReqDocumentAccess().getDocumentKeyword_4_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group_4_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_4_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_4_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getReqDocumentAccess().getDocReferenceAssignment_4_2_2()); }
(rule__ReqDocument__DocReferenceAssignment_4_2_2)
{ after(grammarAccess.getReqDocumentAccess().getDocReferenceAssignment_4_2_2()); }
)
(
{ before(grammarAccess.getReqDocumentAccess().getDocReferenceAssignment_4_2_2()); }
(rule__ReqDocument__DocReferenceAssignment_4_2_2)*
{ after(grammarAccess.getReqDocumentAccess().getDocReferenceAssignment_4_2_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ReqDocument__Group_4_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_4_3__0__Impl
	rule__ReqDocument__Group_4_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_4_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getIssuesKeyword_4_3_0()); }

	Issues 

{ after(grammarAccess.getReqDocumentAccess().getIssuesKeyword_4_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__Group_4_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__Group_4_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__Group_4_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getReqDocumentAccess().getIssuesAssignment_4_3_1()); }
(rule__ReqDocument__IssuesAssignment_4_3_1)
{ after(grammarAccess.getReqDocumentAccess().getIssuesAssignment_4_3_1()); }
)
(
{ before(grammarAccess.getReqDocumentAccess().getIssuesAssignment_4_3_1()); }
(rule__ReqDocument__IssuesAssignment_4_3_1)*
{ after(grammarAccess.getReqDocumentAccess().getIssuesAssignment_4_3_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocumentSection__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group__0__Impl
	rule__DocumentSection__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getSectionKeyword_0()); }

	Section 

{ after(grammarAccess.getDocumentSectionAccess().getSectionKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group__1__Impl
	rule__DocumentSection__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getLabelAssignment_1()); }
(rule__DocumentSection__LabelAssignment_1)
{ after(grammarAccess.getDocumentSectionAccess().getLabelAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group__2__Impl
	rule__DocumentSection__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getGroup_2()); }
(rule__DocumentSection__Group_2__0)?
{ after(grammarAccess.getDocumentSectionAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group__3__Impl
	rule__DocumentSection__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getLeftSquareBracketKeyword_3()); }

	LeftSquareBracket 

{ after(grammarAccess.getDocumentSectionAccess().getLeftSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group__4__Impl
	rule__DocumentSection__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4()); }
(rule__DocumentSection__UnorderedGroup_4)
{ after(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getRightSquareBracketKeyword_5()); }

	RightSquareBracket 

{ after(grammarAccess.getDocumentSectionAccess().getRightSquareBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__DocumentSection__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group_2__0__Impl
	rule__DocumentSection__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getColonKeyword_2_0()); }

	Colon 

{ after(grammarAccess.getDocumentSectionAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getTitleAssignment_2_1()); }
(rule__DocumentSection__TitleAssignment_2_1)
{ after(grammarAccess.getDocumentSectionAccess().getTitleAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirements__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__0__Impl
	rule__SystemRequirements__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getSystemRequirementsAction_0()); }
(

)
{ after(grammarAccess.getSystemRequirementsAccess().getSystemRequirementsAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__1__Impl
	rule__SystemRequirements__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getSystemKeyword_1()); }

	KW_System 

{ after(grammarAccess.getSystemRequirementsAccess().getSystemKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__2__Impl
	rule__SystemRequirements__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getRequirementsKeyword_2()); }

	Requirements 

{ after(grammarAccess.getSystemRequirementsAccess().getRequirementsKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__3__Impl
	rule__SystemRequirements__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getNameAssignment_3()); }
(rule__SystemRequirements__NameAssignment_3)
{ after(grammarAccess.getSystemRequirementsAccess().getNameAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__4__Impl
	rule__SystemRequirements__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getGroup_4()); }
(rule__SystemRequirements__Group_4__0)?
{ after(grammarAccess.getSystemRequirementsAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__5__Impl
	rule__SystemRequirements__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getForKeyword_5()); }

	For 

{ after(grammarAccess.getSystemRequirementsAccess().getForKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__6__Impl
	rule__SystemRequirements__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getTargetAssignment_6()); }
(rule__SystemRequirements__TargetAssignment_6)
{ after(grammarAccess.getSystemRequirementsAccess().getTargetAssignment_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__7__Impl
	rule__SystemRequirements__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getGroup_7()); }
(rule__SystemRequirements__Group_7__0)?
{ after(grammarAccess.getSystemRequirementsAccess().getGroup_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__8__Impl
	rule__SystemRequirements__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getLeftSquareBracketKeyword_8()); }

	LeftSquareBracket 

{ after(grammarAccess.getSystemRequirementsAccess().getLeftSquareBracketKeyword_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__9__Impl
	rule__SystemRequirements__Group__10
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__9__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9()); }
(rule__SystemRequirements__UnorderedGroup_9)
{ after(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group__10__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group__10__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getRightSquareBracketKeyword_10()); }

	RightSquareBracket 

{ after(grammarAccess.getSystemRequirementsAccess().getRightSquareBracketKeyword_10()); }
)

;
finally {
	restoreStackSize(stackSize);
}
























rule__SystemRequirements__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_4__0__Impl
	rule__SystemRequirements__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getColonKeyword_4_0()); }

	Colon 

{ after(grammarAccess.getSystemRequirementsAccess().getColonKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getTitleAssignment_4_1()); }
(rule__SystemRequirements__TitleAssignment_4_1)
{ after(grammarAccess.getSystemRequirementsAccess().getTitleAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirements__Group_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_7__0__Impl
	rule__SystemRequirements__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_7__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getUseKeyword_7_0()); }

	Use 

{ after(grammarAccess.getSystemRequirementsAccess().getUseKeyword_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_7__1__Impl
	rule__SystemRequirements__Group_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_7__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getConstantsKeyword_7_1()); }

	Constants 

{ after(grammarAccess.getSystemRequirementsAccess().getConstantsKeyword_7_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_7__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_7__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_7__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementsAccess().getImportConstantsAssignment_7_2()); }
(rule__SystemRequirements__ImportConstantsAssignment_7_2)
{ after(grammarAccess.getSystemRequirementsAccess().getImportConstantsAssignment_7_2()); }
)
(
{ before(grammarAccess.getSystemRequirementsAccess().getImportConstantsAssignment_7_2()); }
(rule__SystemRequirements__ImportConstantsAssignment_7_2)*
{ after(grammarAccess.getSystemRequirementsAccess().getImportConstantsAssignment_7_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirements__Group_9_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_5__0__Impl
	rule__SystemRequirements__Group_9_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getSeeKeyword_9_5_0()); }

	See 

{ after(grammarAccess.getSystemRequirementsAccess().getSeeKeyword_9_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_9_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_5__1__Impl
	rule__SystemRequirements__Group_9_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getDocumentKeyword_9_5_1()); }

	Document 

{ after(grammarAccess.getSystemRequirementsAccess().getDocumentKeyword_9_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_9_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementsAccess().getDocReferenceAssignment_9_5_2()); }
(rule__SystemRequirements__DocReferenceAssignment_9_5_2)
{ after(grammarAccess.getSystemRequirementsAccess().getDocReferenceAssignment_9_5_2()); }
)
(
{ before(grammarAccess.getSystemRequirementsAccess().getDocReferenceAssignment_9_5_2()); }
(rule__SystemRequirements__DocReferenceAssignment_9_5_2)*
{ after(grammarAccess.getSystemRequirementsAccess().getDocReferenceAssignment_9_5_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirements__Group_9_6__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_6__0__Impl
	rule__SystemRequirements__Group_9_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_6__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getSeeKeyword_9_6_0()); }

	See 

{ after(grammarAccess.getSystemRequirementsAccess().getSeeKeyword_9_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_9_6__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_6__1__Impl
	rule__SystemRequirements__Group_9_6__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_6__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getGoalsKeyword_9_6_1()); }

	Goals 

{ after(grammarAccess.getSystemRequirementsAccess().getGoalsKeyword_9_6_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_9_6__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_6__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_6__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsAssignment_9_6_2()); }
(rule__SystemRequirements__StakeholderGoalsAssignment_9_6_2)
{ after(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsAssignment_9_6_2()); }
)
(
{ before(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsAssignment_9_6_2()); }
(rule__SystemRequirements__StakeholderGoalsAssignment_9_6_2)*
{ after(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsAssignment_9_6_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirements__Group_9_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_7__0__Impl
	rule__SystemRequirements__Group_9_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_7__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getIssuesKeyword_9_7_0()); }

	Issues 

{ after(grammarAccess.getSystemRequirementsAccess().getIssuesKeyword_9_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__Group_9_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__Group_9_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__Group_9_7__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementsAccess().getIssuesAssignment_9_7_1()); }
(rule__SystemRequirements__IssuesAssignment_9_7_1)
{ after(grammarAccess.getSystemRequirementsAccess().getIssuesAssignment_9_7_1()); }
)
(
{ before(grammarAccess.getSystemRequirementsAccess().getIssuesAssignment_9_7_1()); }
(rule__SystemRequirements__IssuesAssignment_9_7_1)*
{ after(grammarAccess.getSystemRequirementsAccess().getIssuesAssignment_9_7_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirements__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__0__Impl
	rule__GlobalRequirements__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getGlobalRequirementsAction_0()); }
(

)
{ after(grammarAccess.getGlobalRequirementsAccess().getGlobalRequirementsAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__1__Impl
	rule__GlobalRequirements__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getGlobalKeyword_1()); }

	Global 

{ after(grammarAccess.getGlobalRequirementsAccess().getGlobalKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__2__Impl
	rule__GlobalRequirements__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getRequirementsKeyword_2()); }

	Requirements 

{ after(grammarAccess.getGlobalRequirementsAccess().getRequirementsKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__3__Impl
	rule__GlobalRequirements__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getNameAssignment_3()); }
(rule__GlobalRequirements__NameAssignment_3)
{ after(grammarAccess.getGlobalRequirementsAccess().getNameAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__4__Impl
	rule__GlobalRequirements__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getGroup_4()); }
(rule__GlobalRequirements__Group_4__0)?
{ after(grammarAccess.getGlobalRequirementsAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__5__Impl
	rule__GlobalRequirements__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getGroup_5()); }
(rule__GlobalRequirements__Group_5__0)?
{ after(grammarAccess.getGlobalRequirementsAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__6__Impl
	rule__GlobalRequirements__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getLeftSquareBracketKeyword_6()); }

	LeftSquareBracket 

{ after(grammarAccess.getGlobalRequirementsAccess().getLeftSquareBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__7__Impl
	rule__GlobalRequirements__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7()); }
(rule__GlobalRequirements__UnorderedGroup_7)
{ after(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getRightSquareBracketKeyword_8()); }

	RightSquareBracket 

{ after(grammarAccess.getGlobalRequirementsAccess().getRightSquareBracketKeyword_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}




















rule__GlobalRequirements__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_4__0__Impl
	rule__GlobalRequirements__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getColonKeyword_4_0()); }

	Colon 

{ after(grammarAccess.getGlobalRequirementsAccess().getColonKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getTitleAssignment_4_1()); }
(rule__GlobalRequirements__TitleAssignment_4_1)
{ after(grammarAccess.getGlobalRequirementsAccess().getTitleAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirements__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_5__0__Impl
	rule__GlobalRequirements__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getUseKeyword_5_0()); }

	Use 

{ after(grammarAccess.getGlobalRequirementsAccess().getUseKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_5__1__Impl
	rule__GlobalRequirements__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getConstantsKeyword_5_1()); }

	Constants 

{ after(grammarAccess.getGlobalRequirementsAccess().getConstantsKeyword_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementsAccess().getImportConstantsAssignment_5_2()); }
(rule__GlobalRequirements__ImportConstantsAssignment_5_2)
{ after(grammarAccess.getGlobalRequirementsAccess().getImportConstantsAssignment_5_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementsAccess().getImportConstantsAssignment_5_2()); }
(rule__GlobalRequirements__ImportConstantsAssignment_5_2)*
{ after(grammarAccess.getGlobalRequirementsAccess().getImportConstantsAssignment_5_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirements__Group_7_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_4__0__Impl
	rule__GlobalRequirements__Group_7_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getSeeKeyword_7_4_0()); }

	See 

{ after(grammarAccess.getGlobalRequirementsAccess().getSeeKeyword_7_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_7_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_4__1__Impl
	rule__GlobalRequirements__Group_7_4__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getDocumentKeyword_7_4_1()); }

	Document 

{ after(grammarAccess.getGlobalRequirementsAccess().getDocumentKeyword_7_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_7_4__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_4__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_4__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementsAccess().getDocReferenceAssignment_7_4_2()); }
(rule__GlobalRequirements__DocReferenceAssignment_7_4_2)
{ after(grammarAccess.getGlobalRequirementsAccess().getDocReferenceAssignment_7_4_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementsAccess().getDocReferenceAssignment_7_4_2()); }
(rule__GlobalRequirements__DocReferenceAssignment_7_4_2)*
{ after(grammarAccess.getGlobalRequirementsAccess().getDocReferenceAssignment_7_4_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirements__Group_7_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_5__0__Impl
	rule__GlobalRequirements__Group_7_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getSeeKeyword_7_5_0()); }

	See 

{ after(grammarAccess.getGlobalRequirementsAccess().getSeeKeyword_7_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_7_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_5__1__Impl
	rule__GlobalRequirements__Group_7_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getGoalsKeyword_7_5_1()); }

	Goals 

{ after(grammarAccess.getGlobalRequirementsAccess().getGoalsKeyword_7_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_7_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsAssignment_7_5_2()); }
(rule__GlobalRequirements__StakeholderGoalsAssignment_7_5_2)
{ after(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsAssignment_7_5_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsAssignment_7_5_2()); }
(rule__GlobalRequirements__StakeholderGoalsAssignment_7_5_2)*
{ after(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsAssignment_7_5_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirements__Group_7_6__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_6__0__Impl
	rule__GlobalRequirements__Group_7_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_6__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getIssuesKeyword_7_6_0()); }

	Issues 

{ after(grammarAccess.getGlobalRequirementsAccess().getIssuesKeyword_7_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__Group_7_6__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__Group_7_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__Group_7_6__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementsAccess().getIssuesAssignment_7_6_1()); }
(rule__GlobalRequirements__IssuesAssignment_7_6_1)
{ after(grammarAccess.getGlobalRequirementsAccess().getIssuesAssignment_7_6_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementsAccess().getIssuesAssignment_7_6_1()); }
(rule__GlobalRequirements__IssuesAssignment_7_6_1)*
{ after(grammarAccess.getGlobalRequirementsAccess().getIssuesAssignment_7_6_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__0__Impl
	rule__DocGoal__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getGoalKeyword_0()); }

	Goal 

{ after(grammarAccess.getDocGoalAccess().getGoalKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__1__Impl
	rule__DocGoal__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getNameAssignment_1()); }
(rule__DocGoal__NameAssignment_1)
{ after(grammarAccess.getDocGoalAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__2__Impl
	rule__DocGoal__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getGroup_2()); }
(rule__DocGoal__Group_2__0)?
{ after(grammarAccess.getDocGoalAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__3__Impl
	rule__DocGoal__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getGroup_3()); }
(rule__DocGoal__Group_3__0)?
{ after(grammarAccess.getDocGoalAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__4__Impl
	rule__DocGoal__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getLeftSquareBracketKeyword_4()); }

	LeftSquareBracket 

{ after(grammarAccess.getDocGoalAccess().getLeftSquareBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__5__Impl
	rule__DocGoal__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getUnorderedGroup_5()); }
(rule__DocGoal__UnorderedGroup_5)
{ after(grammarAccess.getDocGoalAccess().getUnorderedGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getRightSquareBracketKeyword_6()); }

	RightSquareBracket 

{ after(grammarAccess.getDocGoalAccess().getRightSquareBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}
















rule__DocGoal__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_2__0__Impl
	rule__DocGoal__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getColonKeyword_2_0()); }

	Colon 

{ after(grammarAccess.getDocGoalAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTitleAssignment_2_1()); }
(rule__DocGoal__TitleAssignment_2_1)
{ after(grammarAccess.getDocGoalAccess().getTitleAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_3__0__Impl
	rule__DocGoal__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getForKeyword_3_0()); }

	For 

{ after(grammarAccess.getDocGoalAccess().getForKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getAlternatives_3_1()); }
(rule__DocGoal__Alternatives_3_1)
{ after(grammarAccess.getDocGoalAccess().getAlternatives_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_3_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_3_1_1__0__Impl
	rule__DocGoal__Group_3_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_3_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTargetAssignment_3_1_1_0()); }
(rule__DocGoal__TargetAssignment_3_1_1_0)
{ after(grammarAccess.getDocGoalAccess().getTargetAssignment_3_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_3_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_3_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_3_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTargetElementAssignment_3_1_1_1()); }
(rule__DocGoal__TargetElementAssignment_3_1_1_1)?
{ after(grammarAccess.getDocGoalAccess().getTargetElementAssignment_3_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_0__0__Impl
	rule__DocGoal__Group_5_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getQualityKeyword_5_0_0()); }

	Quality 

{ after(grammarAccess.getDocGoalAccess().getQualityKeyword_5_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getQualityCategoryAssignment_5_0_1()); }
(rule__DocGoal__QualityCategoryAssignment_5_0_1)
{ after(grammarAccess.getDocGoalAccess().getQualityCategoryAssignment_5_0_1()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getQualityCategoryAssignment_5_0_1()); }
(rule__DocGoal__QualityCategoryAssignment_5_0_1)*
{ after(grammarAccess.getDocGoalAccess().getQualityCategoryAssignment_5_0_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_1__0__Impl
	rule__DocGoal__Group_5_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getCategoryKeyword_5_1_0()); }

	Category 

{ after(grammarAccess.getDocGoalAccess().getCategoryKeyword_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getUserCategoryAssignment_5_1_1()); }
(rule__DocGoal__UserCategoryAssignment_5_1_1)
{ after(grammarAccess.getDocGoalAccess().getUserCategoryAssignment_5_1_1()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getUserCategoryAssignment_5_1_1()); }
(rule__DocGoal__UserCategoryAssignment_5_1_1)*
{ after(grammarAccess.getDocGoalAccess().getUserCategoryAssignment_5_1_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_7__0__Impl
	rule__DocGoal__Group_5_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_7__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getRefinesKeyword_5_7_0()); }

	Refines 

{ after(grammarAccess.getDocGoalAccess().getRefinesKeyword_5_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_7__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
(rule__DocGoal__RefinesReferenceAssignment_5_7_1)
{ after(grammarAccess.getDocGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
(rule__DocGoal__RefinesReferenceAssignment_5_7_1)*
{ after(grammarAccess.getDocGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_8__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_8__0__Impl
	rule__DocGoal__Group_5_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_8__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getConflictsKeyword_5_8_0()); }

	Conflicts 

{ after(grammarAccess.getDocGoalAccess().getConflictsKeyword_5_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_8__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_8__1__Impl
	rule__DocGoal__Group_5_8__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_8__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getWithKeyword_5_8_1()); }

	With 

{ after(grammarAccess.getDocGoalAccess().getWithKeyword_5_8_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_8__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_8__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_8__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
(rule__DocGoal__ConflictsReferenceAssignment_5_8_2)
{ after(grammarAccess.getDocGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
(rule__DocGoal__ConflictsReferenceAssignment_5_8_2)*
{ after(grammarAccess.getDocGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DocGoal__Group_5_9__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_9__0__Impl
	rule__DocGoal__Group_5_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_9__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getEvolvesKeyword_5_9_0()); }

	Evolves 

{ after(grammarAccess.getDocGoalAccess().getEvolvesKeyword_5_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_9__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_9__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
(rule__DocGoal__EvolvesReferenceAssignment_5_9_1)
{ after(grammarAccess.getDocGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
(rule__DocGoal__EvolvesReferenceAssignment_5_9_1)*
{ after(grammarAccess.getDocGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_10__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_10__0__Impl
	rule__DocGoal__Group_5_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_10__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDroppedAssignment_5_10_0()); }
(rule__DocGoal__DroppedAssignment_5_10_0)
{ after(grammarAccess.getDocGoalAccess().getDroppedAssignment_5_10_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_10__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_10__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDropRationaleAssignment_5_10_1()); }
(rule__DocGoal__DropRationaleAssignment_5_10_1)?
{ after(grammarAccess.getDocGoalAccess().getDropRationaleAssignment_5_10_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_11__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_11__0__Impl
	rule__DocGoal__Group_5_11__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_11__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getStakeholderKeyword_5_11_0()); }

	Stakeholder 

{ after(grammarAccess.getDocGoalAccess().getStakeholderKeyword_5_11_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_11__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_11__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_11__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
(rule__DocGoal__StakeholderReferenceAssignment_5_11_1)
{ after(grammarAccess.getDocGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
(rule__DocGoal__StakeholderReferenceAssignment_5_11_1)*
{ after(grammarAccess.getDocGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocGoal__Group_5_12__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_12__0__Impl
	rule__DocGoal__Group_5_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_12__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getSeeKeyword_5_12_0()); }

	See 

{ after(grammarAccess.getDocGoalAccess().getSeeKeyword_5_12_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_12__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_12__1__Impl
	rule__DocGoal__Group_5_12__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_12__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDocumentKeyword_5_12_1()); }

	Document 

{ after(grammarAccess.getDocGoalAccess().getDocumentKeyword_5_12_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_12__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_12__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_12__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getDocReferenceAssignment_5_12_2()); }
(rule__DocGoal__DocReferenceAssignment_5_12_2)
{ after(grammarAccess.getDocGoalAccess().getDocReferenceAssignment_5_12_2()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getDocReferenceAssignment_5_12_2()); }
(rule__DocGoal__DocReferenceAssignment_5_12_2)*
{ after(grammarAccess.getDocGoalAccess().getDocReferenceAssignment_5_12_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DocGoal__Group_5_13__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_13__0__Impl
	rule__DocGoal__Group_5_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_13__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getIssuesKeyword_5_13_0()); }

	Issues 

{ after(grammarAccess.getDocGoalAccess().getIssuesKeyword_5_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__Group_5_13__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__Group_5_13__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__Group_5_13__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocGoalAccess().getIssuesAssignment_5_13_1()); }
(rule__DocGoal__IssuesAssignment_5_13_1)
{ after(grammarAccess.getDocGoalAccess().getIssuesAssignment_5_13_1()); }
)
(
{ before(grammarAccess.getDocGoalAccess().getIssuesAssignment_5_13_1()); }
(rule__DocGoal__IssuesAssignment_5_13_1)*
{ after(grammarAccess.getDocGoalAccess().getIssuesAssignment_5_13_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__0__Impl
	rule__Goal__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getGoalKeyword_0()); }

	Goal 

{ after(grammarAccess.getGoalAccess().getGoalKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__1__Impl
	rule__Goal__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getNameAssignment_1()); }
(rule__Goal__NameAssignment_1)
{ after(grammarAccess.getGoalAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__2__Impl
	rule__Goal__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getGroup_2()); }
(rule__Goal__Group_2__0)?
{ after(grammarAccess.getGoalAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__3__Impl
	rule__Goal__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getGroup_3()); }
(rule__Goal__Group_3__0)?
{ after(grammarAccess.getGoalAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__4__Impl
	rule__Goal__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getLeftSquareBracketKeyword_4()); }

	LeftSquareBracket 

{ after(grammarAccess.getGoalAccess().getLeftSquareBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__5__Impl
	rule__Goal__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getUnorderedGroup_5()); }
(rule__Goal__UnorderedGroup_5)
{ after(grammarAccess.getGoalAccess().getUnorderedGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getRightSquareBracketKeyword_6()); }

	RightSquareBracket 

{ after(grammarAccess.getGoalAccess().getRightSquareBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}
















rule__Goal__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_2__0__Impl
	rule__Goal__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getColonKeyword_2_0()); }

	Colon 

{ after(grammarAccess.getGoalAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getTitleAssignment_2_1()); }
(rule__Goal__TitleAssignment_2_1)
{ after(grammarAccess.getGoalAccess().getTitleAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_3__0__Impl
	rule__Goal__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getForKeyword_3_0()); }

	For 

{ after(grammarAccess.getGoalAccess().getForKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getTargetElementAssignment_3_1()); }
(rule__Goal__TargetElementAssignment_3_1)
{ after(grammarAccess.getGoalAccess().getTargetElementAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_0__0__Impl
	rule__Goal__Group_5_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getQualityKeyword_5_0_0()); }

	Quality 

{ after(grammarAccess.getGoalAccess().getQualityKeyword_5_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getQualityCategoryAssignment_5_0_1()); }
(rule__Goal__QualityCategoryAssignment_5_0_1)
{ after(grammarAccess.getGoalAccess().getQualityCategoryAssignment_5_0_1()); }
)
(
{ before(grammarAccess.getGoalAccess().getQualityCategoryAssignment_5_0_1()); }
(rule__Goal__QualityCategoryAssignment_5_0_1)*
{ after(grammarAccess.getGoalAccess().getQualityCategoryAssignment_5_0_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_1__0__Impl
	rule__Goal__Group_5_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getCategoryKeyword_5_1_0()); }

	Category 

{ after(grammarAccess.getGoalAccess().getCategoryKeyword_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getUserCategoryAssignment_5_1_1()); }
(rule__Goal__UserCategoryAssignment_5_1_1)
{ after(grammarAccess.getGoalAccess().getUserCategoryAssignment_5_1_1()); }
)
(
{ before(grammarAccess.getGoalAccess().getUserCategoryAssignment_5_1_1()); }
(rule__Goal__UserCategoryAssignment_5_1_1)*
{ after(grammarAccess.getGoalAccess().getUserCategoryAssignment_5_1_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_7__0__Impl
	rule__Goal__Group_5_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_7__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getRefinesKeyword_5_7_0()); }

	Refines 

{ after(grammarAccess.getGoalAccess().getRefinesKeyword_5_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_7__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
(rule__Goal__RefinesReferenceAssignment_5_7_1)
{ after(grammarAccess.getGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
)
(
{ before(grammarAccess.getGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
(rule__Goal__RefinesReferenceAssignment_5_7_1)*
{ after(grammarAccess.getGoalAccess().getRefinesReferenceAssignment_5_7_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_8__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_8__0__Impl
	rule__Goal__Group_5_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_8__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getConflictsKeyword_5_8_0()); }

	Conflicts 

{ after(grammarAccess.getGoalAccess().getConflictsKeyword_5_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_8__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_8__1__Impl
	rule__Goal__Group_5_8__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_8__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getWithKeyword_5_8_1()); }

	With 

{ after(grammarAccess.getGoalAccess().getWithKeyword_5_8_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_8__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_8__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_8__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
(rule__Goal__ConflictsReferenceAssignment_5_8_2)
{ after(grammarAccess.getGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
)
(
{ before(grammarAccess.getGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
(rule__Goal__ConflictsReferenceAssignment_5_8_2)*
{ after(grammarAccess.getGoalAccess().getConflictsReferenceAssignment_5_8_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Goal__Group_5_9__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_9__0__Impl
	rule__Goal__Group_5_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_9__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getEvolvesKeyword_5_9_0()); }

	Evolves 

{ after(grammarAccess.getGoalAccess().getEvolvesKeyword_5_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_9__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_9__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
(rule__Goal__EvolvesReferenceAssignment_5_9_1)
{ after(grammarAccess.getGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
)
(
{ before(grammarAccess.getGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
(rule__Goal__EvolvesReferenceAssignment_5_9_1)*
{ after(grammarAccess.getGoalAccess().getEvolvesReferenceAssignment_5_9_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_10__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_10__0__Impl
	rule__Goal__Group_5_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_10__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDroppedAssignment_5_10_0()); }
(rule__Goal__DroppedAssignment_5_10_0)
{ after(grammarAccess.getGoalAccess().getDroppedAssignment_5_10_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_10__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_10__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDropRationaleAssignment_5_10_1()); }
(rule__Goal__DropRationaleAssignment_5_10_1)?
{ after(grammarAccess.getGoalAccess().getDropRationaleAssignment_5_10_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_11__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_11__0__Impl
	rule__Goal__Group_5_11__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_11__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getStakeholderKeyword_5_11_0()); }

	Stakeholder 

{ after(grammarAccess.getGoalAccess().getStakeholderKeyword_5_11_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_11__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_11__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_11__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
(rule__Goal__StakeholderReferenceAssignment_5_11_1)
{ after(grammarAccess.getGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
)
(
{ before(grammarAccess.getGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
(rule__Goal__StakeholderReferenceAssignment_5_11_1)*
{ after(grammarAccess.getGoalAccess().getStakeholderReferenceAssignment_5_11_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Goal__Group_5_12__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_12__0__Impl
	rule__Goal__Group_5_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_12__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getSeeKeyword_5_12_0()); }

	See 

{ after(grammarAccess.getGoalAccess().getSeeKeyword_5_12_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_12__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_12__1__Impl
	rule__Goal__Group_5_12__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_12__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getGoalKeyword_5_12_1()); }

	Goal 

{ after(grammarAccess.getGoalAccess().getGoalKeyword_5_12_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_12__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_12__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_12__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getGoalReferenceAssignment_5_12_2()); }
(rule__Goal__GoalReferenceAssignment_5_12_2)
{ after(grammarAccess.getGoalAccess().getGoalReferenceAssignment_5_12_2()); }
)
(
{ before(grammarAccess.getGoalAccess().getGoalReferenceAssignment_5_12_2()); }
(rule__Goal__GoalReferenceAssignment_5_12_2)*
{ after(grammarAccess.getGoalAccess().getGoalReferenceAssignment_5_12_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Goal__Group_5_13__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_13__0__Impl
	rule__Goal__Group_5_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_13__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getSeeKeyword_5_13_0()); }

	See 

{ after(grammarAccess.getGoalAccess().getSeeKeyword_5_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_13__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_13__1__Impl
	rule__Goal__Group_5_13__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_13__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDocumentKeyword_5_13_1()); }

	Document 

{ after(grammarAccess.getGoalAccess().getDocumentKeyword_5_13_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_13__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_13__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_13__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getDocReferenceAssignment_5_13_2()); }
(rule__Goal__DocReferenceAssignment_5_13_2)
{ after(grammarAccess.getGoalAccess().getDocReferenceAssignment_5_13_2()); }
)
(
{ before(grammarAccess.getGoalAccess().getDocReferenceAssignment_5_13_2()); }
(rule__Goal__DocReferenceAssignment_5_13_2)*
{ after(grammarAccess.getGoalAccess().getDocReferenceAssignment_5_13_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Goal__Group_5_14__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_14__0__Impl
	rule__Goal__Group_5_14__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_14__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getIssuesKeyword_5_14_0()); }

	Issues 

{ after(grammarAccess.getGoalAccess().getIssuesKeyword_5_14_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__Group_5_14__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__Group_5_14__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__Group_5_14__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGoalAccess().getIssuesAssignment_5_14_1()); }
(rule__Goal__IssuesAssignment_5_14_1)
{ after(grammarAccess.getGoalAccess().getIssuesAssignment_5_14_1()); }
)
(
{ before(grammarAccess.getGoalAccess().getIssuesAssignment_5_14_1()); }
(rule__Goal__IssuesAssignment_5_14_1)*
{ after(grammarAccess.getGoalAccess().getIssuesAssignment_5_14_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__0__Impl
	rule__SystemRequirement__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRequirementKeyword_0()); }

	Requirement 

{ after(grammarAccess.getSystemRequirementAccess().getRequirementKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__1__Impl
	rule__SystemRequirement__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getNameAssignment_1()); }
(rule__SystemRequirement__NameAssignment_1)
{ after(grammarAccess.getSystemRequirementAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__2__Impl
	rule__SystemRequirement__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getGroup_2()); }
(rule__SystemRequirement__Group_2__0)?
{ after(grammarAccess.getSystemRequirementAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__3__Impl
	rule__SystemRequirement__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getGroup_3()); }
(rule__SystemRequirement__Group_3__0)?
{ after(grammarAccess.getSystemRequirementAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__4__Impl
	rule__SystemRequirement__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getGroup_4()); }
(rule__SystemRequirement__Group_4__0)?
{ after(grammarAccess.getSystemRequirementAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__5__Impl
	rule__SystemRequirement__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getLeftSquareBracketKeyword_5()); }

	LeftSquareBracket 

{ after(grammarAccess.getSystemRequirementAccess().getLeftSquareBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__6__Impl
	rule__SystemRequirement__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6()); }
(rule__SystemRequirement__UnorderedGroup_6)
{ after(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRightSquareBracketKeyword_7()); }

	RightSquareBracket 

{ after(grammarAccess.getSystemRequirementAccess().getRightSquareBracketKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__SystemRequirement__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_2__0__Impl
	rule__SystemRequirement__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getLeftParenthesisKeyword_2_0()); }

	LeftParenthesis 

{ after(grammarAccess.getSystemRequirementAccess().getLeftParenthesisKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_2__1__Impl
	rule__SystemRequirement__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getReqKindAssignment_2_1()); }
(rule__SystemRequirement__ReqKindAssignment_2_1)
{ after(grammarAccess.getSystemRequirementAccess().getReqKindAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRightParenthesisKeyword_2_2()); }

	RightParenthesis 

{ after(grammarAccess.getSystemRequirementAccess().getRightParenthesisKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirement__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_3__0__Impl
	rule__SystemRequirement__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getColonKeyword_3_0()); }

	Colon 

{ after(grammarAccess.getSystemRequirementAccess().getColonKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getTitleAssignment_3_1()); }
(rule__SystemRequirement__TitleAssignment_3_1)
{ after(grammarAccess.getSystemRequirementAccess().getTitleAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_4__0__Impl
	rule__SystemRequirement__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getForKeyword_4_0()); }

	For 

{ after(grammarAccess.getSystemRequirementAccess().getForKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getTargetElementAssignment_4_1()); }
(rule__SystemRequirement__TargetElementAssignment_4_1)
{ after(grammarAccess.getSystemRequirementAccess().getTargetElementAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_0__0__Impl
	rule__SystemRequirement__Group_6_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getQualityKeyword_6_0_0()); }

	Quality 

{ after(grammarAccess.getSystemRequirementAccess().getQualityKeyword_6_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
(rule__SystemRequirement__QualityCategoryAssignment_6_0_1)
{ after(grammarAccess.getSystemRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
(rule__SystemRequirement__QualityCategoryAssignment_6_0_1)*
{ after(grammarAccess.getSystemRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_1__0__Impl
	rule__SystemRequirement__Group_6_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getCategoryKeyword_6_1_0()); }

	Category 

{ after(grammarAccess.getSystemRequirementAccess().getCategoryKeyword_6_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getUserCategoryAssignment_6_1_1()); }
(rule__SystemRequirement__UserCategoryAssignment_6_1_1)
{ after(grammarAccess.getSystemRequirementAccess().getUserCategoryAssignment_6_1_1()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getUserCategoryAssignment_6_1_1()); }
(rule__SystemRequirement__UserCategoryAssignment_6_1_1)*
{ after(grammarAccess.getSystemRequirementAccess().getUserCategoryAssignment_6_1_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_9__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_9__0__Impl
	rule__SystemRequirement__Group_6_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_9__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getMitigatesKeyword_6_9_0()); }

	Mitigates 

{ after(grammarAccess.getSystemRequirementAccess().getMitigatesKeyword_6_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_9__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_9__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getAlternatives_6_9_1()); }
(rule__SystemRequirement__Alternatives_6_9_1)
{ after(grammarAccess.getSystemRequirementAccess().getAlternatives_6_9_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_10__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_10__0__Impl
	rule__SystemRequirement__Group_6_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_10__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRefinesKeyword_6_10_0()); }

	Refines 

{ after(grammarAccess.getSystemRequirementAccess().getRefinesKeyword_6_10_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_10__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_10__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
(rule__SystemRequirement__RefinesReferenceAssignment_6_10_1)
{ after(grammarAccess.getSystemRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
(rule__SystemRequirement__RefinesReferenceAssignment_6_10_1)*
{ after(grammarAccess.getSystemRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_11__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_11__0__Impl
	rule__SystemRequirement__Group_6_11__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_11__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDecomposesKeyword_6_11_0()); }

	Decomposes 

{ after(grammarAccess.getSystemRequirementAccess().getDecomposesKeyword_6_11_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_11__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_11__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_11__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
(rule__SystemRequirement__DecomposesReferenceAssignment_6_11_1)
{ after(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
(rule__SystemRequirement__DecomposesReferenceAssignment_6_11_1)*
{ after(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_12__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_12__0__Impl
	rule__SystemRequirement__Group_6_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_12__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getInheritsKeyword_6_12_0()); }

	Inherits 

{ after(grammarAccess.getSystemRequirementAccess().getInheritsKeyword_6_12_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_12__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_12__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_12__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getInheritsReferenceAssignment_6_12_1()); }
(rule__SystemRequirement__InheritsReferenceAssignment_6_12_1)
{ after(grammarAccess.getSystemRequirementAccess().getInheritsReferenceAssignment_6_12_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_13__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_13__0__Impl
	rule__SystemRequirement__Group_6_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_13__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getEvolvesKeyword_6_13_0()); }

	Evolves 

{ after(grammarAccess.getSystemRequirementAccess().getEvolvesKeyword_6_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_13__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_13__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_13__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
(rule__SystemRequirement__EvolvesReferenceAssignment_6_13_1)
{ after(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
(rule__SystemRequirement__EvolvesReferenceAssignment_6_13_1)*
{ after(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_14__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_14__0__Impl
	rule__SystemRequirement__Group_6_14__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_14__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDroppedAssignment_6_14_0()); }
(rule__SystemRequirement__DroppedAssignment_6_14_0)
{ after(grammarAccess.getSystemRequirementAccess().getDroppedAssignment_6_14_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_14__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_14__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_14__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDropRationaleAssignment_6_14_1()); }
(rule__SystemRequirement__DropRationaleAssignment_6_14_1)?
{ after(grammarAccess.getSystemRequirementAccess().getDropRationaleAssignment_6_14_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirement__Group_6_15__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_15__0__Impl
	rule__SystemRequirement__Group_6_15__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_15__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDevelopmentKeyword_6_15_0()); }

	Development 

{ after(grammarAccess.getSystemRequirementAccess().getDevelopmentKeyword_6_15_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_15__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_15__1__Impl
	rule__SystemRequirement__Group_6_15__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_15__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getStakeholderKeyword_6_15_1()); }

	Stakeholder 

{ after(grammarAccess.getSystemRequirementAccess().getStakeholderKeyword_6_15_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_15__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_15__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_15__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
(rule__SystemRequirement__DevelopmentStakeholderAssignment_6_15_2)
{ after(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
(rule__SystemRequirement__DevelopmentStakeholderAssignment_6_15_2)*
{ after(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirement__Group_6_16__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_16__0__Impl
	rule__SystemRequirement__Group_6_16__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_16__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getSeeKeyword_6_16_0()); }

	See 

{ after(grammarAccess.getSystemRequirementAccess().getSeeKeyword_6_16_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_16__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_16__1__Impl
	rule__SystemRequirement__Group_6_16__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_16__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getGoalKeyword_6_16_1()); }

	Goal 

{ after(grammarAccess.getSystemRequirementAccess().getGoalKeyword_6_16_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_16__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_16__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_16__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
(rule__SystemRequirement__GoalReferenceAssignment_6_16_2)
{ after(grammarAccess.getSystemRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
(rule__SystemRequirement__GoalReferenceAssignment_6_16_2)*
{ after(grammarAccess.getSystemRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirement__Group_6_17__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_17__0__Impl
	rule__SystemRequirement__Group_6_17__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_17__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getSeeKeyword_6_17_0()); }

	See 

{ after(grammarAccess.getSystemRequirementAccess().getSeeKeyword_6_17_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_17__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_17__1__Impl
	rule__SystemRequirement__Group_6_17__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_17__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRequirementKeyword_6_17_1()); }

	Requirement 

{ after(grammarAccess.getSystemRequirementAccess().getRequirementKeyword_6_17_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_17__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_17__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_17__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getRequirementReferenceAssignment_6_17_2()); }
(rule__SystemRequirement__RequirementReferenceAssignment_6_17_2)
{ after(grammarAccess.getSystemRequirementAccess().getRequirementReferenceAssignment_6_17_2()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getRequirementReferenceAssignment_6_17_2()); }
(rule__SystemRequirement__RequirementReferenceAssignment_6_17_2)*
{ after(grammarAccess.getSystemRequirementAccess().getRequirementReferenceAssignment_6_17_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirement__Group_6_18__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_18__0__Impl
	rule__SystemRequirement__Group_6_18__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_18__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getSeeKeyword_6_18_0()); }

	See 

{ after(grammarAccess.getSystemRequirementAccess().getSeeKeyword_6_18_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_18__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_18__1__Impl
	rule__SystemRequirement__Group_6_18__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_18__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDocumentKeyword_6_18_1()); }

	Document 

{ after(grammarAccess.getSystemRequirementAccess().getDocumentKeyword_6_18_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_18__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_18__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_18__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getDocReferenceAssignment_6_18_2()); }
(rule__SystemRequirement__DocReferenceAssignment_6_18_2)
{ after(grammarAccess.getSystemRequirementAccess().getDocReferenceAssignment_6_18_2()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getDocReferenceAssignment_6_18_2()); }
(rule__SystemRequirement__DocReferenceAssignment_6_18_2)*
{ after(grammarAccess.getSystemRequirementAccess().getDocReferenceAssignment_6_18_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SystemRequirement__Group_6_19__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_19__0__Impl
	rule__SystemRequirement__Group_6_19__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_19__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getIssuesKeyword_6_19_0()); }

	Issues 

{ after(grammarAccess.getSystemRequirementAccess().getIssuesKeyword_6_19_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__Group_6_19__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__Group_6_19__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__Group_6_19__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getSystemRequirementAccess().getIssuesAssignment_6_19_1()); }
(rule__SystemRequirement__IssuesAssignment_6_19_1)
{ after(grammarAccess.getSystemRequirementAccess().getIssuesAssignment_6_19_1()); }
)
(
{ before(grammarAccess.getSystemRequirementAccess().getIssuesAssignment_6_19_1()); }
(rule__SystemRequirement__IssuesAssignment_6_19_1)*
{ after(grammarAccess.getSystemRequirementAccess().getIssuesAssignment_6_19_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__0__Impl
	rule__GlobalRequirement__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRequirementKeyword_0()); }

	Requirement 

{ after(grammarAccess.getGlobalRequirementAccess().getRequirementKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__1__Impl
	rule__GlobalRequirement__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getNameAssignment_1()); }
(rule__GlobalRequirement__NameAssignment_1)
{ after(grammarAccess.getGlobalRequirementAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__2__Impl
	rule__GlobalRequirement__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getGroup_2()); }
(rule__GlobalRequirement__Group_2__0)?
{ after(grammarAccess.getGlobalRequirementAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__3__Impl
	rule__GlobalRequirement__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getGroup_3()); }
(rule__GlobalRequirement__Group_3__0)?
{ after(grammarAccess.getGlobalRequirementAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__4__Impl
	rule__GlobalRequirement__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getGroup_4()); }
(rule__GlobalRequirement__Group_4__0)?
{ after(grammarAccess.getGlobalRequirementAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__5__Impl
	rule__GlobalRequirement__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getLeftSquareBracketKeyword_5()); }

	LeftSquareBracket 

{ after(grammarAccess.getGlobalRequirementAccess().getLeftSquareBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__6__Impl
	rule__GlobalRequirement__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6()); }
(rule__GlobalRequirement__UnorderedGroup_6)
{ after(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRightSquareBracketKeyword_7()); }

	RightSquareBracket 

{ after(grammarAccess.getGlobalRequirementAccess().getRightSquareBracketKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__GlobalRequirement__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_2__0__Impl
	rule__GlobalRequirement__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getLeftParenthesisKeyword_2_0()); }

	LeftParenthesis 

{ after(grammarAccess.getGlobalRequirementAccess().getLeftParenthesisKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_2__1__Impl
	rule__GlobalRequirement__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getReqKindAssignment_2_1()); }
(rule__GlobalRequirement__ReqKindAssignment_2_1)
{ after(grammarAccess.getGlobalRequirementAccess().getReqKindAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRightParenthesisKeyword_2_2()); }

	RightParenthesis 

{ after(grammarAccess.getGlobalRequirementAccess().getRightParenthesisKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirement__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_3__0__Impl
	rule__GlobalRequirement__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getColonKeyword_3_0()); }

	Colon 

{ after(grammarAccess.getGlobalRequirementAccess().getColonKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getTitleAssignment_3_1()); }
(rule__GlobalRequirement__TitleAssignment_3_1)
{ after(grammarAccess.getGlobalRequirementAccess().getTitleAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_4__0__Impl
	rule__GlobalRequirement__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getForKeyword_4_0()); }

	For 

{ after(grammarAccess.getGlobalRequirementAccess().getForKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getAlternatives_4_1()); }
(rule__GlobalRequirement__Alternatives_4_1)
{ after(grammarAccess.getGlobalRequirementAccess().getAlternatives_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_0__0__Impl
	rule__GlobalRequirement__Group_6_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getQualityKeyword_6_0_0()); }

	Quality 

{ after(grammarAccess.getGlobalRequirementAccess().getQualityKeyword_6_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
(rule__GlobalRequirement__QualityCategoryAssignment_6_0_1)
{ after(grammarAccess.getGlobalRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
(rule__GlobalRequirement__QualityCategoryAssignment_6_0_1)*
{ after(grammarAccess.getGlobalRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_1__0__Impl
	rule__GlobalRequirement__Group_6_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getCategoryKeyword_6_1_0()); }

	Category 

{ after(grammarAccess.getGlobalRequirementAccess().getCategoryKeyword_6_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getUserCategoryAssignment_6_1_1()); }
(rule__GlobalRequirement__UserCategoryAssignment_6_1_1)
{ after(grammarAccess.getGlobalRequirementAccess().getUserCategoryAssignment_6_1_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getUserCategoryAssignment_6_1_1()); }
(rule__GlobalRequirement__UserCategoryAssignment_6_1_1)*
{ after(grammarAccess.getGlobalRequirementAccess().getUserCategoryAssignment_6_1_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_9__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_9__0__Impl
	rule__GlobalRequirement__Group_6_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_9__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getMitigatesKeyword_6_9_0()); }

	Mitigates 

{ after(grammarAccess.getGlobalRequirementAccess().getMitigatesKeyword_6_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_9__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_9__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getAlternatives_6_9_1()); }
(rule__GlobalRequirement__Alternatives_6_9_1)
{ after(grammarAccess.getGlobalRequirementAccess().getAlternatives_6_9_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_10__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_10__0__Impl
	rule__GlobalRequirement__Group_6_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_10__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRefinesKeyword_6_10_0()); }

	Refines 

{ after(grammarAccess.getGlobalRequirementAccess().getRefinesKeyword_6_10_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_10__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_10__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
(rule__GlobalRequirement__RefinesReferenceAssignment_6_10_1)
{ after(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
(rule__GlobalRequirement__RefinesReferenceAssignment_6_10_1)*
{ after(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_11__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_11__0__Impl
	rule__GlobalRequirement__Group_6_11__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_11__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDecomposesKeyword_6_11_0()); }

	Decomposes 

{ after(grammarAccess.getGlobalRequirementAccess().getDecomposesKeyword_6_11_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_11__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_11__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_11__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
(rule__GlobalRequirement__DecomposesReferenceAssignment_6_11_1)
{ after(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
(rule__GlobalRequirement__DecomposesReferenceAssignment_6_11_1)*
{ after(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_12__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_12__0__Impl
	rule__GlobalRequirement__Group_6_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_12__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getEvolvesKeyword_6_12_0()); }

	Evolves 

{ after(grammarAccess.getGlobalRequirementAccess().getEvolvesKeyword_6_12_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_12__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_12__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_12__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceAssignment_6_12_1()); }
(rule__GlobalRequirement__EvolvesReferenceAssignment_6_12_1)
{ after(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceAssignment_6_12_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceAssignment_6_12_1()); }
(rule__GlobalRequirement__EvolvesReferenceAssignment_6_12_1)*
{ after(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceAssignment_6_12_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_13__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_13__0__Impl
	rule__GlobalRequirement__Group_6_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_13__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDroppedAssignment_6_13_0()); }
(rule__GlobalRequirement__DroppedAssignment_6_13_0)
{ after(grammarAccess.getGlobalRequirementAccess().getDroppedAssignment_6_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_13__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_13__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_13__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDropRationaleAssignment_6_13_1()); }
(rule__GlobalRequirement__DropRationaleAssignment_6_13_1)?
{ after(grammarAccess.getGlobalRequirementAccess().getDropRationaleAssignment_6_13_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GlobalRequirement__Group_6_14__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_14__0__Impl
	rule__GlobalRequirement__Group_6_14__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_14__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDevelopmentKeyword_6_14_0()); }

	Development 

{ after(grammarAccess.getGlobalRequirementAccess().getDevelopmentKeyword_6_14_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_14__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_14__1__Impl
	rule__GlobalRequirement__Group_6_14__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_14__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getStakeholderKeyword_6_14_1()); }

	Stakeholder 

{ after(grammarAccess.getGlobalRequirementAccess().getStakeholderKeyword_6_14_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_14__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_14__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_14__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderAssignment_6_14_2()); }
(rule__GlobalRequirement__DevelopmentStakeholderAssignment_6_14_2)
{ after(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderAssignment_6_14_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderAssignment_6_14_2()); }
(rule__GlobalRequirement__DevelopmentStakeholderAssignment_6_14_2)*
{ after(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderAssignment_6_14_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirement__Group_6_15__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_15__0__Impl
	rule__GlobalRequirement__Group_6_15__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_15__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getSeeKeyword_6_15_0()); }

	See 

{ after(grammarAccess.getGlobalRequirementAccess().getSeeKeyword_6_15_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_15__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_15__1__Impl
	rule__GlobalRequirement__Group_6_15__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_15__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getGoalKeyword_6_15_1()); }

	Goal 

{ after(grammarAccess.getGlobalRequirementAccess().getGoalKeyword_6_15_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_15__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_15__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_15__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getGoalReferenceAssignment_6_15_2()); }
(rule__GlobalRequirement__GoalReferenceAssignment_6_15_2)
{ after(grammarAccess.getGlobalRequirementAccess().getGoalReferenceAssignment_6_15_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getGoalReferenceAssignment_6_15_2()); }
(rule__GlobalRequirement__GoalReferenceAssignment_6_15_2)*
{ after(grammarAccess.getGlobalRequirementAccess().getGoalReferenceAssignment_6_15_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirement__Group_6_16__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_16__0__Impl
	rule__GlobalRequirement__Group_6_16__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_16__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getSeeKeyword_6_16_0()); }

	See 

{ after(grammarAccess.getGlobalRequirementAccess().getSeeKeyword_6_16_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_16__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_16__1__Impl
	rule__GlobalRequirement__Group_6_16__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_16__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRequirementKeyword_6_16_1()); }

	Requirement 

{ after(grammarAccess.getGlobalRequirementAccess().getRequirementKeyword_6_16_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_16__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_16__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_16__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceAssignment_6_16_2()); }
(rule__GlobalRequirement__RequirementReferenceAssignment_6_16_2)
{ after(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceAssignment_6_16_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceAssignment_6_16_2()); }
(rule__GlobalRequirement__RequirementReferenceAssignment_6_16_2)*
{ after(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceAssignment_6_16_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirement__Group_6_17__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_17__0__Impl
	rule__GlobalRequirement__Group_6_17__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_17__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getSeeKeyword_6_17_0()); }

	See 

{ after(grammarAccess.getGlobalRequirementAccess().getSeeKeyword_6_17_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_17__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_17__1__Impl
	rule__GlobalRequirement__Group_6_17__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_17__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDocumentKeyword_6_17_1()); }

	Document 

{ after(grammarAccess.getGlobalRequirementAccess().getDocumentKeyword_6_17_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_17__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_17__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_17__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getDocReferenceAssignment_6_17_2()); }
(rule__GlobalRequirement__DocReferenceAssignment_6_17_2)
{ after(grammarAccess.getGlobalRequirementAccess().getDocReferenceAssignment_6_17_2()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getDocReferenceAssignment_6_17_2()); }
(rule__GlobalRequirement__DocReferenceAssignment_6_17_2)*
{ after(grammarAccess.getGlobalRequirementAccess().getDocReferenceAssignment_6_17_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GlobalRequirement__Group_6_18__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_18__0__Impl
	rule__GlobalRequirement__Group_6_18__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_18__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getIssuesKeyword_6_18_0()); }

	Issues 

{ after(grammarAccess.getGlobalRequirementAccess().getIssuesKeyword_6_18_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__Group_6_18__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__Group_6_18__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__Group_6_18__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGlobalRequirementAccess().getIssuesAssignment_6_18_1()); }
(rule__GlobalRequirement__IssuesAssignment_6_18_1)
{ after(grammarAccess.getGlobalRequirementAccess().getIssuesAssignment_6_18_1()); }
)
(
{ before(grammarAccess.getGlobalRequirementAccess().getIssuesAssignment_6_18_1()); }
(rule__GlobalRequirement__IssuesAssignment_6_18_1)*
{ after(grammarAccess.getGlobalRequirementAccess().getIssuesAssignment_6_18_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__0__Impl
	rule__DocRequirement__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getRequirementKeyword_0()); }

	Requirement 

{ after(grammarAccess.getDocRequirementAccess().getRequirementKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__1__Impl
	rule__DocRequirement__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getNameAssignment_1()); }
(rule__DocRequirement__NameAssignment_1)
{ after(grammarAccess.getDocRequirementAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__2__Impl
	rule__DocRequirement__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getGroup_2()); }
(rule__DocRequirement__Group_2__0)?
{ after(grammarAccess.getDocRequirementAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__3__Impl
	rule__DocRequirement__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getGroup_3()); }
(rule__DocRequirement__Group_3__0)?
{ after(grammarAccess.getDocRequirementAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__4__Impl
	rule__DocRequirement__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getGroup_4()); }
(rule__DocRequirement__Group_4__0)?
{ after(grammarAccess.getDocRequirementAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__5__Impl
	rule__DocRequirement__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getLeftSquareBracketKeyword_5()); }

	LeftSquareBracket 

{ after(grammarAccess.getDocRequirementAccess().getLeftSquareBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__6__Impl
	rule__DocRequirement__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6()); }
(rule__DocRequirement__UnorderedGroup_6)
{ after(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getRightSquareBracketKeyword_7()); }

	RightSquareBracket 

{ after(grammarAccess.getDocRequirementAccess().getRightSquareBracketKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__DocRequirement__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_2__0__Impl
	rule__DocRequirement__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getLeftParenthesisKeyword_2_0()); }

	LeftParenthesis 

{ after(grammarAccess.getDocRequirementAccess().getLeftParenthesisKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_2__1__Impl
	rule__DocRequirement__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getReqKindAssignment_2_1()); }
(rule__DocRequirement__ReqKindAssignment_2_1)
{ after(grammarAccess.getDocRequirementAccess().getReqKindAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getRightParenthesisKeyword_2_2()); }

	RightParenthesis 

{ after(grammarAccess.getDocRequirementAccess().getRightParenthesisKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DocRequirement__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_3__0__Impl
	rule__DocRequirement__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getColonKeyword_3_0()); }

	Colon 

{ after(grammarAccess.getDocRequirementAccess().getColonKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTitleAssignment_3_1()); }
(rule__DocRequirement__TitleAssignment_3_1)
{ after(grammarAccess.getDocRequirementAccess().getTitleAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_4__0__Impl
	rule__DocRequirement__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getForKeyword_4_0()); }

	For 

{ after(grammarAccess.getDocRequirementAccess().getForKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getAlternatives_4_1()); }
(rule__DocRequirement__Alternatives_4_1)
{ after(grammarAccess.getDocRequirementAccess().getAlternatives_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_4_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_4_1_1__0__Impl
	rule__DocRequirement__Group_4_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_4_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTargetAssignment_4_1_1_0()); }
(rule__DocRequirement__TargetAssignment_4_1_1_0)
{ after(grammarAccess.getDocRequirementAccess().getTargetAssignment_4_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_4_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_4_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_4_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTargetElementAssignment_4_1_1_1()); }
(rule__DocRequirement__TargetElementAssignment_4_1_1_1)?
{ after(grammarAccess.getDocRequirementAccess().getTargetElementAssignment_4_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_0__0__Impl
	rule__DocRequirement__Group_6_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getQualityKeyword_6_0_0()); }

	Quality 

{ after(grammarAccess.getDocRequirementAccess().getQualityKeyword_6_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
(rule__DocRequirement__QualityCategoryAssignment_6_0_1)
{ after(grammarAccess.getDocRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
(rule__DocRequirement__QualityCategoryAssignment_6_0_1)*
{ after(grammarAccess.getDocRequirementAccess().getQualityCategoryAssignment_6_0_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_1__0__Impl
	rule__DocRequirement__Group_6_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getCategoryKeyword_6_1_0()); }

	Category 

{ after(grammarAccess.getDocRequirementAccess().getCategoryKeyword_6_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getUserCategoryAssignment_6_1_1()); }
(rule__DocRequirement__UserCategoryAssignment_6_1_1)
{ after(grammarAccess.getDocRequirementAccess().getUserCategoryAssignment_6_1_1()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getUserCategoryAssignment_6_1_1()); }
(rule__DocRequirement__UserCategoryAssignment_6_1_1)*
{ after(grammarAccess.getDocRequirementAccess().getUserCategoryAssignment_6_1_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_9__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_9__0__Impl
	rule__DocRequirement__Group_6_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_9__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getMitigatesKeyword_6_9_0()); }

	Mitigates 

{ after(grammarAccess.getDocRequirementAccess().getMitigatesKeyword_6_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_9__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_9__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getAlternatives_6_9_1()); }
(rule__DocRequirement__Alternatives_6_9_1)
{ after(grammarAccess.getDocRequirementAccess().getAlternatives_6_9_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_10__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_10__0__Impl
	rule__DocRequirement__Group_6_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_10__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getRefinesKeyword_6_10_0()); }

	Refines 

{ after(grammarAccess.getDocRequirementAccess().getRefinesKeyword_6_10_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_10__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_10__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
(rule__DocRequirement__RefinesReferenceAssignment_6_10_1)
{ after(grammarAccess.getDocRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
(rule__DocRequirement__RefinesReferenceAssignment_6_10_1)*
{ after(grammarAccess.getDocRequirementAccess().getRefinesReferenceAssignment_6_10_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_11__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_11__0__Impl
	rule__DocRequirement__Group_6_11__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_11__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDecomposesKeyword_6_11_0()); }

	Decomposes 

{ after(grammarAccess.getDocRequirementAccess().getDecomposesKeyword_6_11_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_11__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_11__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_11__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
(rule__DocRequirement__DecomposesReferenceAssignment_6_11_1)
{ after(grammarAccess.getDocRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
(rule__DocRequirement__DecomposesReferenceAssignment_6_11_1)*
{ after(grammarAccess.getDocRequirementAccess().getDecomposesReferenceAssignment_6_11_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_12__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_12__0__Impl
	rule__DocRequirement__Group_6_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_12__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getInheritsKeyword_6_12_0()); }

	Inherits 

{ after(grammarAccess.getDocRequirementAccess().getInheritsKeyword_6_12_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_12__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_12__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_12__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getInheritsReferenceAssignment_6_12_1()); }
(rule__DocRequirement__InheritsReferenceAssignment_6_12_1)
{ after(grammarAccess.getDocRequirementAccess().getInheritsReferenceAssignment_6_12_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_13__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_13__0__Impl
	rule__DocRequirement__Group_6_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_13__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getEvolvesKeyword_6_13_0()); }

	Evolves 

{ after(grammarAccess.getDocRequirementAccess().getEvolvesKeyword_6_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_13__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_13__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_13__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
(rule__DocRequirement__EvolvesReferenceAssignment_6_13_1)
{ after(grammarAccess.getDocRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
(rule__DocRequirement__EvolvesReferenceAssignment_6_13_1)*
{ after(grammarAccess.getDocRequirementAccess().getEvolvesReferenceAssignment_6_13_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_14__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_14__0__Impl
	rule__DocRequirement__Group_6_14__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_14__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDroppedAssignment_6_14_0()); }
(rule__DocRequirement__DroppedAssignment_6_14_0)
{ after(grammarAccess.getDocRequirementAccess().getDroppedAssignment_6_14_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_14__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_14__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_14__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDropRationaleAssignment_6_14_1()); }
(rule__DocRequirement__DropRationaleAssignment_6_14_1)?
{ after(grammarAccess.getDocRequirementAccess().getDropRationaleAssignment_6_14_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DocRequirement__Group_6_15__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_15__0__Impl
	rule__DocRequirement__Group_6_15__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_15__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDevelopmentKeyword_6_15_0()); }

	Development 

{ after(grammarAccess.getDocRequirementAccess().getDevelopmentKeyword_6_15_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_15__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_15__1__Impl
	rule__DocRequirement__Group_6_15__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_15__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getStakeholderKeyword_6_15_1()); }

	Stakeholder 

{ after(grammarAccess.getDocRequirementAccess().getStakeholderKeyword_6_15_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_15__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_15__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_15__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
(rule__DocRequirement__DevelopmentStakeholderAssignment_6_15_2)
{ after(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
(rule__DocRequirement__DevelopmentStakeholderAssignment_6_15_2)*
{ after(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderAssignment_6_15_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DocRequirement__Group_6_16__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_16__0__Impl
	rule__DocRequirement__Group_6_16__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_16__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getSeeKeyword_6_16_0()); }

	See 

{ after(grammarAccess.getDocRequirementAccess().getSeeKeyword_6_16_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_16__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_16__1__Impl
	rule__DocRequirement__Group_6_16__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_16__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getGoalKeyword_6_16_1()); }

	Goal 

{ after(grammarAccess.getDocRequirementAccess().getGoalKeyword_6_16_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_16__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_16__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_16__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
(rule__DocRequirement__GoalReferenceAssignment_6_16_2)
{ after(grammarAccess.getDocRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
(rule__DocRequirement__GoalReferenceAssignment_6_16_2)*
{ after(grammarAccess.getDocRequirementAccess().getGoalReferenceAssignment_6_16_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DocRequirement__Group_6_17__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_17__0__Impl
	rule__DocRequirement__Group_6_17__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_17__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getSeeKeyword_6_17_0()); }

	See 

{ after(grammarAccess.getDocRequirementAccess().getSeeKeyword_6_17_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_17__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_17__1__Impl
	rule__DocRequirement__Group_6_17__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_17__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDocumentKeyword_6_17_1()); }

	Document 

{ after(grammarAccess.getDocRequirementAccess().getDocumentKeyword_6_17_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_17__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_17__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_17__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getDocReferenceAssignment_6_17_2()); }
(rule__DocRequirement__DocReferenceAssignment_6_17_2)
{ after(grammarAccess.getDocRequirementAccess().getDocReferenceAssignment_6_17_2()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getDocReferenceAssignment_6_17_2()); }
(rule__DocRequirement__DocReferenceAssignment_6_17_2)*
{ after(grammarAccess.getDocRequirementAccess().getDocReferenceAssignment_6_17_2()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DocRequirement__Group_6_18__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_18__0__Impl
	rule__DocRequirement__Group_6_18__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_18__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getIssuesKeyword_6_18_0()); }

	Issues 

{ after(grammarAccess.getDocRequirementAccess().getIssuesKeyword_6_18_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__Group_6_18__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__Group_6_18__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__Group_6_18__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDocRequirementAccess().getIssuesAssignment_6_18_1()); }
(rule__DocRequirement__IssuesAssignment_6_18_1)
{ after(grammarAccess.getDocRequirementAccess().getIssuesAssignment_6_18_1()); }
)
(
{ before(grammarAccess.getDocRequirementAccess().getIssuesAssignment_6_18_1()); }
(rule__DocRequirement__IssuesAssignment_6_18_1)*
{ after(grammarAccess.getDocRequirementAccess().getIssuesAssignment_6_18_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__IncludeGlobalRequirement__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IncludeGlobalRequirement__Group__0__Impl
	rule__IncludeGlobalRequirement__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeKeyword_0()); }

	Include 

{ after(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IncludeGlobalRequirement__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IncludeGlobalRequirement__Group__1__Impl
	rule__IncludeGlobalRequirement__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeAssignment_1()); }
(rule__IncludeGlobalRequirement__IncludeAssignment_1)
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IncludeGlobalRequirement__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IncludeGlobalRequirement__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getGroup_2()); }
(rule__IncludeGlobalRequirement__Group_2__0)?
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__IncludeGlobalRequirement__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IncludeGlobalRequirement__Group_2__0__Impl
	rule__IncludeGlobalRequirement__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getForKeyword_2_0()); }

	For 

{ after(grammarAccess.getIncludeGlobalRequirementAccess().getForKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IncludeGlobalRequirement__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IncludeGlobalRequirement__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getAlternatives_2_1()); }
(rule__IncludeGlobalRequirement__Alternatives_2_1)
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getAlternatives_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__WhenCondition__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group__0__Impl
	rule__WhenCondition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getWhenKeyword_0()); }

	When 

{ after(grammarAccess.getWhenConditionAccess().getWhenKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getAlternatives_1()); }
(rule__WhenCondition__Alternatives_1)
{ after(grammarAccess.getWhenConditionAccess().getAlternatives_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__WhenCondition__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_0__0__Impl
	rule__WhenCondition__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInKeyword_1_0_0()); }

	In 

{ after(grammarAccess.getWhenConditionAccess().getInKeyword_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_0__1__Impl
	rule__WhenCondition__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getModeKeyword_1_0_1()); }

	Mode 

{ after(grammarAccess.getWhenConditionAccess().getModeKeyword_1_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_0__2__Impl
	rule__WhenCondition__Group_1_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInModeAssignment_1_0_2()); }
(rule__WhenCondition__InModeAssignment_1_0_2)
{ after(grammarAccess.getWhenConditionAccess().getInModeAssignment_1_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_0__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_0__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_0__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getGroup_1_0_3()); }
(rule__WhenCondition__Group_1_0_3__0)*
{ after(grammarAccess.getWhenConditionAccess().getGroup_1_0_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__WhenCondition__Group_1_0_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_0_3__0__Impl
	rule__WhenCondition__Group_1_0_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_0_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getCommaKeyword_1_0_3_0()); }

	Comma 

{ after(grammarAccess.getWhenConditionAccess().getCommaKeyword_1_0_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_0_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_0_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_0_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInModeAssignment_1_0_3_1()); }
(rule__WhenCondition__InModeAssignment_1_0_3_1)
{ after(grammarAccess.getWhenConditionAccess().getInModeAssignment_1_0_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__WhenCondition__Group_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1__0__Impl
	rule__WhenCondition__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInKeyword_1_1_0()); }

	In 

{ after(grammarAccess.getWhenConditionAccess().getInKeyword_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1__1__Impl
	rule__WhenCondition__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getErrorKeyword_1_1_1()); }

	Error 

{ after(grammarAccess.getWhenConditionAccess().getErrorKeyword_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1__2__Impl
	rule__WhenCondition__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getStateKeyword_1_1_2()); }

	State 

{ after(grammarAccess.getWhenConditionAccess().getStateKeyword_1_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_1__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1__3__Impl
	rule__WhenCondition__Group_1_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInErrorStateAssignment_1_1_3()); }
(rule__WhenCondition__InErrorStateAssignment_1_1_3)
{ after(grammarAccess.getWhenConditionAccess().getInErrorStateAssignment_1_1_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_1__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getGroup_1_1_4()); }
(rule__WhenCondition__Group_1_1_4__0)*
{ after(grammarAccess.getWhenConditionAccess().getGroup_1_1_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__WhenCondition__Group_1_1_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1_4__0__Impl
	rule__WhenCondition__Group_1_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getCommaKeyword_1_1_4_0()); }

	Comma 

{ after(grammarAccess.getWhenConditionAccess().getCommaKeyword_1_1_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WhenCondition__Group_1_1_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WhenCondition__Group_1_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__Group_1_1_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInErrorStateAssignment_1_1_4_1()); }
(rule__WhenCondition__InErrorStateAssignment_1_1_4_1)
{ after(grammarAccess.getWhenConditionAccess().getInErrorStateAssignment_1_1_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__InformalPredicate__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InformalPredicate__Group__0__Impl
	rule__InformalPredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InformalPredicate__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInformalPredicateAccess().getInformalKeyword_0()); }

	Informal 

{ after(grammarAccess.getInformalPredicateAccess().getInformalKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InformalPredicate__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InformalPredicate__Group__1__Impl
	rule__InformalPredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InformalPredicate__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInformalPredicateAccess().getPredicateKeyword_1()); }

	Predicate 

{ after(grammarAccess.getInformalPredicateAccess().getPredicateKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InformalPredicate__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InformalPredicate__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InformalPredicate__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInformalPredicateAccess().getDescriptionAssignment_2()); }
(rule__InformalPredicate__DescriptionAssignment_2)
{ after(grammarAccess.getInformalPredicateAccess().getDescriptionAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Predicate__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Predicate__Group__0__Impl
	rule__Predicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Predicate__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateAccess().getPredicateKeyword_0()); }

	Predicate 

{ after(grammarAccess.getPredicateAccess().getPredicateKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Predicate__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Predicate__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Predicate__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateAccess().getXpressionAssignment_1()); }
(rule__Predicate__XpressionAssignment_1)
{ after(grammarAccess.getPredicateAccess().getXpressionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ValuePredicate__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValuePredicate__Group__0__Impl
	rule__ValuePredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ValuePredicate__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValuePredicateAccess().getValueKeyword_0()); }

	Value 

{ after(grammarAccess.getValuePredicateAccess().getValueKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValuePredicate__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValuePredicate__Group__1__Impl
	rule__ValuePredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ValuePredicate__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValuePredicateAccess().getPredicateKeyword_1()); }

	Predicate 

{ after(grammarAccess.getValuePredicateAccess().getPredicateKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValuePredicate__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValuePredicate__Group__2__Impl
	rule__ValuePredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ValuePredicate__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValuePredicateAccess().getXpressionAssignment_2()); }
(rule__ValuePredicate__XpressionAssignment_2)
{ after(grammarAccess.getValuePredicateAccess().getXpressionAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValuePredicate__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValuePredicate__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ValuePredicate__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValuePredicateAccess().getDesiredValueAssignment_3()); }
(rule__ValuePredicate__DesiredValueAssignment_3)?
{ after(grammarAccess.getValuePredicateAccess().getDesiredValueAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__DesiredValue__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DesiredValue__Group__0__Impl
	rule__DesiredValue__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DesiredValue__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDesiredValueAccess().getAlternatives_0()); }
(rule__DesiredValue__Alternatives_0)
{ after(grammarAccess.getDesiredValueAccess().getAlternatives_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DesiredValue__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DesiredValue__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DesiredValue__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDesiredValueAccess().getValueAssignment_1()); }
(rule__DesiredValue__ValueAssignment_1)
{ after(grammarAccess.getDesiredValueAccess().getValueAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ExternalDocument__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExternalDocument__Group__0__Impl
	rule__ExternalDocument__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalDocument__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExternalDocumentAccess().getDocReferenceAssignment_0()); }
(rule__ExternalDocument__DocReferenceAssignment_0)
{ after(grammarAccess.getExternalDocumentAccess().getDocReferenceAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ExternalDocument__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExternalDocument__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalDocument__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExternalDocumentAccess().getGroup_1()); }
(rule__ExternalDocument__Group_1__0)?
{ after(grammarAccess.getExternalDocumentAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ExternalDocument__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExternalDocument__Group_1__0__Impl
	rule__ExternalDocument__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalDocument__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExternalDocumentAccess().getNumberSignKeyword_1_0()); }

	NumberSign 

{ after(grammarAccess.getExternalDocumentAccess().getNumberSignKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ExternalDocument__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExternalDocument__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalDocument__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExternalDocumentAccess().getDocFragmentAssignment_1_1()); }
(rule__ExternalDocument__DocFragmentAssignment_1_1)
{ after(grammarAccess.getExternalDocumentAccess().getDocFragmentAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DOCPATH__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCPATH__Group__0__Impl
	rule__DOCPATH__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCPATH__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCPATHAccess().getGroup_0()); }
(rule__DOCPATH__Group_0__0)*
{ after(grammarAccess.getDOCPATHAccess().getGroup_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DOCPATH__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCPATH__Group__1__Impl
	rule__DOCPATH__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCPATH__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCPATHAccess().getIDTerminalRuleCall_1()); }
	RULE_ID
{ after(grammarAccess.getDOCPATHAccess().getIDTerminalRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DOCPATH__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCPATH__Group__2__Impl
	rule__DOCPATH__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCPATH__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCPATHAccess().getFullStopKeyword_2()); }

	FullStop 

{ after(grammarAccess.getDOCPATHAccess().getFullStopKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DOCPATH__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCPATH__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCPATH__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCPATHAccess().getIDTerminalRuleCall_3()); }
	RULE_ID
{ after(grammarAccess.getDOCPATHAccess().getIDTerminalRuleCall_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__DOCPATH__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCPATH__Group_0__0__Impl
	rule__DOCPATH__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCPATH__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCPATHAccess().getIDTerminalRuleCall_0_0()); }
	RULE_ID
{ after(grammarAccess.getDOCPATHAccess().getIDTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DOCPATH__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCPATH__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCPATH__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCPATHAccess().getSolidusKeyword_0_1()); }

	Solidus 

{ after(grammarAccess.getDOCPATHAccess().getSolidusKeyword_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DOCFRAGMENT__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCFRAGMENT__Group__0__Impl
	rule__DOCFRAGMENT__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCFRAGMENT__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCFRAGMENTAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getDOCFRAGMENTAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DOCFRAGMENT__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCFRAGMENT__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCFRAGMENT__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCFRAGMENTAccess().getGroup_1()); }
(rule__DOCFRAGMENT__Group_1__0)*
{ after(grammarAccess.getDOCFRAGMENTAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DOCFRAGMENT__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCFRAGMENT__Group_1__0__Impl
	rule__DOCFRAGMENT__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCFRAGMENT__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCFRAGMENTAccess().getFullStopKeyword_1_0()); }

	FullStop 

{ after(grammarAccess.getDOCFRAGMENTAccess().getFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DOCFRAGMENT__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DOCFRAGMENT__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DOCFRAGMENT__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDOCFRAGMENTAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getDOCFRAGMENTAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Description__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Description__Group__0__Impl
	rule__Description__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionAccess().getDescriptionKeyword_0()); }

	Description 

{ after(grammarAccess.getDescriptionAccess().getDescriptionKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Description__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Description__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getDescriptionAccess().getDescriptionAssignment_1()); }
(rule__Description__DescriptionAssignment_1)
{ after(grammarAccess.getDescriptionAccess().getDescriptionAssignment_1()); }
)
(
{ before(grammarAccess.getDescriptionAccess().getDescriptionAssignment_1()); }
(rule__Description__DescriptionAssignment_1)*
{ after(grammarAccess.getDescriptionAccess().getDescriptionAssignment_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Rationale__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Rationale__Group__0__Impl
	rule__Rationale__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rationale__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRationaleAccess().getRationaleKeyword_0()); }

	Rationale 

{ after(grammarAccess.getRationaleAccess().getRationaleKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Rationale__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Rationale__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rationale__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRationaleAccess().getTextAssignment_1()); }
(rule__Rationale__TextAssignment_1)
{ after(grammarAccess.getRationaleAccess().getTextAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Uncertainty__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group__0__Impl
	rule__Uncertainty__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getUncertaintyKeyword_0()); }

	Uncertainty 

{ after(grammarAccess.getUncertaintyAccess().getUncertaintyKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Uncertainty__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group__1__Impl
	rule__Uncertainty__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getLeftSquareBracketKeyword_1()); }

	LeftSquareBracket 

{ after(grammarAccess.getUncertaintyAccess().getLeftSquareBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Uncertainty__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group__2__Impl
	rule__Uncertainty__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2()); }
(rule__Uncertainty__UnorderedGroup_2)
{ after(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Uncertainty__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getRightSquareBracketKeyword_3()); }

	RightSquareBracket 

{ after(grammarAccess.getUncertaintyAccess().getRightSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__Uncertainty__Group_2_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group_2_0__0__Impl
	rule__Uncertainty__Group_2_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group_2_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getVolatilityKeyword_2_0_0()); }

	Volatility 

{ after(grammarAccess.getUncertaintyAccess().getVolatilityKeyword_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Uncertainty__Group_2_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group_2_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group_2_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getVolatilityAssignment_2_0_1()); }
(rule__Uncertainty__VolatilityAssignment_2_0_1)
{ after(grammarAccess.getUncertaintyAccess().getVolatilityAssignment_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Uncertainty__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group_2_1__0__Impl
	rule__Uncertainty__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getImpactKeyword_2_1_0()); }

	Impact 

{ after(grammarAccess.getUncertaintyAccess().getImpactKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Uncertainty__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getImpactAssignment_2_1_1()); }
(rule__Uncertainty__ImpactAssignment_2_1_1)
{ after(grammarAccess.getUncertaintyAccess().getImpactAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ResultIssue__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group__0__Impl
	rule__ResultIssue__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getIssueTypeAssignment_0()); }
(rule__ResultIssue__IssueTypeAssignment_0)
{ after(grammarAccess.getResultIssueAccess().getIssueTypeAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group__1__Impl
	rule__ResultIssue__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getMessageAssignment_1()); }
(rule__ResultIssue__MessageAssignment_1)
{ after(grammarAccess.getResultIssueAccess().getMessageAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group__2__Impl
	rule__ResultIssue__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getGroup_2()); }
(rule__ResultIssue__Group_2__0)?
{ after(grammarAccess.getResultIssueAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group__3__Impl
	rule__ResultIssue__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getGroup_3()); }
(rule__ResultIssue__Group_3__0)?
{ after(grammarAccess.getResultIssueAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group__4__Impl
	rule__ResultIssue__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getGroup_4()); }
(rule__ResultIssue__Group_4__0)?
{ after(grammarAccess.getResultIssueAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getGroup_5()); }
(rule__ResultIssue__Group_5__0)?
{ after(grammarAccess.getResultIssueAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__ResultIssue__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_2__0__Impl
	rule__ResultIssue__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getTargetKeyword_2_0()); }

	Target 

{ after(grammarAccess.getResultIssueAccess().getTargetKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getTargetAssignment_2_1()); }
(rule__ResultIssue__TargetAssignment_2_1)
{ after(grammarAccess.getResultIssueAccess().getTargetAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ResultIssue__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_3__0__Impl
	rule__ResultIssue__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getExceptionKeyword_3_0()); }

	Exception 

{ after(grammarAccess.getResultIssueAccess().getExceptionKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getExceptionTypeAssignment_3_1()); }
(rule__ResultIssue__ExceptionTypeAssignment_3_1)
{ after(grammarAccess.getResultIssueAccess().getExceptionTypeAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ResultIssue__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_4__0__Impl
	rule__ResultIssue__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getDiagnosticIdKeyword_4_0()); }

	DiagnosticId 

{ after(grammarAccess.getResultIssueAccess().getDiagnosticIdKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getDiagnosticIdAssignment_4_1()); }
(rule__ResultIssue__DiagnosticIdAssignment_4_1)
{ after(grammarAccess.getResultIssueAccess().getDiagnosticIdAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ResultIssue__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_5__0__Impl
	rule__ResultIssue__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getLeftSquareBracketKeyword_5_0()); }

	LeftSquareBracket 

{ after(grammarAccess.getResultIssueAccess().getLeftSquareBracketKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_5__1__Impl
	rule__ResultIssue__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getIssuesAssignment_5_1()); }
(rule__ResultIssue__IssuesAssignment_5_1)*
{ after(grammarAccess.getResultIssueAccess().getIssuesAssignment_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ResultIssue__Group_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ResultIssue__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__Group_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getRightSquareBracketKeyword_5_2()); }

	RightSquareBracket 

{ after(grammarAccess.getResultIssueAccess().getRightSquareBracketKeyword_5_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ValDeclaration__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group__0__Impl
	rule__ValDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getValDeclarationAction_0()); }
(

)
{ after(grammarAccess.getValDeclarationAccess().getValDeclarationAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValDeclaration__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group__1__Impl
	rule__ValDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getValKeyword_1()); }

	Val 

{ after(grammarAccess.getValDeclarationAccess().getValKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValDeclaration__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group__2__Impl
	rule__ValDeclaration__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getAlternatives_2()); }
(rule__ValDeclaration__Alternatives_2)
{ after(grammarAccess.getValDeclarationAccess().getAlternatives_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValDeclaration__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group__3__Impl
	rule__ValDeclaration__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getEqualsSignKeyword_3()); }

	EqualsSign 

{ after(grammarAccess.getValDeclarationAccess().getEqualsSignKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValDeclaration__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getRightAssignment_4()); }
(rule__ValDeclaration__RightAssignment_4)
{ after(grammarAccess.getValDeclarationAccess().getRightAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__ValDeclaration__Group_2_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group_2_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group_2_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getGroup_2_0_0()); }
(rule__ValDeclaration__Group_2_0_0__0)
{ after(grammarAccess.getValDeclarationAccess().getGroup_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__ValDeclaration__Group_2_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group_2_0_0__0__Impl
	rule__ValDeclaration__Group_2_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group_2_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getTypeAssignment_2_0_0_0()); }
(rule__ValDeclaration__TypeAssignment_2_0_0_0)
{ after(grammarAccess.getValDeclarationAccess().getTypeAssignment_2_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ValDeclaration__Group_2_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ValDeclaration__Group_2_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__Group_2_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getNameAssignment_2_0_0_1()); }
(rule__ValDeclaration__NameAssignment_2_0_0_1)
{ after(grammarAccess.getValDeclarationAccess().getNameAssignment_2_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ComputeDeclaration__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComputeDeclaration__Group__0__Impl
	rule__ComputeDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getComputeDeclarationAction_0()); }
(

)
{ after(grammarAccess.getComputeDeclarationAccess().getComputeDeclarationAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComputeDeclaration__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComputeDeclaration__Group__1__Impl
	rule__ComputeDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getComputeKeyword_1()); }

	Compute 

{ after(grammarAccess.getComputeDeclarationAccess().getComputeKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComputeDeclaration__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComputeDeclaration__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getAlternatives_2()); }
(rule__ComputeDeclaration__Alternatives_2)
{ after(grammarAccess.getComputeDeclarationAccess().getAlternatives_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ComputeDeclaration__Group_2_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComputeDeclaration__Group_2_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Group_2_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getGroup_2_0_0()); }
(rule__ComputeDeclaration__Group_2_0_0__0)
{ after(grammarAccess.getComputeDeclarationAccess().getGroup_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__ComputeDeclaration__Group_2_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComputeDeclaration__Group_2_0_0__0__Impl
	rule__ComputeDeclaration__Group_2_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Group_2_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getTypeAssignment_2_0_0_0()); }
(rule__ComputeDeclaration__TypeAssignment_2_0_0_0)
{ after(grammarAccess.getComputeDeclarationAccess().getTypeAssignment_2_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComputeDeclaration__Group_2_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComputeDeclaration__Group_2_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__Group_2_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getNameAssignment_2_0_0_1()); }
(rule__ComputeDeclaration__NameAssignment_2_0_0_1)
{ after(grammarAccess.getComputeDeclarationAccess().getNameAssignment_2_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__APropertyReference__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__APropertyReference__Group__0__Impl
	rule__APropertyReference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__APropertyReference__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAPropertyReferenceAccess().getAPropertyReferenceAction_0()); }
(

)
{ after(grammarAccess.getAPropertyReferenceAccess().getAPropertyReferenceAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__APropertyReference__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__APropertyReference__Group__1__Impl
	rule__APropertyReference__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__APropertyReference__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAPropertyReferenceAccess().getCommercialAtKeyword_1()); }

	CommercialAt 

{ after(grammarAccess.getAPropertyReferenceAccess().getCommercialAtKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__APropertyReference__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__APropertyReference__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__APropertyReference__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAPropertyReferenceAccess().getPropertyAssignment_2()); }
(rule__APropertyReference__PropertyAssignment_2)
{ after(grammarAccess.getAPropertyReferenceAccess().getPropertyAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__AVariableReference__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AVariableReference__Group__0__Impl
	rule__AVariableReference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AVariableReference__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAVariableReferenceAccess().getAVariableReferenceAction_0()); }
(

)
{ after(grammarAccess.getAVariableReferenceAccess().getAVariableReferenceAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AVariableReference__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AVariableReference__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AVariableReference__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAVariableReferenceAccess().getVariableAssignment_1()); }
(rule__AVariableReference__VariableAssignment_1)
{ after(grammarAccess.getAVariableReferenceAccess().getVariableAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ShowValue__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShowValue__Group__0__Impl
	rule__ShowValue__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ShowValue__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShowValueAccess().getRefAssignment_0()); }
(rule__ShowValue__RefAssignment_0)
{ after(grammarAccess.getShowValueAccess().getRefAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ShowValue__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShowValue__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ShowValue__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShowValueAccess().getGroup_1()); }
(rule__ShowValue__Group_1__0)?
{ after(grammarAccess.getShowValueAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ShowValue__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShowValue__Group_1__0__Impl
	rule__ShowValue__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ShowValue__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShowValueAccess().getPercentSignKeyword_1_0()); }

	PercentSign 

{ after(grammarAccess.getShowValueAccess().getPercentSignKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ShowValue__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShowValue__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ShowValue__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShowValueAccess().getUnitAssignment_1_1()); }
(rule__ShowValue__UnitAssignment_1_1)
{ after(grammarAccess.getShowValueAccess().getUnitAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ImageReference__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImageReference__Group__0__Impl
	rule__ImageReference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImageReference__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImageReferenceAccess().getImgKeyword_0()); }

	Img 

{ after(grammarAccess.getImageReferenceAccess().getImgKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImageReference__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImageReference__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImageReference__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImageReferenceAccess().getImgfileAssignment_1()); }
(rule__ImageReference__ImgfileAssignment_1)
{ after(grammarAccess.getImageReferenceAccess().getImgfileAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__IMGREF__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IMGREF__Group__0__Impl
	rule__IMGREF__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IMGREF__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIMGREFAccess().getGroup_0()); }
(rule__IMGREF__Group_0__0)*
{ after(grammarAccess.getIMGREFAccess().getGroup_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IMGREF__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IMGREF__Group__1__Impl
	rule__IMGREF__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__IMGREF__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIMGREFAccess().getIDTerminalRuleCall_1()); }
	RULE_ID
{ after(grammarAccess.getIMGREFAccess().getIDTerminalRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IMGREF__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IMGREF__Group__2__Impl
	rule__IMGREF__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__IMGREF__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIMGREFAccess().getFullStopKeyword_2()); }

	FullStop 

{ after(grammarAccess.getIMGREFAccess().getFullStopKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IMGREF__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IMGREF__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IMGREF__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIMGREFAccess().getIDTerminalRuleCall_3()); }
	RULE_ID
{ after(grammarAccess.getIMGREFAccess().getIDTerminalRuleCall_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__IMGREF__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IMGREF__Group_0__0__Impl
	rule__IMGREF__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IMGREF__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIMGREFAccess().getIDTerminalRuleCall_0_0()); }
	RULE_ID
{ after(grammarAccess.getIMGREFAccess().getIDTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IMGREF__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IMGREF__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IMGREF__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIMGREFAccess().getSolidusKeyword_0_1()); }

	Solidus 

{ after(grammarAccess.getIMGREFAccess().getSolidusKeyword_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AOrExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group__0__Impl
	rule__AOrExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getAAndExpressionParserRuleCall_0()); }
	ruleAAndExpression
{ after(grammarAccess.getAOrExpressionAccess().getAAndExpressionParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AOrExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getGroup_1()); }
(rule__AOrExpression__Group_1__0)*
{ after(grammarAccess.getAOrExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AOrExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group_1__0__Impl
	rule__AOrExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getGroup_1_0()); }
(rule__AOrExpression__Group_1_0__0)
{ after(grammarAccess.getAOrExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AOrExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__AOrExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getAOrExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AOrExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getGroup_1_0_0()); }
(rule__AOrExpression__Group_1_0_0__0)
{ after(grammarAccess.getAOrExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__AOrExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group_1_0_0__0__Impl
	rule__AOrExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getAOrExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AOrExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOrExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__AOrExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getAOrExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AAndExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group__0__Impl
	rule__AAndExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getAEqualityExpressionParserRuleCall_0()); }
	ruleAEqualityExpression
{ after(grammarAccess.getAAndExpressionAccess().getAEqualityExpressionParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AAndExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getGroup_1()); }
(rule__AAndExpression__Group_1__0)*
{ after(grammarAccess.getAAndExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AAndExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group_1__0__Impl
	rule__AAndExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getGroup_1_0()); }
(rule__AAndExpression__Group_1_0__0)
{ after(grammarAccess.getAAndExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AAndExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__AAndExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getAAndExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AAndExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getGroup_1_0_0()); }
(rule__AAndExpression__Group_1_0_0__0)
{ after(grammarAccess.getAAndExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__AAndExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group_1_0_0__0__Impl
	rule__AAndExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getAAndExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AAndExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAndExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__AAndExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getAAndExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AEqualityExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group__0__Impl
	rule__AEqualityExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getARelationalExpressionParserRuleCall_0()); }
	ruleARelationalExpression
{ after(grammarAccess.getAEqualityExpressionAccess().getARelationalExpressionParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AEqualityExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getGroup_1()); }
(rule__AEqualityExpression__Group_1__0)*
{ after(grammarAccess.getAEqualityExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AEqualityExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group_1__0__Impl
	rule__AEqualityExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getGroup_1_0()); }
(rule__AEqualityExpression__Group_1_0__0)
{ after(grammarAccess.getAEqualityExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AEqualityExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__AEqualityExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getAEqualityExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AEqualityExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getGroup_1_0_0()); }
(rule__AEqualityExpression__Group_1_0_0__0)
{ after(grammarAccess.getAEqualityExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__AEqualityExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group_1_0_0__0__Impl
	rule__AEqualityExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getAEqualityExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AEqualityExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AEqualityExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__AEqualityExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getAEqualityExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ARelationalExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group__0__Impl
	rule__ARelationalExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getAOtherOperatorExpressionParserRuleCall_0()); }
	ruleAOtherOperatorExpression
{ after(grammarAccess.getARelationalExpressionAccess().getAOtherOperatorExpressionParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ARelationalExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getGroup_1()); }
(rule__ARelationalExpression__Group_1__0)*
{ after(grammarAccess.getARelationalExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ARelationalExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group_1__0__Impl
	rule__ARelationalExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getGroup_1_0()); }
(rule__ARelationalExpression__Group_1_0__0)
{ after(grammarAccess.getARelationalExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ARelationalExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__ARelationalExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getARelationalExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ARelationalExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getGroup_1_0_0()); }
(rule__ARelationalExpression__Group_1_0_0__0)
{ after(grammarAccess.getARelationalExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__ARelationalExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group_1_0_0__0__Impl
	rule__ARelationalExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getARelationalExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ARelationalExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARelationalExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__ARelationalExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getARelationalExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OpCompare__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpCompare__Group_1__0__Impl
	rule__OpCompare__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OpCompare__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpCompareAccess().getLessThanSignKeyword_1_0()); }

	LessThanSign 

{ after(grammarAccess.getOpCompareAccess().getLessThanSignKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OpCompare__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpCompare__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpCompare__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpCompareAccess().getEqualsSignKeyword_1_1()); }

	EqualsSign 

{ after(grammarAccess.getOpCompareAccess().getEqualsSignKeyword_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AOtherOperatorExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group__0__Impl
	rule__AOtherOperatorExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getAAdditiveExpressionParserRuleCall_0()); }
	ruleAAdditiveExpression
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getAAdditiveExpressionParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AOtherOperatorExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getGroup_1()); }
(rule__AOtherOperatorExpression__Group_1__0)*
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AOtherOperatorExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group_1__0__Impl
	rule__AOtherOperatorExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getGroup_1_0()); }
(rule__AOtherOperatorExpression__Group_1_0__0)
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AOtherOperatorExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__AOtherOperatorExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AOtherOperatorExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getGroup_1_0_0()); }
(rule__AOtherOperatorExpression__Group_1_0_0__0)
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__AOtherOperatorExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group_1_0_0__0__Impl
	rule__AOtherOperatorExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AOtherOperatorExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AOtherOperatorExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__AOtherOperatorExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getAOtherOperatorExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OpOther__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_2__0__Impl
	rule__OpOther__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_2_0()); }

	GreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OpOther__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getFullStopFullStopKeyword_2_1()); }

	FullStopFullStop 

{ after(grammarAccess.getOpOtherAccess().getFullStopFullStopKeyword_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OpOther__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_5__0__Impl
	rule__OpOther__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_0()); }

	GreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OpOther__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getAlternatives_5_1()); }
(rule__OpOther__Alternatives_5_1)
{ after(grammarAccess.getOpOtherAccess().getAlternatives_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OpOther__Group_5_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_5_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_5_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGroup_5_1_0_0()); }
(rule__OpOther__Group_5_1_0_0__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_5_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__OpOther__Group_5_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_5_1_0_0__0__Impl
	rule__OpOther__Group_5_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_5_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_1_0_0_0()); }

	GreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OpOther__Group_5_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_5_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_5_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_1_0_0_1()); }

	GreaterThanSign 

{ after(grammarAccess.getOpOtherAccess().getGreaterThanSignKeyword_5_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OpOther__Group_6__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_6__0__Impl
	rule__OpOther__Group_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_6__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_0()); }

	LessThanSign 

{ after(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OpOther__Group_6__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_6__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getAlternatives_6_1()); }
(rule__OpOther__Alternatives_6_1)
{ after(grammarAccess.getOpOtherAccess().getAlternatives_6_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OpOther__Group_6_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_6_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_6_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getGroup_6_1_0_0()); }
(rule__OpOther__Group_6_1_0_0__0)
{ after(grammarAccess.getOpOtherAccess().getGroup_6_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__OpOther__Group_6_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_6_1_0_0__0__Impl
	rule__OpOther__Group_6_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_6_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_1_0_0_0()); }

	LessThanSign 

{ after(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OpOther__Group_6_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OpOther__Group_6_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OpOther__Group_6_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_1_0_0_1()); }

	LessThanSign 

{ after(grammarAccess.getOpOtherAccess().getLessThanSignKeyword_6_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AAdditiveExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group__0__Impl
	rule__AAdditiveExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getAMultiplicativeExpressionParserRuleCall_0()); }
	ruleAMultiplicativeExpression
{ after(grammarAccess.getAAdditiveExpressionAccess().getAMultiplicativeExpressionParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AAdditiveExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getGroup_1()); }
(rule__AAdditiveExpression__Group_1__0)*
{ after(grammarAccess.getAAdditiveExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AAdditiveExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group_1__0__Impl
	rule__AAdditiveExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getGroup_1_0()); }
(rule__AAdditiveExpression__Group_1_0__0)
{ after(grammarAccess.getAAdditiveExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AAdditiveExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__AAdditiveExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getAAdditiveExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AAdditiveExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getGroup_1_0_0()); }
(rule__AAdditiveExpression__Group_1_0_0__0)
{ after(grammarAccess.getAAdditiveExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__AAdditiveExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group_1_0_0__0__Impl
	rule__AAdditiveExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getAAdditiveExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AAdditiveExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AAdditiveExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__AAdditiveExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getAAdditiveExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AMultiplicativeExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group__0__Impl
	rule__AMultiplicativeExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getAUnaryOperationParserRuleCall_0()); }
	ruleAUnaryOperation
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getAUnaryOperationParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AMultiplicativeExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getGroup_1()); }
(rule__AMultiplicativeExpression__Group_1__0)*
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AMultiplicativeExpression__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group_1__0__Impl
	rule__AMultiplicativeExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getGroup_1_0()); }
(rule__AMultiplicativeExpression__Group_1_0__0)
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getGroup_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AMultiplicativeExpression__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getRightOperandAssignment_1_1()); }
(rule__AMultiplicativeExpression__RightOperandAssignment_1_1)
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getRightOperandAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AMultiplicativeExpression__Group_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group_1_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getGroup_1_0_0()); }
(rule__AMultiplicativeExpression__Group_1_0_0__0)
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getGroup_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__AMultiplicativeExpression__Group_1_0_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group_1_0_0__0__Impl
	rule__AMultiplicativeExpression__Group_1_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group_1_0_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
(

)
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getABinaryOperationLeftOperandAction_1_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AMultiplicativeExpression__Group_1_0_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AMultiplicativeExpression__Group_1_0_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__Group_1_0_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getFeatureAssignment_1_0_0_1()); }
(rule__AMultiplicativeExpression__FeatureAssignment_1_0_0_1)
{ after(grammarAccess.getAMultiplicativeExpressionAccess().getFeatureAssignment_1_0_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AUnaryOperation__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AUnaryOperation__Group_0__0__Impl
	rule__AUnaryOperation__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AUnaryOperation__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAUnaryOperationAccess().getAUnaryOperationAction_0_0()); }
(

)
{ after(grammarAccess.getAUnaryOperationAccess().getAUnaryOperationAction_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AUnaryOperation__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AUnaryOperation__Group_0__1__Impl
	rule__AUnaryOperation__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AUnaryOperation__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAUnaryOperationAccess().getFeatureAssignment_0_1()); }
(rule__AUnaryOperation__FeatureAssignment_0_1)
{ after(grammarAccess.getAUnaryOperationAccess().getFeatureAssignment_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AUnaryOperation__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AUnaryOperation__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AUnaryOperation__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAUnaryOperationAccess().getOperandAssignment_0_2()); }
(rule__AUnaryOperation__OperandAssignment_0_2)
{ after(grammarAccess.getAUnaryOperationAccess().getOperandAssignment_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__AFunctionCall__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group__0__Impl
	rule__AFunctionCall__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getAFunctionCallAction_0()); }
(

)
{ after(grammarAccess.getAFunctionCallAccess().getAFunctionCallAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AFunctionCall__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group__1__Impl
	rule__AFunctionCall__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getFunctionAssignment_1()); }
(rule__AFunctionCall__FunctionAssignment_1)
{ after(grammarAccess.getAFunctionCallAccess().getFunctionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AFunctionCall__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group__2__Impl
	rule__AFunctionCall__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getLeftParenthesisKeyword_2()); }

	LeftParenthesis 

{ after(grammarAccess.getAFunctionCallAccess().getLeftParenthesisKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AFunctionCall__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group__3__Impl
	rule__AFunctionCall__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAssignment_3()); }
(rule__AFunctionCall__FunctionCallArgumentsAssignment_3)
{ after(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AFunctionCall__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group__4__Impl
	rule__AFunctionCall__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getGroup_4()); }
(rule__AFunctionCall__Group_4__0)*
{ after(grammarAccess.getAFunctionCallAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AFunctionCall__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getRightParenthesisKeyword_5()); }

	RightParenthesis 

{ after(grammarAccess.getAFunctionCallAccess().getRightParenthesisKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__AFunctionCall__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group_4__0__Impl
	rule__AFunctionCall__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getCommaKeyword_4_0()); }

	Comma 

{ after(grammarAccess.getAFunctionCallAccess().getCommaKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AFunctionCall__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AFunctionCall__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAssignment_4_1()); }
(rule__AFunctionCall__FunctionCallArgumentsAssignment_4_1)
{ after(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AThis__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AThis__Group__0__Impl
	rule__AThis__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AThis__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAThisAccess().getAThisAction_0()); }
(

)
{ after(grammarAccess.getAThisAccess().getAThisAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AThis__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AThis__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AThis__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAThisAccess().getThisKeyword_1()); }

	This 

{ after(grammarAccess.getAThisAccess().getThisKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AIntegerTerm__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AIntegerTerm__Group__0__Impl
	rule__AIntegerTerm__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AIntegerTerm__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAIntegerTermAccess().getValueAssignment_0()); }
(rule__AIntegerTerm__ValueAssignment_0)
{ after(grammarAccess.getAIntegerTermAccess().getValueAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AIntegerTerm__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AIntegerTerm__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AIntegerTerm__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAIntegerTermAccess().getUnitAssignment_1()); }
(rule__AIntegerTerm__UnitAssignment_1)?
{ after(grammarAccess.getAIntegerTermAccess().getUnitAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ARealTerm__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARealTerm__Group__0__Impl
	rule__ARealTerm__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ARealTerm__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARealTermAccess().getValueAssignment_0()); }
(rule__ARealTerm__ValueAssignment_0)
{ after(grammarAccess.getARealTermAccess().getValueAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ARealTerm__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ARealTerm__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ARealTerm__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARealTermAccess().getUnitAssignment_1()); }
(rule__ARealTerm__UnitAssignment_1)?
{ after(grammarAccess.getARealTermAccess().getUnitAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ASetTerm__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group__0__Impl
	rule__ASetTerm__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getASetLiteralAction_0()); }
(

)
{ after(grammarAccess.getASetTermAccess().getASetLiteralAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ASetTerm__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group__1__Impl
	rule__ASetTerm__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getLeftCurlyBracketKeyword_1()); }

	LeftCurlyBracket 

{ after(grammarAccess.getASetTermAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ASetTerm__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group__2__Impl
	rule__ASetTerm__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getGroup_2()); }
(rule__ASetTerm__Group_2__0)?
{ after(grammarAccess.getASetTermAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ASetTerm__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getRightCurlyBracketKeyword_3()); }

	RightCurlyBracket 

{ after(grammarAccess.getASetTermAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__ASetTerm__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group_2__0__Impl
	rule__ASetTerm__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getElementsAssignment_2_0()); }
(rule__ASetTerm__ElementsAssignment_2_0)
{ after(grammarAccess.getASetTermAccess().getElementsAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ASetTerm__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getGroup_2_1()); }
(rule__ASetTerm__Group_2_1__0)*
{ after(grammarAccess.getASetTermAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ASetTerm__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group_2_1__0__Impl
	rule__ASetTerm__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getCommaKeyword_2_1_0()); }

	Comma 

{ after(grammarAccess.getASetTermAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ASetTerm__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ASetTerm__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getElementsAssignment_2_1_1()); }
(rule__ASetTerm__ElementsAssignment_2_1_1)
{ after(grammarAccess.getASetTermAccess().getElementsAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AListTerm__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group__0__Impl
	rule__AListTerm__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getAListTermAction_0()); }
(

)
{ after(grammarAccess.getAListTermAccess().getAListTermAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AListTerm__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group__1__Impl
	rule__AListTerm__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getNumberSignKeyword_1()); }

	NumberSign 

{ after(grammarAccess.getAListTermAccess().getNumberSignKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AListTerm__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group__2__Impl
	rule__AListTerm__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getLeftSquareBracketKeyword_2()); }

	LeftSquareBracket 

{ after(grammarAccess.getAListTermAccess().getLeftSquareBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AListTerm__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group__3__Impl
	rule__AListTerm__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getGroup_3()); }
(rule__AListTerm__Group_3__0)?
{ after(grammarAccess.getAListTermAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AListTerm__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getRightSquareBracketKeyword_4()); }

	RightSquareBracket 

{ after(grammarAccess.getAListTermAccess().getRightSquareBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__AListTerm__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group_3__0__Impl
	rule__AListTerm__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getElementsAssignment_3_0()); }
(rule__AListTerm__ElementsAssignment_3_0)
{ after(grammarAccess.getAListTermAccess().getElementsAssignment_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AListTerm__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getGroup_3_1()); }
(rule__AListTerm__Group_3_1__0)*
{ after(grammarAccess.getAListTermAccess().getGroup_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AListTerm__Group_3_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group_3_1__0__Impl
	rule__AListTerm__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group_3_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getCommaKeyword_3_1_0()); }

	Comma 

{ after(grammarAccess.getAListTermAccess().getCommaKeyword_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AListTerm__Group_3_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AListTerm__Group_3_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__Group_3_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getElementsAssignment_3_1_1()); }
(rule__AListTerm__ElementsAssignment_3_1_1)
{ after(grammarAccess.getAListTermAccess().getElementsAssignment_3_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AParenthesizedExpression__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AParenthesizedExpression__Group__0__Impl
	rule__AParenthesizedExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AParenthesizedExpression__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAParenthesizedExpressionAccess().getLeftParenthesisKeyword_0()); }

	LeftParenthesis 

{ after(grammarAccess.getAParenthesizedExpressionAccess().getLeftParenthesisKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AParenthesizedExpression__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AParenthesizedExpression__Group__1__Impl
	rule__AParenthesizedExpression__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AParenthesizedExpression__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAParenthesizedExpressionAccess().getAExpressionParserRuleCall_1()); }
	ruleAExpression
{ after(grammarAccess.getAParenthesizedExpressionAccess().getAExpressionParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AParenthesizedExpression__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AParenthesizedExpression__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AParenthesizedExpression__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAParenthesizedExpressionAccess().getRightParenthesisKeyword_2()); }

	RightParenthesis 

{ after(grammarAccess.getAParenthesizedExpressionAccess().getRightParenthesisKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ABooleanLiteral__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ABooleanLiteral__Group__0__Impl
	rule__ABooleanLiteral__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ABooleanLiteral__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getABooleanLiteralAccess().getBooleanLiteralAction_0()); }
(

)
{ after(grammarAccess.getABooleanLiteralAccess().getBooleanLiteralAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ABooleanLiteral__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ABooleanLiteral__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ABooleanLiteral__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getABooleanLiteralAccess().getAlternatives_1()); }
(rule__ABooleanLiteral__Alternatives_1)
{ after(grammarAccess.getABooleanLiteralAccess().getAlternatives_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ANullLiteral__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ANullLiteral__Group__0__Impl
	rule__ANullLiteral__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ANullLiteral__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getANullLiteralAccess().getANullLiteralAction_0()); }
(

)
{ after(grammarAccess.getANullLiteralAccess().getANullLiteralAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ANullLiteral__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ANullLiteral__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ANullLiteral__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getANullLiteralAccess().getNullKeyword_1()); }

	Null 

{ after(grammarAccess.getANullLiteralAccess().getNullKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ComponentCategory__Group_8__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_8__0__Impl
	rule__ComponentCategory__Group_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_8__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getSubprogramKeyword_8_0()); }

	Subprogram 

{ after(grammarAccess.getComponentCategoryAccess().getSubprogramKeyword_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComponentCategory__Group_8__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_8__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_8__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getGroupKeyword_8_1()); }

	Group 

{ after(grammarAccess.getComponentCategoryAccess().getGroupKeyword_8_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ComponentCategory__Group_10__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_10__0__Impl
	rule__ComponentCategory__Group_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_10__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getThreadKeyword_10_0()); }

	Thread 

{ after(grammarAccess.getComponentCategoryAccess().getThreadKeyword_10_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComponentCategory__Group_10__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_10__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getGroupKeyword_10_1()); }

	Group 

{ after(grammarAccess.getComponentCategoryAccess().getGroupKeyword_10_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ComponentCategory__Group_12__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_12__0__Impl
	rule__ComponentCategory__Group_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_12__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getVirtualKeyword_12_0()); }

	Virtual 

{ after(grammarAccess.getComponentCategoryAccess().getVirtualKeyword_12_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComponentCategory__Group_12__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_12__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_12__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getBusKeyword_12_1()); }

	Bus 

{ after(grammarAccess.getComponentCategoryAccess().getBusKeyword_12_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ComponentCategory__Group_13__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_13__0__Impl
	rule__ComponentCategory__Group_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_13__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getVirtualKeyword_13_0()); }

	Virtual 

{ after(grammarAccess.getComponentCategoryAccess().getVirtualKeyword_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ComponentCategory__Group_13__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ComponentCategory__Group_13__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ComponentCategory__Group_13__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComponentCategoryAccess().getProcessorKeyword_13_1()); }

	Processor 

{ after(grammarAccess.getComponentCategoryAccess().getProcessorKeyword_13_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AadlClassifierReference__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group__0__Impl
	rule__AadlClassifierReference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getAadlClassifierReferenceAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AadlClassifierReference__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group__1__Impl
	rule__AadlClassifierReference__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getGroup_1()); }
(rule__AadlClassifierReference__Group_1__0)
{ after(grammarAccess.getAadlClassifierReferenceAccess().getGroup_1()); }
)
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getGroup_1()); }
(rule__AadlClassifierReference__Group_1__0)*
{ after(grammarAccess.getAadlClassifierReferenceAccess().getGroup_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AadlClassifierReference__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getGroup_2()); }
(rule__AadlClassifierReference__Group_2__0)?
{ after(grammarAccess.getAadlClassifierReferenceAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__AadlClassifierReference__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group_1__0__Impl
	rule__AadlClassifierReference__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getColonColonKeyword_1_0()); }

	ColonColon 

{ after(grammarAccess.getAadlClassifierReferenceAccess().getColonColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AadlClassifierReference__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getAadlClassifierReferenceAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AadlClassifierReference__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group_2__0__Impl
	rule__AadlClassifierReference__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getFullStopKeyword_2_0()); }

	FullStop 

{ after(grammarAccess.getAadlClassifierReferenceAccess().getFullStopKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AadlClassifierReference__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AadlClassifierReference__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AadlClassifierReference__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAadlClassifierReferenceAccess().getIDTerminalRuleCall_2_1()); }
	RULE_ID
{ after(grammarAccess.getAadlClassifierReferenceAccess().getIDTerminalRuleCall_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AADLPROPERTYREFERENCE__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AADLPROPERTYREFERENCE__Group__0__Impl
	rule__AADLPROPERTYREFERENCE__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AADLPROPERTYREFERENCE__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAADLPROPERTYREFERENCEAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getAADLPROPERTYREFERENCEAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AADLPROPERTYREFERENCE__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AADLPROPERTYREFERENCE__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AADLPROPERTYREFERENCE__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAADLPROPERTYREFERENCEAccess().getGroup_1()); }
(rule__AADLPROPERTYREFERENCE__Group_1__0)?
{ after(grammarAccess.getAADLPROPERTYREFERENCEAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__AADLPROPERTYREFERENCE__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AADLPROPERTYREFERENCE__Group_1__0__Impl
	rule__AADLPROPERTYREFERENCE__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AADLPROPERTYREFERENCE__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAADLPROPERTYREFERENCEAccess().getColonColonKeyword_1_0()); }

	ColonColon 

{ after(grammarAccess.getAADLPROPERTYREFERENCEAccess().getColonColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AADLPROPERTYREFERENCE__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AADLPROPERTYREFERENCE__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AADLPROPERTYREFERENCE__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAADLPROPERTYREFERENCEAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getAADLPROPERTYREFERENCEAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedName__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group__0__Impl
	rule__QualifiedName__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
(rule__QualifiedName__Group_1__0)*
{ after(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedName__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group_1__0__Impl
	rule__QualifiedName__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }

	FullStop 

{ after(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__StakeholderGoals__UnorderedGroup_7
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
    }
:
	rule__StakeholderGoals__UnorderedGroup_7__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__UnorderedGroup_7__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getStakeholderGoalsAccess().getDescriptionAssignment_7_0()); }
						(rule__StakeholderGoals__DescriptionAssignment_7_0)
						{ after(grammarAccess.getStakeholderGoalsAccess().getDescriptionAssignment_7_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getStakeholderGoalsAccess().getConstantsAssignment_7_1()); }
						(rule__StakeholderGoals__ConstantsAssignment_7_1)
						{ after(grammarAccess.getStakeholderGoalsAccess().getConstantsAssignment_7_1()); }
					)
					(
						{ before(grammarAccess.getStakeholderGoalsAccess().getConstantsAssignment_7_1()); }
						((rule__StakeholderGoals__ConstantsAssignment_7_1)=>rule__StakeholderGoals__ConstantsAssignment_7_1)*
						{ after(grammarAccess.getStakeholderGoalsAccess().getConstantsAssignment_7_1()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getStakeholderGoalsAccess().getContentAssignment_7_2()); }
						(rule__StakeholderGoals__ContentAssignment_7_2)
						{ after(grammarAccess.getStakeholderGoalsAccess().getContentAssignment_7_2()); }
					)
					(
						{ before(grammarAccess.getStakeholderGoalsAccess().getContentAssignment_7_2()); }
						((rule__StakeholderGoals__ContentAssignment_7_2)=>rule__StakeholderGoals__ContentAssignment_7_2)*
						{ after(grammarAccess.getStakeholderGoalsAccess().getContentAssignment_7_2()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getStakeholderGoalsAccess().getGroup_7_3()); }
						(rule__StakeholderGoals__Group_7_3__0)
						{ after(grammarAccess.getStakeholderGoalsAccess().getGroup_7_3()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getStakeholderGoalsAccess().getGroup_7_4()); }
						(rule__StakeholderGoals__Group_7_4__0)
						{ after(grammarAccess.getStakeholderGoalsAccess().getGroup_7_4()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getStakeholderGoalsAccess().getUnorderedGroup_7());
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__UnorderedGroup_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__UnorderedGroup_7__Impl
	rule__StakeholderGoals__UnorderedGroup_7__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__UnorderedGroup_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__UnorderedGroup_7__Impl
	rule__StakeholderGoals__UnorderedGroup_7__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__UnorderedGroup_7__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__UnorderedGroup_7__Impl
	rule__StakeholderGoals__UnorderedGroup_7__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__UnorderedGroup_7__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__UnorderedGroup_7__Impl
	rule__StakeholderGoals__UnorderedGroup_7__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__StakeholderGoals__UnorderedGroup_7__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StakeholderGoals__UnorderedGroup_7__Impl
;
finally {
	restoreStackSize(stackSize);
}












rule__ReqDocument__UnorderedGroup_4
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
    }
:
	rule__ReqDocument__UnorderedGroup_4__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
	restoreStackSize(stackSize);
}


rule__ReqDocument__UnorderedGroup_4__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getReqDocumentAccess().getDescriptionAssignment_4_0()); }
						(rule__ReqDocument__DescriptionAssignment_4_0)
						{ after(grammarAccess.getReqDocumentAccess().getDescriptionAssignment_4_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getReqDocumentAccess().getContentAssignment_4_1()); }
						(rule__ReqDocument__ContentAssignment_4_1)
						{ after(grammarAccess.getReqDocumentAccess().getContentAssignment_4_1()); }
					)
					(
						{ before(grammarAccess.getReqDocumentAccess().getContentAssignment_4_1()); }
						((rule__ReqDocument__ContentAssignment_4_1)=>rule__ReqDocument__ContentAssignment_4_1)*
						{ after(grammarAccess.getReqDocumentAccess().getContentAssignment_4_1()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getReqDocumentAccess().getGroup_4_2()); }
						(rule__ReqDocument__Group_4_2__0)
						{ after(grammarAccess.getReqDocumentAccess().getGroup_4_2()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getReqDocumentAccess().getGroup_4_3()); }
						(rule__ReqDocument__Group_4_3__0)
						{ after(grammarAccess.getReqDocumentAccess().getGroup_4_3()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReqDocumentAccess().getUnorderedGroup_4());
	restoreStackSize(stackSize);
}


rule__ReqDocument__UnorderedGroup_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__UnorderedGroup_4__Impl
	rule__ReqDocument__UnorderedGroup_4__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__UnorderedGroup_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__UnorderedGroup_4__Impl
	rule__ReqDocument__UnorderedGroup_4__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__UnorderedGroup_4__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__UnorderedGroup_4__Impl
	rule__ReqDocument__UnorderedGroup_4__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__ReqDocument__UnorderedGroup_4__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ReqDocument__UnorderedGroup_4__Impl
;
finally {
	restoreStackSize(stackSize);
}










rule__DocumentSection__UnorderedGroup_4
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4());
    }
:
	rule__DocumentSection__UnorderedGroup_4__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4());
	restoreStackSize(stackSize);
}


rule__DocumentSection__UnorderedGroup_4__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocumentSectionAccess().getDescriptionAssignment_4_0()); }
						(rule__DocumentSection__DescriptionAssignment_4_0)
						{ after(grammarAccess.getDocumentSectionAccess().getDescriptionAssignment_4_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getDocumentSectionAccess().getContentAssignment_4_1()); }
						(rule__DocumentSection__ContentAssignment_4_1)
						{ after(grammarAccess.getDocumentSectionAccess().getContentAssignment_4_1()); }
					)
					(
						{ before(grammarAccess.getDocumentSectionAccess().getContentAssignment_4_1()); }
						((rule__DocumentSection__ContentAssignment_4_1)=>rule__DocumentSection__ContentAssignment_4_1)*
						{ after(grammarAccess.getDocumentSectionAccess().getContentAssignment_4_1()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocumentSectionAccess().getUnorderedGroup_4());
	restoreStackSize(stackSize);
}


rule__DocumentSection__UnorderedGroup_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__UnorderedGroup_4__Impl
	rule__DocumentSection__UnorderedGroup_4__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocumentSection__UnorderedGroup_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocumentSection__UnorderedGroup_4__Impl
;
finally {
	restoreStackSize(stackSize);
}






rule__SystemRequirements__UnorderedGroup_9
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
    }
:
	rule__SystemRequirements__UnorderedGroup_9__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementsAccess().getDescriptionAssignment_9_0()); }
						(rule__SystemRequirements__DescriptionAssignment_9_0)
						{ after(grammarAccess.getSystemRequirementsAccess().getDescriptionAssignment_9_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getConstantsAssignment_9_1()); }
						(rule__SystemRequirements__ConstantsAssignment_9_1)
						{ after(grammarAccess.getSystemRequirementsAccess().getConstantsAssignment_9_1()); }
					)
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getConstantsAssignment_9_1()); }
						((rule__SystemRequirements__ConstantsAssignment_9_1)=>rule__SystemRequirements__ConstantsAssignment_9_1)*
						{ after(grammarAccess.getSystemRequirementsAccess().getConstantsAssignment_9_1()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getComputesAssignment_9_2()); }
						(rule__SystemRequirements__ComputesAssignment_9_2)
						{ after(grammarAccess.getSystemRequirementsAccess().getComputesAssignment_9_2()); }
					)
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getComputesAssignment_9_2()); }
						((rule__SystemRequirements__ComputesAssignment_9_2)=>rule__SystemRequirements__ComputesAssignment_9_2)*
						{ after(grammarAccess.getSystemRequirementsAccess().getComputesAssignment_9_2()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getContentAssignment_9_3()); }
						(rule__SystemRequirements__ContentAssignment_9_3)
						{ after(grammarAccess.getSystemRequirementsAccess().getContentAssignment_9_3()); }
					)
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getContentAssignment_9_3()); }
						((rule__SystemRequirements__ContentAssignment_9_3)=>rule__SystemRequirements__ContentAssignment_9_3)*
						{ after(grammarAccess.getSystemRequirementsAccess().getContentAssignment_9_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getIncludeAssignment_9_4()); }
						(rule__SystemRequirements__IncludeAssignment_9_4)
						{ after(grammarAccess.getSystemRequirementsAccess().getIncludeAssignment_9_4()); }
					)
					(
						{ before(grammarAccess.getSystemRequirementsAccess().getIncludeAssignment_9_4()); }
						((rule__SystemRequirements__IncludeAssignment_9_4)=>rule__SystemRequirements__IncludeAssignment_9_4)*
						{ after(grammarAccess.getSystemRequirementsAccess().getIncludeAssignment_9_4()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementsAccess().getGroup_9_5()); }
						(rule__SystemRequirements__Group_9_5__0)
						{ after(grammarAccess.getSystemRequirementsAccess().getGroup_9_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementsAccess().getGroup_9_6()); }
						(rule__SystemRequirements__Group_9_6__0)
						{ after(grammarAccess.getSystemRequirementsAccess().getGroup_9_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 7)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9(), 7);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementsAccess().getGroup_9_7()); }
						(rule__SystemRequirements__Group_9_7__0)
						{ after(grammarAccess.getSystemRequirementsAccess().getGroup_9_7()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementsAccess().getUnorderedGroup_9());
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
	rule__SystemRequirements__UnorderedGroup_9__7?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirements__UnorderedGroup_9__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirements__UnorderedGroup_9__Impl
;
finally {
	restoreStackSize(stackSize);
}


















rule__GlobalRequirements__UnorderedGroup_7
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementsAccess().getDescriptionAssignment_7_0()); }
						(rule__GlobalRequirements__DescriptionAssignment_7_0)
						{ after(grammarAccess.getGlobalRequirementsAccess().getDescriptionAssignment_7_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getGlobalRequirementsAccess().getConstantsAssignment_7_1()); }
						(rule__GlobalRequirements__ConstantsAssignment_7_1)
						{ after(grammarAccess.getGlobalRequirementsAccess().getConstantsAssignment_7_1()); }
					)
					(
						{ before(grammarAccess.getGlobalRequirementsAccess().getConstantsAssignment_7_1()); }
						((rule__GlobalRequirements__ConstantsAssignment_7_1)=>rule__GlobalRequirements__ConstantsAssignment_7_1)*
						{ after(grammarAccess.getGlobalRequirementsAccess().getConstantsAssignment_7_1()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getGlobalRequirementsAccess().getComputesAssignment_7_2()); }
						(rule__GlobalRequirements__ComputesAssignment_7_2)
						{ after(grammarAccess.getGlobalRequirementsAccess().getComputesAssignment_7_2()); }
					)
					(
						{ before(grammarAccess.getGlobalRequirementsAccess().getComputesAssignment_7_2()); }
						((rule__GlobalRequirements__ComputesAssignment_7_2)=>rule__GlobalRequirements__ComputesAssignment_7_2)*
						{ after(grammarAccess.getGlobalRequirementsAccess().getComputesAssignment_7_2()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getGlobalRequirementsAccess().getContentAssignment_7_3()); }
						(rule__GlobalRequirements__ContentAssignment_7_3)
						{ after(grammarAccess.getGlobalRequirementsAccess().getContentAssignment_7_3()); }
					)
					(
						{ before(grammarAccess.getGlobalRequirementsAccess().getContentAssignment_7_3()); }
						((rule__GlobalRequirements__ContentAssignment_7_3)=>rule__GlobalRequirements__ContentAssignment_7_3)*
						{ after(grammarAccess.getGlobalRequirementsAccess().getContentAssignment_7_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementsAccess().getGroup_7_4()); }
						(rule__GlobalRequirements__Group_7_4__0)
						{ after(grammarAccess.getGlobalRequirementsAccess().getGroup_7_4()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementsAccess().getGroup_7_5()); }
						(rule__GlobalRequirements__Group_7_5__0)
						{ after(grammarAccess.getGlobalRequirementsAccess().getGroup_7_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementsAccess().getGroup_7_6()); }
						(rule__GlobalRequirements__Group_7_6__0)
						{ after(grammarAccess.getGlobalRequirementsAccess().getGroup_7_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementsAccess().getUnorderedGroup_7());
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
	rule__GlobalRequirements__UnorderedGroup_7__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
	rule__GlobalRequirements__UnorderedGroup_7__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
	rule__GlobalRequirements__UnorderedGroup_7__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
	rule__GlobalRequirements__UnorderedGroup_7__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
	rule__GlobalRequirements__UnorderedGroup_7__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
	rule__GlobalRequirements__UnorderedGroup_7__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirements__UnorderedGroup_7__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirements__UnorderedGroup_7__Impl
;
finally {
	restoreStackSize(stackSize);
}
















rule__DocGoal__UnorderedGroup_5
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
    }
:
	rule__DocGoal__UnorderedGroup_5__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_0()); }
						(rule__DocGoal__Group_5_0__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_1()); }
						(rule__DocGoal__Group_5_1__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_1()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getDescriptionAssignment_5_2()); }
						(rule__DocGoal__DescriptionAssignment_5_2)
						{ after(grammarAccess.getDocGoalAccess().getDescriptionAssignment_5_2()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getDocGoalAccess().getConstantsAssignment_5_3()); }
						(rule__DocGoal__ConstantsAssignment_5_3)
						{ after(grammarAccess.getDocGoalAccess().getConstantsAssignment_5_3()); }
					)
					(
						{ before(grammarAccess.getDocGoalAccess().getConstantsAssignment_5_3()); }
						((rule__DocGoal__ConstantsAssignment_5_3)=>rule__DocGoal__ConstantsAssignment_5_3)*
						{ after(grammarAccess.getDocGoalAccess().getConstantsAssignment_5_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getWhenconditionAssignment_5_4()); }
						(rule__DocGoal__WhenconditionAssignment_5_4)
						{ after(grammarAccess.getDocGoalAccess().getWhenconditionAssignment_5_4()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getRationaleAssignment_5_5()); }
						(rule__DocGoal__RationaleAssignment_5_5)
						{ after(grammarAccess.getDocGoalAccess().getRationaleAssignment_5_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getChangeUncertaintyAssignment_5_6()); }
						(rule__DocGoal__ChangeUncertaintyAssignment_5_6)
						{ after(grammarAccess.getDocGoalAccess().getChangeUncertaintyAssignment_5_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 7)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 7);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_7()); }
						(rule__DocGoal__Group_5_7__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_7()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 8)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 8);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_8()); }
						(rule__DocGoal__Group_5_8__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_8()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 9)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 9);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_9()); }
						(rule__DocGoal__Group_5_9__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_9()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 10)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 10);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_10()); }
						(rule__DocGoal__Group_5_10__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_10()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 11)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 11);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_11()); }
						(rule__DocGoal__Group_5_11__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_11()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 12)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 12);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_12()); }
						(rule__DocGoal__Group_5_12__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_12()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 13)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocGoalAccess().getUnorderedGroup_5(), 13);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocGoalAccess().getGroup_5_13()); }
						(rule__DocGoal__Group_5_13__0)
						{ after(grammarAccess.getDocGoalAccess().getGroup_5_13()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocGoalAccess().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__7?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__8?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__9?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__10?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__11?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__11
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__12?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__12
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
	rule__DocGoal__UnorderedGroup_5__13?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocGoal__UnorderedGroup_5__13
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocGoal__UnorderedGroup_5__Impl
;
finally {
	restoreStackSize(stackSize);
}






























rule__Goal__UnorderedGroup_5
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getGoalAccess().getUnorderedGroup_5());
    }
:
	rule__Goal__UnorderedGroup_5__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_0()); }
						(rule__Goal__Group_5_0__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_1()); }
						(rule__Goal__Group_5_1__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_1()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getDescriptionAssignment_5_2()); }
						(rule__Goal__DescriptionAssignment_5_2)
						{ after(grammarAccess.getGoalAccess().getDescriptionAssignment_5_2()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getGoalAccess().getConstantsAssignment_5_3()); }
						(rule__Goal__ConstantsAssignment_5_3)
						{ after(grammarAccess.getGoalAccess().getConstantsAssignment_5_3()); }
					)
					(
						{ before(grammarAccess.getGoalAccess().getConstantsAssignment_5_3()); }
						((rule__Goal__ConstantsAssignment_5_3)=>rule__Goal__ConstantsAssignment_5_3)*
						{ after(grammarAccess.getGoalAccess().getConstantsAssignment_5_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getWhenconditionAssignment_5_4()); }
						(rule__Goal__WhenconditionAssignment_5_4)
						{ after(grammarAccess.getGoalAccess().getWhenconditionAssignment_5_4()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getRationaleAssignment_5_5()); }
						(rule__Goal__RationaleAssignment_5_5)
						{ after(grammarAccess.getGoalAccess().getRationaleAssignment_5_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getChangeUncertaintyAssignment_5_6()); }
						(rule__Goal__ChangeUncertaintyAssignment_5_6)
						{ after(grammarAccess.getGoalAccess().getChangeUncertaintyAssignment_5_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 7)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 7);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_7()); }
						(rule__Goal__Group_5_7__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_7()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 8)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 8);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_8()); }
						(rule__Goal__Group_5_8__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_8()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 9)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 9);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_9()); }
						(rule__Goal__Group_5_9__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_9()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 10)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 10);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_10()); }
						(rule__Goal__Group_5_10__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_10()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 11)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 11);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_11()); }
						(rule__Goal__Group_5_11__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_11()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 12)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 12);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_12()); }
						(rule__Goal__Group_5_12__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_12()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 13)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 13);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_13()); }
						(rule__Goal__Group_5_13__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_13()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 14)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGoalAccess().getUnorderedGroup_5(), 14);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGoalAccess().getGroup_5_14()); }
						(rule__Goal__Group_5_14__0)
						{ after(grammarAccess.getGoalAccess().getGroup_5_14()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGoalAccess().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__7?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__8?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__9?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__10?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__11?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__11
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__12?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__12
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__13?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__13
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
	rule__Goal__UnorderedGroup_5__14?
;
finally {
	restoreStackSize(stackSize);
}


rule__Goal__UnorderedGroup_5__14
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Goal__UnorderedGroup_5__Impl
;
finally {
	restoreStackSize(stackSize);
}
































rule__SystemRequirement__UnorderedGroup_6
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
    }
:
	rule__SystemRequirement__UnorderedGroup_6__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_0()); }
						(rule__SystemRequirement__Group_6_0__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_1()); }
						(rule__SystemRequirement__Group_6_1__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_1()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getDescriptionAssignment_6_2()); }
						(rule__SystemRequirement__DescriptionAssignment_6_2)
						{ after(grammarAccess.getSystemRequirementAccess().getDescriptionAssignment_6_2()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getSystemRequirementAccess().getConstantsAssignment_6_3()); }
						(rule__SystemRequirement__ConstantsAssignment_6_3)
						{ after(grammarAccess.getSystemRequirementAccess().getConstantsAssignment_6_3()); }
					)
					(
						{ before(grammarAccess.getSystemRequirementAccess().getConstantsAssignment_6_3()); }
						((rule__SystemRequirement__ConstantsAssignment_6_3)=>rule__SystemRequirement__ConstantsAssignment_6_3)*
						{ after(grammarAccess.getSystemRequirementAccess().getConstantsAssignment_6_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getSystemRequirementAccess().getComputesAssignment_6_4()); }
						(rule__SystemRequirement__ComputesAssignment_6_4)
						{ after(grammarAccess.getSystemRequirementAccess().getComputesAssignment_6_4()); }
					)
					(
						{ before(grammarAccess.getSystemRequirementAccess().getComputesAssignment_6_4()); }
						((rule__SystemRequirement__ComputesAssignment_6_4)=>rule__SystemRequirement__ComputesAssignment_6_4)*
						{ after(grammarAccess.getSystemRequirementAccess().getComputesAssignment_6_4()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getWhenconditionAssignment_6_5()); }
						(rule__SystemRequirement__WhenconditionAssignment_6_5)
						{ after(grammarAccess.getSystemRequirementAccess().getWhenconditionAssignment_6_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getPredicateAssignment_6_6()); }
						(rule__SystemRequirement__PredicateAssignment_6_6)
						{ after(grammarAccess.getSystemRequirementAccess().getPredicateAssignment_6_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 7)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 7);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getRationaleAssignment_6_7()); }
						(rule__SystemRequirement__RationaleAssignment_6_7)
						{ after(grammarAccess.getSystemRequirementAccess().getRationaleAssignment_6_7()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 8)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 8);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getChangeUncertaintyAssignment_6_8()); }
						(rule__SystemRequirement__ChangeUncertaintyAssignment_6_8)
						{ after(grammarAccess.getSystemRequirementAccess().getChangeUncertaintyAssignment_6_8()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 9)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 9);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_9()); }
						(rule__SystemRequirement__Group_6_9__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_9()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 10)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 10);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_10()); }
						(rule__SystemRequirement__Group_6_10__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_10()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 11)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 11);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_11()); }
						(rule__SystemRequirement__Group_6_11__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_11()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 12)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 12);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_12()); }
						(rule__SystemRequirement__Group_6_12__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_12()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 13)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 13);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_13()); }
						(rule__SystemRequirement__Group_6_13__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_13()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 14)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 14);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_14()); }
						(rule__SystemRequirement__Group_6_14__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_14()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 15)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 15);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_15()); }
						(rule__SystemRequirement__Group_6_15__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_15()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 16)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 16);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_16()); }
						(rule__SystemRequirement__Group_6_16__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_16()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 17)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 17);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_17()); }
						(rule__SystemRequirement__Group_6_17__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_17()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 18)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 18);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_18()); }
						(rule__SystemRequirement__Group_6_18__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_18()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 19)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6(), 19);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getSystemRequirementAccess().getGroup_6_19()); }
						(rule__SystemRequirement__Group_6_19__0)
						{ after(grammarAccess.getSystemRequirementAccess().getGroup_6_19()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSystemRequirementAccess().getUnorderedGroup_6());
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__7?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__8?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__9?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__10?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__11?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__11
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__12?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__12
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__13?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__13
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__14?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__14
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__15?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__15
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__16?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__16
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__17?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__17
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__18?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__18
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
	rule__SystemRequirement__UnorderedGroup_6__19?
;
finally {
	restoreStackSize(stackSize);
}


rule__SystemRequirement__UnorderedGroup_6__19
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SystemRequirement__UnorderedGroup_6__Impl
;
finally {
	restoreStackSize(stackSize);
}










































rule__GlobalRequirement__UnorderedGroup_6
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_0()); }
						(rule__GlobalRequirement__Group_6_0__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_1()); }
						(rule__GlobalRequirement__Group_6_1__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_1()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getDescriptionAssignment_6_2()); }
						(rule__GlobalRequirement__DescriptionAssignment_6_2)
						{ after(grammarAccess.getGlobalRequirementAccess().getDescriptionAssignment_6_2()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getGlobalRequirementAccess().getConstantsAssignment_6_3()); }
						(rule__GlobalRequirement__ConstantsAssignment_6_3)
						{ after(grammarAccess.getGlobalRequirementAccess().getConstantsAssignment_6_3()); }
					)
					(
						{ before(grammarAccess.getGlobalRequirementAccess().getConstantsAssignment_6_3()); }
						((rule__GlobalRequirement__ConstantsAssignment_6_3)=>rule__GlobalRequirement__ConstantsAssignment_6_3)*
						{ after(grammarAccess.getGlobalRequirementAccess().getConstantsAssignment_6_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getGlobalRequirementAccess().getComputesAssignment_6_4()); }
						(rule__GlobalRequirement__ComputesAssignment_6_4)
						{ after(grammarAccess.getGlobalRequirementAccess().getComputesAssignment_6_4()); }
					)
					(
						{ before(grammarAccess.getGlobalRequirementAccess().getComputesAssignment_6_4()); }
						((rule__GlobalRequirement__ComputesAssignment_6_4)=>rule__GlobalRequirement__ComputesAssignment_6_4)*
						{ after(grammarAccess.getGlobalRequirementAccess().getComputesAssignment_6_4()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getWhenconditionAssignment_6_5()); }
						(rule__GlobalRequirement__WhenconditionAssignment_6_5)
						{ after(grammarAccess.getGlobalRequirementAccess().getWhenconditionAssignment_6_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getPredicateAssignment_6_6()); }
						(rule__GlobalRequirement__PredicateAssignment_6_6)
						{ after(grammarAccess.getGlobalRequirementAccess().getPredicateAssignment_6_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 7)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 7);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getRationaleAssignment_6_7()); }
						(rule__GlobalRequirement__RationaleAssignment_6_7)
						{ after(grammarAccess.getGlobalRequirementAccess().getRationaleAssignment_6_7()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 8)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 8);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getChangeUncertaintyAssignment_6_8()); }
						(rule__GlobalRequirement__ChangeUncertaintyAssignment_6_8)
						{ after(grammarAccess.getGlobalRequirementAccess().getChangeUncertaintyAssignment_6_8()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 9)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 9);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_9()); }
						(rule__GlobalRequirement__Group_6_9__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_9()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 10)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 10);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_10()); }
						(rule__GlobalRequirement__Group_6_10__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_10()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 11)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 11);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_11()); }
						(rule__GlobalRequirement__Group_6_11__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_11()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 12)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 12);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_12()); }
						(rule__GlobalRequirement__Group_6_12__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_12()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 13)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 13);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_13()); }
						(rule__GlobalRequirement__Group_6_13__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_13()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 14)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 14);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_14()); }
						(rule__GlobalRequirement__Group_6_14__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_14()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 15)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 15);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_15()); }
						(rule__GlobalRequirement__Group_6_15__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_15()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 16)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 16);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_16()); }
						(rule__GlobalRequirement__Group_6_16__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_16()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 17)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 17);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_17()); }
						(rule__GlobalRequirement__Group_6_17__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_17()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 18)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6(), 18);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getGlobalRequirementAccess().getGroup_6_18()); }
						(rule__GlobalRequirement__Group_6_18__0)
						{ after(grammarAccess.getGlobalRequirementAccess().getGroup_6_18()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGlobalRequirementAccess().getUnorderedGroup_6());
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__7?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__8?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__9?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__10?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__11?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__11
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__12?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__12
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__13?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__13
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__14?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__14
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__15?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__15
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__16?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__16
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__17?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__17
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
	rule__GlobalRequirement__UnorderedGroup_6__18?
;
finally {
	restoreStackSize(stackSize);
}


rule__GlobalRequirement__UnorderedGroup_6__18
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GlobalRequirement__UnorderedGroup_6__Impl
;
finally {
	restoreStackSize(stackSize);
}








































rule__DocRequirement__UnorderedGroup_6
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
    }
:
	rule__DocRequirement__UnorderedGroup_6__0
	?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_0()); }
						(rule__DocRequirement__Group_6_0__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_1()); }
						(rule__DocRequirement__Group_6_1__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_1()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 2);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getDescriptionAssignment_6_2()); }
						(rule__DocRequirement__DescriptionAssignment_6_2)
						{ after(grammarAccess.getDocRequirementAccess().getDescriptionAssignment_6_2()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 3);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getDocRequirementAccess().getConstantsAssignment_6_3()); }
						(rule__DocRequirement__ConstantsAssignment_6_3)
						{ after(grammarAccess.getDocRequirementAccess().getConstantsAssignment_6_3()); }
					)
					(
						{ before(grammarAccess.getDocRequirementAccess().getConstantsAssignment_6_3()); }
						((rule__DocRequirement__ConstantsAssignment_6_3)=>rule__DocRequirement__ConstantsAssignment_6_3)*
						{ after(grammarAccess.getDocRequirementAccess().getConstantsAssignment_6_3()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 4);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					(
						{ before(grammarAccess.getDocRequirementAccess().getComputesAssignment_6_4()); }
						(rule__DocRequirement__ComputesAssignment_6_4)
						{ after(grammarAccess.getDocRequirementAccess().getComputesAssignment_6_4()); }
					)
					(
						{ before(grammarAccess.getDocRequirementAccess().getComputesAssignment_6_4()); }
						((rule__DocRequirement__ComputesAssignment_6_4)=>rule__DocRequirement__ComputesAssignment_6_4)*
						{ after(grammarAccess.getDocRequirementAccess().getComputesAssignment_6_4()); }
					)					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 5)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 5);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getWhenconditionAssignment_6_5()); }
						(rule__DocRequirement__WhenconditionAssignment_6_5)
						{ after(grammarAccess.getDocRequirementAccess().getWhenconditionAssignment_6_5()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 6)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 6);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getPredicateAssignment_6_6()); }
						(rule__DocRequirement__PredicateAssignment_6_6)
						{ after(grammarAccess.getDocRequirementAccess().getPredicateAssignment_6_6()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 7)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 7);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getRationaleAssignment_6_7()); }
						(rule__DocRequirement__RationaleAssignment_6_7)
						{ after(grammarAccess.getDocRequirementAccess().getRationaleAssignment_6_7()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 8)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 8);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getChangeUncertaintyAssignment_6_8()); }
						(rule__DocRequirement__ChangeUncertaintyAssignment_6_8)
						{ after(grammarAccess.getDocRequirementAccess().getChangeUncertaintyAssignment_6_8()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 9)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 9);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_9()); }
						(rule__DocRequirement__Group_6_9__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_9()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 10)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 10);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_10()); }
						(rule__DocRequirement__Group_6_10__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_10()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 11)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 11);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_11()); }
						(rule__DocRequirement__Group_6_11__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_11()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 12)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 12);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_12()); }
						(rule__DocRequirement__Group_6_12__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_12()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 13)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 13);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_13()); }
						(rule__DocRequirement__Group_6_13__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_13()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 14)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 14);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_14()); }
						(rule__DocRequirement__Group_6_14__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_14()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 15)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 15);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_15()); }
						(rule__DocRequirement__Group_6_15__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_15()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 16)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 16);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_16()); }
						(rule__DocRequirement__Group_6_16__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_16()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 17)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 17);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_17()); }
						(rule__DocRequirement__Group_6_17__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_17()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 18)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6(), 18);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getDocRequirementAccess().getGroup_6_18()); }
						(rule__DocRequirement__Group_6_18__0)
						{ after(grammarAccess.getDocRequirementAccess().getGroup_6_18()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getDocRequirementAccess().getUnorderedGroup_6());
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__2?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__3?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__4?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__5?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__6?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__7?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__8?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__9?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__10?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__11?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__11
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__12?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__12
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__13?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__13
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__14?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__14
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__15?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__15
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__16?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__16
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__17?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__17
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
	rule__DocRequirement__UnorderedGroup_6__18?
;
finally {
	restoreStackSize(stackSize);
}


rule__DocRequirement__UnorderedGroup_6__18
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DocRequirement__UnorderedGroup_6__Impl
;
finally {
	restoreStackSize(stackSize);
}








































rule__Uncertainty__UnorderedGroup_2
    @init {
    	int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2());
    }
:
	rule__Uncertainty__UnorderedGroup_2__0
	
	{getUnorderedGroupHelper().canLeave(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2())}?
	
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2());
	restoreStackSize(stackSize);
}


rule__Uncertainty__UnorderedGroup_2__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
    }
:
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2(), 0);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getUncertaintyAccess().getGroup_2_0()); }
						(rule__Uncertainty__Group_2_0__0)
						{ after(grammarAccess.getUncertaintyAccess().getGroup_2_0()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2(), 1);
	 				}
	 				{
	 				  selected = true;
	 				}
					(
					
						{ before(grammarAccess.getUncertaintyAccess().getGroup_2_1()); }
						(rule__Uncertainty__Group_2_1__0)
						{ after(grammarAccess.getUncertaintyAccess().getGroup_2_1()); }
					)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2());
	 				}
 				)
			)  

		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUncertaintyAccess().getUnorderedGroup_2());
	restoreStackSize(stackSize);
}


rule__Uncertainty__UnorderedGroup_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__UnorderedGroup_2__Impl
	rule__Uncertainty__UnorderedGroup_2__1?
;
finally {
	restoreStackSize(stackSize);
}


rule__Uncertainty__UnorderedGroup_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Uncertainty__UnorderedGroup_2__Impl
;
finally {
	restoreStackSize(stackSize);
}






rule__ReqSpec__PartsAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqSpecAccess().getPartsAlternatives_0()); }
(rule__ReqSpec__PartsAlternatives_0)
{ after(grammarAccess.getReqSpecAccess().getPartsAlternatives_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getNameQualifiedNameParserRuleCall_1_0()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalConstantsAccess().getNameQualifiedNameParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalConstants__ConstantsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalConstantsAccess().getConstantsValDeclarationParserRuleCall_3_0()); }
	ruleValDeclaration{ after(grammarAccess.getGlobalConstantsAccess().getConstantsValDeclarationParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__NameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getNameQualifiedNameParserRuleCall_2_0()); }
	ruleQualifiedName{ after(grammarAccess.getStakeholderGoalsAccess().getNameQualifiedNameParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__TitleAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
	RULE_STRING{ after(grammarAccess.getStakeholderGoalsAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__TargetAssignment_4_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getTargetComponentClassifierCrossReference_4_1_0_0()); }
(
{ before(grammarAccess.getStakeholderGoalsAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_4_1_0_0_1()); }
	ruleAadlClassifierReference{ after(grammarAccess.getStakeholderGoalsAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_4_1_0_0_1()); }
)
{ after(grammarAccess.getStakeholderGoalsAccess().getTargetComponentClassifierCrossReference_4_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__ComponentCategoryAssignment_4_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getComponentCategoryComponentCategoryParserRuleCall_4_1_1_0()); }
	ruleComponentCategory{ after(grammarAccess.getStakeholderGoalsAccess().getComponentCategoryComponentCategoryParserRuleCall_4_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__ImportConstantsAssignment_5_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getImportConstantsGlobalConstantsCrossReference_5_2_0()); }
(
{ before(grammarAccess.getStakeholderGoalsAccess().getImportConstantsGlobalConstantsQualifiedNameParserRuleCall_5_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getStakeholderGoalsAccess().getImportConstantsGlobalConstantsQualifiedNameParserRuleCall_5_2_0_1()); }
)
{ after(grammarAccess.getStakeholderGoalsAccess().getImportConstantsGlobalConstantsCrossReference_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__DescriptionAssignment_7_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getDescriptionDescriptionParserRuleCall_7_0_0()); }
	ruleDescription{ after(grammarAccess.getStakeholderGoalsAccess().getDescriptionDescriptionParserRuleCall_7_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__ConstantsAssignment_7_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getConstantsValDeclarationParserRuleCall_7_1_0()); }
	ruleValDeclaration{ after(grammarAccess.getStakeholderGoalsAccess().getConstantsValDeclarationParserRuleCall_7_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__ContentAssignment_7_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getContentGoalParserRuleCall_7_2_0()); }
	ruleGoal{ after(grammarAccess.getStakeholderGoalsAccess().getContentGoalParserRuleCall_7_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__DocReferenceAssignment_7_3_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getDocReferenceExternalDocumentParserRuleCall_7_3_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getStakeholderGoalsAccess().getDocReferenceExternalDocumentParserRuleCall_7_3_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StakeholderGoals__IssuesAssignment_7_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStakeholderGoalsAccess().getIssuesSTRINGTerminalRuleCall_7_4_1_0()); }
	RULE_STRING{ after(grammarAccess.getStakeholderGoalsAccess().getIssuesSTRINGTerminalRuleCall_7_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getNameQualifiedNameParserRuleCall_1_0()); }
	ruleQualifiedName{ after(grammarAccess.getReqDocumentAccess().getNameQualifiedNameParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__TitleAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
	RULE_STRING{ after(grammarAccess.getReqDocumentAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__DescriptionAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getDescriptionDescriptionParserRuleCall_4_0_0()); }
	ruleDescription{ after(grammarAccess.getReqDocumentAccess().getDescriptionDescriptionParserRuleCall_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__ContentAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getContentAlternatives_4_1_0()); }
(rule__ReqDocument__ContentAlternatives_4_1_0)
{ after(grammarAccess.getReqDocumentAccess().getContentAlternatives_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__DocReferenceAssignment_4_2_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getDocReferenceExternalDocumentParserRuleCall_4_2_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getReqDocumentAccess().getDocReferenceExternalDocumentParserRuleCall_4_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ReqDocument__IssuesAssignment_4_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReqDocumentAccess().getIssuesSTRINGTerminalRuleCall_4_3_1_0()); }
	RULE_STRING{ after(grammarAccess.getReqDocumentAccess().getIssuesSTRINGTerminalRuleCall_4_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__LabelAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getLabelIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getDocumentSectionAccess().getLabelIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__TitleAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocumentSectionAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__DescriptionAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getDescriptionDescriptionParserRuleCall_4_0_0()); }
	ruleDescription{ after(grammarAccess.getDocumentSectionAccess().getDescriptionDescriptionParserRuleCall_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocumentSection__ContentAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocumentSectionAccess().getContentAlternatives_4_1_0()); }
(rule__DocumentSection__ContentAlternatives_4_1_0)
{ after(grammarAccess.getDocumentSectionAccess().getContentAlternatives_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__NameAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getNameQualifiedNameParserRuleCall_3_0()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementsAccess().getNameQualifiedNameParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__TitleAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getTitleSTRINGTerminalRuleCall_4_1_0()); }
	RULE_STRING{ after(grammarAccess.getSystemRequirementsAccess().getTitleSTRINGTerminalRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__TargetAssignment_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getTargetComponentClassifierCrossReference_6_0()); }
(
{ before(grammarAccess.getSystemRequirementsAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_6_0_1()); }
	ruleAadlClassifierReference{ after(grammarAccess.getSystemRequirementsAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_6_0_1()); }
)
{ after(grammarAccess.getSystemRequirementsAccess().getTargetComponentClassifierCrossReference_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__ImportConstantsAssignment_7_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getImportConstantsGlobalConstantsCrossReference_7_2_0()); }
(
{ before(grammarAccess.getSystemRequirementsAccess().getImportConstantsGlobalConstantsQualifiedNameParserRuleCall_7_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementsAccess().getImportConstantsGlobalConstantsQualifiedNameParserRuleCall_7_2_0_1()); }
)
{ after(grammarAccess.getSystemRequirementsAccess().getImportConstantsGlobalConstantsCrossReference_7_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__DescriptionAssignment_9_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getDescriptionDescriptionParserRuleCall_9_0_0()); }
	ruleDescription{ after(grammarAccess.getSystemRequirementsAccess().getDescriptionDescriptionParserRuleCall_9_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__ConstantsAssignment_9_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getConstantsValDeclarationParserRuleCall_9_1_0()); }
	ruleValDeclaration{ after(grammarAccess.getSystemRequirementsAccess().getConstantsValDeclarationParserRuleCall_9_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__ComputesAssignment_9_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getComputesComputeDeclarationParserRuleCall_9_2_0()); }
	ruleComputeDeclaration{ after(grammarAccess.getSystemRequirementsAccess().getComputesComputeDeclarationParserRuleCall_9_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__ContentAssignment_9_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getContentSystemRequirementParserRuleCall_9_3_0()); }
	ruleSystemRequirement{ after(grammarAccess.getSystemRequirementsAccess().getContentSystemRequirementParserRuleCall_9_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__IncludeAssignment_9_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getIncludeIncludeGlobalRequirementParserRuleCall_9_4_0()); }
	ruleIncludeGlobalRequirement{ after(grammarAccess.getSystemRequirementsAccess().getIncludeIncludeGlobalRequirementParserRuleCall_9_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__DocReferenceAssignment_9_5_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getDocReferenceExternalDocumentParserRuleCall_9_5_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getSystemRequirementsAccess().getDocReferenceExternalDocumentParserRuleCall_9_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__StakeholderGoalsAssignment_9_6_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsReqRootCrossReference_9_6_2_0()); }
(
{ before(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsReqRootQualifiedNameParserRuleCall_9_6_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsReqRootQualifiedNameParserRuleCall_9_6_2_0_1()); }
)
{ after(grammarAccess.getSystemRequirementsAccess().getStakeholderGoalsReqRootCrossReference_9_6_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirements__IssuesAssignment_9_7_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementsAccess().getIssuesSTRINGTerminalRuleCall_9_7_1_0()); }
	RULE_STRING{ after(grammarAccess.getSystemRequirementsAccess().getIssuesSTRINGTerminalRuleCall_9_7_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__NameAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getNameQualifiedNameParserRuleCall_3_0()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementsAccess().getNameQualifiedNameParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__TitleAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getTitleSTRINGTerminalRuleCall_4_1_0()); }
	RULE_STRING{ after(grammarAccess.getGlobalRequirementsAccess().getTitleSTRINGTerminalRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__ImportConstantsAssignment_5_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getImportConstantsGlobalConstantsCrossReference_5_2_0()); }
(
{ before(grammarAccess.getGlobalRequirementsAccess().getImportConstantsGlobalConstantsQualifiedNameParserRuleCall_5_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementsAccess().getImportConstantsGlobalConstantsQualifiedNameParserRuleCall_5_2_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementsAccess().getImportConstantsGlobalConstantsCrossReference_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__DescriptionAssignment_7_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getDescriptionDescriptionParserRuleCall_7_0_0()); }
	ruleDescription{ after(grammarAccess.getGlobalRequirementsAccess().getDescriptionDescriptionParserRuleCall_7_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__ConstantsAssignment_7_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getConstantsValDeclarationParserRuleCall_7_1_0()); }
	ruleValDeclaration{ after(grammarAccess.getGlobalRequirementsAccess().getConstantsValDeclarationParserRuleCall_7_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__ComputesAssignment_7_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getComputesComputeDeclarationParserRuleCall_7_2_0()); }
	ruleComputeDeclaration{ after(grammarAccess.getGlobalRequirementsAccess().getComputesComputeDeclarationParserRuleCall_7_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__ContentAssignment_7_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getContentGlobalRequirementParserRuleCall_7_3_0()); }
	ruleGlobalRequirement{ after(grammarAccess.getGlobalRequirementsAccess().getContentGlobalRequirementParserRuleCall_7_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__DocReferenceAssignment_7_4_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getDocReferenceExternalDocumentParserRuleCall_7_4_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getGlobalRequirementsAccess().getDocReferenceExternalDocumentParserRuleCall_7_4_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__StakeholderGoalsAssignment_7_5_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsReqRootCrossReference_7_5_2_0()); }
(
{ before(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsReqRootQualifiedNameParserRuleCall_7_5_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsReqRootQualifiedNameParserRuleCall_7_5_2_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementsAccess().getStakeholderGoalsReqRootCrossReference_7_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirements__IssuesAssignment_7_6_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementsAccess().getIssuesSTRINGTerminalRuleCall_7_6_1_0()); }
	RULE_STRING{ after(grammarAccess.getGlobalRequirementsAccess().getIssuesSTRINGTerminalRuleCall_7_6_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getDocGoalAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__TitleAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocGoalAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__TargetDescriptionAssignment_3_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTargetDescriptionSTRINGTerminalRuleCall_3_1_0_0()); }
	RULE_STRING{ after(grammarAccess.getDocGoalAccess().getTargetDescriptionSTRINGTerminalRuleCall_3_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__TargetAssignment_3_1_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTargetComponentClassifierCrossReference_3_1_1_0_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_3_1_1_0_0_1()); }
	ruleAadlClassifierReference{ after(grammarAccess.getDocGoalAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_3_1_1_0_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getTargetComponentClassifierCrossReference_3_1_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__TargetElementAssignment_3_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getTargetElementNamedElementCrossReference_3_1_1_1_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getTargetElementNamedElementIDTerminalRuleCall_3_1_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getDocGoalAccess().getTargetElementNamedElementIDTerminalRuleCall_3_1_1_1_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getTargetElementNamedElementCrossReference_3_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__QualityCategoryAssignment_5_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getQualityCategoryQualityCategoryCrossReference_5_0_1_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_5_0_1_0_1()); }
	RULE_ID{ after(grammarAccess.getDocGoalAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_5_0_1_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getQualityCategoryQualityCategoryCrossReference_5_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__UserCategoryAssignment_5_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getUserCategoryUserCategoryCrossReference_5_1_1_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getUserCategoryUserCategoryIDTerminalRuleCall_5_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getDocGoalAccess().getUserCategoryUserCategoryIDTerminalRuleCall_5_1_1_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getUserCategoryUserCategoryCrossReference_5_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__DescriptionAssignment_5_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDescriptionDescriptionParserRuleCall_5_2_0()); }
	ruleDescription{ after(grammarAccess.getDocGoalAccess().getDescriptionDescriptionParserRuleCall_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__ConstantsAssignment_5_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getConstantsValDeclarationParserRuleCall_5_3_0()); }
	ruleValDeclaration{ after(grammarAccess.getDocGoalAccess().getConstantsValDeclarationParserRuleCall_5_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__WhenconditionAssignment_5_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getWhenconditionWhenConditionParserRuleCall_5_4_0()); }
	ruleWhenCondition{ after(grammarAccess.getDocGoalAccess().getWhenconditionWhenConditionParserRuleCall_5_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__RationaleAssignment_5_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getRationaleRationaleParserRuleCall_5_5_0()); }
	ruleRationale{ after(grammarAccess.getDocGoalAccess().getRationaleRationaleParserRuleCall_5_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__ChangeUncertaintyAssignment_5_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getChangeUncertaintyUncertaintyParserRuleCall_5_6_0()); }
	ruleUncertainty{ after(grammarAccess.getDocGoalAccess().getChangeUncertaintyUncertaintyParserRuleCall_5_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__RefinesReferenceAssignment_5_7_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getRefinesReferenceGoalCrossReference_5_7_1_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getRefinesReferenceGoalQualifiedNameParserRuleCall_5_7_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocGoalAccess().getRefinesReferenceGoalQualifiedNameParserRuleCall_5_7_1_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getRefinesReferenceGoalCrossReference_5_7_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__ConflictsReferenceAssignment_5_8_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getConflictsReferenceGoalCrossReference_5_8_2_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getConflictsReferenceGoalQualifiedNameParserRuleCall_5_8_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocGoalAccess().getConflictsReferenceGoalQualifiedNameParserRuleCall_5_8_2_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getConflictsReferenceGoalCrossReference_5_8_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__EvolvesReferenceAssignment_5_9_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getEvolvesReferenceRequirementCrossReference_5_9_1_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_5_9_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocGoalAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_5_9_1_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getEvolvesReferenceRequirementCrossReference_5_9_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__DroppedAssignment_5_10_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }

	Dropped 

{ after(grammarAccess.getDocGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }
)

{ after(grammarAccess.getDocGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__DropRationaleAssignment_5_10_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDropRationaleSTRINGTerminalRuleCall_5_10_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocGoalAccess().getDropRationaleSTRINGTerminalRuleCall_5_10_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__StakeholderReferenceAssignment_5_11_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getStakeholderReferenceStakeholderCrossReference_5_11_1_0()); }
(
{ before(grammarAccess.getDocGoalAccess().getStakeholderReferenceStakeholderQualifiedNameParserRuleCall_5_11_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocGoalAccess().getStakeholderReferenceStakeholderQualifiedNameParserRuleCall_5_11_1_0_1()); }
)
{ after(grammarAccess.getDocGoalAccess().getStakeholderReferenceStakeholderCrossReference_5_11_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__DocReferenceAssignment_5_12_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getDocReferenceExternalDocumentParserRuleCall_5_12_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getDocGoalAccess().getDocReferenceExternalDocumentParserRuleCall_5_12_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocGoal__IssuesAssignment_5_13_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocGoalAccess().getIssuesSTRINGTerminalRuleCall_5_13_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocGoalAccess().getIssuesSTRINGTerminalRuleCall_5_13_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getGoalAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__TitleAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
	RULE_STRING{ after(grammarAccess.getGoalAccess().getTitleSTRINGTerminalRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__TargetElementAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getTargetElementNamedElementCrossReference_3_1_0()); }
(
{ before(grammarAccess.getGoalAccess().getTargetElementNamedElementIDTerminalRuleCall_3_1_0_1()); }
	RULE_ID{ after(grammarAccess.getGoalAccess().getTargetElementNamedElementIDTerminalRuleCall_3_1_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getTargetElementNamedElementCrossReference_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__QualityCategoryAssignment_5_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getQualityCategoryQualityCategoryCrossReference_5_0_1_0()); }
(
{ before(grammarAccess.getGoalAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_5_0_1_0_1()); }
	RULE_ID{ after(grammarAccess.getGoalAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_5_0_1_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getQualityCategoryQualityCategoryCrossReference_5_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__UserCategoryAssignment_5_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getUserCategoryUserCategoryCrossReference_5_1_1_0()); }
(
{ before(grammarAccess.getGoalAccess().getUserCategoryUserCategoryIDTerminalRuleCall_5_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getGoalAccess().getUserCategoryUserCategoryIDTerminalRuleCall_5_1_1_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getUserCategoryUserCategoryCrossReference_5_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__DescriptionAssignment_5_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDescriptionDescriptionParserRuleCall_5_2_0()); }
	ruleDescription{ after(grammarAccess.getGoalAccess().getDescriptionDescriptionParserRuleCall_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__ConstantsAssignment_5_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getConstantsValDeclarationParserRuleCall_5_3_0()); }
	ruleValDeclaration{ after(grammarAccess.getGoalAccess().getConstantsValDeclarationParserRuleCall_5_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__WhenconditionAssignment_5_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getWhenconditionWhenConditionParserRuleCall_5_4_0()); }
	ruleWhenCondition{ after(grammarAccess.getGoalAccess().getWhenconditionWhenConditionParserRuleCall_5_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__RationaleAssignment_5_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getRationaleRationaleParserRuleCall_5_5_0()); }
	ruleRationale{ after(grammarAccess.getGoalAccess().getRationaleRationaleParserRuleCall_5_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__ChangeUncertaintyAssignment_5_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getChangeUncertaintyUncertaintyParserRuleCall_5_6_0()); }
	ruleUncertainty{ after(grammarAccess.getGoalAccess().getChangeUncertaintyUncertaintyParserRuleCall_5_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__RefinesReferenceAssignment_5_7_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getRefinesReferenceGoalCrossReference_5_7_1_0()); }
(
{ before(grammarAccess.getGoalAccess().getRefinesReferenceGoalQualifiedNameParserRuleCall_5_7_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGoalAccess().getRefinesReferenceGoalQualifiedNameParserRuleCall_5_7_1_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getRefinesReferenceGoalCrossReference_5_7_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__ConflictsReferenceAssignment_5_8_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getConflictsReferenceGoalCrossReference_5_8_2_0()); }
(
{ before(grammarAccess.getGoalAccess().getConflictsReferenceGoalQualifiedNameParserRuleCall_5_8_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGoalAccess().getConflictsReferenceGoalQualifiedNameParserRuleCall_5_8_2_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getConflictsReferenceGoalCrossReference_5_8_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__EvolvesReferenceAssignment_5_9_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getEvolvesReferenceRequirementCrossReference_5_9_1_0()); }
(
{ before(grammarAccess.getGoalAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_5_9_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGoalAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_5_9_1_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getEvolvesReferenceRequirementCrossReference_5_9_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__DroppedAssignment_5_10_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }
(
{ before(grammarAccess.getGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }

	Dropped 

{ after(grammarAccess.getGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }
)

{ after(grammarAccess.getGoalAccess().getDroppedDroppedKeyword_5_10_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__DropRationaleAssignment_5_10_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDropRationaleSTRINGTerminalRuleCall_5_10_1_0()); }
	RULE_STRING{ after(grammarAccess.getGoalAccess().getDropRationaleSTRINGTerminalRuleCall_5_10_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__StakeholderReferenceAssignment_5_11_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getStakeholderReferenceStakeholderCrossReference_5_11_1_0()); }
(
{ before(grammarAccess.getGoalAccess().getStakeholderReferenceStakeholderQualifiedNameParserRuleCall_5_11_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGoalAccess().getStakeholderReferenceStakeholderQualifiedNameParserRuleCall_5_11_1_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getStakeholderReferenceStakeholderCrossReference_5_11_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__GoalReferenceAssignment_5_12_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getGoalReferenceGoalCrossReference_5_12_2_0()); }
(
{ before(grammarAccess.getGoalAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_5_12_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGoalAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_5_12_2_0_1()); }
)
{ after(grammarAccess.getGoalAccess().getGoalReferenceGoalCrossReference_5_12_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__DocReferenceAssignment_5_13_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getDocReferenceExternalDocumentParserRuleCall_5_13_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getGoalAccess().getDocReferenceExternalDocumentParserRuleCall_5_13_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Goal__IssuesAssignment_5_14_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGoalAccess().getIssuesSTRINGTerminalRuleCall_5_14_1_0()); }
	RULE_STRING{ after(grammarAccess.getGoalAccess().getIssuesSTRINGTerminalRuleCall_5_14_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getSystemRequirementAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__ReqKindAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getReqKindReqKindEnumRuleCall_2_1_0()); }
	ruleReqKind{ after(grammarAccess.getSystemRequirementAccess().getReqKindReqKindEnumRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__TitleAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
	RULE_STRING{ after(grammarAccess.getSystemRequirementAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__TargetElementAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getTargetElementNamedElementCrossReference_4_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getTargetElementNamedElementIDTerminalRuleCall_4_1_0_1()); }
	RULE_ID{ after(grammarAccess.getSystemRequirementAccess().getTargetElementNamedElementIDTerminalRuleCall_4_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getTargetElementNamedElementCrossReference_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__QualityCategoryAssignment_6_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getQualityCategoryQualityCategoryCrossReference_6_0_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_6_0_1_0_1()); }
	RULE_ID{ after(grammarAccess.getSystemRequirementAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_6_0_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getQualityCategoryQualityCategoryCrossReference_6_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__UserCategoryAssignment_6_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getUserCategoryUserCategoryCrossReference_6_1_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getUserCategoryUserCategoryIDTerminalRuleCall_6_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getSystemRequirementAccess().getUserCategoryUserCategoryIDTerminalRuleCall_6_1_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getUserCategoryUserCategoryCrossReference_6_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__DescriptionAssignment_6_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDescriptionDescriptionParserRuleCall_6_2_0()); }
	ruleDescription{ after(grammarAccess.getSystemRequirementAccess().getDescriptionDescriptionParserRuleCall_6_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__ConstantsAssignment_6_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getConstantsValDeclarationParserRuleCall_6_3_0()); }
	ruleValDeclaration{ after(grammarAccess.getSystemRequirementAccess().getConstantsValDeclarationParserRuleCall_6_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__ComputesAssignment_6_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getComputesComputeDeclarationParserRuleCall_6_4_0()); }
	ruleComputeDeclaration{ after(grammarAccess.getSystemRequirementAccess().getComputesComputeDeclarationParserRuleCall_6_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__WhenconditionAssignment_6_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getWhenconditionWhenConditionParserRuleCall_6_5_0()); }
	ruleWhenCondition{ after(grammarAccess.getSystemRequirementAccess().getWhenconditionWhenConditionParserRuleCall_6_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__PredicateAssignment_6_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getPredicateReqPredicateParserRuleCall_6_6_0()); }
	ruleReqPredicate{ after(grammarAccess.getSystemRequirementAccess().getPredicateReqPredicateParserRuleCall_6_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__RationaleAssignment_6_7
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRationaleRationaleParserRuleCall_6_7_0()); }
	ruleRationale{ after(grammarAccess.getSystemRequirementAccess().getRationaleRationaleParserRuleCall_6_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__ChangeUncertaintyAssignment_6_8
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getChangeUncertaintyUncertaintyParserRuleCall_6_8_0()); }
	ruleUncertainty{ after(grammarAccess.getSystemRequirementAccess().getChangeUncertaintyUncertaintyParserRuleCall_6_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__ExceptionAssignment_6_9_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getExceptionEObjectCrossReference_6_9_1_0_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getExceptionEObjectIDTerminalRuleCall_6_9_1_0_0_1()); }
	RULE_ID{ after(grammarAccess.getSystemRequirementAccess().getExceptionEObjectIDTerminalRuleCall_6_9_1_0_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getExceptionEObjectCrossReference_6_9_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__ExceptionTextAssignment_6_9_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getExceptionTextSTRINGTerminalRuleCall_6_9_1_1_0()); }
	RULE_STRING{ after(grammarAccess.getSystemRequirementAccess().getExceptionTextSTRINGTerminalRuleCall_6_9_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__RefinesReferenceAssignment_6_10_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRefinesReferenceRequirementCrossReference_6_10_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getRefinesReferenceRequirementQualifiedNameParserRuleCall_6_10_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getRefinesReferenceRequirementQualifiedNameParserRuleCall_6_10_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getRefinesReferenceRequirementCrossReference_6_10_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__DecomposesReferenceAssignment_6_11_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceRequirementCrossReference_6_11_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceRequirementQualifiedNameParserRuleCall_6_11_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceRequirementQualifiedNameParserRuleCall_6_11_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getDecomposesReferenceRequirementCrossReference_6_11_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__InheritsReferenceAssignment_6_12_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getInheritsReferenceRequirementCrossReference_6_12_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getInheritsReferenceRequirementQualifiedNameParserRuleCall_6_12_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getInheritsReferenceRequirementQualifiedNameParserRuleCall_6_12_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getInheritsReferenceRequirementCrossReference_6_12_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__EvolvesReferenceAssignment_6_13_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceRequirementCrossReference_6_13_1_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_6_13_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_6_13_1_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getEvolvesReferenceRequirementCrossReference_6_13_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__DroppedAssignment_6_14_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }

	Dropped 

{ after(grammarAccess.getSystemRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }
)

{ after(grammarAccess.getSystemRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__DropRationaleAssignment_6_14_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDropRationaleSTRINGTerminalRuleCall_6_14_1_0()); }
	RULE_STRING{ after(grammarAccess.getSystemRequirementAccess().getDropRationaleSTRINGTerminalRuleCall_6_14_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__DevelopmentStakeholderAssignment_6_15_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderStakeholderCrossReference_6_15_2_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderStakeholderQualifiedNameParserRuleCall_6_15_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderStakeholderQualifiedNameParserRuleCall_6_15_2_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getDevelopmentStakeholderStakeholderCrossReference_6_15_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__GoalReferenceAssignment_6_16_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getGoalReferenceGoalCrossReference_6_16_2_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_6_16_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_6_16_2_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getGoalReferenceGoalCrossReference_6_16_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__RequirementReferenceAssignment_6_17_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getRequirementReferenceRequirementCrossReference_6_17_2_0()); }
(
{ before(grammarAccess.getSystemRequirementAccess().getRequirementReferenceRequirementQualifiedNameParserRuleCall_6_17_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getSystemRequirementAccess().getRequirementReferenceRequirementQualifiedNameParserRuleCall_6_17_2_0_1()); }
)
{ after(grammarAccess.getSystemRequirementAccess().getRequirementReferenceRequirementCrossReference_6_17_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__DocReferenceAssignment_6_18_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getDocReferenceExternalDocumentParserRuleCall_6_18_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getSystemRequirementAccess().getDocReferenceExternalDocumentParserRuleCall_6_18_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SystemRequirement__IssuesAssignment_6_19_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSystemRequirementAccess().getIssuesSTRINGTerminalRuleCall_6_19_1_0()); }
	RULE_STRING{ after(grammarAccess.getSystemRequirementAccess().getIssuesSTRINGTerminalRuleCall_6_19_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getGlobalRequirementAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ReqKindAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getReqKindReqKindEnumRuleCall_2_1_0()); }
	ruleReqKind{ after(grammarAccess.getGlobalRequirementAccess().getReqKindReqKindEnumRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__TitleAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
	RULE_STRING{ after(grammarAccess.getGlobalRequirementAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ComponentCategoryAssignment_4_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getComponentCategoryComponentCategoryParserRuleCall_4_1_0_0()); }
	ruleComponentCategory{ after(grammarAccess.getGlobalRequirementAccess().getComponentCategoryComponentCategoryParserRuleCall_4_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ConnectionsAssignment_4_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getConnectionsConnectionsKeyword_4_1_1_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getConnectionsConnectionsKeyword_4_1_1_0()); }

	Connections 

{ after(grammarAccess.getGlobalRequirementAccess().getConnectionsConnectionsKeyword_4_1_1_0()); }
)

{ after(grammarAccess.getGlobalRequirementAccess().getConnectionsConnectionsKeyword_4_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__QualityCategoryAssignment_6_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getQualityCategoryQualityCategoryCrossReference_6_0_1_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_6_0_1_0_1()); }
	RULE_ID{ after(grammarAccess.getGlobalRequirementAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_6_0_1_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getQualityCategoryQualityCategoryCrossReference_6_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__UserCategoryAssignment_6_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getUserCategoryUserCategoryCrossReference_6_1_1_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getUserCategoryUserCategoryIDTerminalRuleCall_6_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getGlobalRequirementAccess().getUserCategoryUserCategoryIDTerminalRuleCall_6_1_1_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getUserCategoryUserCategoryCrossReference_6_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__DescriptionAssignment_6_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDescriptionDescriptionParserRuleCall_6_2_0()); }
	ruleDescription{ after(grammarAccess.getGlobalRequirementAccess().getDescriptionDescriptionParserRuleCall_6_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ConstantsAssignment_6_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getConstantsValDeclarationParserRuleCall_6_3_0()); }
	ruleValDeclaration{ after(grammarAccess.getGlobalRequirementAccess().getConstantsValDeclarationParserRuleCall_6_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ComputesAssignment_6_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getComputesComputeDeclarationParserRuleCall_6_4_0()); }
	ruleComputeDeclaration{ after(grammarAccess.getGlobalRequirementAccess().getComputesComputeDeclarationParserRuleCall_6_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__WhenconditionAssignment_6_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getWhenconditionWhenConditionParserRuleCall_6_5_0()); }
	ruleWhenCondition{ after(grammarAccess.getGlobalRequirementAccess().getWhenconditionWhenConditionParserRuleCall_6_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__PredicateAssignment_6_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getPredicateReqPredicateParserRuleCall_6_6_0()); }
	ruleReqPredicate{ after(grammarAccess.getGlobalRequirementAccess().getPredicateReqPredicateParserRuleCall_6_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__RationaleAssignment_6_7
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRationaleRationaleParserRuleCall_6_7_0()); }
	ruleRationale{ after(grammarAccess.getGlobalRequirementAccess().getRationaleRationaleParserRuleCall_6_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ChangeUncertaintyAssignment_6_8
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getChangeUncertaintyUncertaintyParserRuleCall_6_8_0()); }
	ruleUncertainty{ after(grammarAccess.getGlobalRequirementAccess().getChangeUncertaintyUncertaintyParserRuleCall_6_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ExceptionAssignment_6_9_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getExceptionEObjectCrossReference_6_9_1_0_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getExceptionEObjectIDTerminalRuleCall_6_9_1_0_0_1()); }
	RULE_ID{ after(grammarAccess.getGlobalRequirementAccess().getExceptionEObjectIDTerminalRuleCall_6_9_1_0_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getExceptionEObjectCrossReference_6_9_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__ExceptionTextAssignment_6_9_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getExceptionTextSTRINGTerminalRuleCall_6_9_1_1_0()); }
	RULE_STRING{ after(grammarAccess.getGlobalRequirementAccess().getExceptionTextSTRINGTerminalRuleCall_6_9_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__RefinesReferenceAssignment_6_10_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceRequirementCrossReference_6_10_1_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceRequirementQualifiedNameParserRuleCall_6_10_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceRequirementQualifiedNameParserRuleCall_6_10_1_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getRefinesReferenceRequirementCrossReference_6_10_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__DecomposesReferenceAssignment_6_11_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceRequirementCrossReference_6_11_1_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceRequirementQualifiedNameParserRuleCall_6_11_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceRequirementQualifiedNameParserRuleCall_6_11_1_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getDecomposesReferenceRequirementCrossReference_6_11_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__EvolvesReferenceAssignment_6_12_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceRequirementCrossReference_6_12_1_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_6_12_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_6_12_1_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getEvolvesReferenceRequirementCrossReference_6_12_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__DroppedAssignment_6_13_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDroppedDroppedKeyword_6_13_0_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getDroppedDroppedKeyword_6_13_0_0()); }

	Dropped 

{ after(grammarAccess.getGlobalRequirementAccess().getDroppedDroppedKeyword_6_13_0_0()); }
)

{ after(grammarAccess.getGlobalRequirementAccess().getDroppedDroppedKeyword_6_13_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__DropRationaleAssignment_6_13_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDropRationaleSTRINGTerminalRuleCall_6_13_1_0()); }
	RULE_STRING{ after(grammarAccess.getGlobalRequirementAccess().getDropRationaleSTRINGTerminalRuleCall_6_13_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__DevelopmentStakeholderAssignment_6_14_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderStakeholderCrossReference_6_14_2_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderStakeholderQualifiedNameParserRuleCall_6_14_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderStakeholderQualifiedNameParserRuleCall_6_14_2_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getDevelopmentStakeholderStakeholderCrossReference_6_14_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__GoalReferenceAssignment_6_15_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getGoalReferenceGoalCrossReference_6_15_2_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_6_15_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_6_15_2_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getGoalReferenceGoalCrossReference_6_15_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__RequirementReferenceAssignment_6_16_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceRequirementCrossReference_6_16_2_0()); }
(
{ before(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceRequirementQualifiedNameParserRuleCall_6_16_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceRequirementQualifiedNameParserRuleCall_6_16_2_0_1()); }
)
{ after(grammarAccess.getGlobalRequirementAccess().getRequirementReferenceRequirementCrossReference_6_16_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__DocReferenceAssignment_6_17_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getDocReferenceExternalDocumentParserRuleCall_6_17_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getGlobalRequirementAccess().getDocReferenceExternalDocumentParserRuleCall_6_17_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GlobalRequirement__IssuesAssignment_6_18_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGlobalRequirementAccess().getIssuesSTRINGTerminalRuleCall_6_18_1_0()); }
	RULE_STRING{ after(grammarAccess.getGlobalRequirementAccess().getIssuesSTRINGTerminalRuleCall_6_18_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getDocRequirementAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ReqKindAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getReqKindReqKindEnumRuleCall_2_1_0()); }
	ruleReqKind{ after(grammarAccess.getDocRequirementAccess().getReqKindReqKindEnumRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__TitleAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocRequirementAccess().getTitleSTRINGTerminalRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__TargetDescriptionAssignment_4_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTargetDescriptionSTRINGTerminalRuleCall_4_1_0_0()); }
	RULE_STRING{ after(grammarAccess.getDocRequirementAccess().getTargetDescriptionSTRINGTerminalRuleCall_4_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__TargetAssignment_4_1_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTargetComponentClassifierCrossReference_4_1_1_0_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_4_1_1_0_0_1()); }
	ruleAadlClassifierReference{ after(grammarAccess.getDocRequirementAccess().getTargetComponentClassifierAadlClassifierReferenceParserRuleCall_4_1_1_0_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getTargetComponentClassifierCrossReference_4_1_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__TargetElementAssignment_4_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getTargetElementNamedElementCrossReference_4_1_1_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getTargetElementNamedElementIDTerminalRuleCall_4_1_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getDocRequirementAccess().getTargetElementNamedElementIDTerminalRuleCall_4_1_1_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getTargetElementNamedElementCrossReference_4_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ComponentCategoryAssignment_4_1_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getComponentCategoryComponentCategoryParserRuleCall_4_1_2_0()); }
	ruleComponentCategory{ after(grammarAccess.getDocRequirementAccess().getComponentCategoryComponentCategoryParserRuleCall_4_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__QualityCategoryAssignment_6_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getQualityCategoryQualityCategoryCrossReference_6_0_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_6_0_1_0_1()); }
	RULE_ID{ after(grammarAccess.getDocRequirementAccess().getQualityCategoryQualityCategoryIDTerminalRuleCall_6_0_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getQualityCategoryQualityCategoryCrossReference_6_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__UserCategoryAssignment_6_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getUserCategoryUserCategoryCrossReference_6_1_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getUserCategoryUserCategoryIDTerminalRuleCall_6_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getDocRequirementAccess().getUserCategoryUserCategoryIDTerminalRuleCall_6_1_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getUserCategoryUserCategoryCrossReference_6_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__DescriptionAssignment_6_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDescriptionDescriptionParserRuleCall_6_2_0()); }
	ruleDescription{ after(grammarAccess.getDocRequirementAccess().getDescriptionDescriptionParserRuleCall_6_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ConstantsAssignment_6_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getConstantsValDeclarationParserRuleCall_6_3_0()); }
	ruleValDeclaration{ after(grammarAccess.getDocRequirementAccess().getConstantsValDeclarationParserRuleCall_6_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ComputesAssignment_6_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getComputesComputeDeclarationParserRuleCall_6_4_0()); }
	ruleComputeDeclaration{ after(grammarAccess.getDocRequirementAccess().getComputesComputeDeclarationParserRuleCall_6_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__WhenconditionAssignment_6_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getWhenconditionWhenConditionParserRuleCall_6_5_0()); }
	ruleWhenCondition{ after(grammarAccess.getDocRequirementAccess().getWhenconditionWhenConditionParserRuleCall_6_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__PredicateAssignment_6_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getPredicateReqPredicateParserRuleCall_6_6_0()); }
	ruleReqPredicate{ after(grammarAccess.getDocRequirementAccess().getPredicateReqPredicateParserRuleCall_6_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__RationaleAssignment_6_7
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getRationaleRationaleParserRuleCall_6_7_0()); }
	ruleRationale{ after(grammarAccess.getDocRequirementAccess().getRationaleRationaleParserRuleCall_6_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ChangeUncertaintyAssignment_6_8
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getChangeUncertaintyUncertaintyParserRuleCall_6_8_0()); }
	ruleUncertainty{ after(grammarAccess.getDocRequirementAccess().getChangeUncertaintyUncertaintyParserRuleCall_6_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ExceptionAssignment_6_9_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getExceptionEObjectCrossReference_6_9_1_0_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getExceptionEObjectIDTerminalRuleCall_6_9_1_0_0_1()); }
	RULE_ID{ after(grammarAccess.getDocRequirementAccess().getExceptionEObjectIDTerminalRuleCall_6_9_1_0_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getExceptionEObjectCrossReference_6_9_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__ExceptionTextAssignment_6_9_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getExceptionTextSTRINGTerminalRuleCall_6_9_1_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocRequirementAccess().getExceptionTextSTRINGTerminalRuleCall_6_9_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__RefinesReferenceAssignment_6_10_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getRefinesReferenceRequirementCrossReference_6_10_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getRefinesReferenceRequirementQualifiedNameParserRuleCall_6_10_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocRequirementAccess().getRefinesReferenceRequirementQualifiedNameParserRuleCall_6_10_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getRefinesReferenceRequirementCrossReference_6_10_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__DecomposesReferenceAssignment_6_11_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDecomposesReferenceRequirementCrossReference_6_11_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getDecomposesReferenceRequirementQualifiedNameParserRuleCall_6_11_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocRequirementAccess().getDecomposesReferenceRequirementQualifiedNameParserRuleCall_6_11_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getDecomposesReferenceRequirementCrossReference_6_11_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__InheritsReferenceAssignment_6_12_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getInheritsReferenceRequirementCrossReference_6_12_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getInheritsReferenceRequirementQualifiedNameParserRuleCall_6_12_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocRequirementAccess().getInheritsReferenceRequirementQualifiedNameParserRuleCall_6_12_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getInheritsReferenceRequirementCrossReference_6_12_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__EvolvesReferenceAssignment_6_13_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getEvolvesReferenceRequirementCrossReference_6_13_1_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_6_13_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocRequirementAccess().getEvolvesReferenceRequirementQualifiedNameParserRuleCall_6_13_1_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getEvolvesReferenceRequirementCrossReference_6_13_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__DroppedAssignment_6_14_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }

	Dropped 

{ after(grammarAccess.getDocRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }
)

{ after(grammarAccess.getDocRequirementAccess().getDroppedDroppedKeyword_6_14_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__DropRationaleAssignment_6_14_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDropRationaleSTRINGTerminalRuleCall_6_14_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocRequirementAccess().getDropRationaleSTRINGTerminalRuleCall_6_14_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__DevelopmentStakeholderAssignment_6_15_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderStakeholderCrossReference_6_15_2_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderStakeholderQualifiedNameParserRuleCall_6_15_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderStakeholderQualifiedNameParserRuleCall_6_15_2_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getDevelopmentStakeholderStakeholderCrossReference_6_15_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__GoalReferenceAssignment_6_16_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getGoalReferenceGoalCrossReference_6_16_2_0()); }
(
{ before(grammarAccess.getDocRequirementAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_6_16_2_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getDocRequirementAccess().getGoalReferenceGoalQualifiedNameParserRuleCall_6_16_2_0_1()); }
)
{ after(grammarAccess.getDocRequirementAccess().getGoalReferenceGoalCrossReference_6_16_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__DocReferenceAssignment_6_17_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getDocReferenceExternalDocumentParserRuleCall_6_17_2_0()); }
	ruleExternalDocument{ after(grammarAccess.getDocRequirementAccess().getDocReferenceExternalDocumentParserRuleCall_6_17_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DocRequirement__IssuesAssignment_6_18_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDocRequirementAccess().getIssuesSTRINGTerminalRuleCall_6_18_1_0()); }
	RULE_STRING{ after(grammarAccess.getDocRequirementAccess().getIssuesSTRINGTerminalRuleCall_6_18_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__IncludeAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeEObjectCrossReference_1_0()); }
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeEObjectQualifiedNameParserRuleCall_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeEObjectQualifiedNameParserRuleCall_1_0_1()); }
)
{ after(grammarAccess.getIncludeGlobalRequirementAccess().getIncludeEObjectCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__ComponentCategoryAssignment_2_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getComponentCategoryComponentCategoryParserRuleCall_2_1_0_0()); }
	ruleComponentCategory{ after(grammarAccess.getIncludeGlobalRequirementAccess().getComponentCategoryComponentCategoryParserRuleCall_2_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeGlobalRequirement__SelfAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getSelfSelfKeyword_2_1_1_0()); }
(
{ before(grammarAccess.getIncludeGlobalRequirementAccess().getSelfSelfKeyword_2_1_1_0()); }

	Self 

{ after(grammarAccess.getIncludeGlobalRequirementAccess().getSelfSelfKeyword_2_1_1_0()); }
)

{ after(grammarAccess.getIncludeGlobalRequirementAccess().getSelfSelfKeyword_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__InModeAssignment_1_0_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInModeModeCrossReference_1_0_2_0()); }
(
{ before(grammarAccess.getWhenConditionAccess().getInModeModeIDTerminalRuleCall_1_0_2_0_1()); }
	RULE_ID{ after(grammarAccess.getWhenConditionAccess().getInModeModeIDTerminalRuleCall_1_0_2_0_1()); }
)
{ after(grammarAccess.getWhenConditionAccess().getInModeModeCrossReference_1_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__InModeAssignment_1_0_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInModeModeCrossReference_1_0_3_1_0()); }
(
{ before(grammarAccess.getWhenConditionAccess().getInModeModeIDTerminalRuleCall_1_0_3_1_0_1()); }
	RULE_ID{ after(grammarAccess.getWhenConditionAccess().getInModeModeIDTerminalRuleCall_1_0_3_1_0_1()); }
)
{ after(grammarAccess.getWhenConditionAccess().getInModeModeCrossReference_1_0_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__InErrorStateAssignment_1_1_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateCrossReference_1_1_3_0()); }
(
{ before(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateIDTerminalRuleCall_1_1_3_0_1()); }
	RULE_ID{ after(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateIDTerminalRuleCall_1_1_3_0_1()); }
)
{ after(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateCrossReference_1_1_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__InErrorStateAssignment_1_1_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateCrossReference_1_1_4_1_0()); }
(
{ before(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateIDTerminalRuleCall_1_1_4_1_0_1()); }
	RULE_ID{ after(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateIDTerminalRuleCall_1_1_4_1_0_1()); }
)
{ after(grammarAccess.getWhenConditionAccess().getInErrorStateErrorBehaviorStateCrossReference_1_1_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WhenCondition__ConditionAssignment_1_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWhenConditionAccess().getConditionAExpressionParserRuleCall_1_2_0()); }
	ruleAExpression{ after(grammarAccess.getWhenConditionAccess().getConditionAExpressionParserRuleCall_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InformalPredicate__DescriptionAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInformalPredicateAccess().getDescriptionSTRINGTerminalRuleCall_2_0()); }
	RULE_STRING{ after(grammarAccess.getInformalPredicateAccess().getDescriptionSTRINGTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Predicate__XpressionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateAccess().getXpressionAExpressionParserRuleCall_1_0()); }
	ruleAExpression{ after(grammarAccess.getPredicateAccess().getXpressionAExpressionParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValuePredicate__XpressionAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValuePredicateAccess().getXpressionAAndExpressionParserRuleCall_2_0()); }
	ruleAAndExpression{ after(grammarAccess.getValuePredicateAccess().getXpressionAAndExpressionParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValuePredicate__DesiredValueAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValuePredicateAccess().getDesiredValueDesiredValueParserRuleCall_3_0()); }
	ruleDesiredValue{ after(grammarAccess.getValuePredicateAccess().getDesiredValueDesiredValueParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DesiredValue__UptoAssignment_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDesiredValueAccess().getUptoUptoKeyword_0_0_0()); }
(
{ before(grammarAccess.getDesiredValueAccess().getUptoUptoKeyword_0_0_0()); }

	Upto 

{ after(grammarAccess.getDesiredValueAccess().getUptoUptoKeyword_0_0_0()); }
)

{ after(grammarAccess.getDesiredValueAccess().getUptoUptoKeyword_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DesiredValue__ValueAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDesiredValueAccess().getValueAExpressionParserRuleCall_1_0()); }
	ruleAExpression{ after(grammarAccess.getDesiredValueAccess().getValueAExpressionParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalDocument__DocReferenceAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExternalDocumentAccess().getDocReferenceDOCPATHParserRuleCall_0_0()); }
	ruleDOCPATH{ after(grammarAccess.getExternalDocumentAccess().getDocReferenceDOCPATHParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalDocument__DocFragmentAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExternalDocumentAccess().getDocFragmentDOCFRAGMENTParserRuleCall_1_1_0()); }
	ruleDOCFRAGMENT{ after(grammarAccess.getExternalDocumentAccess().getDocFragmentDOCFRAGMENTParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Description__DescriptionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionAccess().getDescriptionDescriptionElementParserRuleCall_1_0()); }
	ruleDescriptionElement{ after(grammarAccess.getDescriptionAccess().getDescriptionDescriptionElementParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionElement__TextAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionElementAccess().getTextSTRINGTerminalRuleCall_0_0()); }
	RULE_STRING{ after(grammarAccess.getDescriptionElementAccess().getTextSTRINGTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionElement__ShowValueAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionElementAccess().getShowValueShowValueParserRuleCall_1_0()); }
	ruleShowValue{ after(grammarAccess.getDescriptionElementAccess().getShowValueShowValueParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionElement__ThisTargetAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionElementAccess().getThisTargetThisKeyword_2_0()); }
(
{ before(grammarAccess.getDescriptionElementAccess().getThisTargetThisKeyword_2_0()); }

	This 

{ after(grammarAccess.getDescriptionElementAccess().getThisTargetThisKeyword_2_0()); }
)

{ after(grammarAccess.getDescriptionElementAccess().getThisTargetThisKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionElement__ImageAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDescriptionElementAccess().getImageImageReferenceParserRuleCall_3_0()); }
	ruleImageReference{ after(grammarAccess.getDescriptionElementAccess().getImageImageReferenceParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Rationale__TextAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRationaleAccess().getTextSTRINGTerminalRuleCall_1_0()); }
	RULE_STRING{ after(grammarAccess.getRationaleAccess().getTextSTRINGTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__VolatilityAssignment_2_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getVolatilityINTTerminalRuleCall_2_0_1_0()); }
	RULE_INT{ after(grammarAccess.getUncertaintyAccess().getVolatilityINTTerminalRuleCall_2_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Uncertainty__ImpactAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUncertaintyAccess().getImpactINTTerminalRuleCall_2_1_1_0()); }
	RULE_INT{ after(grammarAccess.getUncertaintyAccess().getImpactINTTerminalRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__IssueTypeAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getIssueTypeResultIssueTypeEnumRuleCall_0_0()); }
	ruleResultIssueType{ after(grammarAccess.getResultIssueAccess().getIssueTypeResultIssueTypeEnumRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__MessageAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getMessageSTRINGTerminalRuleCall_1_0()); }
	RULE_STRING{ after(grammarAccess.getResultIssueAccess().getMessageSTRINGTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__TargetAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getTargetEObjectCrossReference_2_1_0()); }
(
{ before(grammarAccess.getResultIssueAccess().getTargetEObjectURIIDParserRuleCall_2_1_0_1()); }
	ruleURIID{ after(grammarAccess.getResultIssueAccess().getTargetEObjectURIIDParserRuleCall_2_1_0_1()); }
)
{ after(grammarAccess.getResultIssueAccess().getTargetEObjectCrossReference_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__ExceptionTypeAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getExceptionTypeSTRINGTerminalRuleCall_3_1_0()); }
	RULE_STRING{ after(grammarAccess.getResultIssueAccess().getExceptionTypeSTRINGTerminalRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__DiagnosticIdAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getDiagnosticIdSTRINGTerminalRuleCall_4_1_0()); }
	RULE_STRING{ after(grammarAccess.getResultIssueAccess().getDiagnosticIdSTRINGTerminalRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ResultIssue__IssuesAssignment_5_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getResultIssueAccess().getIssuesResultIssueParserRuleCall_5_1_0()); }
	ruleResultIssue{ after(grammarAccess.getResultIssueAccess().getIssuesResultIssueParserRuleCall_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__TypeAssignment_2_0_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getTypeIDTerminalRuleCall_2_0_0_0_0()); }
	RULE_ID{ after(grammarAccess.getValDeclarationAccess().getTypeIDTerminalRuleCall_2_0_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__NameAssignment_2_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getNameIDTerminalRuleCall_2_0_0_1_0()); }
	RULE_ID{ after(grammarAccess.getValDeclarationAccess().getNameIDTerminalRuleCall_2_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__NameAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getNameIDTerminalRuleCall_2_1_0()); }
	RULE_ID{ after(grammarAccess.getValDeclarationAccess().getNameIDTerminalRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ValDeclaration__RightAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getValDeclarationAccess().getRightAExpressionParserRuleCall_4_0()); }
	ruleAExpression{ after(grammarAccess.getValDeclarationAccess().getRightAExpressionParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__TypeAssignment_2_0_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getTypeIDTerminalRuleCall_2_0_0_0_0()); }
	RULE_ID{ after(grammarAccess.getComputeDeclarationAccess().getTypeIDTerminalRuleCall_2_0_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__NameAssignment_2_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getNameIDTerminalRuleCall_2_0_0_1_0()); }
	RULE_ID{ after(grammarAccess.getComputeDeclarationAccess().getNameIDTerminalRuleCall_2_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ComputeDeclaration__NameAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getComputeDeclarationAccess().getNameIDTerminalRuleCall_2_1_0()); }
	RULE_ID{ after(grammarAccess.getComputeDeclarationAccess().getNameIDTerminalRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__APropertyReference__PropertyAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAPropertyReferenceAccess().getPropertyAbstractNamedValueCrossReference_2_0()); }
(
{ before(grammarAccess.getAPropertyReferenceAccess().getPropertyAbstractNamedValueAADLPROPERTYREFERENCEParserRuleCall_2_0_1()); }
	ruleAADLPROPERTYREFERENCE{ after(grammarAccess.getAPropertyReferenceAccess().getPropertyAbstractNamedValueAADLPROPERTYREFERENCEParserRuleCall_2_0_1()); }
)
{ after(grammarAccess.getAPropertyReferenceAccess().getPropertyAbstractNamedValueCrossReference_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AVariableReference__VariableAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAVariableReferenceAccess().getVariableAVariableDeclarationCrossReference_1_0()); }
(
{ before(grammarAccess.getAVariableReferenceAccess().getVariableAVariableDeclarationIDTerminalRuleCall_1_0_1()); }
	RULE_ID{ after(grammarAccess.getAVariableReferenceAccess().getVariableAVariableDeclarationIDTerminalRuleCall_1_0_1()); }
)
{ after(grammarAccess.getAVariableReferenceAccess().getVariableAVariableDeclarationCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ShowValue__RefAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShowValueAccess().getRefAVariableDeclarationCrossReference_0_0()); }
(
{ before(grammarAccess.getShowValueAccess().getRefAVariableDeclarationIDTerminalRuleCall_0_0_1()); }
	RULE_ID{ after(grammarAccess.getShowValueAccess().getRefAVariableDeclarationIDTerminalRuleCall_0_0_1()); }
)
{ after(grammarAccess.getShowValueAccess().getRefAVariableDeclarationCrossReference_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ShowValue__UnitAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShowValueAccess().getUnitUnitLiteralCrossReference_1_1_0()); }
(
{ before(grammarAccess.getShowValueAccess().getUnitUnitLiteralIDTerminalRuleCall_1_1_0_1()); }
	RULE_ID{ after(grammarAccess.getShowValueAccess().getUnitUnitLiteralIDTerminalRuleCall_1_1_0_1()); }
)
{ after(grammarAccess.getShowValueAccess().getUnitUnitLiteralCrossReference_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImageReference__ImgfileAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImageReferenceAccess().getImgfileIMGREFParserRuleCall_1_0()); }
	ruleIMGREF{ after(grammarAccess.getImageReferenceAccess().getImgfileIMGREFParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getFeatureOpOrParserRuleCall_1_0_0_1_0()); }
	ruleOpOr{ after(grammarAccess.getAOrExpressionAccess().getFeatureOpOrParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AOrExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOrExpressionAccess().getRightOperandAAndExpressionParserRuleCall_1_1_0()); }
	ruleAAndExpression{ after(grammarAccess.getAOrExpressionAccess().getRightOperandAAndExpressionParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getFeatureOpAndParserRuleCall_1_0_0_1_0()); }
	ruleOpAnd{ after(grammarAccess.getAAndExpressionAccess().getFeatureOpAndParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AAndExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAndExpressionAccess().getRightOperandAEqualityExpressionParserRuleCall_1_1_0()); }
	ruleAEqualityExpression{ after(grammarAccess.getAAndExpressionAccess().getRightOperandAEqualityExpressionParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getFeatureOpEqualityParserRuleCall_1_0_0_1_0()); }
	ruleOpEquality{ after(grammarAccess.getAEqualityExpressionAccess().getFeatureOpEqualityParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AEqualityExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAEqualityExpressionAccess().getRightOperandARelationalExpressionParserRuleCall_1_1_0()); }
	ruleARelationalExpression{ after(grammarAccess.getAEqualityExpressionAccess().getRightOperandARelationalExpressionParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getFeatureOpCompareParserRuleCall_1_0_0_1_0()); }
	ruleOpCompare{ after(grammarAccess.getARelationalExpressionAccess().getFeatureOpCompareParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ARelationalExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARelationalExpressionAccess().getRightOperandAOtherOperatorExpressionParserRuleCall_1_1_0()); }
	ruleAOtherOperatorExpression{ after(grammarAccess.getARelationalExpressionAccess().getRightOperandAOtherOperatorExpressionParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getFeatureOpOtherParserRuleCall_1_0_0_1_0()); }
	ruleOpOther{ after(grammarAccess.getAOtherOperatorExpressionAccess().getFeatureOpOtherParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AOtherOperatorExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAOtherOperatorExpressionAccess().getRightOperandAAdditiveExpressionParserRuleCall_1_1_0()); }
	ruleAAdditiveExpression{ after(grammarAccess.getAOtherOperatorExpressionAccess().getRightOperandAAdditiveExpressionParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getFeatureOpAddParserRuleCall_1_0_0_1_0()); }
	ruleOpAdd{ after(grammarAccess.getAAdditiveExpressionAccess().getFeatureOpAddParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AAdditiveExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAAdditiveExpressionAccess().getRightOperandAMultiplicativeExpressionParserRuleCall_1_1_0()); }
	ruleAMultiplicativeExpression{ after(grammarAccess.getAAdditiveExpressionAccess().getRightOperandAMultiplicativeExpressionParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__FeatureAssignment_1_0_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getFeatureOpMultiParserRuleCall_1_0_0_1_0()); }
	ruleOpMulti{ after(grammarAccess.getAMultiplicativeExpressionAccess().getFeatureOpMultiParserRuleCall_1_0_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AMultiplicativeExpression__RightOperandAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAMultiplicativeExpressionAccess().getRightOperandAUnaryOperationParserRuleCall_1_1_0()); }
	ruleAUnaryOperation{ after(grammarAccess.getAMultiplicativeExpressionAccess().getRightOperandAUnaryOperationParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AUnaryOperation__FeatureAssignment_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAUnaryOperationAccess().getFeatureOpUnaryParserRuleCall_0_1_0()); }
	ruleOpUnary{ after(grammarAccess.getAUnaryOperationAccess().getFeatureOpUnaryParserRuleCall_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AUnaryOperation__OperandAssignment_0_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAUnaryOperationAccess().getOperandAUnaryOperationParserRuleCall_0_2_0()); }
	ruleAUnaryOperation{ after(grammarAccess.getAUnaryOperationAccess().getOperandAUnaryOperationParserRuleCall_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__FunctionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getFunctionIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getAFunctionCallAccess().getFunctionIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__FunctionCallArgumentsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAExpressionParserRuleCall_3_0()); }
	ruleAExpression{ after(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAExpressionParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AFunctionCall__FunctionCallArgumentsAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAExpressionParserRuleCall_4_1_0()); }
	ruleAExpression{ after(grammarAccess.getAFunctionCallAccess().getFunctionCallArgumentsAExpressionParserRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AIntegerTerm__ValueAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAIntegerTermAccess().getValueAIntParserRuleCall_0_0()); }
	ruleAInt{ after(grammarAccess.getAIntegerTermAccess().getValueAIntParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AIntegerTerm__UnitAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAIntegerTermAccess().getUnitUnitLiteralCrossReference_1_0()); }
(
{ before(grammarAccess.getAIntegerTermAccess().getUnitUnitLiteralIDTerminalRuleCall_1_0_1()); }
	RULE_ID{ after(grammarAccess.getAIntegerTermAccess().getUnitUnitLiteralIDTerminalRuleCall_1_0_1()); }
)
{ after(grammarAccess.getAIntegerTermAccess().getUnitUnitLiteralCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ARealTerm__ValueAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARealTermAccess().getValueARealParserRuleCall_0_0()); }
	ruleAReal{ after(grammarAccess.getARealTermAccess().getValueARealParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ARealTerm__UnitAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getARealTermAccess().getUnitUnitLiteralCrossReference_1_0()); }
(
{ before(grammarAccess.getARealTermAccess().getUnitUnitLiteralIDTerminalRuleCall_1_0_1()); }
	RULE_ID{ after(grammarAccess.getARealTermAccess().getUnitUnitLiteralIDTerminalRuleCall_1_0_1()); }
)
{ after(grammarAccess.getARealTermAccess().getUnitUnitLiteralCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__ASetTerm__ElementsAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getElementsAExpressionParserRuleCall_2_0_0()); }
	ruleAExpression{ after(grammarAccess.getASetTermAccess().getElementsAExpressionParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ASetTerm__ElementsAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getASetTermAccess().getElementsAExpressionParserRuleCall_2_1_1_0()); }
	ruleAExpression{ after(grammarAccess.getASetTermAccess().getElementsAExpressionParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__ElementsAssignment_3_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getElementsAExpressionParserRuleCall_3_0_0()); }
	ruleAExpression{ after(grammarAccess.getAListTermAccess().getElementsAExpressionParserRuleCall_3_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AListTerm__ElementsAssignment_3_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAListTermAccess().getElementsAExpressionParserRuleCall_3_1_1_0()); }
	ruleAExpression{ after(grammarAccess.getAListTermAccess().getElementsAExpressionParserRuleCall_3_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ABooleanLiteral__ValueAssignment_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getABooleanLiteralAccess().getValueTrueKeyword_1_0_0()); }
(
{ before(grammarAccess.getABooleanLiteralAccess().getValueTrueKeyword_1_0_0()); }

	True 

{ after(grammarAccess.getABooleanLiteralAccess().getValueTrueKeyword_1_0_0()); }
)

{ after(grammarAccess.getABooleanLiteralAccess().getValueTrueKeyword_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StringTerm__ValueAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStringTermAccess().getValueNoQuoteStringParserRuleCall_0()); }
	ruleNoQuoteString{ after(grammarAccess.getStringTermAccess().getValueNoQuoteStringParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

