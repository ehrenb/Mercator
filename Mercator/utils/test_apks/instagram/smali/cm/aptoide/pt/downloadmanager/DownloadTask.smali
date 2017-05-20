.class Lcm/aptoide/pt/downloadmanager/DownloadTask;
.super Lcom/liulishuo/filedownloader/g;
.source "DownloadTask.java"


# static fields
.field private static final APTOIDE_DOWNLOAD_TASK_TAG_KEY:I = 0x378

.field private static final FILE_NOTFOUND_HTTP_ERROR:I = 0x194

.field private static final INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

.field private final download:Lcm/aptoide/pt/database/realm/Download;

.field private final downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

.field private final fileUtils:Lcm/aptoide/pt/utils/FileUtils;

.field isSerial:Z

.field private final md5:Ljava/lang/String;

.field private observable:Lrx/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/b",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/utils/FileUtils;Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;)V
    .locals 5

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/g;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->isSerial:Z

    .line 55
    iput-object p4, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

    .line 56
    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 57
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->md5:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    .line 59
    iput-object p3, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    .line 61
    const-wide/16 v0, 0xfa

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lrx/d;->a(JJLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    .line 62
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lrx/d;->l(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;)Lrx/b/e;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lrx/d;->j()Lrx/d/b;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->observable:Lrx/d/b;

    .line 84
    return-void
.end method

.method private CheckMd5AndMoveFileToRightPlace(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/Download;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getFilePathFromFileType(Lcm/aptoide/pt/database/realm/FileToDownload;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 360
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    .line 363
    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->APK_PATH:Ljava/lang/String;

    goto :goto_0

    .line 356
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->OBB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$completed$5(Lcom/liulishuo/filedownloader/a;Lcm/aptoide/pt/database/realm/FileToDownload;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v0

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v1

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

.method static synthetic lambda$completed$8()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->setDownloading(Z)V

    return-void
.end method

.method static synthetic lambda$new$0(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$new$1(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized saveDownloadInDb(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/Download;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 116
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 110
    return-void
.end method

.method private setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V
    .locals 4

    .prologue
    .line 121
    if-eqz p3, :cond_1

    .line 122
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 123
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v2

    invoke-interface {p3}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->setStatus(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/realm/Download;->setOverallDownloadStatus(I)V

    .line 130
    invoke-direct {p0, p2}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->saveDownloadInDb(Lcm/aptoide/pt/database/realm/Download;)V

    .line 131
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 132
    :cond_2
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->setDownloading(Z)V

    .line 136
    :goto_1
    return-void

    .line 134
    :cond_3
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->setDownloading(Z)V

    goto :goto_1
.end method

.method private stopDownloadQueue(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 5

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 258
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 259
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v2

    .line 260
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/liulishuo/filedownloader/q;->b(ILjava/lang/String;)B

    .line 261
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v2

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/liulishuo/filedownloader/q;->a(ILcom/liulishuo/filedownloader/i;)I

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/q;->a(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    :cond_1
    return-void
.end method

.method private updateProgress()Lcm/aptoide/pt/database/realm/Download;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 93
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 105
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 99
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getProgress()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    int-to-float v1, v1

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 102
    invoke-virtual {v2}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/aa;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 101
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setOverallProgress(I)V

    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->saveDownloadInDb(Lcm/aptoide/pt/database/realm/Download;)V

    .line 104
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v2}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    goto :goto_0
.end method


# virtual methods
.method protected blockComplete(Lcom/liulishuo/filedownloader/a;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method protected completed(Lcom/liulishuo/filedownloader/a;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$6;->lambdaFactory$(Lcom/liulishuo/filedownloader/a;)Lrx/b/e;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcom/liulishuo/filedownloader/a;)Lrx/b/e;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;->lambdaFactory$()Lrx/b/a;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/a;)Lrx/d;

    move-result-object v0

    .line 209
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;)Lrx/b/b;

    move-result-object v2

    .line 210
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 212
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->q()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setDownloadSpeed(I)V

    .line 213
    return-void
.end method

.method protected error(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->stopDownloadQueue(Lcm/aptoide/pt/database/realm/Download;)V

    .line 217
    instance-of v0, p2, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    .line 218
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;->a()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 219
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not found on link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 221
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getAltLink()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getAltLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/FileToDownload;->setLink(Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/FileToDownload;->setAltLink(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 226
    invoke-virtual {p0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->startDownload()V

    .line 247
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz p2, :cond_2

    .line 234
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->analytics:Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-interface {v0, v1, p2}, Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;->onError(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Throwable;)V

    .line 240
    :cond_3
    instance-of v0, p2, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setDownloadError(I)V

    .line 245
    :goto_1
    const/16 v0, 0x9

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 246
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->currentDownloadFinished()V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setDownloadError(I)V

    goto :goto_1
.end method

.method public getObservable()Lrx/d;
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
    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->observable:Lrx/d/b;

    return-object v0
.end method

.method synthetic lambda$CheckMd5AndMoveFileToRightPlace$11(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
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

    .line 332
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".temp"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileName(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {v2}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 345
    :goto_1
    return-object v0

    .line 340
    :cond_0
    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->getFilePathFromFileType(Lcm/aptoide/pt/database/realm/FileToDownload;)Ljava/lang/String;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    sget-object v4, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    .line 342
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-virtual {v3, v4, v2, v5}, Lcm/aptoide/pt/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method synthetic lambda$completed$10(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 211
    const/16 v0, 0x9

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method synthetic lambda$completed$7(Lcom/liulishuo/filedownloader/a;Lcm/aptoide/pt/database/realm/FileToDownload;)Lrx/d;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-virtual {p2, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setStatus(I)V

    .line 191
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 192
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 193
    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->setProgress(I)V

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->CheckMd5AndMoveFileToRightPlace(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/FileToDownload;Lcom/liulishuo/filedownloader/a;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$completed$9(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->saveDownloadInDb(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method synthetic lambda$new$2(Ljava/lang/Long;)Lcm/aptoide/pt/database/realm/Download;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->updateProgress()Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$3(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 72
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 73
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 74
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 75
    invoke-direct {p0, v2, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;)V

    .line 76
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->currentDownloadFinished()V

    .line 78
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$null$6(Lcm/aptoide/pt/database/realm/FileToDownload;Lcom/liulishuo/filedownloader/a;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "Download md5 match"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->setProgress(I)V

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "Download md5 is not correct"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setDownloadError(I)V

    .line 204
    const/16 v0, 0x9

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1, p2}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    goto :goto_0
.end method

.method synthetic lambda$saveDownloadInDb$4(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected paused(Lcom/liulishuo/filedownloader/a;II)V
    .locals 6

    .prologue
    .line 179
    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->paused(Lcom/liulishuo/filedownloader/a;JJ)V

    .line 180
    return-void
.end method

.method protected paused(Lcom/liulishuo/filedownloader/a;JJ)V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x6

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 175
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->currentDownloadFinished()V

    .line 176
    return-void
.end method

.method protected pending(Lcom/liulishuo/filedownloader/a;II)V
    .locals 6

    .prologue
    .line 147
    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->pending(Lcom/liulishuo/filedownloader/a;JJ)V

    .line 148
    const/4 v0, 0x4

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 149
    return-void
.end method

.method protected pending(Lcom/liulishuo/filedownloader/a;JJ)V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x4

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 144
    return-void
.end method

.method protected progress(Lcom/liulishuo/filedownloader/a;II)V
    .locals 6

    .prologue
    .line 170
    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->progress(Lcom/liulishuo/filedownloader/a;JJ)V

    .line 171
    return-void
.end method

.method protected progress(Lcom/liulishuo/filedownloader/a;JJ)V
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 153
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v2

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 155
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_1

    .line 156
    long-to-float v2, p2

    long-to-float v3, p4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setProgress(I)V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setProgress(I)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->q()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setDownloadSpeed(I)V

    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 165
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v4, v0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 167
    :cond_3
    return-void
.end method

.method public setSerial(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->isSerial:Z

    return-void
.end method

.method public startDownload()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->observable:Lrx/d/b;

    invoke-virtual {v0}, Lrx/d/b;->a()Lrx/k;

    .line 276
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v3

    move v1, v2

    .line 280
    :goto_0
    invoke-virtual {v3}, Lio/realm/aa;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 282
    invoke-virtual {v3, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 284
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A link to download must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v4

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/q;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object v4

    .line 293
    const-string v5, "versioncode"

    iget-object v6, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 294
    invoke-virtual {v6}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-interface {v4, v5, v6}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    .line 295
    const-string v5, "package"

    iget-object v6, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v6}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    .line 296
    const-string v5, "fileType"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    .line 301
    const/16 v5, 0x378

    invoke-interface {v4, v5, p0}, Lcom/liulishuo/filedownloader/a;->a(ILjava/lang/Object;)Lcom/liulishuo/filedownloader/a;

    .line 302
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 303
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".temp"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileName(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-interface {v4, p0}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;

    move-result-object v4

    const/16 v5, 0x64

    .line 306
    invoke-interface {v4, v5}, Lcom/liulishuo/filedownloader/a;->a(I)Lcom/liulishuo/filedownloader/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 307
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object v4

    .line 308
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a;->a()Lcom/liulishuo/filedownloader/a$c;

    move-result-object v4

    .line 309
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a$c;->a()I

    move-result v4

    .line 305
    invoke-virtual {v0, v4}, Lcm/aptoide/pt/database/realm/FileToDownload;->setDownloadId(I)V

    .line 310
    sget-object v4, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->DOWNLOADS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcm/aptoide/pt/database/realm/FileToDownload;->setPath(Ljava/lang/String;)V

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileName(Ljava/lang/String;)V

    .line 280
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 314
    :cond_2
    iget-boolean v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->isSerial:Z

    if-eqz v0, :cond_4

    .line 316
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/liulishuo/filedownloader/q;->a(Lcom/liulishuo/filedownloader/i;Z)Z

    .line 322
    :cond_3
    :goto_1
    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->saveDownloadInDb(Lcm/aptoide/pt/database/realm/Download;)V

    .line 323
    return-void

    .line 319
    :cond_4
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/liulishuo/filedownloader/q;->a(Lcom/liulishuo/filedownloader/i;Z)Z

    goto :goto_1
.end method

.method protected warn(Lcom/liulishuo/filedownloader/a;)V
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x7

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->setDownloadStatus(ILcm/aptoide/pt/database/realm/Download;Lcom/liulishuo/filedownloader/a;)V

    .line 327
    return-void
.end method
