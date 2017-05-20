.class public abstract Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;
.super Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;
.source "AptoideSimpleFragmentActivity.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/UiComponentBasics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected abstract createFragment()Landroid/support/v4/app/Fragment;
.end method

.method protected getAnalyticsScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->frame_layout:I

    return v0
.end method

.method protected getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->a()Landroid/support/v4/app/ad;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->fragment_placeholder:I

    .line 19
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ad;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/support/v4/app/ad;->b()I

    .line 22
    :cond_0
    return-void
.end method

.method public setupToolbar()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setupViews()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
