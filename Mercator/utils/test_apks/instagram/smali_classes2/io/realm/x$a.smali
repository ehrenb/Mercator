.class public final Lio/realm/x$a;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:J

.field private f:Lio/realm/ab;

.field private g:Z

.field private h:Lio/realm/internal/SharedGroup$a;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lio/realm/a/b;

.field private m:Lio/realm/u$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/x$a;->i:Ljava/util/HashSet;

    .line 358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/x$a;->j:Ljava/util/HashSet;

    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null Context must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    invoke-static {p1}, Lio/realm/internal/i;->a(Landroid/content/Context;)V

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/x$a;->a(Ljava/io/File;)V

    .line 392
    return-void
.end method

.method static synthetic a(Lio/realm/x$a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->a:Ljava/io/File;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An existing folder must be provided. Yours was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "null"

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder is not writable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_3
    iput-object p1, p0, Lio/realm/x$a;->a:Ljava/io/File;

    .line 422
    const-string v0, "default.realm"

    iput-object v0, p0, Lio/realm/x$a;->b:Ljava/lang/String;

    .line 423
    iput-object v2, p0, Lio/realm/x$a;->d:[B

    .line 424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/x$a;->e:J

    .line 425
    iput-object v2, p0, Lio/realm/x$a;->f:Lio/realm/ab;

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/x$a;->g:Z

    .line 427
    sget-object v0, Lio/realm/internal/SharedGroup$a;->a:Lio/realm/internal/SharedGroup$a;

    iput-object v0, p0, Lio/realm/x$a;->h:Lio/realm/internal/SharedGroup$a;

    .line 428
    invoke-static {}, Lio/realm/x;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 429
    iget-object v0, p0, Lio/realm/x$a;->i:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/x;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_4
    return-void
.end method

.method static synthetic b(Lio/realm/x$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lio/realm/x$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lio/realm/x$a;)[B
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->d:[B

    return-object v0
.end method

.method static synthetic e(Lio/realm/x$a;)J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lio/realm/x$a;->e:J

    return-wide v0
.end method

.method static synthetic f(Lio/realm/x$a;)Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lio/realm/x$a;->g:Z

    return v0
.end method

.method static synthetic g(Lio/realm/x$a;)Lio/realm/ab;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->f:Lio/realm/ab;

    return-object v0
.end method

.method static synthetic h(Lio/realm/x$a;)Lio/realm/internal/SharedGroup$a;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->h:Lio/realm/internal/SharedGroup$a;

    return-object v0
.end method

.method static synthetic i(Lio/realm/x$a;)Lio/realm/a/b;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->l:Lio/realm/a/b;

    return-object v0
.end method

.method static synthetic j(Lio/realm/x$a;)Lio/realm/u$a;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->m:Lio/realm/u$a;

    return-object v0
.end method

.method static synthetic k(Lio/realm/x$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->k:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic l(Lio/realm/x$a;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->i:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic m(Lio/realm/x$a;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/realm/x$a;->j:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(J)Lio/realm/x$a;
    .locals 3

    .prologue
    .line 470
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    iput-wide p1, p0, Lio/realm/x$a;->e:J

    .line 474
    return-object p0
.end method

.method public a(Lio/realm/ab;)Lio/realm/x$a;
    .locals 2

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null migration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    iput-object p1, p0, Lio/realm/x$a;->f:Lio/realm/ab;

    .line 487
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/realm/x$a;
    .locals 2

    .prologue
    .line 437
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty filename must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    iput-object p1, p0, Lio/realm/x$a;->b:Ljava/lang/String;

    .line 442
    return-object p0
.end method

.method public a()Lio/realm/x;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lio/realm/x$a;->l:Lio/realm/a/b;

    if-nez v0, :cond_0

    invoke-static {}, Lio/realm/x;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Lio/realm/a/a;

    invoke-direct {v0}, Lio/realm/a/a;-><init>()V

    iput-object v0, p0, Lio/realm/x$a;->l:Lio/realm/a/b;

    .line 649
    :cond_0
    new-instance v0, Lio/realm/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/x;-><init>(Lio/realm/x$a;Lio/realm/x$1;)V

    return-object v0
.end method
