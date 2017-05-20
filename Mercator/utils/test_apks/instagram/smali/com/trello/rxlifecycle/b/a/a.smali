.class public abstract Lcom/trello/rxlifecycle/b/a/a;
.super Landroid/support/v7/a/e;
.source "RxAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/a/e;"
    }
.end annotation


# instance fields
.field private final lifecycleSubject:Lrx/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/a",
            "<",
            "Lcom/trello/rxlifecycle/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    .line 19
    invoke-static {}, Lrx/i/a;->a()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    return-void
.end method


# virtual methods
.method public final bindToLifecycle()Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    invoke-static {v0}, Lcom/trello/rxlifecycle/a/c;->a(Lrx/d;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public final bindUntilEvent(Lcom/trello/rxlifecycle/a/a;)Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle/a/a;",
            ")",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle/c;->a(Lrx/d;Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/b/a/a;->bindUntilEvent(Lcom/trello/rxlifecycle/a/a;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public final lifecycle()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcom/trello/rxlifecycle/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->a:Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->f:Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 81
    invoke-super {p0}, Landroid/support/v7/a/e;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->d:Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 67
    invoke-super {p0}, Landroid/support/v7/a/e;->onPause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v7/a/e;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->c:Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v7/a/e;->onStart()V

    .line 53
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->b:Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->e:Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 74
    invoke-super {p0}, Landroid/support/v7/a/e;->onStop()V

    .line 75
    return-void
.end method
