.class public final Lrx/c/e/k;
.super Lrx/h;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/e/k$c;,
        Lrx/c/e/k$b;,
        Lrx/c/e/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lrx/c/e/k$1;

    invoke-direct {v0, p1}, Lrx/c/e/k$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/h;-><init>(Lrx/h$a;)V

    .line 40
    iput-object p1, p0, Lrx/c/e/k;->b:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static b(Ljava/lang/Object;)Lrx/c/e/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/c/e/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lrx/c/e/k;

    invoke-direct {v0, p0}, Lrx/c/e/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(Lrx/g;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    instance-of v0, p1, Lrx/c/c/b;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lrx/c/c/b;

    .line 57
    new-instance v0, Lrx/c/e/k$a;

    iget-object v1, p0, Lrx/c/e/k;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/c/e/k$a;-><init>(Lrx/c/c/b;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/c/e/k;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/e/k$b;

    iget-object v1, p0, Lrx/c/e/k;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/c/e/k$b;-><init>(Lrx/g;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/c/e/k;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Lrx/b/e;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/h",
            "<+TR;>;>;)",
            "Lrx/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lrx/c/e/k$2;

    invoke-direct {v0, p0, p1}, Lrx/c/e/k$2;-><init>(Lrx/c/e/k;Lrx/b/e;)V

    invoke-static {v0}, Lrx/c/e/k;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method
