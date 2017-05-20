.class Lrx/c/a/t$1$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/t$1;->a(Lrx/d;)Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/e",
        "<",
        "Lrx/c",
        "<*>;",
        "Lrx/c",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/t$1;


# direct methods
.method constructor <init>(Lrx/c/a/t$1;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lrx/c/a/t$1$1;->a:Lrx/c/a/t$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/c;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c",
            "<*>;)",
            "Lrx/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/c;->a(Ljava/lang/Object;)Lrx/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lrx/c;

    invoke-virtual {p0, p1}, Lrx/c/a/t$1$1;->a(Lrx/c;)Lrx/c;

    move-result-object v0

    return-object v0
.end method
