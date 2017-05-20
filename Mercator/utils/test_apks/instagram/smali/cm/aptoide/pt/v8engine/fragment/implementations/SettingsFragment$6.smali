.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;
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
    .line 298
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPreferenceClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 329
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->context:Landroid/content/Context;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->dialog_about:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 302
    const-string v2, ""

    .line 306
    :try_start_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    .line 307
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/u;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 312
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    .line 313
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/u;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    .line 318
    :goto_1
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->aptoide_version:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v6, Lcm/aptoide/pt/v8engine/R$string;->version:I

    .line 319
    invoke-virtual {v5, v6}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->credits:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 323
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 325
    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->context:Landroid/content/Context;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->about_us:I

    .line 326
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x1080041

    .line 327
    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->c(I)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6$$Lambda$1;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 333
    const/4 v0, 0x1

    return v0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 314
    :catch_1
    move-exception v1

    .line 315
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    move v1, v0

    goto/16 :goto_1
.end method
