.class public Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;
.super Ljava/lang/Object;
.source "CacheHelper.java"

# interfaces
.implements Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;
    }
.end annotation


# static fields
.field public static final MONTH_CACHE_TIME:J = 0x9a7ec800L

.field public static TAG:Ljava/lang/String; = null

.field public static final VALUE_TO_CONVERT_MB_TO_BYTES:I = 0x100000


# instance fields
.field private final fileUtils:Lcm/aptoide/pt/utils/FileUtils;

.field private final foldersToCleanPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;",
            ">;"
        }
    .end annotation
.end field

.field private maxCacheSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(JLjava/util/List;Lcm/aptoide/pt/utils/FileUtils;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;",
            ">;",
            "Lcm/aptoide/pt/utils/FileUtils;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->foldersToCleanPath:Ljava/util/List;

    .line 39
    const-wide/32 v0, 0x100000

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->maxCacheSize:J

    .line 40
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    .line 41
    return-void
.end method

.method public static build()Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;
    .locals 10

    .prologue
    const-wide v8, 0x9a7ec800L

    .line 44
    new-instance v0, Lcm/aptoide/pt/v8engine/DownloadManagerSettingsI;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/DownloadManagerSettingsI;-><init>()V

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 47
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getCachePath()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v3, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v6, 0x36ee80

    invoke-direct {v3, v4, v6, v7}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;-><init>(Ljava/io/File;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v3, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "icons/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v8, v9}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;-><init>(Ljava/io/File;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "image_manager_disk_cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v9}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;-><init>(Ljava/io/File;J)V

    .line 51
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v2, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/DownloadManagerSettingsI;->getMaxCacheSize()J

    move-result-wide v4

    new-instance v0, Lcm/aptoide/pt/utils/FileUtils;

    invoke-direct {v0}, Lcm/aptoide/pt/utils/FileUtils;-><init>()V

    invoke-direct {v2, v4, v5, v1, v0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;-><init>(JLjava/util/List;Lcm/aptoide/pt/utils/FileUtils;)V

    return-object v2
.end method

.method private checkIfInFoldersToClean(Ljava/util/List;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    .line 140
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$cleanCache$1(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 61
    return-object p0
.end method

.method static synthetic lambda$cleanCache$2(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$cleanCache$4(Ljava/util/List;)Ljava/lang/Long;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 66
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v1, v2

    .line 67
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 68
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache cleaned: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private removeFile(JJLjava/io/File;)J
    .locals 7

    .prologue
    .line 119
    const-wide/16 v2, 0x0

    .line 120
    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long v0, p3, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 121
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 122
    sget-object v4, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private removeFilesFromDir(JJJLjava/io/File;)J
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p7

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->removeOldFiles(Ljava/io/File;JJ)J

    move-result-wide v0

    .line 108
    invoke-virtual {p7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    array-length v2, v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-virtual {p7}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    add-long/2addr p5, v0

    .line 112
    :cond_1
    return-wide p5
.end method

.method private removeOldFiles(Ljava/io/File;JJ)J
    .locals 20

    .prologue
    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 86
    const-wide/16 v8, 0x0

    .line 87
    if-nez v17, :cond_1

    .line 102
    :cond_0
    return-wide v8

    .line 91
    :cond_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v2, v0, :cond_0

    aget-object v10, v17, v2

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->foldersToCleanPath:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->checkIfInFoldersToClean(Ljava/util/List;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 96
    invoke-direct/range {v3 .. v10}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->removeFilesFromDir(JJJLjava/io/File;)J

    move-result-wide v4

    add-long/2addr v8, v4

    .line 91
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v16, v10

    .line 98
    invoke-direct/range {v11 .. v16}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->removeFile(JJLjava/io/File;)J

    move-result-wide v4

    add-long/2addr v8, v4

    goto :goto_1
.end method

.method private shouldClean(Ljava/util/List;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v1, v2

    .line 78
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 79
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->foldersToCleanPath:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/utils/FileUtils;->dirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    cmp-long v0, v4, p2

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public cleanCache()Lrx/d;
    .locals 4
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
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->foldersToCleanPath:Ljava/util/List;

    invoke-static {v2}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;)Lrx/b/e;

    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;J)Lrx/b/e;

    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 73
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$cleanCache$0(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->maxCacheSize:J

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->shouldClean(Ljava/util/List;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$cleanCache$3(JLcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;)Ljava/lang/Long;
    .locals 7

    .prologue
    .line 63
    invoke-virtual {p3}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p3}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getCacheTime()J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->removeOldFiles(Ljava/io/File;JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
