package  org.eclipse.model;

import java.awt.font.TextHitInfo;

import javax.management.ValueExp;

public class Point {
	
	private double abs;
	private double ord;
	
	
	public Point() {
	}

	public Point(double abs, double ord) {
		super();
		this.abs = abs;
		this.ord = ord;
	}
	
	public double getAbs() {
		return abs;
	}
	public void setAbs(double abs) {
		this.abs = abs;
	}
	public double getOrd() {
		return ord;
	}
	public void setOrd(double ord) {
		this.ord = ord;
	}
	 public double calculerDistance(Point p) {           // exo 5 methode non statique pour calculer la distance
	        return Math.sqrt(Math.pow(this.abs - p.abs, 2) + Math.pow(this.ord - p.ord, 2));
	    }
	 public static double distance(Point p1, Point p2) {         // exo 6 methode statique pour calculer la distance
		 return p1.calculerDistance(p2);
		
	 }
	 
	  public Point calculerMilieu(Point p) {         // exo 7
		 var absM = (this.abs+p.abs)/2;
		 var ordM = (this.ord+p.ord)/2;
		 return new Point(absM,ordM);
	 }
	
	public String toString() {
		return "(" + abs + "," + ord + ")";
	}
	
	
}
package org.eclips.test;

import org.eclipse.model.Point;
import org.eclipse.model.TroisPoints;

public class Program {


	public static void main(String[] args) {
		
		Point p1 = new Point(2, 0);
        Point p2 = new Point(6, 0);
        Point p3 = new Point(8, 0);
        System.out.println(p1);
        System.out.println(p1.calculerDistance(p2));   
        System.out.println(Point.distance(p1, p2));
        System.out.println(p1.calculerMilieu(p2));
		
		
	exo 8

package org.eclipse.model;

public class TroisPoints {

	private Point premier;
	private Point deuxième;
	private Point troisième;

	public TroisPoints() {

	}

	public TroisPoints(Point premier, Point deuxième, Point troisième) {
		super();
		this.premier = premier;
		this.deuxième = deuxième;
		this.troisième = troisième;
	}

	public Point getPremier() {
		return premier;
	}

	public void setPremier(Point premier) {
		this.premier = premier;
	}

	public Point getDeuxième() {
		return deuxième;
	}

	public void setDeuxième(Point deuxième) {
		this.deuxième = deuxième;
	}

	public Point getTroisième() {
		return troisième;
	}

	public void setTroisième(Point troisième) {
		this.troisième = troisième;
	}

	public boolean sontAlignes() {
		var d1 = Point.distance(premier, deuxième);
		var d2 = Point.distance(premier, troisième);
		var d3 = Point.distance(troisième, deuxième);
		if (d1 == d2 + d3 || d2 == d1 + d3 || d3 == d1 + d2) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public String toString() {
		return "TroisPoints [premier=" + premier + ", deuxième=" + deuxième + ", troisième=" + troisième + "]";
	}

}	

package org.eclips.test;

import org.eclipse.model.Point;
import org.eclipse.model.TroisPoints;

public class Program {


	public static void main(String[] args) {
		
		Point p1 = new Point(2, 0);
        Point p2 = new Point(6, 0);
        Point p3 = new Point(8, 0);
        System.out.println(p1);
        System.out.println(p1.calculerDistance(p2));
        System.out.println(Point.distance(p1, p2));
        System.out.println(p1.calculerMilieu(p2));
        TroisPoints troisPoints = new TroisPoints(p1, p2, p3);
        System.out.println(troisPoints.sontAlignes());
	}
}
		