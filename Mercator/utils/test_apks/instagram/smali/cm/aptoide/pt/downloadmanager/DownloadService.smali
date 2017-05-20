.class public Lcm/aptoide/pt/downloadmanager/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NOTIFICATION_ID:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private notification:Landroid/app/Notification;

.field private notificationClickIntent:Landroid/content/Intent;

.field private notificationUpdateSubscription:Lrx/k;

.field private openAppsManagerIntent:Landroid/content/Intent;

.field private pauseDownloadsIntent:Landroid/content/Intent;

.field private stopMechanismSubscription:Lrx/k;

.field subscriptions:Lrx/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcm/aptoide/pt/downloadmanager/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/DownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildStandardNotification(Lcm/aptoide/pt/database/realm/Download;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/support/v4/app/am$d;)Landroid/support/v4/app/am$d;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getSettingsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;->getMainIcon()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/support/v4/app/am$d;->a(I)Landroid/support/v4/app/am$d;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 182
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/downloadmanager/R$string;->aptoide_downloading:I

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 182
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/am$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcm/aptoide/pt/database/realm/Download;->getStatusName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/support/v4/app/am$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p3}, Landroid/support/v4/app/am$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    move-result-object v0

    const/16 v1, 0x64

    .line 190
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v4/app/am$d;->a(IIZ)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 192
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getSettingsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;->getButton1Icon()I

    move-result v1

    .line 193
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getSettingsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;

    move-result-object v2

    .line 195
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;->getButton1Text(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v4/app/am$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    .line 196
    return-object p4
.end method

.method private createNotificationIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    .line 165
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/downloadmanager/NotificationEventReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    :cond_0
    return-object v0
.end method

.method private getPendingIntent(Landroid/content/Intent;Lcm/aptoide/pt/database/realm/Download;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 175
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v0

    .line 174
    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload called with: md5 = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method static synthetic lambda$onStartCommand$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method static synthetic lambda$setupNotifications$6(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method static synthetic lambda$setupNotifications$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method static synthetic lambda$setupStopSelfMechanism$10(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method static synthetic lambda$setupStopSelfMechanism$8(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 203
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseDownloads(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 102
    const-string v0, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseDownload(Ljava/lang/String;)Ljava/lang/Void;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseAllDownloads()V

    goto :goto_0
.end method

.method private setupNotifications()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notificationUpdateSubscription:Lrx/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notificationUpdateSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const-string v0, "cm.aptoide.downloadmanager.action.open"

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->createNotificationIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->openAppsManagerIntent:Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownload()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadService;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 155
    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownload()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->h()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notificationUpdateSubscription:Lrx/k;

    .line 159
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->subscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notificationUpdateSubscription:Lrx/k;

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 161
    :cond_1
    return-void
.end method

.method private setupStopSelfMechanism()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->stopMechanismSubscription:Lrx/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->stopMechanismSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownloads()Lrx/d;

    move-result-object v0

    .line 202
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadService;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$9;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->stopMechanismSubscription:Lrx/k;

    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->subscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->stopMechanismSubscription:Lrx/k;

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 212
    :cond_1
    return-void
.end method

.method private startDownload(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->subscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/d;->i()Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadService;Ljava/lang/String;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 95
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;

    const-string v1, "Unable to start a download without an md5"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method synthetic lambda$onStartCommand$0(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 2

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->startDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic lambda$setupNotifications$5(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 7

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v1, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "cm.aptoide.downloadmanager.action.notification"

    .line 119
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->createNotificationIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notificationClickIntent:Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v1, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->openAppsManagerIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->getPendingIntent(Landroid/content/Intent;Lcm/aptoide/pt/database/realm/Download;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notificationClickIntent:Landroid/content/Intent;

    invoke-direct {p0, v2, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->getPendingIntent(Landroid/content/Intent;Lcm/aptoide/pt/database/realm/Download;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 128
    new-instance v3, Landroid/support/v4/app/am$d;

    .line 129
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/am$d;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 141
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notification:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0, p1, v1, v2, v3}, Lcm/aptoide/pt/downloadmanager/DownloadService;->buildStandardNotification(Lcm/aptoide/pt/database/realm/Download;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/support/v4/app/am$d;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notification:Landroid/app/Notification;

    .line 150
    :goto_1
    const/16 v0, 0x8

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 151
    invoke-direct {p0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->setupStopSelfMechanism()V

    .line 152
    return-void

    .line 132
    :pswitch_0
    const-string v4, "cm.aptoide.downloadmanager.action.pause"

    .line 133
    invoke-direct {p0, v4, v0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->createNotificationIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->pauseDownloadsIntent:Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->pauseDownloadsIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->getPendingIntent(Landroid/content/Intent;Lcm/aptoide/pt/database/realm/Download;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 136
    sget v4, Lcm/aptoide/pt/downloadmanager/R$drawable;->media_pause:I

    .line 137
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcm/aptoide/pt/downloadmanager/R$string;->pause_download:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual {v3, v4, v5, v0}, Landroid/support/v4/app/am$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notification:Landroid/app/Notification;

    iget-wide v4, v0, Landroid/app/Notification;->when:J

    .line 146
    invoke-direct {p0, p1, v1, v2, v3}, Lcm/aptoide/pt/downloadmanager/DownloadService;->buildStandardNotification(Lcm/aptoide/pt/database/realm/Download;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/support/v4/app/am$d;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notification:Landroid/app/Notification;

    .line 148
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->notification:Landroid/app/Notification;

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$setupStopSelfMechanism$9(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadService;->TAG:Ljava/lang/String;

    const-string v1, "Download service is stopping"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->stopSelf()V

    .line 207
    return-void
.end method

.method synthetic lambda$startDownload$4(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->startDownload(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$10;->lambdaFactory$(Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$11;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 93
    invoke-direct {p0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->setupNotifications()V

    .line 94
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadService;->TAG:Ljava/lang/String;

    const-string v1, "Download service is starting"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->initDownloadService(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->subscriptions:Lrx/j/b;

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->subscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 216
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 217
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_1
    :goto_1
    return v1

    .line 55
    :sswitch_0
    const-string v3, "cm.aptoide.downloadmanager.action.start.download"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "cm.aptoide.downloadmanager.action.pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 57
    :pswitch_0
    const-string v0, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :try_start_0
    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadService;->startDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 65
    :pswitch_1
    invoke-direct {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->pauseDownloads(Landroid/content/Intent;)V

    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownload()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadService;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_1

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x25ca419 -> :sswitch_1
        0x41097dd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
