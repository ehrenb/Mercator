.class public abstract Lcm/aptoide/pt/v8engine/fragment/FragmentView;
.super Lcom/trello/rxlifecycle/b/a/b;
.source "FragmentView.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/view/View;


# instance fields
.field private presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/trello/rxlifecycle/b/a/b;-><init>()V

    return-void
.end method

.method private convertToEvent(Lcom/trello/rxlifecycle/a/b;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/FragmentView$1;->$SwitchMap$com$trello$rxlifecycle$android$FragmentEvent:[I

    invoke-virtual {p1}, Lcom/trello/rxlifecycle/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/trello/rxlifecycle/a/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 51
    :goto_0
    return-object v0

    .line 39
    :pswitch_1
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->START:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 45
    :pswitch_4
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 47
    :pswitch_5
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->STOP:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 49
    :pswitch_6
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 51
    :pswitch_7
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public attachPresenter(Lcm/aptoide/pt/v8engine/presenter/Presenter;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    if-eqz p2, :cond_0

    .line 28
    invoke-interface {p1, p2}, Lcm/aptoide/pt/v8engine/presenter/Presenter;->restoreState(Landroid/os/Bundle;)V

    .line 30
    :cond_0
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/presenter/Presenter;->present()V

    .line 32
    return-void
.end method

.method public final bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;",
            ")",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->getLifecycle()Lrx/d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle/c;->a(Lrx/d;Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->lifecycle()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/FragmentView$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/FragmentView;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getLifecycle$0(Lcom/trello/rxlifecycle/a/b;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->convertToEvent(Lcom/trello/rxlifecycle/a/b;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/presenter/Presenter;->saveState(Landroid/os/Bundle;)V

    .line 64
    :goto_0
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/b/a/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No presenter was attached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
