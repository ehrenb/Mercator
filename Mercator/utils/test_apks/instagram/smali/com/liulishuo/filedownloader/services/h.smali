.class Lcom/liulishuo/filedownloader/services/h;
.super Ljava/lang/Object;
.source "FileDownloadMgr.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/x;


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/services/g;

.field private final b:Lcom/liulishuo/filedownloader/services/j;

.field private final c:Lcom/liulishuo/filedownloader/e/c$c;

.field private final d:Lcom/liulishuo/filedownloader/e/c$a;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/services/d;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/d;->b()Lcom/liulishuo/filedownloader/services/g;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    .line 48
    new-instance v0, Lcom/liulishuo/filedownloader/services/j;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/d;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/services/j;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    .line 49
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/d;->c()Lcom/liulishuo/filedownloader/e/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->c:Lcom/liulishuo/filedownloader/e/c$c;

    .line 50
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/d;->d()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->d:Lcom/liulishuo/filedownloader/e/c$a;

    .line 51
    return-void
.end method

.method public static a(ILcom/liulishuo/filedownloader/model/a;)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/h;->a(ILcom/liulishuo/filedownloader/model/a;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static a(ILcom/liulishuo/filedownloader/model/a;Ljava/lang/Boolean;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 158
    if-nez p1, :cond_1

    .line 159
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 160
    const-class v1, Lcom/liulishuo/filedownloader/services/h;

    const-string v2, "can\'t continue %d model == null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 166
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 167
    const-class v1, Lcom/liulishuo/filedownloader/services/h;

    const-string v2, "can\'t continue %d temp path == null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/liulishuo/filedownloader/services/h;->a(ILcom/liulishuo/filedownloader/model/a;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(ILcom/liulishuo/filedownloader/model/a;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    .line 181
    if-nez p2, :cond_1

    .line 182
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 183
    const-class v2, Lcom/liulishuo/filedownloader/services/h;

    const-string v3, "can\'t continue %d path = null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 192
    if-eqz v3, :cond_2

    if-eqz v4, :cond_3

    .line 193
    :cond_2
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 194
    const-class v2, Lcom/liulishuo/filedownloader/services/h;

    const-string v5, "can\'t continue %d file not suit, exists[%B], directory[%B]"

    new-array v6, v9, [Ljava/lang/Object;

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v8

    .line 194
    invoke-static {v2, v5, v6}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 202
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 203
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 204
    const-class v2, Lcom/liulishuo/filedownloader/services/h;

    const-string v3, "can\'t continue %d the downloaded-record is zero."

    new-array v1, v1, [Ljava/lang/Object;

    .line 205
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 204
    invoke-static {v2, v3, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 211
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 213
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 216
    :cond_5
    sget-boolean v4, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v4, :cond_0

    .line 217
    const-class v4, Lcom/liulishuo/filedownloader/services/h;

    const-string v5, "can\'t continue %d dirty data fileLength[%d] sofar[%d] total[%d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v9

    .line 217
    invoke-static {v4, v5, v6}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    .line 225
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_7

    .line 226
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 227
    const-class v2, Lcom/liulishuo/filedownloader/services/h;

    const-string v3, "can\'t continue %d, because of the output stream doesn\'t support seek, but the task has already pre-allocated, so we only can download it from the very beginning."

    new-array v1, v1, [Ljava/lang/Object;

    .line 230
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 227
    invoke-static {v2, v3, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 235
    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/j;->b()Ljava/util/List;

    move-result-object v0

    .line 268
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "pause all tasks %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 273
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/h;->b(I)Z

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 15

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "request start the task with url(%s) path(%s) isDirectory(%B)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 61
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 60
    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    invoke-static/range {p1 .. p3}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    .line 65
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v2, v3}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v6

    .line 67
    if-nez p3, :cond_1

    if-nez v6, :cond_1

    .line 69
    invoke-static/range {p2 .. p2}, Lcom/liulishuo/filedownloader/e/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 71
    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v4, v2}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v6

    .line 72
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    sget-boolean v4, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v4, :cond_1

    .line 74
    const-string v4, "task[%d] find model by dirCaseId[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_1
    const/4 v2, 0x1

    invoke-static {v3, v6, p0, v2}, Lcom/liulishuo/filedownloader/e/c;->a(ILcom/liulishuo/filedownloader/model/a;Lcom/liulishuo/filedownloader/x;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_2

    .line 81
    const-string v2, "has already started download %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {p0, v2, v4}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_3
    if-eqz v6, :cond_4

    :try_start_1
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, p7

    invoke-static {v3, v2, v0, v4}, Lcom/liulishuo/filedownloader/e/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_2

    .line 92
    const-string v2, "has already completed downloading %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {p0, v2, v4}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 86
    :cond_4
    const/4 v2, 0x0

    .line 87
    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 100
    :cond_5
    if-eqz v6, :cond_9

    .line 101
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v2

    const/4 v4, -0x2

    if-eq v2, v4, :cond_6

    .line 102
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9

    .line 105
    :cond_6
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v2

    if-eq v2, v3, :cond_8

    .line 107
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z

    .line 108
    invoke-virtual {v6, v3}, Lcom/liulishuo/filedownloader/model/a;->a(I)V

    .line 109
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Lcom/liulishuo/filedownloader/model/a;->a(Ljava/lang/String;Z)V

    .line 111
    const/4 v2, 0x1

    .line 130
    :goto_2
    if-eqz v2, :cond_7

    .line 131
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v2, v6}, Lcom/liulishuo/filedownloader/services/g;->b(Lcom/liulishuo/filedownloader/model/a;)V

    .line 135
    :cond_7
    iget-object v14, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    new-instance v2, Lcom/liulishuo/filedownloader/services/i;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/h;->c:Lcom/liulishuo/filedownloader/e/c$c;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/services/h;->d:Lcom/liulishuo/filedownloader/e/c$a;

    iget-object v7, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    move-object v3, p0

    move/from16 v8, p6

    move-object/from16 v9, p8

    move/from16 v10, p5

    move/from16 v11, p4

    move/from16 v12, p7

    move/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lcom/liulishuo/filedownloader/services/i;-><init>(Lcom/liulishuo/filedownloader/x;Lcom/liulishuo/filedownloader/e/c$c;Lcom/liulishuo/filedownloader/e/c$a;Lcom/liulishuo/filedownloader/model/a;Lcom/liulishuo/filedownloader/services/g;ILcom/liulishuo/filedownloader/model/FileDownloadHeader;IIZZ)V

    invoke-virtual {v14, v2}, Lcom/liulishuo/filedownloader/services/j;->a(Lcom/liulishuo/filedownloader/services/i;)V

    goto :goto_0

    .line 113
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 116
    :cond_9
    if-nez v6, :cond_a

    .line 117
    new-instance v6, Lcom/liulishuo/filedownloader/model/a;

    invoke-direct {v6}, Lcom/liulishuo/filedownloader/model/a;-><init>()V

    .line 119
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/liulishuo/filedownloader/model/a;->a(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Lcom/liulishuo/filedownloader/model/a;->a(Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {v6, v3}, Lcom/liulishuo/filedownloader/model/a;->a(I)V

    .line 123
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/liulishuo/filedownloader/model/a;->a(J)V

    .line 124
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/liulishuo/filedownloader/model/a;->b(J)V

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/liulishuo/filedownloader/model/a;->a(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/h;->a(Lcom/liulishuo/filedownloader/model/a;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/liulishuo/filedownloader/model/a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 352
    :goto_0
    return v1

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/services/j;->c(I)Z

    move-result v2

    .line 322
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v3

    invoke-static {v3}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    .line 352
    goto :goto_0

    :cond_2
    move v0, v1

    .line 332
    goto :goto_1

    .line 336
    :cond_3
    if-nez v2, :cond_1

    .line 343
    const-string v2, "%d status is[%s](not finish) & but not in the pool"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 344
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v0

    .line 343
    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 346
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/e/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/h;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/j;->a()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "request pause the task %d"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v2

    .line 248
    if-nez v2, :cond_1

    .line 259
    :goto_0
    return v0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/j;->b(I)V

    move v0, v1

    .line 259
    goto :goto_0
.end method

.method public c(I)J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    .line 280
    const-wide/16 v0, 0x0

    .line 283
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/g;->a()V

    .line 372
    return-void
.end method

.method public d(I)J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    const-wide/16 v0, 0x0

    .line 292
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public e(I)B
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Lcom/liulishuo/filedownloader/model/a;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized f(I)Z
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Lcom/liulishuo/filedownloader/services/j;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/j;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    if-nez p1, :cond_0

    .line 357
    const-string v2, "The task[%d] id is invalid, can\'t clear it."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/h;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, "The task[%d] is downloading, can\'t clear it."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z

    move v0, v1

    .line 367
    goto :goto_0
.end method
