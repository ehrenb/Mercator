.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->maturePinSetRemoveClick()V
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
    .line 348
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$7;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 350
    if-ne p2, v0, :cond_0

    .line 351
    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setAdultContentPin(I)V

    .line 352
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$7;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget-object v1, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->ADULT_PIN:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 353
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->set_mature_pin_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 354
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->set_mature_pin_summary:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 356
    :cond_0
    return-void
.end method
