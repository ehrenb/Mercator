.class final Lrx/a$14;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Ljava/util/concurrent/Callable;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lrx/a$14;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 494
    new-instance v1, Lrx/j/a;

    invoke-direct {v1}, Lrx/j/a;-><init>()V

    .line 495
    invoke-interface {p1, v1}, Lrx/b;->a(Lrx/k;)V

    .line 497
    :try_start_0
    iget-object v0, p0, Lrx/a$14;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    invoke-virtual {v1}, Lrx/j/a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-interface {p1}, Lrx/b;->a()V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    invoke-virtual {v1}, Lrx/j/a;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-interface {p1, v0}, Lrx/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 491
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$14;->a(Lrx/b;)V

    return-void
.end method
