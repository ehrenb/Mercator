.class abstract Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "AppViewDisplayable.java"


# annotations
.annotation runtime Lcm/aptoide/pt/annotation/Ignore;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/model/v7/GetApp;",
        ">;"
    }
.end annotation


# instance fields
.field private onPauseAction:Lrx/b/a;

.field private onResumeAction:Lrx/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onPauseAction:Lrx/b/a;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onPauseAction:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 41
    :cond_0
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->onPause()V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->onResume()V

    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onResumeAction:Lrx/b/a;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onResumeAction:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 35
    :cond_0
    return-void
.end method

.method public setOnPauseAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onPauseAction:Lrx/b/a;

    return-void
.end method

.method public setOnResumeAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onResumeAction:Lrx/b/a;

    return-void
.end method
