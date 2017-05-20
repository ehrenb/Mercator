.class public Lcm/aptoide/pt/v8engine/filemanager/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# instance fields
.field private cacheFolders:[Ljava/lang/String;

.field private final cacheHelper:Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

.field private downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private fileUtils:Lcm/aptoide/pt/utils/FileUtils;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;Lcm/aptoide/pt/utils/FileUtils;[Ljava/lang/String;Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->cacheHelper:Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    .line 23
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    .line 24
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->cacheFolders:[Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 26
    return-void
.end method

.method public static build()Lcm/aptoide/pt/v8engine/filemanager/FileManager;
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getCachePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    new-instance v1, Lcm/aptoide/pt/v8engine/filemanager/FileManager;

    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->build()Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/utils/FileUtils;

    invoke-direct {v3}, Lcm/aptoide/pt/utils/FileUtils;-><init>()V

    .line 34
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcm/aptoide/pt/v8engine/filemanager/FileManager;-><init>(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;Lcm/aptoide/pt/utils/FileUtils;[Ljava/lang/String;Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;)V

    return-object v1
.end method

.method static synthetic lambda$deleteCache$4(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->cleanInMemoryCache()V

    .line 54
    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/Long;Ljava/lang/Void;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method static synthetic lambda$null$2(Ljava/lang/Long;Ljava/lang/Void;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method


# virtual methods
.method public deleteCache()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->cacheFolders:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/utils/FileUtils;->deleteFolder([Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/filemanager/FileManager$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/filemanager/FileManager;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/FileManager$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$deleteCache$3(Ljava/lang/Long;)Lrx/d;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->invalidateDatabase()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/filemanager/FileManager$$Lambda$4;->lambdaFactory$(Ljava/lang/Long;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$purgeCache$1(Ljava/lang/Long;)Lrx/d;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->invalidateDatabase()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/filemanager/FileManager$$Lambda$5;->lambdaFactory$(Ljava/lang/Long;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public purgeCache()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->cacheHelper:Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->cleanCache()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/filemanager/FileManager$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/filemanager/FileManager;)Lrx/b/e;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
