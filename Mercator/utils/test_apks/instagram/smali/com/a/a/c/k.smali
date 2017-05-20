.class Lcom/a/a/c/k;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/k$d;,
        Lcom/a/a/c/k$c;,
        Lcom/a/a/c/k$a;,
        Lcom/a/a/c/k$e;,
        Lcom/a/a/c/k$b;
    }
.end annotation


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final j:Lio/fabric/sdk/android/services/d/a;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Lcom/a/a/c/g;

.field private final m:Lio/fabric/sdk/android/services/b/o;

.field private final n:Lcom/a/a/c/af;

.field private final o:Lcom/a/a/c/f;

.field private final p:Lcom/a/a/c/s;

.field private final q:Lcom/a/a/c/o;

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/a/a/c/k$1;

    invoke-direct {v0}, Lcom/a/a/c/k$1;-><init>()V

    sput-object v0, Lcom/a/a/c/k;->a:Ljava/io/FilenameFilter;

    .line 135
    new-instance v0, Lcom/a/a/c/k$7;

    invoke-direct {v0}, Lcom/a/a/c/k$7;-><init>()V

    sput-object v0, Lcom/a/a/c/k;->b:Ljava/util/Comparator;

    .line 142
    new-instance v0, Lcom/a/a/c/k$8;

    invoke-direct {v0}, Lcom/a/a/c/k$8;-><init>()V

    sput-object v0, Lcom/a/a/c/k;->c:Ljava/util/Comparator;

    .line 152
    new-instance v0, Lcom/a/a/c/k$9;

    invoke-direct {v0}, Lcom/a/a/c/k$9;-><init>()V

    sput-object v0, Lcom/a/a/c/k;->d:Ljava/io/FilenameFilter;

    .line 159
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/k;->e:Ljava/util/regex/Pattern;

    .line 164
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/k;->f:Ljava/util/Map;

    .line 195
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/c/k;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/c/g;Lio/fabric/sdk/android/services/b/o;Lcom/a/a/c/ah;Lio/fabric/sdk/android/services/d/a;Lcom/a/a/c/f;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/c/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 223
    iput-object p1, p0, Lcom/a/a/c/k;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 224
    iput-object p2, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    .line 225
    iput-object p3, p0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    .line 226
    iput-object p6, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    .line 227
    invoke-interface {p4}, Lcom/a/a/c/ah;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/k;->r:Ljava/lang/String;

    .line 228
    iput-object p5, p0, Lcom/a/a/c/k;->j:Lio/fabric/sdk/android/services/d/a;

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 231
    invoke-virtual {p6}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/a/a/c/s;

    invoke-direct {v1, v0, p5}, Lcom/a/a/c/s;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V

    iput-object v1, p0, Lcom/a/a/c/k;->p:Lcom/a/a/c/s;

    .line 233
    new-instance v1, Lcom/a/a/c/o;

    invoke-direct {v1, v0}, Lcom/a/a/c/o;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/a/a/c/k;->q:Lcom/a/a/c/o;

    .line 234
    new-instance v0, Lcom/a/a/c/v;

    const/16 v1, 0x400

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/a/a/c/af;

    new-instance v3, Lcom/a/a/c/aa;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/a/a/c/aa;-><init>(I)V

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/a/a/c/v;-><init>(I[Lcom/a/a/c/af;)V

    iput-object v0, p0, Lcom/a/a/c/k;->n:Lcom/a/a/c/af;

    .line 236
    return-void
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/c/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 649
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 651
    invoke-direct {p0}, Lcom/a/a/c/k;->o()[Ljava/io/File;

    move-result-object v2

    .line 652
    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 654
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 655
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/k;->p:Lcom/a/a/c/s;

    invoke-virtual {v0, v1}, Lcom/a/a/c/s;->a(Ljava/util/Set;)V

    .line 661
    new-instance v0, Lcom/a/a/c/k$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/a/a/c/k$a;-><init>(Lcom/a/a/c/k$1;)V

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/a/a/c/k;->a([Ljava/io/File;Ljava/util/Set;)V

    .line 662
    return-void
.end method

.method private a(Lcom/a/a/c/c;)V
    .locals 4

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 558
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/c/c;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lcom/a/a/c/d;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1244
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1258
    :goto_0
    return-void

    .line 1252
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/InputStream;Lcom/a/a/c/d;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1256
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/a/a/c/d;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1225
    sget-object v2, Lcom/a/a/c/k;->g:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1226
    new-instance v5, Lcom/a/a/c/k$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/c/k$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1229
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1230
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " data for session ID "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/io/File;)V

    goto :goto_1

    .line 1238
    :cond_1
    return-void
.end method

.method private a(Lcom/a/a/c/d;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v6, Lcom/a/a/c/ag;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->n:Lcom/a/a/c/af;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v2}, Lcom/a/a/c/ag;-><init>(Ljava/lang/Throwable;Lcom/a/a/c/af;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v11

    .line 1058
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v3, v2, v4

    .line 1059
    invoke-static {v11}, Lio/fabric/sdk/android/services/b/i;->c(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v17

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->q:Lcom/a/a/c/o;

    invoke-virtual {v2}, Lcom/a/a/c/o;->a()Z

    move-result v2

    invoke-static {v11, v2}, Lio/fabric/sdk/android/services/b/i;->a(Landroid/content/Context;Z)I

    move-result v18

    .line 1062
    invoke-static {v11}, Lio/fabric/sdk/android/services/b/i;->d(Landroid/content/Context;)Z

    move-result v19

    .line 1063
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1064
    invoke-static {}, Lio/fabric/sdk/android/services/b/i;->b()J

    move-result-wide v8

    invoke-static {v11}, Lio/fabric/sdk/android/services/b/i;->b(Landroid/content/Context;)J

    move-result-wide v12

    sub-long v20, v8, v12

    .line 1066
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->b(Ljava/lang/String;)J

    move-result-wide v22

    .line 1069
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    .line 1071
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1072
    iget-object v8, v6, Lcom/a/a/c/ag;->c:[Ljava/lang/StackTraceElement;

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->n()Ljava/lang/String;

    move-result-object v16

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/o;->c()Ljava/lang/String;

    move-result-object v15

    .line 1077
    if-eqz p6, :cond_0

    .line 1078
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 1079
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1080
    const/4 v2, 0x0

    .line 1081
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1082
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    aput-object v5, v9, v7

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c/k;->n:Lcom/a/a/c/af;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v5, v2}, Lcom/a/a/c/af;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    .line 1085
    goto :goto_0

    .line 1089
    :cond_0
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1093
    :cond_1
    const-string v2, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v11, v2, v5}, Lio/fabric/sdk/android/services/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1095
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1106
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a/a/c/k;->p:Lcom/a/a/c/s;

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v23}, Lcom/a/a/c/ad;->a(Lcom/a/a/c/d;JLjava/lang/String;Lcom/a/a/c/ag;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/a/a/c/s;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    .line 1111
    return-void

    .line 1097
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->g()Ljava/util/Map;

    move-result-object v2

    .line 1098
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    .line 1102
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v11, v2

    goto :goto_1
.end method

.method private static a(Lcom/a/a/c/d;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1209
    sget-object v1, Lio/fabric/sdk/android/services/b/i;->a:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1211
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 1213
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-static {p0, v0}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1222
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/a/a/c/k;Lcom/a/a/c/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/a/a/c/k;->b(Lcom/a/a/c/a/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/c/k;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/c/k;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/a/a/c/k;->a(Z)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1120
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collecting session parts for ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    new-instance v0, Lcom/a/a/c/k$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionCrash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/a/a/c/k$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1124
    if-eqz v4, :cond_1

    array-length v0, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 1125
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v5, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Session %s has fatal exception: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    new-instance v3, Lcom/a/a/c/k$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/a/a/c/k$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1130
    if-eqz v5, :cond_2

    array-length v3, v5

    if-lez v3, :cond_2

    move v3, v1

    .line 1131
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Session %s has non-fatal exceptions: %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p2, v10, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    .line 1135
    :cond_0
    invoke-direct {p0, p2, v5, p3}, Lcom/a/a/c/k;->a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object v1

    .line 1137
    if-eqz v0, :cond_3

    aget-object v0, v4, v2

    .line 1138
    :goto_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/a/a/c/k;->a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    .line 1144
    :goto_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing session part files for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0, p2}, Lcom/a/a/c/k;->a(Ljava/lang/String;)V

    .line 1147
    return-void

    :cond_1
    move v0, v2

    .line 1124
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 1130
    goto :goto_1

    .line 1137
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1140
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No events present for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1154
    if-eqz p4, :cond_1

    .line 1160
    :goto_0
    :try_start_0
    new-instance v2, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    :try_start_1
    invoke-static {v2}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 1163
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collecting SessionStart data for session ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-static {v1, p1}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/io/File;)V

    .line 1167
    const/4 v3, 0x4

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/a/a/c/d;->a(IJ)V

    .line 1168
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0}, Lcom/a/a/c/d;->a(IZ)V

    .line 1170
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/a/a/c/d;->a(II)V

    .line 1172
    const/16 v3, 0xc

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/a/a/c/d;->b(II)V

    .line 1174
    invoke-direct {p0, v1, p2}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/lang/String;)V

    .line 1176
    invoke-static {v1, p3, p2}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;[Ljava/io/File;Ljava/lang/String;)V

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    invoke-static {v1, p4}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1189
    :cond_0
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1198
    const-string v0, "Failed to close CLS file"

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1201
    :goto_1
    return-void

    .line 1154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1182
    :goto_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write session file for session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1189
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1194
    invoke-direct {p0, v2}, Lcom/a/a/c/k;->a(Lcom/a/a/c/c;)V

    goto :goto_1

    .line 1189
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Error flushing session file stream"

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1198
    const-string v1, "Failed to close CLS file"

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1189
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1181
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;Lcom/a/a/c/d;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    new-array v1, p2, [B

    .line 1263
    const/4 v0, 0x0

    .line 1266
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1268
    add-int/2addr v0, v2

    goto :goto_0

    .line 1271
    :cond_0
    invoke-virtual {p1, v1}, Lcom/a/a/c/d;->a([B)V

    .line 1272
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/a/a/c/k;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 570
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/a/a/c/k$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/c/k$b;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/a/a/c/k;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/a/a/c/aj;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 631
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 940
    .line 943
    :try_start_0
    new-instance v2, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BeginSession"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :try_start_1
    invoke-static {v2}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 946
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Crashlytics Android SDK/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v6}, Lcom/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 950
    invoke-static {v1, p1, v0, v4, v5}, Lcom/a/a/c/ad;->a(Lcom/a/a/c/d;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 953
    const-string v0, "Failed to close begin session file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 955
    return-void

    .line 952
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 953
    const-string v1, "Failed to close begin session file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 952
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/c/f;->A()V

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/c/k;->b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 280
    invoke-virtual {p0}, Lcom/a/a/c/k;->e()V

    .line 281
    invoke-direct {p0}, Lcom/a/a/c/k;->m()V

    .line 283
    invoke-virtual {p0}, Lcom/a/a/c/k;->g()V

    .line 285
    iget-object v0, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/c/f;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/a/a/c/k;->q()V

    .line 288
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 495
    :goto_0
    add-int/lit8 v1, v0, 0x8

    invoke-direct {p0, v1}, Lcom/a/a/c/k;->a(I)V

    .line 497
    invoke-direct {p0}, Lcom/a/a/c/k;->o()[Ljava/io/File;

    move-result-object v1

    .line 499
    array-length v2, v1

    if-gt v2, v0, :cond_1

    .line 500
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No open sessions to be closed."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_1
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    :cond_1
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-direct {p0, v2}, Lcom/a/a/c/k;->f(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-static {}, Lcom/a/a/c/f;->B()Lio/fabric/sdk/android/services/e/p;

    move-result-object v2

    .line 513
    if-nez v2, :cond_2

    .line 514
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_2
    iget v2, v2, Lio/fabric/sdk/android/services/e/p;->c:I

    invoke-direct {p0, v1, v0, v2}, Lcom/a/a/c/k;->a([Ljava/io/File;II)V

    goto :goto_1
.end method

.method private a([Ljava/io/File;II)V
    .locals 6

    .prologue
    .line 528
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closing open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 531
    aget-object v0, p1, p2

    .line 532
    invoke-static {v0}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, v0, v1, p3}, Lcom/a/a/c/k;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 530
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method private a([Ljava/io/File;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 666
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 667
    sget-object v4, Lcom/a/a/c/k;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 669
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 670
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting unknown file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 682
    :cond_0
    return-void

    .line 675
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 677
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming session file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 665
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/c/k;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/a/a/c/k;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .locals 7

    .prologue
    .line 691
    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 692
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Trimming down to %d logged exceptions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, p1, p3}, Lcom/a/a/c/k;->a(Ljava/lang/String;I)V

    .line 696
    new-instance v0, Lcom/a/a/c/k$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/c/k$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    .line 699
    :cond_0
    return-object p2
.end method

.method static synthetic b(Lcom/a/a/c/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/a/a/c/k;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/a/a/c/a/a/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 845
    .line 848
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/c/k;->l()Ljava/lang/String;

    move-result-object v3

    .line 850
    if-nez v3, :cond_0

    .line 851
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 886
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 888
    :goto_0
    return-void

    .line 858
    :cond_0
    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "<native-crash [%s (%s)]>"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/a/a/c/a/a/d;->b:Lcom/a/a/c/a/a/e;

    iget-object v8, v8, Lcom/a/a/c/a/a/e;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lcom/a/a/c/a/a/d;->b:Lcom/a/a/c/a/a/e;

    iget-object v8, v8, Lcom/a/a/c/a/a/e;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a/c/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v4, p1, Lcom/a/a/c/a/a/d;->d:[Lcom/a/a/c/a/a/a;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/a/a/c/a/a/d;->d:[Lcom/a/a/c/a/a/a;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 869
    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "SessionCrash"

    .line 872
    :goto_2
    new-instance v2, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    :try_start_2
    invoke-static {v2}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 875
    new-instance v0, Lcom/a/a/c/u;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/a/a/c/u;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v3}, Lcom/a/a/c/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 877
    new-instance v4, Lcom/a/a/c/s;

    iget-object v5, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v5}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/a/a/c/k;->j:Lio/fabric/sdk/android/services/d/a;

    invoke-direct {v4, v5, v6, v3}, Lcom/a/a/c/s;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;Ljava/lang/String;)V

    .line 879
    invoke-static {p1, v4, v0, v1}, Lcom/a/a/c/x;->a(Lcom/a/a/c/a/a/d;Lcom/a/a/c/s;Ljava/util/Map;Lcom/a/a/c/d;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 885
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 886
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 867
    goto :goto_1

    .line 869
    :cond_2
    :try_start_3
    const-string v0, "SessionMissingBinaryImages"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 881
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 882
    :goto_3
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 885
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 886
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 885
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 886
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 885
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 881
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic b(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/c/k;->c(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 795
    .line 798
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/c/k;->k()Ljava/lang/String;

    move-result-object v0

    .line 800
    if-nez v0, :cond_0

    .line 801
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 820
    :goto_0
    return-void

    .line 808
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a/c/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v7, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    :try_start_2
    invoke-static {v7}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 812
    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 817
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 814
    :goto_1
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 817
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 817
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 813
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_1
.end method

.method private b(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 578
    new-instance v0, Lcom/a/a/c/k$e;

    invoke-direct {v0, p1}, Lcom/a/a/c/k$e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 615
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method static synthetic c(Lcom/a/a/c/k;)Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 958
    .line 961
    :try_start_0
    new-instance v8, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :try_start_1
    invoke-static {v8}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 964
    :try_start_2
    iget-object v1, p0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/o;->c()Ljava/lang/String;

    move-result-object v1

    .line 965
    iget-object v2, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->i()Ljava/lang/String;

    move-result-object v2

    .line 966
    iget-object v3, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v3}, Lcom/a/a/c/f;->l()Ljava/lang/String;

    move-result-object v3

    .line 967
    iget-object v4, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v4}, Lcom/a/a/c/f;->k()Ljava/lang/String;

    move-result-object v4

    .line 968
    iget-object v5, p0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/b/o;->b()Ljava/lang/String;

    move-result-object v5

    .line 969
    iget-object v6, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v6}, Lcom/a/a/c/f;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/l;

    move-result-object v6

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/b/l;->a()I

    move-result v6

    .line 972
    iget-object v7, p0, Lcom/a/a/c/k;->r:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/a/a/c/ad;->a(Lcom/a/a/c/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 975
    const-string v1, "Failed to flush to session app file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 976
    const-string v0, "Failed to close session app file."

    invoke-static {v8, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 978
    return-void

    .line 975
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    const-string v3, "Failed to flush to session app file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 976
    const-string v1, "Failed to close session app file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 975
    :catchall_1
    move-exception v0

    move-object v2, v8

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_0
.end method

.method private c(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 894
    invoke-direct {p0}, Lcom/a/a/c/k;->k()Ljava/lang/String;

    move-result-object v8

    .line 896
    if-nez v8, :cond_0

    .line 897
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v2, v3, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 937
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/a/a/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" from thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/a/a/c/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    new-instance v7, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v2

    invoke-direct {v7, v2, v0}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    :try_start_1
    invoke-static {v7}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 920
    const-string v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/a/a/c/k;->a(Lcom/a/a/c/d;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 925
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 926
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 932
    :goto_1
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v8, v0}, Lcom/a/a/c/k;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An error occurred when trimming non-fatal files."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 921
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 922
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the non-fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 925
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 926
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 925
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Failed to flush to non-fatal file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 926
    const-string v1, "Failed to close non-fatal file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 925
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 921
    :catch_2
    move-exception v0

    move-object v2, v7

    goto :goto_2
.end method

.method static synthetic d(Lcom/a/a/c/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/a/a/c/k;->m()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 981
    .line 985
    :try_start_0
    new-instance v2, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionOS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    :try_start_1
    invoke-static {v2}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 988
    iget-object v0, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->g(Landroid/content/Context;)Z

    move-result v0

    .line 990
    invoke-static {v1, v0}, Lcom/a/a/c/ad;->a(Lcom/a/a/c/d;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 992
    const-string v0, "Failed to flush to session OS file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 993
    const-string v0, "Failed to close session OS file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 995
    return-void

    .line 992
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 993
    const-string v1, "Failed to close session OS file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 992
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 999
    const/4 v4, 0x0

    .line 1000
    const/4 v3, 0x0

    .line 1002
    :try_start_0
    new-instance v17, Lcom/a/a/c/c;

    invoke-direct/range {p0 .. p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v3

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v2

    .line 1006
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/b/o;->h()Ljava/lang/String;

    move-result-object v4

    .line 1009
    invoke-static {}, Lio/fabric/sdk/android/services/b/i;->a()I

    move-result v5

    .line 1010
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 1011
    invoke-static {}, Lio/fabric/sdk/android/services/b/i;->b()J

    move-result-wide v8

    .line 1012
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    .line 1013
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->f(Landroid/content/Context;)Z

    move-result v12

    .line 1015
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/b/o;->i()Ljava/util/Map;

    move-result-object v13

    .line 1017
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->h(Landroid/content/Context;)I

    move-result v14

    .line 1019
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v3 .. v16}, Lcom/a/a/c/ad;->a(Lcom/a/a/c/d;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1023
    const-string v2, "Failed to flush session device info."

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1024
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1026
    return-void

    .line 1023
    :catchall_0
    move-exception v2

    :goto_0
    const-string v5, "Failed to flush session device info."

    invoke-static {v3, v5}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1024
    const-string v3, "Failed to close session device file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 1023
    :catchall_1
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1029
    .line 1032
    :try_start_0
    new-instance v2, Lcom/a/a/c/c;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/c/c;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :try_start_1
    invoke-static {v2}, Lcom/a/a/c/d;->a(Ljava/io/OutputStream;)Lcom/a/a/c/d;

    move-result-object v1

    .line 1035
    invoke-direct {p0, p1}, Lcom/a/a/c/k;->g(Ljava/lang/String;)Lcom/a/a/c/ai;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lcom/a/a/c/ai;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1045
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1046
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1048
    :goto_0
    return-void

    .line 1042
    :cond_0
    :try_start_2
    iget-object v3, v0, Lcom/a/a/c/ai;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/a/a/c/ai;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/a/a/c/ai;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lcom/a/a/c/ad;->a(Lcom/a/a/c/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1045
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1046
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    const-string v3, "Failed to flush session user file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1046
    const-string v1, "Failed to close session user file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1045
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)Lcom/a/a/c/ai;
    .locals 4

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/a/a/c/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/c/ai;

    iget-object v1, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v1}, Lcom/a/a/c/f;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-virtual {v3}, Lcom/a/a/c/f;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/c/u;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/c/u;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/a/a/c/u;->a(Ljava/lang/String;)Lcom/a/a/c/ai;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic i()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/a/a/c/k;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic j()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/a/a/c/k;->f:Ljava/util/Map;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/a/a/c/k;->o()[Ljava/io/File;

    move-result-object v0

    .line 403
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 412
    invoke-direct {p0}, Lcom/a/a/c/k;->o()[Ljava/io/File;

    move-result-object v0

    .line 413
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 473
    new-instance v1, Lcom/a/a/c/b;

    iget-object v2, p0, Lcom/a/a/c/k;->m:Lio/fabric/sdk/android/services/b/o;

    invoke-direct {v1, v2}, Lcom/a/a/c/b;-><init>(Lio/fabric/sdk/android/services/b/o;)V

    invoke-virtual {v1}, Lcom/a/a/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening an new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/k;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 479
    invoke-direct {p0, v1}, Lcom/a/a/c/k;->c(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v1}, Lcom/a/a/c/k;->d(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, v1}, Lcom/a/a/c/k;->e(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/a/a/c/k;->p:Lcom/a/a/c/s;

    invoke-virtual {v0, v1}, Lcom/a/a/c/s;->a(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private n()[Ljava/io/File;
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/a/a/c/k;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private o()[Ljava/io/File;
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/a/a/c/k;->f()[Ljava/io/File;

    move-result-object v0

    .line 591
    sget-object v1, Lcom/a/a/c/k;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 592
    return-object v0
.end method

.method private p()V
    .locals 6

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/a/a/c/k;->b()Ljava/io/File;

    move-result-object v1

    .line 765
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 769
    :cond_0
    new-instance v0, Lcom/a/a/c/k$c;

    invoke-direct {v0}, Lcom/a/a/c/k$c;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/k;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 772
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 774
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 776
    const/4 v0, 0x0

    .line 777
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 778
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 782
    :cond_1
    invoke-direct {p0, v1}, Lcom/a/a/c/k;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/a/a/c/k;->a([Ljava/io/File;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private q()V
    .locals 7

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/a/a/c/k;->n()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1298
    iget-object v4, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v5, Lcom/a/a/c/k$d;

    iget-object v6, p0, Lcom/a/a/c/k;->o:Lcom/a/a/c/f;

    invoke-direct {v5, v6, v3}, Lcom/a/a/c/k$d;-><init>(Lcom/a/a/c/f;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/a/a/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    return-void
.end method

.method private r()Ljava/io/File;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/a/a/c/k;->j:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/a/a/c/a/a/d;)V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/k$6;

    invoke-direct {v1, p0, p1}, Lcom/a/a/c/k$6;-><init>(Lcom/a/a/c/k;Lcom/a/a/c/a/a/d;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 832
    return-void
.end method

.method a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v2, Lcom/a/a/c/k$11;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/a/a/c/k$11;-><init>(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/a/a/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 333
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/k$12;

    invoke-direct {v1, p0, p1}, Lcom/a/a/c/k$12;-><init>(Lcom/a/a/c/k;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 373
    return-void
.end method

.method a([Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 720
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 725
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 726
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found invalid session part file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {v4}, Lcom/a/a/c/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    :goto_1
    return-void

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/c/k;->b()Ljava/io/File;

    move-result-object v1

    .line 737
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 738
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 741
    :cond_2
    new-instance v3, Lcom/a/a/c/k$5;

    invoke-direct {v3, p0, v2}, Lcom/a/a/c/k$5;-><init>(Lcom/a/a/c/k;Ljava/util/Set;)V

    .line 751
    invoke-direct {p0, v3}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 752
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving session file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 754
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not move session file. Deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 751
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 760
    :cond_4
    invoke-direct {p0}, Lcom/a/a/c/k;->p()V

    goto :goto_1
.end method

.method a()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b()Ljava/io/File;
    .locals 3

    .prologue
    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v1

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/k$2;

    invoke-direct {v1, p0}, Lcom/a/a/c/k$2;-><init>(Lcom/a/a/c/k;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 390
    return-void
.end method

.method d()Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/k$3;

    invoke-direct {v1, p0}, Lcom/a/a/c/k$3;-><init>(Lcom/a/a/c/k;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Z)V

    .line 487
    return-void
.end method

.method f()[Ljava/io/File;
    .locals 2

    .prologue
    .line 586
    new-instance v0, Lcom/a/a/c/k$b;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/a/a/c/k$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/c/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method g()V
    .locals 4

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/a/a/c/k;->r()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/a/a/c/k;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/a/a/c/k;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/c/aj;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 646
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/k$4;

    invoke-direct {v1, p0}, Lcom/a/a/c/k$4;-><init>(Lcom/a/a/c/k;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 712
    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/a/a/c/k;->q:Lcom/a/a/c/o;

    invoke-virtual {v0}, Lcom/a/a/c/o;->b()V

    .line 250
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/a/a/c/k;->l:Lcom/a/a/c/g;

    new-instance v2, Lcom/a/a/c/k$10;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/a/a/c/k$10;-><init>(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/a/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/a/a/c/k;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 266
    iget-object v0, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/a/a/c/k;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 266
    iget-object v0, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/a/a/c/k;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 266
    iget-object v1, p0, Lcom/a/a/c/k;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
