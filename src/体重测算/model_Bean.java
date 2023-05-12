package 体重测算;

public class model_Bean {
    public model_Bean() {}

    private String result;
    private String bmi;

    public void setBmi(String w, String h) {
        double wt = Double.parseDouble(w);
        double ht = Double.parseDouble(h);
        double bmit = wt / (ht * ht);
        bmit *= 10;
        int bmitt = (int) bmit;
        bmit = (double) bmitt / 10;
        bmi = String.valueOf(bmit);
    }

    public String getBmi() {
        return bmi;
    }

    public void setResult(String bmi) {
        double bmit = Double.parseDouble(bmi);
        if (bmit > 18.5 && bmit <= 25) {
            result = "正常";
        } else if (bmit > 25 && bmit <= 30) {
            result = "超重";
        } else if (bmit > 30) {
            result = "严重超重";
        } else {
            result = "偏瘦";
        }
    }

    public String getResult() {
        return result;
    }
}
