.class Lcom/localytics/android/CreativeDownloadTask;
.super Ljava/lang/Object;
.source "CreativeDownloadTask.java"

# interfaces
.implements Lcom/localytics/android/ICreativeDownloadTask;


# instance fields
.field private mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

.field private mCampaign:Lcom/localytics/android/MarketingMessage;

.field private mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

.field private mRemoteFileLocation:Ljava/lang/String;

.field private mSequence:I


# direct methods
.method public constructor <init>(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/localytics/android/CreativeDownloadTask;->mCampaign:Lcom/localytics/android/MarketingMessage;

    .line 32
    const-string v0, "download_url"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mRemoteFileLocation:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 34
    iput p3, p0, Lcom/localytics/android/CreativeDownloadTask;->mSequence:I

    .line 35
    iput-object p4, p0, Lcom/localytics/android/CreativeDownloadTask;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 36
    iput-object p5, p0, Lcom/localytics/android/CreativeDownloadTask;->mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/localytics/android/ICreativeDownloadTask;)I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 147
    invoke-interface {p1}, Lcom/localytics/android/ICreativeDownloadTask;->getPriority()Lcom/localytics/android/ICreativeDownloadTask$Priority;

    move-result-object v1

    .line 151
    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mSequence:I

    invoke-interface {p1}, Lcom/localytics/android/ICreativeDownloadTask;->getSequence()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/localytics/android/ICreativeDownloadTask$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/localytics/android/ICreativeDownloadTask$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/localytics/android/ICreativeDownloadTask;

    invoke-virtual {p0, p1}, Lcom/localytics/android/CreativeDownloadTask;->compareTo(Lcom/localytics/android/ICreativeDownloadTask;)I

    move-result v0

    return v0
.end method

.method downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/net/Proxy;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    .line 87
    const-string v3, "The file %s does exist and overwrite is turned off."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    const-string v2, "Could not create the directory %s for saving file."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v4, "%s_%s_temp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget-object v6, p0, Lcom/localytics/android/CreativeDownloadTask;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 103
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {v4, p4}, Lcom/localytics/android/BaseUploadThread;->createURLConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 108
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x4000

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 109
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 112
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 113
    :goto_1
    invoke-virtual {v5, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 115
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    :try_start_1
    const-string v2, "Failed to download campaign creative"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    const-string v0, "Failed to delete temporary file for campaign"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    :cond_3
    :goto_2
    move v0, v1

    .line 140
    goto/16 :goto_0

    .line 117
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 119
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 121
    const-string v0, "Failed to create permanent file for campaign"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 136
    const-string v0, "Failed to delete temporary file for campaign"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    :cond_5
    move v0, v1

    goto/16 :goto_0

    .line 134
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const-string v1, "Failed to delete temporary file for campaign"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    const-string v0, "Failed to delete temporary file for campaign"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_8

    .line 136
    const-string v1, "Failed to delete temporary file for campaign"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    :cond_8
    throw v0
.end method

.method public getCampaign()Lcom/localytics/android/MarketingMessage;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mCampaign:Lcom/localytics/android/MarketingMessage;

    return-object v0
.end method

.method public getPriority()Lcom/localytics/android/ICreativeDownloadTask$Priority;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mSequence:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/localytics/android/CreativeDownloadTask;->mCampaign:Lcom/localytics/android/MarketingMessage;

    const-string v2, "local_file_location"

    invoke-static {v1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mRemoteFileLocation:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/localytics/android/CreativeDownloadTask;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/localytics/android/CreativeDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/net/Proxy;)Z

    move-result v0

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

    invoke-interface {v0, p0}, Lcom/localytics/android/ICreativeDownloadTaskCallback;->onComplete(Lcom/localytics/android/ICreativeDownloadTask;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

    invoke-interface {v0, p0}, Lcom/localytics/android/ICreativeDownloadTaskCallback;->onError(Lcom/localytics/android/ICreativeDownloadTask;)V

    goto :goto_0
.end method

.method public setPriority(Lcom/localytics/android/ICreativeDownloadTask$Priority;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 48
    return-void
.end method
