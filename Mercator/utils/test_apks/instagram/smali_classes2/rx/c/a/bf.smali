.class public final Lrx/c/a/bf;
.super Ljava/lang/Object;
.source "SingleToObservable.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
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


# direct methods
.method public constructor <init>(Lrx/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/c/a/bf;->a:Lrx/h$a;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lrx/c/a/bb$a;

    invoke-direct {v0, p1}, Lrx/c/a/bb$a;-><init>(Lrx/j;)V

    .line 38
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 39
    iget-object v1, p0, Lrx/c/a/bf;->a:Lrx/h$a;

    invoke-interface {v1, v0}, Lrx/h$a;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/bf;->a(Lrx/j;)V

    return-void
.end method
