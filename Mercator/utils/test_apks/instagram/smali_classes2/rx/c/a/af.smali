.class public Lrx/c/a/af;
.super Ljava/lang/Object;
.source "OperatorDoOnUnsubscribe.java"

# interfaces
.implements Lrx/d$b;


# annotations
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
.field private final a:Lrx/b/a;


# direct methods
.method public constructor <init>(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/c/a/af;->a:Lrx/b/a;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 1
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
    .line 41
    iget-object v0, p0, Lrx/c/a/af;->a:Lrx/b/a;

    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 45
    invoke-static {p1}, Lrx/e/f;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/af;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
