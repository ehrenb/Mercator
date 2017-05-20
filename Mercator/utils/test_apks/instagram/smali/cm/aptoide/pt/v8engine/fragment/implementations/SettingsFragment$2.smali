.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->setupClickHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    .line 162
    invoke-virtual {p1}, Landroid/support/v7/preference/CheckBoxPreference;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->d(Z)V

    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;Landroid/support/v7/preference/CheckBoxPreference;)V

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildAreYouAdultDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 179
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    const-class v0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLURRY TESTING : LOCK ADULT CONTENT"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AdultContent;->lock()V

    .line 176
    invoke-static {v2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->updateMatureSwitch(Z)V

    goto :goto_0
.end method
