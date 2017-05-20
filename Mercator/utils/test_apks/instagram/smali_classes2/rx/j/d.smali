.class public final Lrx/j/d;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lrx/k;


# instance fields
.field final a:Lrx/c/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lrx/c/d/a;

    invoke-direct {v0}, Lrx/c/d/a;-><init>()V

    iput-object v0, p0, Lrx/j/d;->a:Lrx/c/d/a;

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lrx/j/d;->a:Lrx/c/d/a;

    invoke-virtual {v0, p1}, Lrx/c/d/a;->a(Lrx/k;)Z

    .line 51
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lrx/j/d;->a:Lrx/c/d/a;

    invoke-virtual {v0}, Lrx/c/d/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lrx/j/d;->a:Lrx/c/d/a;

    invoke-virtual {v0}, Lrx/c/d/a;->unsubscribe()V

    .line 37
    return-void
.end method
