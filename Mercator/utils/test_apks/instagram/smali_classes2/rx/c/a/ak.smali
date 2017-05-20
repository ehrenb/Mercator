.class public final Lrx/c/a/ak;
.super Ljava/lang/Object;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ak$a;
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
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lrx/g;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lrx/c/a/ak;->a:J

    .line 43
    iput-object p3, p0, Lrx/c/a/ak;->b:Ljava/util/concurrent/TimeUnit;

    .line 44
    iput-object p4, p0, Lrx/c/a/ak;->c:Lrx/g;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 7
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
    .line 49
    new-instance v2, Lrx/e/e;

    invoke-direct {v2, p1}, Lrx/e/e;-><init>(Lrx/j;)V

    .line 50
    iget-object v0, p0, Lrx/c/a/ak;->c:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 53
    new-instance v1, Lrx/c/a/ak$a;

    invoke-direct {v1, v2}, Lrx/c/a/ak$a;-><init>(Lrx/j;)V

    .line 54
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 55
    iget-wide v2, p0, Lrx/c/a/ak;->a:J

    iget-wide v4, p0, Lrx/c/a/ak;->a:J

    iget-object v6, p0, Lrx/c/a/ak;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/g$a;->a(Lrx/b/a;JJLjava/util/concurrent/TimeUnit;)Lrx/k;

    .line 57
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ak;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
