.class public Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;
.super Ljava/lang/Object;
.source "DownloadInstallationProvider.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;


# instance fields
.field private final downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

.field private final downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 27
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    .line 28
    return-void
.end method


# virtual methods
.method public getInstallation(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getInstallation$0(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    new-instance v0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-direct {v0, p1, v1}, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;-><init>(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    const-string v1, "Installation file not available."

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
