.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$v;"
    }
.end annotation


# instance fields
.field private final appNav:Lcm/aptoide/pt/navigation/NavigationManagerV4;

.field protected compositeSubscription:Lrx/j/b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4$Builder;->buildWith(Landroid/support/v4/app/u;)Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->appNav:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->assignViews(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract assignViews(Landroid/view/View;)V
.end method

.method public abstract bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getContext()Landroid/support/v4/app/u;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    return-object v0
.end method

.method protected getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->appNav:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    return-object v0
.end method

.method public internalBindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->compositeSubscription:Lrx/j/b;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->compositeSubscription:Lrx/j/b;

    .line 57
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->setVisible(Z)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 58
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 59
    return-void
.end method

.method public unbindView()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->compositeSubscription:Lrx/j/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 51
    :cond_0
    return-void
.end method
