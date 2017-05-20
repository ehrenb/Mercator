.class final Lrx/a$13;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/b/a;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b/a;


# direct methods
.method constructor <init>(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lrx/a$13;->a:Lrx/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 466
    new-instance v1, Lrx/j/a;

    invoke-direct {v1}, Lrx/j/a;-><init>()V

    .line 467
    invoke-interface {p1, v1}, Lrx/b;->a(Lrx/k;)V

    .line 469
    :try_start_0
    iget-object v0, p0, Lrx/a$13;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    invoke-virtual {v1}, Lrx/j/a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-interface {p1}, Lrx/b;->a()V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v1}, Lrx/j/a;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    invoke-interface {p1, v0}, Lrx/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 463
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$13;->a(Lrx/b;)V

    return-void
.end method
