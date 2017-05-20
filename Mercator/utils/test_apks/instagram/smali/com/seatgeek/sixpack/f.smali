.class public Lcom/seatgeek/sixpack/f;
.super Ljava/lang/Object;
.source "PrefetchedExperiment.java"


# instance fields
.field public final baseExperiment:Lcom/seatgeek/sixpack/c;

.field public final selectedAlternative:Lcom/seatgeek/sixpack/a;

.field private final sixpack:Lcom/seatgeek/sixpack/g;


# direct methods
.method public constructor <init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;Lcom/seatgeek/sixpack/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/seatgeek/sixpack/f;->sixpack:Lcom/seatgeek/sixpack/g;

    .line 18
    iput-object p2, p0, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    .line 19
    iput-object p3, p0, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    instance-of v2, p1, Lcom/seatgeek/sixpack/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 34
    :cond_2
    check-cast p1, Lcom/seatgeek/sixpack/f;

    .line 36
    iget-object v2, p0, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v3, p1, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    .line 37
    goto :goto_0

    .line 36
    :cond_4
    iget-object v2, p1, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    if-nez v2, :cond_3

    .line 38
    :cond_5
    iget-object v2, p0, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    iget-object v3, p1, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    invoke-virtual {v2, v3}, Lcom/seatgeek/sixpack/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    if-nez v2, :cond_6

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/seatgeek/sixpack/f;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 44
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    invoke-virtual {v1}, Lcom/seatgeek/sixpack/a;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 45
    return v0

    :cond_1
    move v0, v1

    .line 43
    goto :goto_0
.end method
