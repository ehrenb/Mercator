.class public abstract Lcom/trello/rxlifecycle/b/a;
.super Landroid/app/DialogFragment;
.source "RxDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;"
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
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 20
    invoke-static {}, Lrx/i/a;->a()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

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
    .line 40
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

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
    .line 33
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle/c;->a(Lrx/d;Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/b/a;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

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
    .line 26
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->a:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->b:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->i:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 103
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 104
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 96
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 97
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->j:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 110
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->f:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 82
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->e:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 68
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->d:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->g:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 89
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/trello/rxlifecycle/b/a;->lifecycleSubject:Lrx/i/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->c:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1}, Lrx/i/a;->onNext(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
