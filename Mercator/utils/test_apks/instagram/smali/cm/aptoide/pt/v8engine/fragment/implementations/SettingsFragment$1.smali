.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$1;
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
    .line 135
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    # invokes: Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->maturePinSetRemoveClick()V
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method
