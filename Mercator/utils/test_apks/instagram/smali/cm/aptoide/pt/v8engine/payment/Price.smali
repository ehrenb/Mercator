.class public Lcm/aptoide/pt/v8engine/payment/Price;
.super Ljava/lang/Object;
.source "Price.java"


# instance fields
.field private final amount:D

.field private final currency:Ljava/lang/String;

.field private final currencySymbol:Ljava/lang/String;

.field private final taxRate:D


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcm/aptoide/pt/v8engine/payment/Price;->amount:D

    .line 20
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/Price;->currency:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/payment/Price;->currencySymbol:Ljava/lang/String;

    .line 22
    iput-wide p5, p0, Lcm/aptoide/pt/v8engine/payment/Price;->taxRate:D

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    check-cast p1, Lcm/aptoide/pt/v8engine/payment/Price;

    .line 62
    iget-wide v2, p1, Lcm/aptoide/pt/v8engine/payment/Price;->amount:D

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/payment/Price;->amount:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_4
    iget-wide v2, p1, Lcm/aptoide/pt/v8engine/payment/Price;->taxRate:D

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/payment/Price;->taxRate:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_5
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/payment/Price;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcm/aptoide/pt/v8engine/payment/Price;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public getAmount()D
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/payment/Price;->amount:D

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/Price;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/Price;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxRate()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/payment/Price;->taxRate:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 44
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/payment/Price;->amount:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 45
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Price;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/payment/Price;->taxRate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 49
    return v0
.end method
