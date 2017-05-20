.class public abstract Lcm/aptoide/pt/v8engine/activity/ActivityView;
.super Lcom/trello/rxlifecycle/b/a/a;
.source "ActivityView.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/view/View;


# instance fields
.field private presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/trello/rxlifecycle/b/a/a;-><init>()V

    return-void
.end method

.method private convertToEvent(Lcom/trello/rxlifecycle/a/a;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/ActivityView$1;->$SwitchMap$com$trello$rxlifecycle$android$ActivityEvent:[I

    invoke-virtual {p1}, Lcom/trello/rxlifecycle/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/trello/rxlifecycle/a/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 55
    :goto_0
    return-object v0

    .line 47
    :pswitch_1
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->START:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 49
    :pswitch_2
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 51
    :pswitch_3
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 53
    :pswitch_4
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->STOP:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 55
    :pswitch_5
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public attachPresenter(Lcm/aptoide/pt/v8engine/presenter/Presenter;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    if-eqz p2, :cond_0

    .line 36
    invoke-interface {p1, p2}, Lcm/aptoide/pt/v8engine/presenter/Presenter;->restoreState(Landroid/os/Bundle;)V

    .line 38
    :cond_0
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/ActivityView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/ActivityView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/presenter/Presenter;->present()V

    .line 40
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
    .line 27
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->getLifecycle()Lrx/d;

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
    .line 31
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->lifecycle()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/ActivityView;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getLifecycle$0(Lcom/trello/rxlifecycle/a/a;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->convertToEvent(Lcom/trello/rxlifecycle/a/a;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/ActivityView;->presenter:Lcm/aptoide/pt/v8engine/presenter/Presenter;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/presenter/Presenter;->saveState(Landroid/os/Bundle;)V

    .line 63
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/b/a/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method
