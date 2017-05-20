.class public abstract Lcom/trello/rxlifecycle/b/a/b;
.super Landroid/support/v4/app/Fragment;
.source "RxFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# instance fields
.field private final lifecycleSubject:Lrx/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/a",
            "<",
            "Lcom/trello/rxlifecycle/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    invoke-static {}, Lrx/i/a;->a()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

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
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    invoke-static {v0}, Lcom/trello/rxlifecycle/a/c;->b(Lrx/d;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public final bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle/a/b;",
            ")",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle/c;->a(Lrx/d;Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/b/a/b;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

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
            "Lcom/trello/rxlifecycle/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->a:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->b:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->i:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 94
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 88
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->j:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->f:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 75
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->e:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 63
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->d:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->g:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 82
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a/b;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->c:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
