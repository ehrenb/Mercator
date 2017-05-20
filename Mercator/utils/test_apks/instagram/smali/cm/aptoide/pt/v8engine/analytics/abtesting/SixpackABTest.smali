.class public Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;
.super Ljava/lang/Object;
.source "SixpackABTest.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final alternativeParser:Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final experiment:Lcom/seatgeek/sixpack/c;

.field private participatingExperiment:Lcom/seatgeek/sixpack/e;

.field private prefetchedExperiment:Lcom/seatgeek/sixpack/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/seatgeek/sixpack/c;Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/seatgeek/sixpack/c;",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    .line 26
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternativeParser:Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;

    .line 27
    return-void
.end method

.method private isParticipating()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->participatingExperiment:Lcom/seatgeek/sixpack/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrefetched()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->prefetchedExperiment:Lcom/seatgeek/sixpack/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$convert$3(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 62
    return-object p0
.end method

.method static synthetic lambda$prefetch$7(Lcom/seatgeek/sixpack/f;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public alternative()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternativeParser:Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    iget-object v1, v1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    iget-object v1, v1, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->isParticipating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternativeParser:Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->participatingExperiment:Lcom/seatgeek/sixpack/e;

    iget-object v1, v1, Lcom/seatgeek/sixpack/e;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    iget-object v1, v1, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->isPrefetched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternativeParser:Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->prefetchedExperiment:Lcom/seatgeek/sixpack/f;

    iget-object v1, v1, Lcom/seatgeek/sixpack/f;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    iget-object v1, v1, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternativeParser:Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v1}, Lcom/seatgeek/sixpack/c;->d()Lcom/seatgeek/sixpack/a;

    move-result-object v1

    iget-object v1, v1, Lcom/seatgeek/sixpack/a;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public convert()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcom/seatgeek/sixpack/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->isParticipating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 61
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Lrx/b/e;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Lrx/b/b;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 34
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_2
    check-cast p1, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    .line 39
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    iget-object v0, v0, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method synthetic lambda$convert$4(Ljava/lang/Boolean;)Lcom/seatgeek/sixpack/b;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->participatingExperiment:Lcom/seatgeek/sixpack/e;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/e;->a()Lcom/seatgeek/sixpack/b;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$convert$5(Lcom/seatgeek/sixpack/b;)V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert Test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternative()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$participate$0()Lrx/d;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->isParticipating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$participate$1(Ljava/lang/Boolean;)Lcom/seatgeek/sixpack/e;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/c;->a()Lcom/seatgeek/sixpack/e;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->participatingExperiment:Lcom/seatgeek/sixpack/e;

    .line 53
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->participatingExperiment:Lcom/seatgeek/sixpack/e;

    return-object v0
.end method

.method synthetic lambda$participate$2(Lcom/seatgeek/sixpack/e;)V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participating on test and the alternative is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->alternative()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$prefetch$6()Lcom/seatgeek/sixpack/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->experiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/c;->b()Lcom/seatgeek/sixpack/f;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->prefetchedExperiment:Lcom/seatgeek/sixpack/f;

    return-object v0
.end method

.method public participate()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcom/seatgeek/sixpack/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Lrx/b/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/b/d;)Lrx/d;

    move-result-object v0

    .line 48
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Lrx/b/e;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Lrx/b/b;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public prefetch()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;->isPrefetched()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
