.class Lrx/c/a/at;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/at$c;,
        Lrx/c/a/at$b;,
        Lrx/c/a/at$a;
    }
.end annotation

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
.field final a:Lrx/c/a/at$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/at$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/a/at$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/at$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final d:Lrx/g;


# direct methods
.method constructor <init>(Lrx/c/a/at$a;Lrx/c/a/at$b;Lrx/d;Lrx/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/at$a",
            "<TT;>;",
            "Lrx/c/a/at$b",
            "<TT;>;",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/c/a/at;->a:Lrx/c/a/at$a;

    .line 53
    iput-object p2, p0, Lrx/c/a/at;->b:Lrx/c/a/at$b;

    .line 54
    iput-object p3, p0, Lrx/c/a/at;->c:Lrx/d;

    .line 55
    iput-object p4, p0, Lrx/c/a/at;->d:Lrx/g;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 8
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
    .line 60
    iget-object v0, p0, Lrx/c/a/at;->d:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v5

    .line 61
    invoke-virtual {p1, v5}, Lrx/j;->add(Lrx/k;)V

    .line 65
    new-instance v1, Lrx/e/e;

    invoke-direct {v1, p1}, Lrx/e/e;-><init>(Lrx/j;)V

    .line 67
    new-instance v3, Lrx/j/d;

    invoke-direct {v3}, Lrx/j/d;-><init>()V

    .line 68
    invoke-virtual {v1, v3}, Lrx/e/e;->add(Lrx/k;)V

    .line 70
    new-instance v0, Lrx/c/a/at$c;

    iget-object v2, p0, Lrx/c/a/at;->b:Lrx/c/a/at$b;

    iget-object v4, p0, Lrx/c/a/at;->c:Lrx/d;

    invoke-direct/range {v0 .. v5}, Lrx/c/a/at$c;-><init>(Lrx/e/e;Lrx/c/a/at$b;Lrx/j/d;Lrx/d;Lrx/g$a;)V

    .line 72
    invoke-virtual {v1, v0}, Lrx/e/e;->add(Lrx/k;)V

    .line 73
    iget-object v2, v0, Lrx/c/a/at$c;->f:Lrx/c/b/a;

    invoke-virtual {v1, v2}, Lrx/e/e;->setProducer(Lrx/f;)V

    .line 75
    iget-object v1, p0, Lrx/c/a/at;->a:Lrx/c/a/at$a;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2, v5}, Lrx/c/a/at$a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/k;

    invoke-virtual {v3, v1}, Lrx/j/d;->a(Lrx/k;)V

    .line 77
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/at;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
