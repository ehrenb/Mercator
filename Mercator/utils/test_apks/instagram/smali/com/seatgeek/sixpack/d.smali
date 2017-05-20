.class public Lcom/seatgeek/sixpack/d;
.super Ljava/lang/Object;
.source "ExperimentBuilder.java"


# instance fields
.field private alternatives:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/seatgeek/sixpack/a;",
            ">;"
        }
    .end annotation
.end field

.field private forcedChoice:Lcom/seatgeek/sixpack/a;

.field private name:Ljava/lang/String;

.field private sixpack:Lcom/seatgeek/sixpack/g;

.field private trafficFraction:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/seatgeek/sixpack/g;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/seatgeek/sixpack/d;->sixpack:Lcom/seatgeek/sixpack/g;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/seatgeek/sixpack/c;
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Lcom/seatgeek/sixpack/NoExperimentNameException;

    invoke-direct {v0}, Lcom/seatgeek/sixpack/NoExperimentNameException;-><init>()V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    :cond_2
    new-instance v0, Lcom/seatgeek/sixpack/NoAlternativesException;

    invoke-direct {v0}, Lcom/seatgeek/sixpack/NoAlternativesException;-><init>()V

    throw v0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->sixpack:Lcom/seatgeek/sixpack/g;

    iget-object v1, p0, Lcom/seatgeek/sixpack/d;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    iget-object v3, p0, Lcom/seatgeek/sixpack/d;->forcedChoice:Lcom/seatgeek/sixpack/a;

    iget-object v4, p0, Lcom/seatgeek/sixpack/d;->trafficFraction:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/seatgeek/sixpack/g;->a(Ljava/lang/String;Ljava/util/Set;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;)V

    .line 132
    new-instance v0, Lcom/seatgeek/sixpack/c;

    iget-object v1, p0, Lcom/seatgeek/sixpack/d;->sixpack:Lcom/seatgeek/sixpack/g;

    iget-object v2, p0, Lcom/seatgeek/sixpack/d;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    iget-object v4, p0, Lcom/seatgeek/sixpack/d;->forcedChoice:Lcom/seatgeek/sixpack/a;

    iget-object v5, p0, Lcom/seatgeek/sixpack/d;->trafficFraction:Ljava/lang/Double;

    invoke-direct/range {v0 .. v5}, Lcom/seatgeek/sixpack/c;-><init>(Lcom/seatgeek/sixpack/g;Ljava/lang/String;Ljava/util/Set;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;)V

    return-object v0
.end method

.method public varargs a(Lcom/seatgeek/sixpack/a;[Lcom/seatgeek/sixpack/a;)Lcom/seatgeek/sixpack/d;
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create experiment with null control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 76
    new-instance v1, Ljava/util/LinkedHashSet;

    if-eqz p2, :cond_3

    array-length v0, p2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    if-eqz p2, :cond_2

    .line 82
    iget-object v0, p0, Lcom/seatgeek/sixpack/d;->alternatives:Ljava/util/Set;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 85
    :cond_2
    return-object p0

    .line 76
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/seatgeek/sixpack/d;
    .locals 2

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Experiment name cannot be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    sget-object v0, Lcom/seatgeek/sixpack/g;->NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Experiment name must match regex: ^[a-z0-9][a-z0-9\\-_ ]*$"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iput-object p1, p0, Lcom/seatgeek/sixpack/d;->name:Ljava/lang/String;

    .line 59
    return-object p0
.end method
