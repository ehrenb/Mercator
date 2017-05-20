.class public abstract Lrx/i;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/k;"
    }
.end annotation


# instance fields
.field private final a:Lrx/c/e/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lrx/c/e/l;

    invoke-direct {v0}, Lrx/c/e/l;-><init>()V

    iput-object v0, p0, Lrx/i;->a:Lrx/c/e/l;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public final b(Lrx/k;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lrx/i;->a:Lrx/c/e/l;

    invoke-virtual {v0, p1}, Lrx/c/e/l;->a(Lrx/k;)V

    .line 71
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lrx/i;->a:Lrx/c/e/l;

    invoke-virtual {v0}, Lrx/c/e/l;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lrx/i;->a:Lrx/c/e/l;

    invoke-virtual {v0}, Lrx/c/e/l;->unsubscribe()V

    .line 76
    return-void
.end method
