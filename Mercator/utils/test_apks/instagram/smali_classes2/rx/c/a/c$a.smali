.class final Lrx/c/a/c$a;
.super Lrx/i;
.source "CompletableFlatMapSingleToCompletable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<TT;>;",
        "Lrx/b;"
    }
.end annotation


# instance fields
.field final a:Lrx/b;

.field final b:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b;Lrx/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b;",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/c/a/c$a;->a:Lrx/b;

    .line 53
    iput-object p2, p0, Lrx/c/a/c$a;->b:Lrx/b/e;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lrx/c/a/c$a;->a:Lrx/b;

    invoke-interface {v0}, Lrx/b;->a()V

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lrx/c/a/c$a;->b:Lrx/b/e;

    invoke-interface {v0, p1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The mapper returned a null Completable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/c/a/c$a;->a(Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0, v0}, Lrx/c/a/c$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0, p0}, Lrx/a;->b(Lrx/b;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lrx/c/a/c$a;->a:Lrx/b;

    invoke-interface {v0, p1}, Lrx/b;->a(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public a(Lrx/k;)V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lrx/c/a/c$a;->b(Lrx/k;)V

    .line 89
    return-void
.end method
