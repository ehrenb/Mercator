.class public Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;
.super Ljava/lang/Object;
.source "DownloadServiceHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private permissionManager:Lcm/aptoide/pt/actions/PermissionManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/actions/PermissionManager;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 33
    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    .line 34
    return-void
.end method

.method static synthetic lambda$startDownload$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method static synthetic lambda$startDownloadService$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/downloadmanager/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "APTOIDE_APPID_EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$startDownloadService$1(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method static synthetic lambda$startDownloadService$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method private startDownloadService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$1;->lambdaFactory$(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 62
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 66
    return-void
.end method


# virtual methods
.method public getAllDownloads()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloads()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownlaod()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownload()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getDownload(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$5(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cm.aptoide.downloadmanager.action.start.download"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->startDownloadService(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method synthetic lambda$null$6(Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 91
    instance-of v0, p3, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1, p2}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 93
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cm.aptoide.downloadmanager.action.start.download"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->startDownloadService(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic lambda$null$7(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Lcm/aptoide/pt/database/realm/Download;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0, p2, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 100
    return-object p1
.end method

.method synthetic lambda$null$8(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$startDownload$4(Lcm/aptoide/pt/actions/PermissionRequest;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$startDownload$9(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 86
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public pauseAllDownloads()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcm/aptoide/pt/downloadmanager/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v2, "cm.aptoide.downloadmanager.action.pause"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    const-string v0, "cm.aptoide.downloadmanager.action.pause"

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->startDownloadService(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->removeDownload(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public startDownload(Lcm/aptoide/pt/actions/PermissionRequest;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/actions/PermissionRequest;",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {p0, v0, p1, p2}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->startDownload(Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/actions/PermissionRequest;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public startDownload(Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/actions/PermissionRequest;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/accessors/DownloadAccessor;",
            "Lcm/aptoide/pt/actions/PermissionRequest;",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/b/e;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p3, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Lrx/b/e;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
