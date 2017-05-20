.class Lcom/localytics/android/CreativeManager;
.super Ljava/lang/Object;
.source "CreativeManager.java"

# interfaces
.implements Lcom/localytics/android/ICreativeDownloadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;,
        Lcom/localytics/android/CreativeManager$LastDownloadedCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE_SECS:J = 0xaL

.field private static final MAX_POOL_SIZE:I = 0x5


# instance fields
.field private mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

.field protected mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private mNormalDownloads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/ICreativeDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityDownloads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/ICreativeDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSequence:I


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/localytics/android/CreativeDownloadTaskFactory;

    invoke-direct {v0}, Lcom/localytics/android/CreativeDownloadTaskFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V
    .locals 9

    .prologue
    const/4 v2, 0x5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 57
    iput-object p2, p0, Lcom/localytics/android/CreativeManager;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p3, p0, Lcom/localytics/android/CreativeManager;->mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

    .line 59
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CreativeManager;->mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/localytics/android/CreativeManager;->mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Lcom/localytics/android/CreativeManager$1;

    invoke-direct {v8, p0}, Lcom/localytics/android/CreativeManager$1;-><init>(Lcom/localytics/android/CreativeManager;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/localytics/android/CreativeManager;->postDownloadCleanup(Lcom/localytics/android/ICreativeDownloadTask;)V

    return-void
.end method

.method protected static createDir(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 355
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    const-string v3, "Could not create the directory %s for saving the decompressed file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 365
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static getInAppLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-static {p3}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p2, :cond_0

    .line 238
    const-string v1, "amp_rule_%d.zip"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 242
    :cond_0
    const-string v1, "marketing_rule_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const/4 v0, 0x0

    goto :goto_1

    .line 250
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static getInAppLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/localytics/android/CreativeManager;->getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    invoke-static {p2}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, "marketing_rule_%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-static {p3}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    if-eqz p2, :cond_0

    .line 271
    const-string v1, "inbox_creative_assets_%d.zip"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 275
    :cond_0
    const-string v1, "inbox_creative_assets_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    const/4 v0, 0x0

    goto :goto_1

    .line 283
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    invoke-static {p2}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, "inbox_creative_assets_%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getOldZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, ".localytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->isUsingNewCreativeLocation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-static {p0}, Lcom/localytics/android/CreativeManager;->getOldZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 320
    :cond_0
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ".localytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private postDownloadCleanup(Lcom/localytics/android/ICreativeDownloadTask;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-interface {p1}, Lcom/localytics/android/ICreativeDownloadTask;->getCampaign()Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    const-string v1, "campaign_id"

    invoke-static {v0, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 205
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 208
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    invoke-interface {v0}, Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;->onFirstDownloaded()V

    .line 211
    iput-object v2, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    invoke-interface {v0}, Lcom/localytics/android/CreativeManager$LastDownloadedCallback;->onLastDownloaded()V

    .line 218
    iput-object v2, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    .line 222
    :cond_1
    return-void
.end method


# virtual methods
.method downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;",
            "Lcom/localytics/android/CreativeManager$LastDownloadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p2, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MarketingMessage;

    .line 88
    const-string v0, "campaign_id"

    invoke-static {v1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    .line 89
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

    sget-object v2, Lcom/localytics/android/ICreativeDownloadTask$Priority;->NORMAL:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    iget v3, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    iget-object v4, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/CreativeDownloadTaskFactory;->creativeDownloadTask(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)Lcom/localytics/android/ICreativeDownloadTask;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method protected handleCreativeForCampaign(Lcom/localytics/android/MarketingMessage;)V
    .locals 5

    .prologue
    .line 152
    const-string v0, "creative_url"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v0}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "base_path"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "zip_name"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v0, v1, v2}, Lcom/localytics/android/Utils;->decompressZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unzip creative file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method hasPendingDownloads()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method inAppCampaignsWithDownloadedCreatives(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 135
    const-string v3, "_id"

    invoke-static {v0, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 136
    invoke-virtual {p0, v3}, Lcom/localytics/android/CreativeManager;->inAppCreativeExists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_1
    return-object v1
.end method

.method inAppCreativeExists(I)Z
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    int-to-long v2, p1

    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v1}, Lcom/localytics/android/CreativeManager;->getInAppLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public onComplete(Lcom/localytics/android/ICreativeDownloadTask;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/localytics/android/CreativeManager$2;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/CreativeManager$2;-><init>(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onError(Lcom/localytics/android/ICreativeDownloadTask;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/localytics/android/CreativeManager$3;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/CreativeManager$3;-><init>(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;",
            "Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p2, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MarketingMessage;

    .line 103
    const-string v0, "campaign_id"

    invoke-static {v1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    .line 104
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ICreativeDownloadTask;

    .line 107
    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

    sget-object v2, Lcom/localytics/android/ICreativeDownloadTask$Priority;->HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    iget v3, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    iget-object v4, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/CreativeDownloadTaskFactory;->creativeDownloadTask(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)Lcom/localytics/android/ICreativeDownloadTask;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    sget-object v1, Lcom/localytics/android/ICreativeDownloadTask$Priority;->HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    invoke-interface {v0, v1}, Lcom/localytics/android/ICreativeDownloadTask;->setPriority(Lcom/localytics/android/ICreativeDownloadTask$Priority;)V

    .line 115
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 122
    :cond_3
    return-void
.end method
