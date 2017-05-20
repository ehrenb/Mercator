.class public Lcom/seatgeek/sixpack/b;
.super Ljava/lang/Object;
.source "ConvertedExperiment.java"


# instance fields
.field public final baseExperiment:Lcom/seatgeek/sixpack/c;

.field public final sixpack:Lcom/seatgeek/sixpack/g;


# direct methods
.method constructor <init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/seatgeek/sixpack/b;->sixpack:Lcom/seatgeek/sixpack/g;

    .line 20
    iput-object p2, p0, Lcom/seatgeek/sixpack/b;->baseExperiment:Lcom/seatgeek/sixpack/c;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    instance-of v2, p1, Lcom/seatgeek/sixpack/b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 28
    :cond_2
    check-cast p1, Lcom/seatgeek/sixpack/b;

    .line 30
    iget-object v2, p0, Lcom/seatgeek/sixpack/b;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v3, p1, Lcom/seatgeek/sixpack/b;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 31
    :cond_3
    iget-object v2, p0, Lcom/seatgeek/sixpack/b;->sixpack:Lcom/seatgeek/sixpack/g;

    iget-object v3, p1, Lcom/seatgeek/sixpack/b;->sixpack:Lcom/seatgeek/sixpack/g;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/seatgeek/sixpack/b;->sixpack:Lcom/seatgeek/sixpack/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/seatgeek/sixpack/b;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    return v0
.end method
