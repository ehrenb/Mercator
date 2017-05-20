.class public Lcm/aptoide/pt/iab/SKU;
.super Ljava/lang/Object;
.source "SKU.java"


# instance fields
.field private amount:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_amount_micros"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_currency_code"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/iab/SKU;->productId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcm/aptoide/pt/iab/SKU;->type:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcm/aptoide/pt/iab/SKU;->price:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcm/aptoide/pt/iab/SKU;->currency:Ljava/lang/String;

    .line 36
    iput-wide p5, p0, Lcm/aptoide/pt/iab/SKU;->amount:J

    .line 37
    iput-object p7, p0, Lcm/aptoide/pt/iab/SKU;->title:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcm/aptoide/pt/iab/SKU;->description:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAmount()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcm/aptoide/pt/iab/SKU;->amount:J

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/iab/SKU;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/iab/SKU;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/iab/SKU;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/iab/SKU;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/iab/SKU;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/iab/SKU;->type:Ljava/lang/String;

    return-object v0
.end method
