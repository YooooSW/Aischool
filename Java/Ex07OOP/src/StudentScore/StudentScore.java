package StudentScore;

public class StudentScore {
	private String name;
	private int scoreJava;
	private int scoreWeb;
	private int scoreAndroid;

	public StudentScore(String name, int scoreJava, int scoreWeb, int scoreAndroid) {
		this.name = name;
		this.scoreJava = scoreJava;
		this.scoreWeb = scoreWeb;
		this.scoreAndroid = scoreAndroid;
	}	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getScoreJava() {
		return scoreJava;
	}

	public void setScoreJava(int scoreJava) {
		this.scoreJava = scoreJava;
	}

	public int getScoreWeb() {
		return scoreWeb;
	}

	public void setScoreWeb(int scoreWeb) {
		this.scoreWeb = scoreWeb;
	}

	public int getScoreAndroid() {
		return scoreAndroid;
	}

	public void setScoreAndroid(int scoreAndroid) {
		this.scoreAndroid = scoreAndroid;
	}
	
	public int ScoreSum() {
		return this.scoreJava+this.scoreWeb+this.scoreAndroid;
	}
	
	public int ScoreAvg() {
		return ScoreSum()/3;
	}

}