.class public abstract Lcm/aptoide/accountmanager/BaseActivity;
.super Landroid/support/v7/a/e;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;
    }
.end annotation


# static fields
.field protected static final LOGGED_IN_SECOND_STEP_CODE:I = 0x7e

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcm/aptoide/accountmanager/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getActivityTitle()Ljava/lang/String;
.end method

.method abstract getLayoutId()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/BaseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultThemeRes()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 29
    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    sget v1, Lcm/aptoide/accountmanager/R$id;->home:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/BaseActivity;->finish()V

    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
