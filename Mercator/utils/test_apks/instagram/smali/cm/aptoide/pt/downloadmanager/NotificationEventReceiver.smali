.class public Lcm/aptoide/pt/downloadmanager/NotificationEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationEventReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcm/aptoide/pt/downloadmanager/NotificationEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/NotificationEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/downloadmanager/NotificationEventReceiver;->onReceive(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v2

    .line 29
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_1
    :goto_1
    return-void

    .line 29
    :sswitch_0
    const-string v3, "cm.aptoide.downloadmanager.action.pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "cm.aptoide.downloadmanager.action.open"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "cm.aptoide.downloadmanager.action.notification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 31
    :pswitch_0
    const-string v0, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    invoke-virtual {v2, v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseDownload(Ljava/lang/String;)Ljava/lang/Void;

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseAllDownloads()V

    goto :goto_1

    .line 41
    :pswitch_1
    invoke-virtual {v2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloadNotificationActionsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloadNotificationActionsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;->button1Pressed()V

    goto :goto_1

    .line 46
    :pswitch_2
    invoke-virtual {v2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloadNotificationActionsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "APTOIDE_APPID_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloadNotificationActionsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

    move-result-object v0

    const-string v1, "APTOIDE_APPID_EXTRA"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;->notificationPressed(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x25ca419 -> :sswitch_0
        0x4a65d7c7 -> :sswitch_1
        0x62d56d68 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
