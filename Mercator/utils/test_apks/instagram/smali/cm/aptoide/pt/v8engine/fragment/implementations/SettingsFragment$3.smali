.class Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;
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
    .line 200
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPreferenceClick$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onPreferenceClick$1(Landroid/app/ProgressDialog;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic lambda$onPreferenceClick$3(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreferenceClick$2(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)Lrx/d;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->fileManager:Lcm/aptoide/pt/v8engine/filemanager/FileManager;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Lcm/aptoide/pt/v8engine/filemanager/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->deleteCache()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPreferenceClick$4(Ljava/lang/Long;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 212
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->freed_space:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 214
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 213
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method synthetic lambda$onPreferenceClick$5(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_SYS_1:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/support/v4/app/Fragment;I)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->subscriptions:Lrx/j/b;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Lrx/j/b;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->storage_dialog_title:I

    .line 204
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    sget v5, Lcm/aptoide/pt/v8engine/R$string;->clear_cache_dialog_message:I

    .line 205
    invoke-virtual {v4, v5}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v2, v3, v4}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericContinueCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v2

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$2;->lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;)Lrx/b/e;

    move-result-object v3

    .line 208
    invoke-virtual {v2, v3}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v2

    .line 209
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$4;->lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/a;

    move-result-object v0

    .line 210
    invoke-virtual {v2, v0}, Lrx/d;->c(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;)Lrx/b/b;

    move-result-object v3

    .line 211
    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 219
    const/4 v0, 0x0

    return v0
.end method
