.class public abstract Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;
.super Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;
.source "BaseLoaderFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;


# instance fields
.field private create:Z

.field private loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->create:Z

    return-void
.end method

.method private unregisterReceiverForAccountManager()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->bindViews(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->create:Z

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->finishLoading()V

    .line 76
    :cond_1
    return-void
.end method

.method protected createLoaderLayoutHandler()Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->getViewToShowAfterLoadingId()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;-><init>(ILcm/aptoide/pt/v8engine/interfaces/LoadInterface;)V

    return-object v0
.end method

.method protected finishLoading()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->finishLoading()V

    .line 82
    :cond_0
    return-void
.end method

.method protected finishLoading(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->finishLoading(Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method protected abstract getViewToShowAfterLoadingId()I
.end method

.method public isCreate()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->create:Z

    return v0
.end method

.method public abstract load(ZZLandroid/os/Bundle;)V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->createLoaderLayoutHandler()Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->unbindViews()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->loaderLayoutHandler:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    .line 94
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->unregisterReceiverForAccountManager()V

    .line 95
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onDestroyView()V

    .line 96
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onStop()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->create:Z

    .line 87
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->create:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->load(ZZLandroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->registerReceiverForAccountManager()V

    .line 41
    return-void
.end method

.method protected registerReceiverForAccountManager()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method
