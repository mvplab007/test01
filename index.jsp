package Exercise;

import java.util.Scanner;

public class NewHouse{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String flowers = scanner.nextLine();
        int numFlowers = Integer.parseInt(scanner.nextLine());
        int budget = Integer.parseInt(scanner.nextLine());

        double priceRoses = 5;
        double priceDahlias = 3.80;
        double priceTulips = 2.80;
        double priceNarcissus = 3;
        double priceGladiolus = 2.50;

        double percentOutRoses = 0.1;
        double percentOutDahlias = 0.15;
        double percentOutTulips = 0.15;

        double percentInNarcissus = 0.15;
        double percentInGladiolus = 0.20;
        double sum = 0;
       // double sumDiscount = 0;
        // double restMoney = budget - sum;
        //  double offMOney = Math.abs(sum - budget);
        //  double restPercentMoney = Math.abs(budget - sumDiscount);
        // double percentOffMoney = Math.abs(sumDiscount - budget);
        switch (flowers) {
            case "Roses":
                sum = numFlowers * priceRoses;
                break;
            case "Dahlias":
                sum = numFlowers * priceDahlias;
                break;
            case "Tulips":
                sum = numFlowers * priceTulips;
                break;
            case "Narcissus":
                sum = numFlowers * priceNarcissus;
                break;
            case "Gladiolus":
                sum = numFlowers * priceGladiolus;
                break;

        }



        if (flowers.equalsIgnoreCase("roses") && numFlowers > 80) {
            sum = sum - (sum * percentOutRoses);
        } else if (flowers.equalsIgnoreCase("dahlias") && numFlowers > 90) {
            sum= sum - (sum * percentOutDahlias);
        } else if (flowers.equalsIgnoreCase("tulips") && numFlowers > 80) {
            sum= sum - (sum * percentOutTulips);
        } else if (flowers.equalsIgnoreCase("Narcissus") && numFlowers < 120) {
            sum = sum + (sum * percentInNarcissus);
        } else if (flowers.equalsIgnoreCase("gladiolus") && numFlowers < 80) {
            sum = sum + (sum * percentInGladiolus);
        }

        if (budget >= sum) {
            double moreMoney = budget - sum;
            System.out.printf("Hey, you have a great garden with %d %s and %.2f leva left.", numFlowers, flowers, moreMoney);
        } else if (sum > budget) {
            double missMoney = sum - budget;
            System.out.printf("Not enough money, you need %.2f leva more.", missMoney);
        }
    }
}