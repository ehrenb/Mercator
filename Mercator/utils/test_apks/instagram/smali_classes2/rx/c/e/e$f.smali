.class final Lrx/c/e/e$f;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
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


# instance fields
.field final a:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-",
            "Lrx/d",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/d",
            "<*>;>;"
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
            "<-",
            "Lrx/d",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/d",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lrx/c/e/e$f;->a:Lrx/b/e;

    .line 219
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)Lrx/d;
    .locals 2
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
    .line 223
    iget-object v0, p0, Lrx/c/e/e$f;->a:Lrx/b/e;

    sget-object v1, Lrx/c/e/e;->f:Lrx/c/e/e$b;

    invoke-virtual {p1, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d;

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    check-cast p1, Lrx/d;

    invoke-virtual {p0, p1}, Lrx/c/e/e$f;->a(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
