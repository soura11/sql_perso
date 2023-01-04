correction de echref

ackage org.eclipse.model;

import java.util.Arrays;

public class Formation {
    private String intitule;
    private int nbrJours;
    private Stagiaire[] stagiaires;

    public Formation() {
    }

    public Formation(String intitule, int nbrJours, Stagiaire... stagiaires) {
        this.intitule = intitule;
        this.nbrJours = nbrJours;
        this.stagiaires = stagiaires;
    }

    public String getIntitule() {
        return intitule;
    }

    public void setIntitule(String intitule) {
        this.intitule = intitule;
    }

    public int getNbrJours() {
        return nbrJours;
    }

    public void setNbrJours(int nbrJours) {
        this.nbrJours = nbrJours;
    }

    public Stagiaire[] getStagiaires() {
        return stagiaires;
    }

    public void setStagiaires(Stagiaire[] stagiaires) {
        this.stagiaires = stagiaires;
    }

    public float calculerMoyenneFormation() {
        var somme = 0;
        for (Stagiaire elt : stagiaires) {
            somme += elt.calculerMoyenne();
        }
        return somme / stagiaires.length;
    }
	
	public int trouverIndiceMax() {
        var indiceMax = 0;
        var moyenneMax = stagiaires[0].calculerMoyenne();
        for (int i = 1; i < stagiaires.length; i++) {
            if (stagiaires[i].calculerMoyenne() > moyenneMax) {
                indiceMax = i;
                moyenneMax = stagiaires[i].calculerMoyenne();
            }
        }
        return indiceMax;
    }


    @Override
    public String toString() {
        return "Formation [intitule=" + intitule + ", nbrJours=" + nbrJours + ", stagiaires="
                + Arrays.toString(stagiaires) + "]";
    }