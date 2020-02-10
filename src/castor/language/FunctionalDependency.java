package castor.language;

import java.util.LinkedList;
import java.util.List;

public class FunctionalDependency {
	
	private String predicateName;
	private List<String> determinants;
	private List<String> dependents;
	
	public FunctionalDependency(String predicateName, List<String> leftSide, List<String> rightSide) {
		this.determinants = rightSide;
		this.dependents = leftSide;
		this.predicateName = predicateName;
	}
	
	public List<String> getDeterminants() {
		return determinants;
	}
	public List<String> getDependents() {
		return dependents;
	}
	public String getPredicateName() {
		return predicateName;
	}
	
	public static FunctionalDependency stringToFD(String fdString) {
		String relationName;
		List<String> leftSide = new LinkedList<String>();
		List<String> rightSide = new LinkedList<String>();
		
		
		String[] fdTokens = fdString.split("\\(|\\)");
		relationName = fdTokens[0];
		
		fdTokens = fdTokens[1].split("->");
		
		String leftSideString = fdTokens[0].replaceAll("[\\[\\]]", "");
		String rightSideString = fdTokens[1].replaceAll("[\\[\\]]", "");
		
		String[] leftSideArgs = leftSideString.split(",|\\s+");
		String[] rightSideArgs = rightSideString.split(",|\\s+");
		
		for (int i = 0; i < leftSideArgs.length; i++) {
			leftSide.add(leftSideArgs[i]);
		}
		for (int i = 0; i < rightSideArgs.length; i++) {
			rightSide.add(rightSideArgs[i]);
		}
		
		FunctionalDependency fd = new FunctionalDependency(relationName, leftSide, rightSide);
		
		return fd;
	}

	public void printFD() {
		
		System.out.println(this.getDependents());
		System.out.println(this.getDeterminants());
		System.out.println(this.getPredicateName());
		
	}
	
}
