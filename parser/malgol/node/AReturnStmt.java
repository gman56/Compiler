/* This file was generated by SableCC (http://www.sablecc.org/). */

package malgol.node;

import malgol.analysis.*;

@SuppressWarnings("nls")
public final class AReturnStmt extends PStmt
{
    private TReturn _return_;
    private PExp _exp_;

    public AReturnStmt()
    {
        // Constructor
    }

    public AReturnStmt(
        @SuppressWarnings("hiding") TReturn _return_,
        @SuppressWarnings("hiding") PExp _exp_)
    {
        // Constructor
        setReturn(_return_);

        setExp(_exp_);

    }

    @Override
    public Object clone()
    {
        return new AReturnStmt(
            cloneNode(this._return_),
            cloneNode(this._exp_));
    }

    @Override
    public void apply(Switch sw)
    {
        ((Analysis) sw).caseAReturnStmt(this);
    }

    public TReturn getReturn()
    {
        return this._return_;
    }

    public void setReturn(TReturn node)
    {
        if(this._return_ != null)
        {
            this._return_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._return_ = node;
    }

    public PExp getExp()
    {
        return this._exp_;
    }

    public void setExp(PExp node)
    {
        if(this._exp_ != null)
        {
            this._exp_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._exp_ = node;
    }

    @Override
    public String toString()
    {
        return ""
            + toString(this._return_)
            + toString(this._exp_);
    }

    @Override
    void removeChild(@SuppressWarnings("unused") Node child)
    {
        // Remove child
        if(this._return_ == child)
        {
            this._return_ = null;
            return;
        }

        if(this._exp_ == child)
        {
            this._exp_ = null;
            return;
        }

        throw new RuntimeException("Not a child.");
    }

    @Override
    void replaceChild(@SuppressWarnings("unused") Node oldChild, @SuppressWarnings("unused") Node newChild)
    {
        // Replace child
        if(this._return_ == oldChild)
        {
            setReturn((TReturn) newChild);
            return;
        }

        if(this._exp_ == oldChild)
        {
            setExp((PExp) newChild);
            return;
        }

        throw new RuntimeException("Not a child.");
    }
}
