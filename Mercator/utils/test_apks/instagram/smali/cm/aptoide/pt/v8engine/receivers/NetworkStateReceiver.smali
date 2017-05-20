.class public Lcm/aptoide/pt/v8engine/receivers/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 20
    const-string v0, "wifi_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 21
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 23
    :goto_0
    if-nez v0, :cond_2

    .line 44
    :cond_0
    :goto_1
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->scheduledDownloadsEnabled()Z

    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getScheduledDownloadRepository()Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->hasScheduleDownloads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "aptoide://cm.aptoide.pt/schedule_downloads?openMode=AskInstallAll"

    .line 40
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
