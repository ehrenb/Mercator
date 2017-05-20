.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;
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
    .line 235
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .prologue
    .line 238
    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->context:Landroid/content/Context;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    .line 239
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->setting_hwspecstitle:I

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    .line 240
    const v1, 0x1080041

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->c(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->setting_sdk_version:I

    .line 241
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getSdkVer()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->setting_screen_size:I

    .line 246
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->setting_esgl_version:I

    .line 252
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getGlEsVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->screenCode:I

    .line 257
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getNumericScreenSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->cpuAbi:I

    .line 265
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getAbis()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(Z)Landroid/support/v7/a/d$a;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    const v3, 0x104000a

    .line 272
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4$1;

    invoke-direct {v3, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    .line 279
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 282
    const/4 v0, 0x1

    return v0
.end method
