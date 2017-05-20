.class public final Lrx/c/a/ab;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lrx/g;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lrx/c/a/ab;->a:J

    .line 39
    iput-object p3, p0, Lrx/c/a/ab;->b:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lrx/c/a/ab;->c:Lrx/g;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lrx/c/a/ab;->c:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 47
    new-instance v1, Lrx/c/a/ab$1;

    invoke-direct {v1, p0, p1, v0, p1}, Lrx/c/a/ab$1;-><init>(Lrx/c/a/ab;Lrx/j;Lrx/g$a;Lrx/j;)V

    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ab;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
