.class public final Lrx/c/a/ar;
.super Ljava/lang/Object;
.source "OperatorTakeUntilPredicate.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ar$a;
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
.field final a:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/c/a/ar;->a:Lrx/b/e;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 2
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
    .line 38
    new-instance v0, Lrx/c/a/ar$a;

    invoke-direct {v0, p0, p1}, Lrx/c/a/ar$a;-><init>(Lrx/c/a/ar;Lrx/j;)V

    .line 39
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 40
    new-instance v1, Lrx/c/a/ar$1;

    invoke-direct {v1, p0, v0}, Lrx/c/a/ar$1;-><init>(Lrx/c/a/ar;Lrx/c/a/ar$a;)V

    invoke-virtual {p1, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 47
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ar;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
