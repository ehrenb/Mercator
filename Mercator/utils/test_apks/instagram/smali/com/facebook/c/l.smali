.class public final Lcom/facebook/c/l;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c/l$f;,
        Lcom/facebook/c/l$e;,
        Lcom/facebook/c/l$d;,
        Lcom/facebook/c/l$c;,
        Lcom/facebook/c/l$b;,
        Lcom/facebook/c/l$g;,
        Lcom/facebook/c/l$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/c/l$d;

.field private final e:Ljava/io/File;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Object;

.field private i:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/facebook/c/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/c/l;->a:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/c/l;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/c/l$d;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/c/l;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p1, p0, Lcom/facebook/c/l;->c:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/facebook/c/l;->d:Lcom/facebook/c/l$d;

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/h;->m()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/c/l$a;->a(Ljava/io/File;)V

    .line 94
    :cond_1
    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/c/l;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/c/l;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/c/l;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/c/l;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/c/l;->a(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/c/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/facebook/c/l;->b()V

    .line 284
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/c/l;->f:Z

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/c/l;->f:Z

    .line 302
    invoke-static {}, Lcom/facebook/h;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/c/l$2;

    invoke-direct {v2, p0}, Lcom/facebook/c/l$2;-><init>(Lcom/facebook/c/l;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    :cond_0
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/c/l;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/c/l;->c()V

    return-void
.end method

.method private c()V
    .locals 18

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 314
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/c/l;->f:Z

    .line 315
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/c/l;->g:Z

    .line 316
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    sget-object v2, Lcom/facebook/n;->d:Lcom/facebook/n;

    sget-object v3, Lcom/facebook/c/l;->a:Ljava/lang/String;

    const-string v4, "trim started"

    invoke-static {v2, v3, v4}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v10, Ljava/util/PriorityQueue;

    invoke-direct {v10}, Ljava/util/PriorityQueue;-><init>()V

    .line 320
    const-wide/16 v4, 0x0

    .line 321
    const-wide/16 v2, 0x0

    .line 322
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-static {}, Lcom/facebook/c/l$a;->a()Ljava/io/FilenameFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    .line 323
    if-eqz v7, :cond_2

    .line 324
    array-length v11, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_2

    aget-object v8, v7, v6

    .line 325
    new-instance v9, Lcom/facebook/c/l$e;

    invoke-direct {v9, v8}, Lcom/facebook/c/l$e;-><init>(Ljava/io/File;)V

    .line 326
    invoke-virtual {v10, v9}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v12, Lcom/facebook/n;->d:Lcom/facebook/n;

    sget-object v13, Lcom/facebook/c/l;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  trim considering time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 330
    invoke-virtual {v9}, Lcom/facebook/c/l$e;->b()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 331
    invoke-virtual {v9}, Lcom/facebook/c/l$e;->a()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 327
    invoke-static {v12, v13, v9}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v8}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v8

    add-long/2addr v8, v4

    .line 334
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 324
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v4

    move-wide v4, v8

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 338
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/l;->d:Lcom/facebook/c/l$d;

    invoke-virtual {v2}, Lcom/facebook/c/l$d;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gtz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/l;->d:Lcom/facebook/c/l$d;

    invoke-virtual {v2}, Lcom/facebook/c/l$d;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 339
    :cond_0
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/c/l$e;

    invoke-virtual {v2}, Lcom/facebook/c/l$e;->a()Ljava/io/File;

    move-result-object v8

    .line 340
    sget-object v2, Lcom/facebook/n;->d:Lcom/facebook/n;

    sget-object v3, Lcom/facebook/c/l;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  trim removing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v6, v2

    .line 342
    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    .line 343
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide v4, v2

    .line 344
    goto :goto_1

    .line 346
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 347
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/c/l;->g:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v3

    .line 351
    return-void

    .line 349
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 346
    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 347
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/facebook/c/l;->g:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/c/l;->h:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    :cond_2
    move-wide v6, v4

    move-wide v4, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/facebook/c/l;->b(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/facebook/c/l$c;

    invoke-direct {v1, p2, v0}, Lcom/facebook/c/l$c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/c/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 142
    :try_start_1
    invoke-static {v1}, Lcom/facebook/c/l$g;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 143
    if-nez v3, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :goto_0
    return-object v0

    .line 147
    :cond_0
    :try_start_2
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 171
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 152
    :cond_2
    :try_start_3
    const-string v4, "tag"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    if-nez p2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    .line 155
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 171
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 159
    :cond_5
    :try_start_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 160
    sget-object v0, Lcom/facebook/n;->d:Lcom/facebook/n;

    sget-object v3, Lcom/facebook/c/l;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting lastModified to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 163
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 164
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-static {v0, v3, v6}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 171
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v0

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 181
    iget-object v0, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/c/l$a;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create file at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 200
    new-instance v0, Lcom/facebook/c/l$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/c/l$1;-><init>(Lcom/facebook/c/l;JLjava/io/File;Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/facebook/c/l$b;

    invoke-direct {v1, v6, v0}, Lcom/facebook/c/l$b;-><init>(Ljava/io/OutputStream;Lcom/facebook/c/l$f;)V

    .line 215
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x2000

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 221
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 222
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-static {p2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_1
    invoke-static {v2, v0}, Lcom/facebook/c/l$g;->a(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    return-object v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    sget-object v1, Lcom/facebook/n;->d:Lcom/facebook/n;

    sget-object v2, Lcom/facebook/c/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating buffer output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Lcom/facebook/c/t;->a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :catch_1
    move-exception v0

    .line 233
    :try_start_2
    sget-object v1, Lcom/facebook/n;->d:Lcom/facebook/n;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/c/l;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating JSON header for cache file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/facebook/c/t;->a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FileLruCache: tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/c/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/c/l;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
