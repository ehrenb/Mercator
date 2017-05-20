.class public Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;
.super Ljava/lang/Object;
.source "AptoideDownloadManager.java"


# static fields
.field static APK_PATH:Ljava/lang/String; = null

.field public static final DOWNLOADMANAGER_ACTION_NOTIFICATION:Ljava/lang/String; = "cm.aptoide.downloadmanager.action.notification"

.field public static final DOWNLOADMANAGER_ACTION_OPEN:Ljava/lang/String; = "cm.aptoide.downloadmanager.action.open"

.field public static final DOWNLOADMANAGER_ACTION_PAUSE:Ljava/lang/String; = "cm.aptoide.downloadmanager.action.pause"

.field public static final DOWNLOADMANAGER_ACTION_START_DOWNLOAD:Ljava/lang/String; = "cm.aptoide.downloadmanager.action.start.download"

.field static DOWNLOADS_STORAGE_PATH:Ljava/lang/String; = null

.field public static final FILE_MD5_EXTRA:Ljava/lang/String; = "APTOIDE_APPID_EXTRA"

.field static OBB_PATH:Ljava/lang/String; = null

.field public static final PROGRESS_MAX_VALUE:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_TO_CONVERT_MB_TO_BYTES:I = 0x100000

.field private static context:Landroid/content/Context;

.field private static instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;


# instance fields
.field private analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

.field private cacheHelper:Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;

.field private downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

.field private downloadNotificationActionsInterface:Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

.field private fileUtils:Lcm/aptoide/pt/utils/FileUtils;

.field private isDownloading:Z

.field private isPausing:Z

.field private settingsInterface:Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isDownloading:Z

    .line 55
    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isPausing:Z

    return-void
.end method

.method private createDownloadDirs()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->APK_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/utils/FileUtils;->createDir(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->OBB_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/utils/FileUtils;->createDir(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private deleteDownloadFiles(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 4

    .prologue
    .line 324
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 325
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 326
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/FileUtils;->removeFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 328
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/FileUtils;->removeFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method private deleteDownloadFromDb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->delete(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getDownloadStatus(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-direct {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;-><init>()V

    sput-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 163
    :cond_0
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    return-object v0
.end method

.method private getStateIfFileExists(Lcm/aptoide/pt/database/realm/Download;)I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 145
    const/4 v1, 0x1

    .line 146
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 156
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 150
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/FileUtils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const/16 v0, 0xa

    .line 152
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic lambda$getAsListDownload$6(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 133
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 135
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v2

    invoke-direct {v2, v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getStateIfFileExists(Lcm/aptoide/pt/database/realm/Download;)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 136
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    add-int/lit8 v1, v1, -0x1

    .line 132
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_2
    return-object p0
.end method

.method static synthetic lambda$getCurrentDownload$7(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 167
    return-object p0
.end method

.method static synthetic lambda$getCurrentDownload$8(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getDownload$4(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2

    .prologue
    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getStateIfFileExists(Lcm/aptoide/pt/database/realm/Download;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    new-instance v0, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;

    invoke-direct {v0}, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;-><init>()V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getDownload$5(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getNextDownload$17(Ljava/util/List;)Lcm/aptoide/pt/database/realm/Download;
    .locals 1

    .prologue
    .line 259
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    goto :goto_0
.end method

.method static synthetic lambda$invalidateDatabase$27(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 339
    return-object p0
.end method

.method static synthetic lambda$invalidateDatabase$30(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$1(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method static synthetic lambda$null$13(Ljava/lang/Long;)V
    .locals 5

    .prologue
    .line 247
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleaned size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$14(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method static synthetic lambda$null$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$pauseAllDownloads$11(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method static synthetic lambda$pauseDownload$25(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 312
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method static synthetic lambda$pauseDownload$26(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 314
    instance-of v0, p1, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there are no download to pause with the md5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic lambda$removeDownload$20(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$removeDownload$21(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 287
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v2

    .line 288
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/liulishuo/filedownloader/q;->a(ILjava/lang/String;)Z

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method static synthetic lambda$removeDownload$23(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 295
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Download item was null, are you pressing on remove button too fast?"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic lambda$startNextDownload$16(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private startNewDownload(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 2

    .prologue
    .line 103
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/database/realm/Download;->setOverallDownloadStatus(I)V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setTimeStamp(J)V

    .line 108
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 110
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->startNextDownload()V

    .line 111
    return-void
.end method


# virtual methods
.method currentDownloadFinished()V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->startNextDownload()V

    .line 235
    return-void
.end method

.method public getAsListDownload(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->getAsList(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lrx/d;->h()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownload()Lrx/d;
    .locals 2
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
    .line 167
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloads()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownloads()Lrx/d;
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
    .line 176
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->getRunningDownloads()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getDownload(Ljava/lang/String;)Lrx/d;
    .locals 2
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
    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lrx/d;->l(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method getDownloadNotificationActionsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadNotificationActionsInterface:Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

    return-object v0
.end method

.method public getDownloads()Lrx/d;
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
    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->getAll()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getNextDownload()Lrx/d;
    .locals 2
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
    .line 258
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->getInQueueSortedDownloads()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsInterface()Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->settingsInterface:Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;Lcm/aptoide/pt/utils/FileUtils;Lokhttp3/OkHttpClient$Builder;Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;)V
    .locals 2

    .prologue
    .line 218
    iput-object p8, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

    .line 220
    new-instance v0, Lcom/liulishuo/filedownloader/services/d$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/d$a;-><init>()V

    new-instance v1, La/a/a/a$a;

    invoke-direct {v1, p7}, La/a/a/a$a;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/d$a;->a(Lcom/liulishuo/filedownloader/e/c$a;)Lcom/liulishuo/filedownloader/services/d$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/liulishuo/filedownloader/q;->a(Landroid/content/Context;Lcom/liulishuo/filedownloader/services/d$a;)V

    .line 222
    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadNotificationActionsInterface:Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;

    .line 223
    iput-object p3, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->settingsInterface:Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;

    .line 224
    iput-object p5, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->cacheHelper:Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;

    .line 225
    iput-object p6, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    .line 227
    invoke-interface {p3}, Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;->getDownloadDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->APK_PATH:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->OBB_PATH:Ljava/lang/String;

    .line 230
    iput-object p4, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    .line 231
    return-void
.end method

.method public initDownloadService(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    sput-object p1, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->context:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->createDownloadDirs()V

    .line 71
    return-void
.end method

.method public invalidateDatabase()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloads()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$25;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$26;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/e;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$27;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/e;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$28;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isDownloading:Z

    return v0
.end method

.method synthetic lambda$getDownloadStatus$12(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getStateIfFileExists(Lcm/aptoide/pt/database/realm/Download;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$invalidateDatabase$28(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getStateIfFileExists(Lcm/aptoide/pt/database/realm/Download;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$invalidateDatabase$29(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->delete(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->startNewDownload(Lcm/aptoide/pt/database/realm/Download;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$pauseAllDownloads$10(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 191
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/Download;->setOverallDownloadStatus(I)V

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Ljava/util/List;)V

    .line 194
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Downloads paused"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method synthetic lambda$pauseAllDownloads$9()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isPausing:Z

    return-void
.end method

.method synthetic lambda$pauseDownload$24(Lcm/aptoide/pt/database/realm/Download;)Lcm/aptoide/pt/database/realm/Download;
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/database/realm/Download;->setOverallDownloadStatus(I)V

    .line 306
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 307
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 308
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/q;->a(I)I

    .line 307
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 310
    :cond_0
    return-object p1
.end method

.method synthetic lambda$removeDownload$18(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseDownload(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$removeDownload$19(Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$removeDownload$22(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->deleteDownloadFiles(Lcm/aptoide/pt/database/realm/Download;)V

    .line 293
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->deleteDownloadFromDb(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method synthetic lambda$startDownload$3(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Integer;)Lrx/d;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$31;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/realm/Download;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 95
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$32;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$33;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 97
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$startNextDownload$15(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 4

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    iget-object v3, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

    invoke-direct {v0, v1, p1, v2, v3}, Lcm/aptoide/pt/downloadmanager/DownloadTask;-><init>(Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/utils/FileUtils;Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->startDownload()V

    .line 243
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download with md5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isDownloading:Z

    .line 246
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->cacheHelper:Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;

    invoke-interface {v0}, Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;->cleanCache()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$29;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$30;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method

.method public pauseAllDownloads()V
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/q;->b()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isPausing:Z

    .line 186
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->getRunningDownloads()Lrx/d;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/a;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$11;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 198
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$22;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$23;->lambdaFactory$(Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    invoke-static {p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$24;->lambdaFactory$(Ljava/lang/String;)Lrx/b/b;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$19;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$21;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 301
    return-void
.end method

.method public setDownloading(Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isDownloading:Z

    .line 278
    return-void
.end method

.method public startDownload(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloadStatus(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized startNextDownload()V
    .locals 3

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isDownloading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isPausing:Z

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->isDownloading:Z

    .line 240
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getNextDownload()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$14;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
