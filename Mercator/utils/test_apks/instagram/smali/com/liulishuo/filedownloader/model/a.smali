.class public Lcom/liulishuo/filedownloader/model/a;
.super Ljava/lang/Object;
.source "FileDownloadModel.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:B

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/liulishuo/filedownloader/model/a;->a:I

    return v0
.end method

.method public a(B)V
    .locals 0

    .prologue
    .line 82
    iput-byte p1, p0, Lcom/liulishuo/filedownloader/model/a;->f:B

    .line 83
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 70
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/a;->g:J

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/a;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/a;->c:Ljava/lang/String;

    .line 78
    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/model/a;->d:Z

    .line 79
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 90
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/model/a;->k:Z

    .line 91
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/a;->h:J

    .line 92
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/a;->j:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/a;->i:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->k()Z

    move-result v1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/a;->e:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()B
    .locals 1

    .prologue
    .line 118
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/model/a;->f:B

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/a;->g:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/a;->h:J

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/model/a;->d:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 159
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "path"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->f()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 163
    const-string v1, "sofar"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v1, "total"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v1, "errMsg"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "etag"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "pathAsDirectory"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "filename"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/model/a;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 184
    const-string v0, "id[%d], url[%s], path[%s], status[%d], sofar[%d], total[%d], etag[%s], %s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/model/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/model/a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-byte v3, p0, Lcom/liulishuo/filedownloader/model/a;->f:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/model/a;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/model/a;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/liulishuo/filedownloader/model/a;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 184
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
