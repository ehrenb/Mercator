.class Lcom/a/a/c/s;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/s$1;,
        Lcom/a/a/c/s$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/c/s$a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lio/fabric/sdk/android/services/d/a;

.field private d:Lcom/a/a/c/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/a/a/c/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/c/s$a;-><init>(Lcom/a/a/c/s$1;)V

    sput-object v0, Lcom/a/a/c/s;->a:Lcom/a/a/c/s$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/c/s;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/a/a/c/s;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/a/a/c/s;->c:Lio/fabric/sdk/android/services/d/a;

    .line 37
    sget-object v0, Lcom/a/a/c/s;->a:Lcom/a/a/c/s$a;

    iput-object v0, p0, Lcom/a/a/c/s;->d:Lcom/a/a/c/q;

    .line 38
    invoke-virtual {p0, p3}, Lcom/a/a/c/s;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 113
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "crashlytics-userlog-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/a/a/c/s;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/a/a/c/s;->b:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d()Ljava/io/File;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/c/s;->c:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "log-files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 131
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/c/a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/a/a/c/s;->d:Lcom/a/a/c/q;

    invoke-interface {v0}, Lcom/a/a/c/q;->a()Lcom/a/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/a/a/c/z;

    invoke-direct {v0, p1, p2}, Lcom/a/a/c/z;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/a/a/c/s;->d:Lcom/a/a/c/q;

    .line 103
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/a/a/c/s;->d:Lcom/a/a/c/q;

    invoke-interface {v0}, Lcom/a/a/c/q;->b()V

    .line 47
    sget-object v0, Lcom/a/a/c/s;->a:Lcom/a/a/c/s$a;

    iput-object v0, p0, Lcom/a/a/c/s;->d:Lcom/a/a/c/q;

    .line 49
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/a/a/c/s;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/c/s;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/a/a/c/s;->a(Ljava/io/File;I)V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/a/a/c/s;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 91
    invoke-direct {p0, v3}, Lcom/a/a/c/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/a/a/c/s;->d:Lcom/a/a/c/q;

    invoke-interface {v0}, Lcom/a/a/c/q;->c()V

    .line 81
    return-void
.end method
