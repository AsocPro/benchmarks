class reduce_java{
	public static void main(String[] args){
		int numLimit = 999999;	
		String limit = System.getenv("LIMIT");
		
		int[] a = null;
		int sum = 0;
		
		if(limit.equals(null)){
			numLimit = Integer.parseInt(limit);
		}

		for (int i = 0; i < numLimit; i++){
			a[i] = i;
		}

		for (int i = 0; i < a.length; i++){
			sum += a[i];	
		}


	}

}
