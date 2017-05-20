.class final Lrx/c/a/t$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/e",
        "<",
        "Lrx/d",
        "<+",
        "Lrx/c",
        "<*>;>;",
        "Lrx/d",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+",
            "Lrx/c",
            "<*>;>;)",
            "Lrx/d",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lrx/c/a/t$1$1;

    invoke-direct {v0, p0}, Lrx/c/a/t$1$1;-><init>(Lrx/c/a/t$1;)V

    invoke-virtual {p1, v0}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lrx/d;

    invoke-virtual {p0, p1}, Lrx/c/a/t$1;->a(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
