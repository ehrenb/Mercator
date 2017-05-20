.class abstract Lcom/localytics/android/BaseHandler;
.super Landroid/os/Handler;
.source "BaseHandler.java"


# static fields
.field private static final MESSAGE_GET_VALUE:I = 0x2

.field static final MESSAGE_INIT:I = 0x1

.field static final MESSAGE_UPLOAD:I = 0x3

.field static final MESSAGE_UPLOAD_CALLBACK:I = 0x4

.field private static final UPLOAD_WAKE_LOCK:Ljava/lang/String; = "UPLOAD_WAKE_LOCK"


# instance fields
.field protected doesRetry:Z

.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field mProvider:Lcom/localytics/android/BaseProvider;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxRowToUpload:I

.field private numberOfRetries:I

.field protected shouldProcessPendingUploadMessage:Z

.field siloName:Ljava/lang/String;

.field protected uploadThread:Lcom/localytics/android/BaseUploadThread;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    iput v1, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 58
    iput v1, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 63
    iput-boolean v1, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/BaseHandler;->doesRetry:Z

    .line 69
    iput-object p1, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 70
    return-void
.end method


# virtual methods
.method protected abstract _deleteUploadedData(I)V
.end method

.method protected abstract _getDataToUpload()Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract _getMaxRowToUpload()I
.end method

.method protected abstract _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation
.end method

.method abstract _init()V
.end method

.method protected abstract _onUploadCompleted(ZLjava/lang/String;)V
.end method

.method protected _runBatchTransactionOnProvider(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, p1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method _upload(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_getMaxRowToUpload()I

    move-result v0

    .line 304
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    if-nez v1, :cond_1

    .line 306
    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 308
    const-string v0, "Already uploading %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_getDataToUpload()Ljava/util/TreeMap;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "Error occurred during upload"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    iput v3, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    goto :goto_0

    .line 326
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    .line 328
    if-eqz p1, :cond_3

    .line 330
    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 333
    :cond_3
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->enterWakeLock()V

    .line 334
    invoke-virtual {p0, v1, p2}, Lcom/localytics/android/BaseHandler;->_getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    invoke-virtual {v0}, Lcom/localytics/android/BaseUploadThread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected _uploadCallback(ILjava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    iget-object v5, v0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    .line 349
    iput-object v4, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 350
    if-lez p1, :cond_2

    .line 352
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->_deleteUploadedData(I)V

    .line 353
    iput v1, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 361
    :goto_0
    iget-boolean v0, p0, Lcom/localytics/android/BaseHandler;->doesRetry:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    .line 363
    :cond_0
    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-ne p1, v0, :cond_1

    .line 365
    invoke-virtual {p0, p3, p2}, Lcom/localytics/android/BaseHandler;->_onUploadCompleted(ZLjava/lang/String;)V

    .line 376
    :cond_1
    iput v1, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 377
    iput v1, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 379
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->exitWakeLock()V

    .line 386
    :goto_1
    return-void

    .line 358
    :cond_2
    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    goto :goto_0

    .line 383
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    .line 384
    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    if-lez v0, :cond_4

    const-wide/16 v2, 0x2710

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method protected enterWakeLock()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 396
    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 401
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 402
    const/4 v1, 0x1

    const-string v2, "UPLOAD_WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 403
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 404
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "Wake lock will be acquired but is held when shouldn\'t be."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 409
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    const-string v0, "Wake lock acquired."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    const-string v0, "Localytics library failed to get wake lock"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_3
    const-string v0, "android.permission.WAKE_LOCK is missing from the Manifest file."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected exitWakeLock()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 428
    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const-string v0, "Wake lock will be released but not held when should be."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 440
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    const-string v0, "Wake lock was not released when it should have been."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 448
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 455
    :cond_1
    :goto_1
    return-void

    .line 446
    :cond_2
    const-string v0, "Wake lock released."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :cond_3
    const-string v0, "android.permission.WAKE_LOCK is missing from the Manifest file."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_1
.end method

.method getBool(Ljava/util/concurrent/Callable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 188
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    .line 189
    return-object v0
.end method

.method getFutureTaskValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 194
    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 204
    :goto_0
    return-object p2

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method getInt(Ljava/util/concurrent/Callable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getList(Ljava/util/concurrent/Callable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getMap(Ljava/util/concurrent/Callable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/BaseHandler;->getFutureTaskValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    const-string v0, "%s handler received %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "%s handler can\'t handle message %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 91
    new-instance v1, Lcom/localytics/android/BaseHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/BaseHandler$1;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/BaseHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "%s handler received MESSAGE_UPLOAD"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 106
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    .line 107
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 109
    if-nez v2, :cond_2

    .line 111
    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    .line 118
    :goto_1
    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Boolean;

    .line 120
    iget-boolean v3, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :cond_1
    new-instance v0, Lcom/localytics/android/BaseHandler$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/BaseHandler$2;-><init>(Lcom/localytics/android/BaseHandler;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/BaseHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 135
    :pswitch_3
    const-string v0, "%s handler received MESSAGE_UPLOAD_CALLBACK"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 138
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 139
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    .line 140
    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    new-instance v3, Lcom/localytics/android/BaseHandler$3;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/localytics/android/BaseHandler$3;-><init>(Lcom/localytics/android/BaseHandler;ILjava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/localytics/android/BaseHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handleMessageExtended(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fell through switch statement"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method queueMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessage(Landroid/os/Message;)V

    .line 248
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method final queueMessageDelayed(Landroid/os/Message;J)Z
    .locals 2

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    move-result v0

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/localytics/android/BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method

.method upload()V
    .locals 6

    .prologue
    .line 272
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method upload(Ljava/util/concurrent/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 282
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 284
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p4, v0, v4

    aput-object p5, v0, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p4, v0, v4

    aput-object p5, v0, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/localytics/android/BaseHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
