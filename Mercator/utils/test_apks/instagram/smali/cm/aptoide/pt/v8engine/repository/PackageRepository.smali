.class public Lcm/aptoide/pt/v8engine/repository/PackageRepository;
.super Ljava/lang/Object;
.source "PackageRepository.java"


# instance fields
.field private memoryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->packageManager:Landroid/content/pm/PackageManager;

    .line 30
    return-void
.end method

.method private getAdbInstalledPackages()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getCachedInstalledPackages()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getInstalledPackages()Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getCachedInstalledPackages()Lrx/d;

    move-result-object v0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getPackageManagerInstalledPackages()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/d;)Lrx/d;

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getAdbInstalledPackages()Lrx/d;

    move-result-object v1

    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/d;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)Lrx/b/b;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getPackageManagerInstalledPackages()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLatestInstalledPackages$0(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method static synthetic lambda$getLatestInstalledPackages$1(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic lambda$getLatestInstalledPackages$2(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method static synthetic lambda$getLatestInstalledPackages$3(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getRandomInstalledPackages$10(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getRandomInstalledPackages$8(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 96
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 97
    return-object p0
.end method

.method static synthetic lambda$getRandomInstalledPackages$9(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 99
    return-object p0
.end method

.method private setCachedInstalledPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->memoryCache:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public getLatestInstalledPackages(I)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getInstalledPackages()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;->lambdaFactory$()Lrx/b/f;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/f;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lrx/d;->b(I)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 40
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getRandomInstalledPackages(I)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getInstalledPackages()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$10;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lrx/d;->b(I)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 102
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAdbInstalledPackages$7()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    const/4 v2, 0x0

    .line 71
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "pm list packages"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 72
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    :goto_1
    move-object v2, v1

    .line 81
    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    :cond_0
    :goto_4
    throw v0

    .line 79
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    if-eqz v1, :cond_2

    .line 85
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 90
    :cond_2
    :goto_5
    return-object v0

    .line 86
    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    .line 83
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 80
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method synthetic lambda$getCachedInstalledPackages$5()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->memoryCache:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->memoryCache:Ljava/util/List;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No cached packages available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$getInstalledPackages$4(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->setCachedInstalledPackages(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$getPackageManagerInstalledPackages$6()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
