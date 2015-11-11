class reduce_java{
	public static void main(String[] args){
		int numLimit = 999999;	
		String limit = System.getenv("LIMIT");

		long sum = 0;
		
		if(limit != null && !limit.isEmpty()){
			numLimit = Integer.parseInt(limit);
		}

		int[] arg = new int[numLimit+1];

		for (int i = 0; i < numLimit + 1; i++){
			arg[i] = i;
			
		}

		for (int n : arg){
			sum += n;
		}

		System.out.println(sum);

	}

}
