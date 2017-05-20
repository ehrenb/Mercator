.class public Lcom/seatgeek/sixpack/c;
.super Ljava/lang/Object;
.source "Experiment.java"


# instance fields
.field public final alternatives:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/seatgeek/sixpack/a;",
            ">;"
        }
    .end annotation
.end field

.field public final forcedChoice:Lcom/seatgeek/sixpack/a;

.field public final name:Ljava/lang/String;

.field public final sixpack:Lcom/seatgeek/sixpack/g;

.field public final trafficFraction:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lcom/seatgeek/sixpack/g;Ljava/lang/String;Ljava/util/Set;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/seatgeek/sixpack/g;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/seatgeek/sixpack/a;",
            ">;",
            "Lcom/seatgeek/sixpack/a;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/seatgeek/sixpack/c;->sixpack:Lcom/seatgeek/sixpack/g;

    .line 39
    iput-object p2, p0, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    .line 41
    iput-object p4, p0, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    .line 42
    iput-object p5, p0, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/seatgeek/sixpack/e;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/seatgeek/sixpack/c;->sixpack:Lcom/seatgeek/sixpack/g;

    invoke-virtual {v0, p0}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/seatgeek/sixpack/f;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/seatgeek/sixpack/c;->sixpack:Lcom/seatgeek/sixpack/g;

    invoke-virtual {v0, p0}, Lcom/seatgeek/sixpack/g;->b(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/seatgeek/sixpack/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seatgeek/sixpack/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    return-object v0
.end method
