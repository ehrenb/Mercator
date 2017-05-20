.class public Lcm/aptoide/pt/v8engine/deprecated/tables/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"


# static fields
.field private static final MAX_SIZE_CACHE:J = 0xc800000L

.field private static final PATH_TO_NEW_DOWNLOADS:Ljava/lang/String; = "/.aptoide/apks"

.field private static final PATH_TO_OLD_DOWNLOADS:Ljava/lang/String; = "/.aptoide/apks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$migrate$0(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method private saveDbEntry(Ljava/io/File;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/FileToDownload;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v6}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileType(I)V

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setPath(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->setMd5(Ljava/lang/String;)V

    .line 77
    new-instance v2, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v2}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 79
    invoke-virtual {v2, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcm/aptoide/pt/database/realm/Download;->setTimeStamp(J)V

    .line 82
    new-instance v0, Lio/realm/aa;

    new-array v3, v7, [Lcm/aptoide/pt/database/realm/FileToDownload;

    aput-object v1, v3, v6

    invoke-direct {v0, v3}, Lio/realm/aa;-><init>([Lio/realm/ac;)V

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 83
    invoke-virtual {v2, v6}, Lcm/aptoide/pt/database/realm/Download;->setDownloadSpeed(I)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v7}, Lcm/aptoide/pt/database/realm/Download;->setOverallDownloadStatus(I)V

    .line 86
    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/database/realm/Download;->setOverallProgress(I)V

    .line 88
    invoke-virtual {p2, v2}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->insert(Lio/realm/ad;)V

    .line 89
    return-void
.end method


# virtual methods
.method public migrate(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/io/File;

    const-string v3, "/.aptoide/apks"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Path to old downloads is invalid"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v3, "/.aptoide/apks"

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Path to new downloads is invalid"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 43
    invoke-static {}, Lcm/aptoide/pt/v8engine/deprecated/tables/Downloads$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    array-length v8, v7

    const/4 v2, 0x0

    move/from16 v16, v2

    move-wide v2, v4

    move/from16 v4, v16

    :goto_0
    if-ge v4, v8, :cond_4

    aget-object v5, v7, v4

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 51
    const-wide/32 v12, 0xc800000

    add-long v14, v2, v10

    cmp-long v9, v12, v14

    if-lez v9, :cond_3

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, ".apk"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/io/File;

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 54
    add-long/2addr v2, v10

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Downloads;->saveDbEntry(Ljava/io/File;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 59
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    .line 64
    :cond_4
    return-void
.end method
