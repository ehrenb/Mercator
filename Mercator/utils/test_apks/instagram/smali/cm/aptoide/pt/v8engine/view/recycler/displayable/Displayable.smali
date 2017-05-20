.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.super Ljava/lang/Object;
.source "Displayable.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/LifecycleSchim;


# annotations
.annotation runtime Lcm/aptoide/pt/annotation/Ignore;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    }
.end annotation


# instance fields
.field private defaultPerLineCount:I

.field private fixedPerLineCount:Z

.field private isVisible:Z

.field subscriptions:Lrx/j/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->isVisible:Z

    .line 31
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->isFixedPerLineCount()Z

    move-result v1

    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->fixedPerLineCount:Z

    .line 33
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->getDefaultPerLineCount()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->defaultPerLineCount:I

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
.end method

.method public getDefaultPerLineCount()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->defaultPerLineCount:I

    return v0
.end method

.method public getPerLineCount()I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->isFixedPerLineCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getDefaultPerLineCount()I

    move-result v0

    .line 64
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v0

    .line 60
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getScreenWidthInDip()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getDefaultPerLineCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getSpanSize()I
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->getColumnSize()I

    move-result v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getPerLineCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getSubscriptions()Lrx/j/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->subscriptions:Lrx/j/b;

    return-object v0
.end method

.method public abstract getViewLayout()I
.end method

.method public isFixedPerLineCount()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->fixedPerLineCount:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->isVisible:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->isVisible:Z

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->isVisible:Z

    .line 73
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onViewCreated()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setFullRow()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->defaultPerLineCount:I

    .line 113
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->fixedPerLineCount:Z

    .line 114
    return-object p0
.end method

.method public setVisible(Z)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->isVisible:Z

    return-object p0
.end method
