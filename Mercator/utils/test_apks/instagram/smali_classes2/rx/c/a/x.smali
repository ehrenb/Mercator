.class public final Lrx/c/a/x;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lrx/g;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lrx/g;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lrx/c/a/x;->a:J

    .line 38
    iput-wide p3, p0, Lrx/c/a/x;->b:J

    .line 39
    iput-object p5, p0, Lrx/c/a/x;->c:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lrx/c/a/x;->d:Lrx/g;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lrx/c/a/x;->d:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 47
    new-instance v1, Lrx/c/a/x$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/c/a/x$1;-><init>(Lrx/c/a/x;Lrx/j;Lrx/g$a;)V

    iget-wide v2, p0, Lrx/c/a/x;->a:J

    iget-wide v4, p0, Lrx/c/a/x;->b:J

    iget-object v6, p0, Lrx/c/a/x;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/g$a;->a(Lrx/b/a;JJLjava/util/concurrent/TimeUnit;)Lrx/k;

    .line 63
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/x;->a(Lrx/j;)V

    return-void
.end method
