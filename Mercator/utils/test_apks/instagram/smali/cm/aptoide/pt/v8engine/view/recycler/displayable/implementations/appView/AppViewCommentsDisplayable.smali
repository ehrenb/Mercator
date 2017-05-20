.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;
.source "AppViewCommentsDisplayable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_app_view_comments:I

    return v0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onResume()V

    return-void
.end method

.method public bridge synthetic setOnPauseAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->setOnPauseAction(Lrx/b/a;)V

    return-void
.end method

.method public bridge synthetic setOnResumeAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->setOnResumeAction(Lrx/b/a;)V

    return-void
.end method
