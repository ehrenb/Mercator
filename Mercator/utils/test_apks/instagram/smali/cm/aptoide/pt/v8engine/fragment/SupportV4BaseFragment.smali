.class public abstract Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;
.super Lcm/aptoide/pt/v8engine/fragment/FragmentView;
.source "SupportV4BaseFragment.java"

# interfaces
.implements Lcm/aptoide/pt/actions/PermissionRequest;
.implements Lcm/aptoide/pt/v8engine/interfaces/UiComponentBasics;


# instance fields
.field private appNav:Lcm/aptoide/pt/navigation/NavigationManagerV4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->appNav:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    return-object v0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 31
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/util/ScreenTrackingUtils;->getInstance()Lcm/aptoide/pt/util/ScreenTrackingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/util/ScreenTrackingUtils;->incrementNumberOfScreens()V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4$Builder;->buildWith(Landroid/support/v4/app/u;)Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->appNav:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    .line 131
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getContentViewId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->onDestroy()V

    .line 42
    invoke-static {}, Lcm/aptoide/pt/util/ScreenTrackingUtils;->getInstance()Lcm/aptoide/pt/util/ScreenTrackingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/util/ScreenTrackingUtils;->decrementNumberOfScreens()V

    .line 43
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->bindViews(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->setupViews()V

    .line 38
    return-void
.end method

.method public requestAccessToAccounts(Lrx/b/a;Lrx/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-interface {v0, p1, p2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToAccounts(Lrx/b/a;Lrx/b/a;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Containing activity of this fragment must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAccessToAccounts(ZLrx/b/a;Lrx/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-interface {v0, p1, p2, p3}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToAccounts(ZLrx/b/a;Lrx/b/a;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Containing activity of this fragment must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-interface {v0, p1, p2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Containing activity of this fragment must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAccessToExternalFileSystem(ZLrx/b/a;Lrx/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-interface {v0, p1, p2, p3}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToExternalFileSystem(ZLrx/b/a;Lrx/b/a;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Containing activity of this fragment must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDownloadAccess(Lrx/b/a;Lrx/b/a;)V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-interface {v0, p1, p2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestDownloadAccess(Lrx/b/a;Lrx/b/a;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Containing activity of this fragment must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/FragmentView;->setUserVisibleHint(Z)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcm/aptoide/pt/util/ScreenTrackingUtils;->getInstance()Lcm/aptoide/pt/util/ScreenTrackingUtils;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/util/ScreenTrackingUtils;->addScreenToHistory(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setupToolbar()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public abstract setupViews()V
.end method
