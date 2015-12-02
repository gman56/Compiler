package malgol.type;

import java.util.List;

import malgol.ast.Expression;

public class FunctionType extends Type {
	private List<Type> paramTypes;
	private int numParam;
	private Type returnType;

	public FunctionType() {
		super(-1);
	}
	
	public List<Type> getParamTypes() {
		return paramTypes;
	}
	public void setParamTypes(List<Type> paramTypes) {
		this.paramTypes = paramTypes;
	}
	
	public int getnumParam() {
		return numParam;
	}
	public void setnumParam(int numParam) {
		this.numParam = numParam;
	}
	
	public Type getReturnType() {
		return returnType;
	}
	public void setReturnType(Type returnType) {
		this.returnType = returnType;
	}

	private static final FunctionType unique = new FunctionType();

	public static FunctionType singleton() {
		return unique;
	}

	@Override
	public boolean equals(Type t2) {
		if (!(t2 instanceof FunctionType)) {
			return false;
		}
		FunctionType at2 = (FunctionType) t2;
		return 	   (numParam == at2.numParam) 
				&& (paramTypes.equals(at2.paramTypes)) 
				&& (returnType.equals(at2.returnType));
	}

	@Override
	public boolean isFunction() {
		return true;
	}

	@Override
	public Type baseType() {
		return ((FunctionType) this).baseType();
	}

}
