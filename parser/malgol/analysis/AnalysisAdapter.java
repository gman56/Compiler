/* This file was generated by SableCC (http://www.sablecc.org/). */

package malgol.analysis;

import java.util.*;
import malgol.node.*;

public class AnalysisAdapter implements Analysis
{
    private Hashtable<Node,Object> in;
    private Hashtable<Node,Object> out;

    @Override
    public Object getIn(Node node)
    {
        if(this.in == null)
        {
            return null;
        }

        return this.in.get(node);
    }

    @Override
    public void setIn(Node node, Object o)
    {
        if(this.in == null)
        {
            this.in = new Hashtable<Node,Object>(1);
        }

        if(o != null)
        {
            this.in.put(node, o);
        }
        else
        {
            this.in.remove(node);
        }
    }

    @Override
    public Object getOut(Node node)
    {
        if(this.out == null)
        {
            return null;
        }

        return this.out.get(node);
    }

    @Override
    public void setOut(Node node, Object o)
    {
        if(this.out == null)
        {
            this.out = new Hashtable<Node,Object>(1);
        }

        if(o != null)
        {
            this.out.put(node, o);
        }
        else
        {
            this.out.remove(node);
        }
    }

    @Override
    public void caseStart(Start node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAProgram(AProgram node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeFunctionDefList(ASomeFunctionDefList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoneFunctionDefList(ANoneFunctionDefList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAFunctionDef(AFunctionDef node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeParamList(ASomeParamList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoneParamList(ANoneParamList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeParamListTail(ASomeParamListTail node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoneParamListTail(ANoneParamListTail node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABlockBlock(ABlockBlock node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAPrintStmt(APrintStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAAssignStmt(AAssignStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABlockStmt(ABlockStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASelectStmt(ASelectStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAWhileStmt(AWhileStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASkipStmt(ASkipStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAReturnStmt(AReturnStmt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeDeclsDeclsStmts(ASomeDeclsDeclsStmts node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoDeclsDeclsStmts(ANoDeclsDeclsStmts node)
    {
        defaultCase(node);
    }

    @Override
    public void caseADecl(ADecl node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeStmtList(ASomeStmtList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoneStmtList(ANoneStmtList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAIntType(AIntType node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABoolType(ABoolType node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAArrayType(AArrayType node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAOrExp(AOrExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABaseExp(ABaseExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAAndAndExp(AAndAndExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABaseAndExp(ABaseAndExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANotNotExp(ANotNotExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABaseNotExp(ABaseNotExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseALtRelExp(ALtRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAGtRelExp(AGtRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAEqRelExp(AEqRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANeqRelExp(ANeqRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAGeqRelExp(AGeqRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseALeqRelExp(ALeqRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAIntExpRelExp(AIntExpRelExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAPlusIntExp(APlusIntExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAMinusIntExp(AMinusIntExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseATermIntExp(ATermIntExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAMultTerm(AMultTerm node)
    {
        defaultCase(node);
    }

    @Override
    public void caseADivTerm(ADivTerm node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAModTerm(AModTerm node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAFactorTerm(AFactorTerm node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAIntNegFactor(AIntNegFactor node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAPrimeExpFactor(APrimeExpFactor node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAIntPrimeExp(AIntPrimeExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseABoolPrimeExp(ABoolPrimeExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAVarPrimeExp(AVarPrimeExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAFunctionCallPrimeExp(AFunctionCallPrimeExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAParenPrimeExp(AParenPrimeExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAIdVarExp(AIdVarExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseAArrayVarExp(AArrayVarExp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeArgList(ASomeArgList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoneArgList(ANoneArgList node)
    {
        defaultCase(node);
    }

    @Override
    public void caseASomeArgListTail(ASomeArgListTail node)
    {
        defaultCase(node);
    }

    @Override
    public void caseANoneArgListTail(ANoneArgListTail node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTLPar(TLPar node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTRPar(TRPar node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTLBrace(TLBrace node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTRBrace(TRBrace node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTLBracket(TLBracket node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTRBracket(TRBracket node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTPlus(TPlus node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTMinus(TMinus node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTMult(TMult node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTDiv(TDiv node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTMod(TMod node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTComma(TComma node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTLt(TLt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTGt(TGt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTGeq(TGeq node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTLeq(TLeq node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTEq(TEq node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTNeq(TNeq node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTAmp(TAmp node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTBar(TBar node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTBang(TBang node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTColonEquals(TColonEquals node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTInt(TInt node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTBool(TBool node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTArrayOf(TArrayOf node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTColon(TColon node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTPrint(TPrint node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTIf(TIf node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTThen(TThen node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTElse(TElse node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTWhile(TWhile node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTDo(TDo node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTSkip(TSkip node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTReturn(TReturn node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTBoolean(TBoolean node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTBlank(TBlank node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTNumber(TNumber node)
    {
        defaultCase(node);
    }

    @Override
    public void caseTId(TId node)
    {
        defaultCase(node);
    }

    @Override
    public void caseEOF(EOF node)
    {
        defaultCase(node);
    }

    @Override
    public void caseInvalidToken(InvalidToken node)
    {
        defaultCase(node);
    }

    public void defaultCase(@SuppressWarnings("unused") Node node)
    {
        // do nothing
    }
}
