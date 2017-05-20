.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AdultRowWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private adultSwitch:Landroid/support/v7/widget/SwitchCompat;

.field private shouldITrackNextChange:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->shouldITrackNextChange:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->adult_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->adultSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 32
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->adultSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->adultSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isAdultSwitchActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->adultSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    return-void
.end method

.method synthetic lambda$bindView$2(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildAreYouAdultDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->shouldITrackNextChange:Z

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLURRY TESTING HOME : LOCK ADULT CONTENT"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AdultContent;->lock()V

    .line 60
    :goto_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/y;->c()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->load(ZZLandroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->updateMatureSwitch(Z)V

    goto :goto_0

    .line 58
    :cond_1
    iput-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->shouldITrackNextChange:Z

    goto :goto_1
.end method

.method synthetic lambda$null$0(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 43
    invoke-static {v2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->updateMatureSwitch(Z)V

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/y;->c()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->load(ZZLandroid/os/Bundle;)V

    .line 49
    :cond_0
    return-void
.end method

.method synthetic lambda$null$1(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->shouldITrackNextChange:Z

    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;->adultSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 52
    return-void
.end method
