/* This file was generated by SableCC (http://www.sablecc.org/). */

package malgol.node;

import malgol.analysis.*;

@SuppressWarnings("nls")
public final class AGtRelExp extends PRelExp
{
    private PIntExp _left_;
    private TGt _gt_;
    private PIntExp _right_;

    public AGtRelExp()
    {
        // Constructor
    }

    public AGtRelExp(
        @SuppressWarnings("hiding") PIntExp _left_,
        @SuppressWarnings("hiding") TGt _gt_,
        @SuppressWarnings("hiding") PIntExp _right_)
    {
        // Constructor
        setLeft(_left_);

        setGt(_gt_);

        setRight(_right_);

    }

    @Override
    public Object clone()
    {
        return new AGtRelExp(
            cloneNode(this._left_),
            cloneNode(this._gt_),
            cloneNode(this._right_));
    }

    @Override
    public void apply(Switch sw)
    {
        ((Analysis) sw).caseAGtRelExp(this);
    }

    public PIntExp getLeft()
    {
        return this._left_;
    }

    public void setLeft(PIntExp node)
    {
        if(this._left_ != null)
        {
            this._left_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._left_ = node;
    }

    public TGt getGt()
    {
        return this._gt_;
    }

    public void setGt(TGt node)
    {
        if(this._gt_ != null)
        {
            this._gt_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._gt_ = node;
    }

    public PIntExp getRight()
    {
        return this._right_;
    }

    public void setRight(PIntExp node)
    {
        if(this._right_ != null)
        {
            this._right_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._right_ = node;
    }

    @Override
    public String toString()
    {
        return ""
            + toString(this._left_)
            + toString(this._gt_)
            + toString(this._right_);
    }

    @Override
    void removeChild(@SuppressWarnings("unused") Node child)
    {
        // Remove child
        if(this._left_ == child)
        {
            this._left_ = null;
            return;
        }

        if(this._gt_ == child)
        {
            this._gt_ = null;
            return;
        }

        if(this._right_ == child)
        {
            this._right_ = null;
            return;
        }

        throw new RuntimeException("Not a child.");
    }

    @Override
    void replaceChild(@SuppressWarnings("unused") Node oldChild, @SuppressWarnings("unused") Node newChild)
    {
        // Replace child
        if(this._left_ == oldChild)
        {
            setLeft((PIntExp) newChild);
            return;
        }

        if(this._gt_ == oldChild)
        {
            setGt((TGt) newChild);
            return;
        }

        if(this._right_ == oldChild)
        {
            setRight((PIntExp) newChild);
            return;
        }

        throw new RuntimeException("Not a child.");
    }
}
