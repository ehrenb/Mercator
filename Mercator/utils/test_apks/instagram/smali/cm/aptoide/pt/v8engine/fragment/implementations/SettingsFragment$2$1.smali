.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;

.field final synthetic val$cb:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;Landroid/support/v7/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2$1;->this$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2$1;->val$cb:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2$1;->val$cb:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->d(Z)V

    .line 169
    invoke-static {v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->updateMatureSwitch(Z)V

    .line 171
    :cond_0
    return-void
.end method
