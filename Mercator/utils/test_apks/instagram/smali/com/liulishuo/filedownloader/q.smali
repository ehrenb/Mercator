.class public Lcom/liulishuo/filedownloader/q;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/q$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private c:Lcom/liulishuo/filedownloader/v;

.field private e:Lcom/liulishuo/filedownloader/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/q;->b:Ljava/lang/Object;

    .line 712
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/q;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/liulishuo/filedownloader/q$a;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/liulishuo/filedownloader/services/d$a;)V
    .locals 3

    .prologue
    .line 75
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 76
    const-class v0, Lcom/liulishuo/filedownloader/q;

    const-string v1, "init Downloader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/liulishuo/filedownloader/e/c;->a(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/services/d$a;)V

    .line 82
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/h;->d(I)Ljava/util/List;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    const-string v1, "request pause but not exist %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/a$b;

    .line 264
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->c()Z

    goto :goto_1

    .line 267
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(ILcom/liulishuo/filedownloader/i;)I
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/h;->b(I)Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    .line 433
    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    .line 437
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;

    .line 438
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/liulishuo/filedownloader/c;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/liulishuo/filedownloader/e;)V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/liulishuo/filedownloader/f;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/f;->a(Ljava/lang/String;Lcom/liulishuo/filedownloader/b/d;)Z

    .line 526
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/q;->a(I)I

    .line 290
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/m;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/liulishuo/filedownloader/e/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    :cond_1
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/liulishuo/filedownloader/i;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 193
    const-string v1, "Tasks with the listener can\'t start, because the listener provided is null: [null, %B]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 194
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 193
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/q;->e()Lcom/liulishuo/filedownloader/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/v;->b(Lcom/liulishuo/filedownloader/i;)Z

    move-result v0

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/q;->e()Lcom/liulishuo/filedownloader/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/v;->a(Lcom/liulishuo/filedownloader/i;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)B
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/h;->b(I)Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    .line 383
    if-nez v0, :cond_1

    .line 384
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/m;->b(I)B

    move-result v0

    .line 389
    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/e/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v0, -0x3

    .line 396
    :cond_0
    return v0

    .line 386
    :cond_1
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->r()B

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Lcom/liulishuo/filedownloader/p;->a()Lcom/liulishuo/filedownloader/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/p;->b()V

    .line 227
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/h;->c()[Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    .line 228
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 229
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$b;->A()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->c()Z

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/m;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/m;->d()V

    .line 247
    :goto_1
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Lcom/liulishuo/filedownloader/q$1;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/q$1;-><init>(Lcom/liulishuo/filedownloader/q;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Ljava/lang/Runnable;

    .line 244
    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/q;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/m;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/m;->a(Landroid/content/Context;)V

    .line 455
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/m;->e()Z

    move-result v0

    return v0
.end method

.method e()Lcom/liulishuo/filedownloader/v;
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->c:Lcom/liulishuo/filedownloader/v;

    if-nez v0, :cond_1

    .line 703
    sget-object v1, Lcom/liulishuo/filedownloader/q;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->c:Lcom/liulishuo/filedownloader/v;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcom/liulishuo/filedownloader/aa;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/aa;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q;->c:Lcom/liulishuo/filedownloader/v;

    .line 707
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->c:Lcom/liulishuo/filedownloader/v;

    return-object v0

    .line 707
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method f()Lcom/liulishuo/filedownloader/u;
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->e:Lcom/liulishuo/filedownloader/u;

    if-nez v0, :cond_1

    .line 717
    sget-object v1, Lcom/liulishuo/filedownloader/q;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->e:Lcom/liulishuo/filedownloader/u;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Lcom/liulishuo/filedownloader/y;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/y;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q;->e:Lcom/liulishuo/filedownloader/u;

    .line 720
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->e:Lcom/liulishuo/filedownloader/u;

    check-cast v0, Lcom/liulishuo/filedownloader/e;

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/q;->a(Lcom/liulishuo/filedownloader/e;)V

    .line 722
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->e:Lcom/liulishuo/filedownloader/u;

    return-object v0

    .line 722
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
