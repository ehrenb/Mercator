.class public Lcom/liulishuo/filedownloader/services/i;
.super Ljava/lang/Object;
.source "FileDownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private final b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Throwable;

.field private f:I

.field private g:Lcom/liulishuo/filedownloader/model/a;

.field private volatile h:Z

.field private volatile i:Z

.field private final j:Lcom/liulishuo/filedownloader/services/g;

.field private final k:I

.field private final l:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private volatile m:Z

.field private final n:I

.field private o:J

.field private final p:Lcom/liulishuo/filedownloader/x;

.field private final q:Z

.field private final r:I

.field private final s:Lcom/liulishuo/filedownloader/e/c$c;

.field private final t:Lcom/liulishuo/filedownloader/e/c$a;

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private final y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/x;Lcom/liulishuo/filedownloader/e/c$c;Lcom/liulishuo/filedownloader/e/c$a;Lcom/liulishuo/filedownloader/model/a;Lcom/liulishuo/filedownloader/services/g;ILcom/liulishuo/filedownloader/model/FileDownloadHeader;IIZZ)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/services/i;->a:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->i:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->m:Z

    .line 654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->u:J

    .line 655
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->v:J

    .line 657
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->w:J

    .line 658
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->x:J

    .line 805
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->y:Ljava/lang/Object;

    .line 117
    invoke-virtual {p4}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 118
    iput-boolean p11, p0, Lcom/liulishuo/filedownloader/services/i;->q:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->i:Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    .line 123
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/i;->p:Lcom/liulishuo/filedownloader/x;

    .line 124
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/i;->s:Lcom/liulishuo/filedownloader/e/c$c;

    .line 125
    iput-object p5, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    .line 126
    iput-object p7, p0, Lcom/liulishuo/filedownloader/services/i;->l:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 128
    const/4 v0, 0x5

    if-ge p8, v0, :cond_0

    const/4 p8, 0x5

    :cond_0
    iput p8, p0, Lcom/liulishuo/filedownloader/services/i;->n:I

    .line 132
    iput p9, p0, Lcom/liulishuo/filedownloader/services/i;->a:I

    .line 133
    iput-boolean p10, p0, Lcom/liulishuo/filedownloader/services/i;->b:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->c:Z

    .line 137
    iput-object p4, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    .line 139
    iput p6, p0, Lcom/liulishuo/filedownloader/services/i;->k:I

    .line 141
    iput-object p3, p0, Lcom/liulishuo/filedownloader/services/i;->t:Lcom/liulishuo/filedownloader/e/c$a;

    .line 142
    return-void
.end method

.method private a(JJ)J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x1

    .line 562
    cmp-long v4, p3, v6

    if-gtz v4, :cond_1

    move-wide v0, v2

    .line 568
    :cond_0
    :goto_0
    return-wide v0

    .line 564
    :cond_1
    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 567
    add-long v2, p3, v0

    div-long v2, p1, v2

    .line 568
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method private a(ZJ)Lcom/liulishuo/filedownloader/d/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 851
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "found invalid internal destination path, empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_0
    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "found invalid internal destination filename %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 859
    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 863
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 866
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "found invalid internal destination path[%s], & path is directory[%B]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 868
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    .line 867
    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 870
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 871
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_3

    .line 872
    new-instance v0, Ljava/io/IOException;

    const-string v2, "create new file error  %s"

    new-array v3, v6, [Ljava/lang/Object;

    .line 874
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 873
    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_3
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->s:Lcom/liulishuo/filedownloader/e/c$c;

    invoke-interface {v2, v1}, Lcom/liulishuo/filedownloader/e/c$c;->a(Ljava/io/File;)Lcom/liulishuo/filedownloader/d/a;

    move-result-object v8

    .line 881
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_5

    .line 882
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 883
    sub-long v4, p2, v6

    .line 885
    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->e(Ljava/lang/String;)J

    move-result-wide v2

    .line 887
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 888
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/d/a;->b()V

    .line 890
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw v1

    .line 892
    :cond_4
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    if-nez v0, :cond_5

    .line 894
    invoke-interface {v8, p2, p3}, Lcom/liulishuo/filedownloader/d/a;->b(J)V

    .line 898
    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->s:Lcom/liulishuo/filedownloader/e/c$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/e/c$c;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 899
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v0

    invoke-interface {v8, v0, v1}, Lcom/liulishuo/filedownloader/d/a;->a(J)V

    .line 902
    :cond_6
    return-object v8
.end method

.method private a(B)V
    .locals 5

    .prologue
    .line 811
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 813
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 825
    const-string v0, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 826
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 825
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    :cond_0
    monitor-exit v1

    .line 834
    :goto_0
    return-void

    .line 831
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    .line 832
    invoke-static {p1, v2, p0}, Lcom/liulishuo/filedownloader/message/d;->a(BLcom/liulishuo/filedownloader/model/a;Lcom/liulishuo/filedownloader/services/i;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 833
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 768
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "On completed %d %d %B"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/services/i;->m:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-interface {v0, v1, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->b(Lcom/liulishuo/filedownloader/model/a;J)V

    .line 773
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 774
    return-void
.end method

.method private a(JJLcom/liulishuo/filedownloader/d/a;)V
    .locals 11

    .prologue
    .line 663
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 668
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/services/i;->w:J

    sub-long v2, p1, v2

    .line 669
    iget-wide v4, p0, Lcom/liulishuo/filedownloader/services/i;->x:J

    sub-long v4, v0, v4

    .line 671
    invoke-static {}, Lcom/liulishuo/filedownloader/e/f;->a()I

    move-result v6

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 672
    invoke-static {}, Lcom/liulishuo/filedownloader/e/f;->b()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 674
    :try_start_0
    invoke-interface/range {p5 .. p5}, Lcom/liulishuo/filedownloader/d/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-interface {v2, v3, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->a(Lcom/liulishuo/filedownloader/model/a;J)V

    .line 679
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/services/i;->w:J

    .line 680
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->x:J

    .line 688
    :goto_2
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/services/i;->u:J

    sub-long v2, p1, v2

    .line 689
    iget-wide v4, p0, Lcom/liulishuo/filedownloader/services/i;->v:J

    sub-long v4, v0, v4

    .line 691
    iget-wide v6, p0, Lcom/liulishuo/filedownloader/services/i;->o:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/services/i;->o:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 696
    iget v2, p0, Lcom/liulishuo/filedownloader/services/i;->n:I

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    .line 700
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->v:J

    .line 701
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/services/i;->u:J

    .line 703
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_2

    .line 704
    const-string v0, "On progress %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    goto :goto_0

    .line 675
    :catch_0
    move-exception v2

    .line 676
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 682
    :cond_3
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 683
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/a;->a(B)V

    .line 685
    :cond_4
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v2, p1, p2}, Lcom/liulishuo/filedownloader/model/a;->a(J)V

    goto :goto_2
.end method

.method private a(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 4

    .prologue
    .line 755
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 758
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 756
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/a;->c(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/a;->a(B)V

    .line 764
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget v1, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z

    .line 765
    return-void
.end method

.method private a(Lcom/liulishuo/filedownloader/a/a;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 574
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->l:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->l:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_2

    .line 578
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 579
    const-string v1, "%d add outside header: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 590
    if-eqz v0, :cond_1

    .line 591
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    .line 602
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/services/i;->c:Z

    if-eqz v1, :cond_4

    invoke-interface {p1, v0, v2, v3}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 604
    const-string v1, "If-Match"

    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_3
    const-string v0, "Range"

    const-string v1, "bytes=%d-"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_4
    return-void
.end method

.method private a(Lcom/liulishuo/filedownloader/model/a;)V
    .locals 18

    .prologue
    .line 231
    const/4 v3, 0x0

    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v8, 0x0

    move v14, v2

    move v15, v3

    .line 237
    :cond_0
    :goto_0
    const-wide/16 v10, 0x0

    .line 238
    move-object/from16 v0, p0

    iget v9, v0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 242
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/i;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_1

    .line 244
    const-string v2, "already canceled %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/i;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v8, :cond_2

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    .line 417
    :cond_2
    :goto_1
    return-void

    .line 250
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_4

    .line 251
    const-class v2, Lcom/liulishuo/filedownloader/services/i;

    const-string v3, "start download %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/i;->l()V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i;->t:Lcom/liulishuo/filedownloader/e/c$a;

    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liulishuo/filedownloader/e/c$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/a;

    move-result-object v8

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/liulishuo/filedownloader/services/i;->a(Lcom/liulishuo/filedownloader/a/a;)V

    .line 265
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->b()Ljava/util/Map;

    move-result-object v4

    .line 266
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_5

    .line 267
    const-string v2, "%s request header %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_5
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->d()V

    .line 273
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->e()I

    move-result v5

    .line 275
    const/16 v2, 0xc8

    if-eq v5, v2, :cond_6

    if-nez v5, :cond_e

    :cond_6
    const/4 v2, 0x1

    .line 277
    :goto_2
    const/16 v3, 0xce

    if-eq v5, v3, :cond_7

    const/4 v3, 0x1

    if-ne v5, v3, :cond_f

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/liulishuo/filedownloader/services/i;->c:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    .line 282
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/liulishuo/filedownloader/services/i;->c:Z

    if-eqz v6, :cond_8

    if-nez v3, :cond_8

    .line 283
    const-string v6, "tried to resume from the break point[%d], but the response code is %d, not 206(PARTIAL)."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x1

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v12

    .line 283
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_18

    .line 289
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    .line 290
    const-string v6, "Transfer-Encoding"

    invoke-interface {v8, v6}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    if-nez v2, :cond_a

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-gtz v2, :cond_b

    .line 294
    :cond_a
    if-nez v6, :cond_10

    .line 295
    const-string v2, "Content-Length"

    invoke-interface {v8, v2}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/e/f;->j(Ljava/lang/String;)J

    move-result-wide v4

    .line 303
    :cond_b
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-gez v2, :cond_c

    .line 305
    if-eqz v6, :cond_11

    const-string v2, "chunked"

    .line 306
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    .line 307
    :goto_5
    if-nez v2, :cond_c

    .line 309
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/liulishuo/filedownloader/e/e;->c:Z

    if-eqz v2, :cond_12

    .line 312
    const-wide/16 v4, -0x1

    .line 313
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_c

    .line 314
    const-string v2, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 316
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    .line 314
    move-object/from16 v0, p0

    invoke-static {v0, v2, v6}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_c
    if-eqz v3, :cond_d

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v10

    .line 332
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/liulishuo/filedownloader/services/i;->b(Lcom/liulishuo/filedownloader/a/a;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/liulishuo/filedownloader/services/i;->c(Lcom/liulishuo/filedownloader/a/a;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/liulishuo/filedownloader/services/i;->a(ZJLjava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->k()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v6

    .line 336
    invoke-static {v2, v6}, Lcom/liulishuo/filedownloader/e/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/liulishuo/filedownloader/services/i;->b:Z

    const/4 v12, 0x0

    .line 339
    invoke-static {v9, v6, v7, v12}, Lcom/liulishuo/filedownloader/e/c;->a(ILjava/lang/String;ZZ)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v2, v9}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    if-eqz v8, :cond_2

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    goto/16 :goto_1

    .line 275
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 277
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 298
    :cond_10
    const-wide/16 v4, -0x1

    goto :goto_4

    .line 306
    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    .line 319
    :cond_12
    :try_start_2
    new-instance v2, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v3, "can\'t know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties"

    invoke-direct {v2, v3}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    :catch_0
    move-exception v2

    move-object v4, v2

    move v2, v14

    .line 400
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/liulishuo/filedownloader/services/i;->k:I

    add-int/lit8 v3, v15, 0x1

    if-le v5, v15, :cond_1b

    instance-of v5, v4, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez v5, :cond_1b

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/liulishuo/filedownloader/services/i;->a(Ljava/lang/Throwable;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    if-eqz v8, :cond_13

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    :cond_13
    :goto_7
    move v14, v2

    move v15, v3

    .line 416
    goto/16 :goto_0

    .line 345
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v6, v2}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v6

    .line 347
    if-eqz v6, :cond_16

    .line 348
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/liulishuo/filedownloader/services/i;->p:Lcom/liulishuo/filedownloader/x;

    const/4 v12, 0x0

    invoke-static {v9, v6, v7, v12}, Lcom/liulishuo/filedownloader/e/c;->a(ILcom/liulishuo/filedownloader/model/a;Lcom/liulishuo/filedownloader/x;Z)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v2, v9}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 411
    if-eqz v8, :cond_2

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    goto/16 :goto_1

    .line 354
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v7, v2}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/i;->o()V

    .line 357
    invoke-static {v2, v6}, Lcom/liulishuo/filedownloader/services/h;->a(ILcom/liulishuo/filedownloader/model/a;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 358
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/a;->a(J)V

    .line 359
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/a;->b(J)V

    .line 360
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/a;->b(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/liulishuo/filedownloader/services/g;->b(Lcom/liulishuo/filedownloader/model/a;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 411
    if-eqz v8, :cond_0

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v7, p0

    move v9, v3

    move-wide v12, v4

    .line 369
    :try_start_6
    invoke-direct/range {v7 .. v13}, Lcom/liulishuo/filedownloader/services/i;->a(Lcom/liulishuo/filedownloader/a/a;ZJJ)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_17

    .line 411
    if-eqz v8, :cond_2

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    goto/16 :goto_1

    :cond_17
    move v2, v14

    move v3, v15

    .line 411
    :goto_8
    if-eqz v8, :cond_13

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    goto :goto_7

    .line 374
    :cond_18
    :try_start_7
    new-instance v2, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    .line 376
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v5, v4, v3}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    .line 378
    if-eqz v14, :cond_1a

    .line 379
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 411
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_19

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    :cond_19
    throw v2

    .line 381
    :cond_1a
    const/4 v14, 0x1

    .line 383
    packed-switch v5, :pswitch_data_0

    .line 393
    :try_start_8
    throw v2

    .line 385
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/i;->m()V

    .line 386
    const-class v3, Lcom/liulishuo/filedownloader/services/i;

    const-string v4, "%d response code %d, range[%d] isn\'t make sense, so delete the dirty file[%s], and try to redownload it from byte-0."

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 388
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    .line 389
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 386
    invoke-static {v3, v4, v6}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 390
    add-int/lit8 v3, v15, 0x1

    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/liulishuo/filedownloader/services/i;->a(Ljava/lang/Throwable;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v2, v14

    .line 391
    goto :goto_8

    .line 407
    :cond_1b
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/liulishuo/filedownloader/services/i;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 411
    if-eqz v8, :cond_2

    .line 412
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/a/a;->f()V

    goto/16 :goto_1

    .line 398
    :catch_1
    move-exception v2

    move-object v4, v2

    move v15, v3

    move v2, v14

    goto/16 :goto_6

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1a0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 727
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "On error %d %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/i;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 733
    instance-of v0, v1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 736
    check-cast v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(Landroid/database/sqlite/SQLiteFullException;)V

    .line 749
    :goto_0
    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->e:Ljava/lang/Throwable;

    .line 751
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 752
    return-void

    .line 740
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/liulishuo/filedownloader/services/g;->a(Lcom/liulishuo/filedownloader/model/a;Ljava/lang/Throwable;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    .line 745
    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 744
    check-cast v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 4

    .prologue
    .line 712
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 713
    const-string v0, "On retry %d %s %d %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    .line 714
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 713
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/i;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-interface {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/g;->a(Lcom/liulishuo/filedownloader/model/a;Ljava/lang/Throwable;)V

    .line 720
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->e:Ljava/lang/Throwable;

    .line 721
    iput p2, p0, Lcom/liulishuo/filedownloader/services/i;->f:I

    .line 723
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 724
    return-void
.end method

.method private a(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 647
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/liulishuo/filedownloader/services/g;->a(Lcom/liulishuo/filedownloader/model/a;JLjava/lang/String;Ljava/lang/String;)V

    .line 649
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/services/i;->d:Z

    .line 651
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 652
    return-void
.end method

.method private a(Lcom/liulishuo/filedownloader/a/a;ZJJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    invoke-direct {p0, p2, p5, p6}, Lcom/liulishuo/filedownloader/services/i;->a(ZJ)Lcom/liulishuo/filedownloader/d/a;

    move-result-object v6

    .line 431
    :try_start_0
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a/a;->a()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v7

    .line 432
    const/16 v0, 0x1000

    :try_start_1
    new-array v8, v0, [B

    .line 434
    iget v0, p0, Lcom/liulishuo/filedownloader/services/i;->a:I

    int-to-long v0, v0

    invoke-direct {p0, p5, p6, v0, v1}, Lcom/liulishuo/filedownloader/services/i;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/services/i;->o:J

    move-wide v0, p3

    .line 443
    :goto_0
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 444
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 480
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-nez v2, :cond_0

    move-wide p5, v0

    .line 485
    :cond_0
    cmp-long v2, v0, p5

    if-nez v2, :cond_a

    .line 488
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->h()V

    .line 491
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget v1, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z

    .line 494
    invoke-direct {p0, p5, p6}, Lcom/liulishuo/filedownloader/services/i;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 496
    const/4 v0, 0x1

    .line 502
    if-eqz v7, :cond_1

    .line 504
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 508
    :cond_1
    if-eqz v6, :cond_2

    .line 510
    :try_start_2
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 514
    :cond_2
    if-eqz v6, :cond_3

    .line 516
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_3
    :goto_1
    return v0

    .line 452
    :cond_4
    const/4 v3, 0x0

    :try_start_3
    invoke-interface {v6, v8, v3, v2}, Lcom/liulishuo/filedownloader/d/a;->a([BII)V

    .line 465
    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v1, p0

    move-wide v4, p5

    .line 468
    invoke-direct/range {v1 .. v6}, Lcom/liulishuo/filedownloader/services/i;->a(JJLcom/liulishuo/filedownloader/d/a;)V

    .line 471
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 473
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 474
    const/4 v0, 0x1

    .line 502
    if-eqz v7, :cond_5

    .line 504
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 508
    :cond_5
    if-eqz v6, :cond_6

    .line 510
    :try_start_4
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 514
    :cond_6
    if-eqz v6, :cond_3

    .line 516
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->b()V

    goto :goto_1

    .line 514
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 516
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_7
    throw v0

    :cond_8
    move-wide v0, v2

    .line 477
    goto :goto_0

    .line 514
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 516
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_9
    throw v0

    .line 498
    :cond_a
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "sofar[%d] not equal total[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 499
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 502
    :catchall_2
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_b

    .line 504
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 508
    :cond_b
    if-eqz v6, :cond_c

    .line 510
    :try_start_6
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 514
    :cond_c
    if-eqz v6, :cond_d

    .line 516
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_d
    throw v0

    .line 514
    :catchall_3
    move-exception v0

    if-eqz v6, :cond_e

    .line 516
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/d/a;->b()V

    :cond_e
    throw v0

    .line 502
    :catchall_4
    move-exception v0

    goto :goto_2
.end method

.method private b(Lcom/liulishuo/filedownloader/a/a;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connection is null when findEtag"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    const-string v0, "Etag"

    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "etag find by header %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 9

    .prologue
    const-wide/16 v4, 0x1000

    .line 948
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 954
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/e/e;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->e(Ljava/lang/String;)J

    move-result-wide v2

    .line 960
    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 962
    const-wide/16 v6, 0x0

    .line 963
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 965
    const-class v0, Lcom/liulishuo/filedownloader/services/i;

    const-string v1, "Exception with: free space isn\'t enough, and the target file not exist."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v8}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 972
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJLjava/lang/Throwable;)V

    move-object p1, v1

    .line 982
    :cond_1
    :goto_1
    return-object p1

    .line 968
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_0

    .line 975
    :cond_3
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    move-object p1, v1

    goto :goto_1
.end method

.method private c(Lcom/liulishuo/filedownloader/a/a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 627
    const-string v0, "Content-Disposition"

    .line 628
    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    :cond_0
    :goto_0
    return-object v0

    .line 634
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 523
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 524
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 531
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 533
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    .line 536
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    .line 533
    invoke-static {v6, v7}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    const-string v2, "delete the temp file(%s) failed, on completed downloading."

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    throw v0

    .line 539
    :cond_1
    :try_start_1
    const-string v6, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    .line 541
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v4

    .line 539
    invoke-static {p0, v6, v7}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_2
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 546
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 553
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    const-string v0, "delete the temp file(%s) failed, on completed downloading."

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v1, v2, v10

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    :cond_4
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 777
    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    .line 778
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 779
    const-string v0, "On paused %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    .line 780
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 779
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/services/g;->c(Lcom/liulishuo/filedownloader/model/a;J)V

    .line 785
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 786
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/a;->a(B)V

    .line 790
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 791
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->m:Z

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    .line 841
    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/liulishuo/filedownloader/e/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 906
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->s:Lcom/liulishuo/filedownloader/e/c$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/e/c$c;->a()Z

    move-result v0

    .line 907
    iget v1, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    .line 908
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 907
    invoke-static {v1, v2, v3}, Lcom/liulishuo/filedownloader/services/h;->a(ILcom/liulishuo/filedownloader/model/a;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/services/i;->c:Z

    .line 910
    if-nez v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/a;->a(J)V

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->c:Z

    .line 915
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->m()V

    goto :goto_0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->n()V

    .line 921
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->o()V

    .line 922
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_0

    .line 928
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 934
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    .line 939
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 945
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->d:Z

    return v0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/liulishuo/filedownloader/services/i;->f:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->m:Z

    .line 642
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->i()V

    .line 643
    return-void
.end method

.method public g()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 794
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 795
    const-string v0, "On resume %d"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    :cond_0
    iput-boolean v4, p0, Lcom/liulishuo/filedownloader/services/i;->i:Z

    .line 800
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/services/g;->c(Lcom/liulishuo/filedownloader/model/a;)V

    .line 802
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(B)V

    .line 803
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 166
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 168
    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/services/i;->i:Z

    .line 169
    iput-boolean v4, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "start runnable but model == null?? %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->j:Lcom/liulishuo/filedownloader/services/g;

    iget v1, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    .line 178
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "start runnable but downloadMode == null?? %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    .line 227
    :goto_0
    return-void

    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    if-eq v0, v4, :cond_3

    .line 186
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 187
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "High concurrent cause, start runnable but already paused %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 195
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    goto :goto_0

    .line 199
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 200
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    throw v0

    .line 208
    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/services/i;->q:Z

    if-eqz v0, :cond_4

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 209
    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 210
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v1, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/services/i;->r:I

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v4, v2, v3

    .line 211
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    goto/16 :goto_0

    .line 219
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/i;->j()V

    .line 222
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/i;->g:Lcom/liulishuo/filedownloader/model/a;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/i;->a(Lcom/liulishuo/filedownloader/model/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/services/i;->h:Z

    goto/16 :goto_0
.end method
