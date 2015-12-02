/* This file was generated by SableCC (http://www.sablecc.org/). */

package malgol.node;

import malgol.analysis.*;

@SuppressWarnings("nls")
public final class AAndAndExp extends PAndExp
{
    private PAndExp _left_;
    private TAmp _amp_;
    private PNotExp _right_;

    public AAndAndExp()
    {
        // Constructor
    }

    public AAndAndExp(
        @SuppressWarnings("hiding") PAndExp _left_,
        @SuppressWarnings("hiding") TAmp _amp_,
        @SuppressWarnings("hiding") PNotExp _right_)
    {
        // Constructor
        setLeft(_left_);

        setAmp(_amp_);

        setRight(_right_);

    }

    @Override
    public Object clone()
    {
        return new AAndAndExp(
            cloneNode(this._left_),
            cloneNode(this._amp_),
            cloneNode(this._right_));
    }

    @Override
    public void apply(Switch sw)
    {
        ((Analysis) sw).caseAAndAndExp(this);
    }

    public PAndExp getLeft()
    {
        return this._left_;
    }

    public void setLeft(PAndExp node)
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

    public TAmp getAmp()
    {
        return this._amp_;
    }

    public void setAmp(TAmp node)
    {
        if(this._amp_ != null)
        {
            this._amp_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._amp_ = node;
    }

    public PNotExp getRight()
    {
        return this._right_;
    }

    public void setRight(PNotExp node)
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
            + toString(this._amp_)
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

        if(this._amp_ == child)
        {
            this._amp_ = null;
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
            setLeft((PAndExp) newChild);
            return;
        }

        if(this._amp_ == oldChild)
        {
            setAmp((TAmp) newChild);
            return;
        }

        if(this._right_ == oldChild)
        {
            setRight((PNotExp) newChild);
            return;
        }

        throw new RuntimeException("Not a child.");
    }
}