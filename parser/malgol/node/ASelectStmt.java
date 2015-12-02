/* This file was generated by SableCC (http://www.sablecc.org/). */

package malgol.node;

import malgol.analysis.*;

@SuppressWarnings("nls")
public final class ASelectStmt extends PStmt
{
    private TIf _if_;
    private PExp _cond_;
    private TThen _then_;
    private PStmt _tBranch_;
    private TElse _else_;
    private PStmt _fBranch_;

    public ASelectStmt()
    {
        // Constructor
    }

    public ASelectStmt(
        @SuppressWarnings("hiding") TIf _if_,
        @SuppressWarnings("hiding") PExp _cond_,
        @SuppressWarnings("hiding") TThen _then_,
        @SuppressWarnings("hiding") PStmt _tBranch_,
        @SuppressWarnings("hiding") TElse _else_,
        @SuppressWarnings("hiding") PStmt _fBranch_)
    {
        // Constructor
        setIf(_if_);

        setCond(_cond_);

        setThen(_then_);

        setTBranch(_tBranch_);

        setElse(_else_);

        setFBranch(_fBranch_);

    }

    @Override
    public Object clone()
    {
        return new ASelectStmt(
            cloneNode(this._if_),
            cloneNode(this._cond_),
            cloneNode(this._then_),
            cloneNode(this._tBranch_),
            cloneNode(this._else_),
            cloneNode(this._fBranch_));
    }

    @Override
    public void apply(Switch sw)
    {
        ((Analysis) sw).caseASelectStmt(this);
    }

    public TIf getIf()
    {
        return this._if_;
    }

    public void setIf(TIf node)
    {
        if(this._if_ != null)
        {
            this._if_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._if_ = node;
    }

    public PExp getCond()
    {
        return this._cond_;
    }

    public void setCond(PExp node)
    {
        if(this._cond_ != null)
        {
            this._cond_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._cond_ = node;
    }

    public TThen getThen()
    {
        return this._then_;
    }

    public void setThen(TThen node)
    {
        if(this._then_ != null)
        {
            this._then_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._then_ = node;
    }

    public PStmt getTBranch()
    {
        return this._tBranch_;
    }

    public void setTBranch(PStmt node)
    {
        if(this._tBranch_ != null)
        {
            this._tBranch_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._tBranch_ = node;
    }

    public TElse getElse()
    {
        return this._else_;
    }

    public void setElse(TElse node)
    {
        if(this._else_ != null)
        {
            this._else_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._else_ = node;
    }

    public PStmt getFBranch()
    {
        return this._fBranch_;
    }

    public void setFBranch(PStmt node)
    {
        if(this._fBranch_ != null)
        {
            this._fBranch_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._fBranch_ = node;
    }

    @Override
    public String toString()
    {
        return ""
            + toString(this._if_)
            + toString(this._cond_)
            + toString(this._then_)
            + toString(this._tBranch_)
            + toString(this._else_)
            + toString(this._fBranch_);
    }

    @Override
    void removeChild(@SuppressWarnings("unused") Node child)
    {
        // Remove child
        if(this._if_ == child)
        {
            this._if_ = null;
            return;
        }

        if(this._cond_ == child)
        {
            this._cond_ = null;
            return;
        }

        if(this._then_ == child)
        {
            this._then_ = null;
            return;
        }

        if(this._tBranch_ == child)
        {
            this._tBranch_ = null;
            return;
        }

        if(this._else_ == child)
        {
            this._else_ = null;
            return;
        }

        if(this._fBranch_ == child)
        {
            this._fBranch_ = null;
            return;
        }

        throw new RuntimeException("Not a child.");
    }

    @Override
    void replaceChild(@SuppressWarnings("unused") Node oldChild, @SuppressWarnings("unused") Node newChild)
    {
        // Replace child
        if(this._if_ == oldChild)
        {
            setIf((TIf) newChild);
            return;
        }

        if(this._cond_ == oldChild)
        {
            setCond((PExp) newChild);
            return;
        }

        if(this._then_ == oldChild)
        {
            setThen((TThen) newChild);
            return;
        }

        if(this._tBranch_ == oldChild)
        {
            setTBranch((PStmt) newChild);
            return;
        }

        if(this._else_ == oldChild)
        {
            setElse((TElse) newChild);
            return;
        }

        if(this._fBranch_ == oldChild)
        {
            setFBranch((PStmt) newChild);
            return;
        }

        throw new RuntimeException("Not a child.");
    }
}
