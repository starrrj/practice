package ch15_collection_framework.arrayList;

import java.util.function.Predicate;

public class PredicateIsEqualExample {

	public static void main(String[] args) {
		Predicate<String> predicate;
		
		predicate = Predicate.isEqual(null);
		System.out.println("null, null: " + predicate.test(null));

		predicate = Predicate.isEqual("Java8");
		System.out.println("null, Java8: " + predicate.test(null));
		
		predicate = Predicate.isEqual("null");
		System.out.println("null, Java8: " + predicate.test("Java8"));
		
		predicate = Predicate.isEqual("Java8");
		System.out.println("Java8, Java8: " + predicate.test("Java8"));
	}
}
