.class Lrx/c/a/bd$2;
.super Lrx/j;
.source "SingleOnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/bd;->a(Lrx/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/i;

.field final synthetic c:Lrx/j/d;

.field final synthetic d:Lrx/c/a/bd;


# direct methods
.method constructor <init>(Lrx/c/a/bd;Lrx/i;Lrx/j/d;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lrx/c/a/bd$2;->d:Lrx/c/a/bd;

    iput-object p2, p0, Lrx/c/a/bd$2;->b:Lrx/i;

    iput-object p3, p0, Lrx/c/a/bd$2;->c:Lrx/j/d;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lrx/c/a/bd$2;->a:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/bd$2;->a:Z

    .line 79
    iget-object v0, p0, Lrx/c/a/bd$2;->c:Lrx/j/d;

    iget-object v1, p0, Lrx/c/a/bd$2;->b:Lrx/i;

    invoke-virtual {v0, v1}, Lrx/j/d;->a(Lrx/k;)V

    .line 81
    iget-object v0, p0, Lrx/c/a/bd$2;->d:Lrx/c/a/bd;

    iget-object v0, v0, Lrx/c/a/bd;->a:Lrx/h;

    iget-object v1, p0, Lrx/c/a/bd$2;->b:Lrx/i;

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/i;)Lrx/k;

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lrx/c/a/bd$2;->a:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/bd$2;->a:Z

    .line 70
    iget-object v0, p0, Lrx/c/a/bd$2;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lrx/c/a/bd$2;->onCompleted()V

    .line 61
    return-void
.end method
