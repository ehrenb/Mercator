.class public Lcom/seatgeek/sixpack/e;
.super Ljava/lang/Object;
.source "ParticipatingExperiment.java"


# instance fields
.field public final baseExperiment:Lcom/seatgeek/sixpack/c;

.field public final selectedAlternative:Lcom/seatgeek/sixpack/a;

.field private final sixpack:Lcom/seatgeek/sixpack/g;


# direct methods
.method constructor <init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;Lcom/seatgeek/sixpack/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/seatgeek/sixpack/e;->sixpack:Lcom/seatgeek/sixpack/g;

    .line 26
    iput-object p2, p0, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    .line 27
    iput-object p3, p0, Lcom/seatgeek/sixpack/e;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/seatgeek/sixpack/b;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/seatgeek/sixpack/e;->sixpack:Lcom/seatgeek/sixpack/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/e;Ljava/lang/String;)Lcom/seatgeek/sixpack/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    instance-of v2, p1, Lcom/seatgeek/sixpack/e;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 65
    :cond_2
    check-cast p1, Lcom/seatgeek/sixpack/e;

    .line 67
    iget-object v2, p0, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v3, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/seatgeek/sixpack/e;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    iget-object v3, p1, Lcom/seatgeek/sixpack/e;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    invoke-virtual {v2, v3}, Lcom/seatgeek/sixpack/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/seatgeek/sixpack/e;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    invoke-virtual {v1}, Lcom/seatgeek/sixpack/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticipatingExperiment{sixpack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/seatgeek/sixpack/e;->sixpack:Lcom/seatgeek/sixpack/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseExperiment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedAlternative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/seatgeek/sixpack/e;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
