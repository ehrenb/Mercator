.class public final Lcom/paypal/android/sdk/di;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/util/Locale;

.field private static final d:Ljava/util/Locale;

.field private static e:Ljava/util/List;

.field private static f:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BRL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CZK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DKK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HKD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HUF"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ILS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "JPY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MXN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MYR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NOK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NZD"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "PHP"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PLN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RUB"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SEK"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SGD"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "THB"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TWD"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TRY"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "USD"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/di;->a:Ljava/util/List;

    const-string v0, "JPY, HUF, TWD"

    sput-object v0, Lcom/paypal/android/sdk/di;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/paypal/android/sdk/di;->c:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    sput-object v0, Lcom/paypal/android/sdk/di;->d:Ljava/util/Locale;

    sput-object v3, Lcom/paypal/android/sdk/di;->e:Ljava/util/List;

    sput-object v3, Lcom/paypal/android/sdk/di;->f:Ljava/text/NumberFormat;

    return-void
.end method

.method public static a(DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/di;->c:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-static {p0, p1, p2, v0}, Lcom/paypal/android/sdk/di;->a(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;
    .locals 4

    const-string v0, "#######0"

    sget-object v1, Lcom/paypal/android/sdk/di;->b:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "#####0.00"

    :cond_0
    invoke-virtual {p3, v0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(DLjava/util/Currency;)Ljava/lang/String;
    .locals 6

    invoke-static {p2}, Lcom/paypal/android/sdk/di;->a(Ljava/util/Currency;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/di;->d:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    :goto_0
    const-string v1, "#######0"

    sget-object v2, Lcom/paypal/android/sdk/di;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    const-string v1, "#####0.00"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/di;->c:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/util/Currency;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    const-wide v2, 0x3ff8f5c28f5c28f6L    # 1.56

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    goto :goto_0
.end method

.method public static a(Ljava/util/Locale;Ljava/lang/String;DLjava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-static {p4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    sget-object v5, Lcom/paypal/android/sdk/di;->f:Ljava/text/NumberFormat;

    if-nez v5, :cond_0

    invoke-static {p0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    sput-object v5, Lcom/paypal/android/sdk/di;->f:Ljava/text/NumberFormat;

    :cond_0
    sget-object v5, Lcom/paypal/android/sdk/di;->f:Ljava/text/NumberFormat;

    invoke-virtual {v5, v2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    sget-object v2, Lcom/paypal/android/sdk/di;->f:Ljava/text/NumberFormat;

    const-wide v6, 0x40934a3d70a3d70aL    # 1234.56

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    move v1, v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "AU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AUD"

    :goto_2
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/di;->a(Ljava/util/Currency;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/paypal/android/sdk/di;->d:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    :goto_3
    invoke-static {p2, p3, p4, v0}, Lcom/paypal/android/sdk/di;->a(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GBP"

    goto :goto_2

    :cond_5
    const-string v0, "UK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GBP"

    goto :goto_2

    :cond_6
    const-string v0, "CA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "CAD"

    goto :goto_2

    :cond_7
    const-string v0, "AT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "EUR"

    goto :goto_2

    :cond_8
    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CZK"

    goto :goto_2

    :cond_9
    const-string v0, "DK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "DKK"

    goto/16 :goto_2

    :cond_a
    const-string v0, "FR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_b
    const-string v0, "DE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_c
    const-string v0, "HU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "HUF"

    goto/16 :goto_2

    :cond_d
    const-string v0, "IE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_e
    const-string v0, "IT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_f
    const-string v0, "NL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_10
    const-string v0, "PL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "PLN"

    goto/16 :goto_2

    :cond_11
    const-string v0, "PT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_12
    const-string v0, "ES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_13
    const-string v0, "SE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "SEK"

    goto/16 :goto_2

    :cond_14
    const-string v0, "ZA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "NZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "NZD"

    goto/16 :goto_2

    :cond_15
    const-string v0, "LT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "EUR"

    goto/16 :goto_2

    :cond_16
    const-string v0, "JP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "JPY"

    goto/16 :goto_2

    :cond_17
    const-string v0, "BR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "BRL"

    goto/16 :goto_2

    :cond_18
    const-string v0, "MY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "MYR"

    goto/16 :goto_2

    :cond_19
    const-string v0, "MX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "MXN"

    goto/16 :goto_2

    :cond_1a
    const-string v0, "RU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "RUB"

    goto/16 :goto_2

    :cond_1b
    const-string v0, "USD"

    goto/16 :goto_2

    :cond_1c
    sget-object v0, Lcom/paypal/android/sdk/di;->c:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    goto/16 :goto_3

    :cond_1d
    const-string v0, ""

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    sget-object v0, Lcom/paypal/android/sdk/di;->e:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/di;->e:Ljava/util/List;

    sget-object v0, Lcom/paypal/android/sdk/di;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/paypal/android/sdk/di;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/di;->e:Ljava/util/List;

    new-instance v3, Lcom/paypal/android/sdk/dj;

    invoke-direct {v3}, Lcom/paypal/android/sdk/dj;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    sget-object v0, Lcom/paypal/android/sdk/di;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/math/BigDecimal;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "paypal.sdk"

    const-string v2, "The specified amount is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v1, "paypal.sdk"

    const-string v2, "The specified amount must be greater than zero."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/paypal/android/sdk/di;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HUF"

    aput-object v3, v2, v0

    const-string v3, "JPY"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "TWD"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-lez v2, :cond_2

    const-string v1, "paypal.sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The specified currency ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not support fractional amounts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
