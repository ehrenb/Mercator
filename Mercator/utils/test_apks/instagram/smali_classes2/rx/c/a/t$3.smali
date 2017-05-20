.class Lrx/c/a/t$3;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/t;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<",
        "Lrx/c",
        "<*>;",
        "Lrx/c",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/t;


# direct methods
.method constructor <init>(Lrx/c/a/t;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lrx/c/a/t$3;->a:Lrx/c/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Lrx/c",
            "<*>;>;)",
            "Lrx/j",
            "<-",
            "Lrx/c",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lrx/c/a/t$3$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/c/a/t$3$1;-><init>(Lrx/c/a/t$3;Lrx/j;Lrx/j;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/t$3;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
