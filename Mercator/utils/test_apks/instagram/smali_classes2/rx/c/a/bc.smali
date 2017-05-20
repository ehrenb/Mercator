.class public final Lrx/c/a/bc;
.super Ljava/lang/Object;
.source "SingleOnErrorReturn.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/bc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h$a;Lrx/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h$a",
            "<TT;>;",
            "Lrx/b/e",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/c/a/bc;->a:Lrx/h$a;

    .line 37
    iput-object p2, p0, Lrx/c/a/bc;->b:Lrx/b/e;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lrx/c/a/bc$a;

    iget-object v1, p0, Lrx/c/a/bc;->b:Lrx/b/e;

    invoke-direct {v0, p1, v1}, Lrx/c/a/bc$a;-><init>(Lrx/i;Lrx/b/e;)V

    .line 43
    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 44
    iget-object v1, p0, Lrx/c/a/bc;->a:Lrx/h$a;

    invoke-interface {v1, v0}, Lrx/h$a;->call(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/c/a/bc;->a(Lrx/i;)V

    return-void
.end method
