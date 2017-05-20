.class public Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;
.super Ljava/lang/Object;
.source "DownloadNotificationActionsActionsInterface.java"

# interfaces
.implements Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDeeplinkingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;->getMainActivityFragmentClass()Ljava/lang/Class;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    return-object v0
.end method


# virtual methods
.method public button1Pressed()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;->createDeeplinkingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 20
    const-string v1, "fromDownloadNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public notificationPressed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;->createDeeplinkingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    const-string v1, "appViewFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    const-string v1, "md5"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
