.class public Lcom/liulishuo/filedownloader/c;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a;
.implements Lcom/liulishuo/filedownloader/a$b;
.implements Lcom/liulishuo/filedownloader/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c$a;
    }
.end annotation


# instance fields
.field volatile a:I

.field private final b:Lcom/liulishuo/filedownloader/w;

.field private final c:Lcom/liulishuo/filedownloader/w$a;

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liulishuo/filedownloader/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private k:Lcom/liulishuo/filedownloader/i;

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Object;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private final u:Ljava/lang/Object;

.field private final v:Ljava/lang/Object;

.field private volatile w:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Lcom/liulishuo/filedownloader/c;->n:I

    .line 63
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->o:Z

    .line 65
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->p:Z

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/liulishuo/filedownloader/c;->q:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/liulishuo/filedownloader/c;->r:I

    .line 71
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->s:Z

    .line 73
    iput v1, p0, Lcom/liulishuo/filedownloader/c;->a:I

    .line 74
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->t:Z

    .line 531
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->v:Ljava/lang/Object;

    .line 552
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->w:Z

    .line 77
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->u:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/liulishuo/filedownloader/d;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c;->u:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/liulishuo/filedownloader/d;-><init>(Lcom/liulishuo/filedownloader/d$a;Ljava/lang/Object;)V

    .line 81
    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    .line 82
    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/w$a;

    .line 83
    return-void
.end method

.method private Q()I
    .locals 5

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 312
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->E()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->e()V

    .line 328
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->d()I

    move-result v0

    return v0
.end method

.method private R()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->j:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-nez v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->j:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->j:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 539
    :cond_0
    monitor-exit v1

    .line 541
    :cond_1
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/c;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/c;->t:Z

    return p1
.end method


# virtual methods
.method public A()Lcom/liulishuo/filedownloader/a;
    .locals 0

    .prologue
    .line 608
    return-object p0
.end method

.method public B()Lcom/liulishuo/filedownloader/w$a;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/w$a;

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->r()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    return v0
.end method

.method public E()V
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 649
    :goto_0
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    .line 650
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->w:Z

    return v0
.end method

.method public G()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->w:Z

    .line 557
    return-void
.end method

.method public H()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->m()V

    .line 562
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->w:Z

    .line 565
    :cond_0
    return-void
.end method

.method public I()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c;->Q()I

    .line 570
    return-void
.end method

.method public J()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c;->Q()I

    .line 578
    return-void
.end method

.method public K()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->g()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/q;->f()Lcom/liulishuo/filedownloader/u;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/u;->a(Lcom/liulishuo/filedownloader/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->r()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public N()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->j:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object v0
.end method

.method public O()Lcom/liulishuo/filedownloader/a$b;
    .locals 0

    .prologue
    .line 593
    return-object p0
.end method

.method public P()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liulishuo/filedownloader/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a()Lcom/liulishuo/filedownloader/a$c;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/liulishuo/filedownloader/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liulishuo/filedownloader/c$a;-><init>(Lcom/liulishuo/filedownloader/c;Lcom/liulishuo/filedownloader/c$1;)V

    return-object v0
.end method

.method public a(I)Lcom/liulishuo/filedownloader/a;
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/liulishuo/filedownloader/c;->q:I

    .line 130
    return-object p0
.end method

.method public a(ILjava/lang/Object;)Lcom/liulishuo/filedownloader/a;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->l:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->l:Landroid/util/SparseArray;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/a$a;)Lcom/liulishuo/filedownloader/a;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;
    .locals 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->k:Lcom/liulishuo/filedownloader/i;

    .line 121
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "setListener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/c;->a(Ljava/lang/String;Z)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c;->R()V

    .line 200
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->j:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/liulishuo/filedownloader/a;
    .locals 3

    .prologue
    .line 98
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    .line 99
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "setPath %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/c;->i:Z

    .line 104
    if-eqz p2, :cond_1

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    .line 114
    :goto_0
    return-object p0

    .line 111
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/liulishuo/filedownloader/a$a;)Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 638
    iput p1, p0, Lcom/liulishuo/filedownloader/c;->a:I

    .line 639
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->f()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 351
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->d:I

    if-eqz v0, :cond_0

    .line 352
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->d:I

    .line 359
    :goto_0
    return v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/c;->i:Z

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/c;->d:I

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->q:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->r:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->i:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->i()Z

    move-result v1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/liulishuo/filedownloader/i;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->k:Lcom/liulishuo/filedownloader/i;

    return-object v0
.end method

.method public m()I
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->h()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 418
    const v0, 0x7fffffff

    .line 420
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->h()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()I
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->i()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 436
    const v0, 0x7fffffff

    .line 439
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->i()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->c()I

    move-result v0

    return v0
.end method

.method public r()B
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->g()B

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->s:Z

    return v0
.end method

.method public t()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->j()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 654
    const-string v0, "%d@%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->n:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->k()I

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->o:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->b:Lcom/liulishuo/filedownloader/w;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/w;->l()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->p:Z

    return v0
.end method
