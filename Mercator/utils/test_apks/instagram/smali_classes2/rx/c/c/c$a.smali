.class final Lrx/c/c/c$a;
.super Lrx/g$a;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/j/a;

.field final synthetic b:Lrx/c/c/c;


# direct methods
.method constructor <init>(Lrx/c/c/c;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lrx/c/c/c$a;->b:Lrx/c/c/c;

    invoke-direct {p0}, Lrx/g$a;-><init>()V

    .line 43
    new-instance v0, Lrx/j/a;

    invoke-direct {v0}, Lrx/j/a;-><init>()V

    iput-object v0, p0, Lrx/c/c/c$a;->a:Lrx/j/a;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/k;
    .locals 1

    .prologue
    .line 58
    invoke-interface {p1}, Lrx/b/a;->call()V

    .line 59
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lrx/c/c/c$a;->b:Lrx/c/c/c;

    invoke-virtual {v0}, Lrx/c/c/c;->b()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 53
    new-instance v2, Lrx/c/c/i;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/c/c/i;-><init>(Lrx/b/a;Lrx/g$a;J)V

    invoke-virtual {p0, v2}, Lrx/c/c/c$a;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lrx/c/c/c$a;->a:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/c/c/c$a;->a:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->unsubscribe()V

    .line 65
    return-void
.end method
