.class final Lcom/b/b/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/ca$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/ca$a",
        "<[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/y;

.field final synthetic b:Lcom/b/b/z;

.field final synthetic c:Lcom/b/b/x;


# direct methods
.method constructor <init>(Lcom/b/b/x;Lcom/b/b/y;Lcom/b/b/z;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/b/b/x$2;->c:Lcom/b/b/x;

    iput-object p2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    iput-object p3, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/ca;Ljava/lang/Object;)V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/16 v9, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    .line 121
    check-cast p2, Ljava/lang/String;

    .line 1124
    invoke-static {}, Lcom/b/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pulse report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 2116
    iget-object v4, v4, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 1124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 2124
    iget-object v4, v4, Lcom/b/b/y;->m:Lcom/b/b/ac;

    .line 3083
    iget-object v4, v4, Lcom/b/b/ac;->c:Ljava/lang/String;

    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HTTP status code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3220
    iget v4, p1, Lcom/b/b/cc;->p:I

    .line 1126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1124
    invoke-static {v8, v0, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4220
    iget v0, p1, Lcom/b/b/cc;->p:I

    .line 1130
    iget-object v3, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    .line 5151
    iget-wide v4, p1, Lcom/b/b/cc;->n:J

    .line 1130
    long-to-int v4, v4

    .line 6060
    if-gez v4, :cond_3

    .line 6062
    iget-wide v4, v3, Lcom/b/b/z;->k:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 6063
    iput-wide v6, v3, Lcom/b/b/z;->k:J

    .line 1131
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    iput v0, v3, Lcom/b/b/z;->e:I

    .line 1134
    invoke-virtual {p1}, Lcom/b/b/ca;->c()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6228
    iget-object v3, p1, Lcom/b/b/cc;->o:Ljava/lang/Exception;

    .line 7182
    iget-object v0, p1, Lcom/b/b/cc;->o:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    .line 7183
    iget-object v0, p1, Lcom/b/b/cc;->o:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_9

    move v0, v1

    .line 7188
    :goto_1
    iget-boolean v4, p1, Lcom/b/b/cc;->t:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 1137
    :cond_2
    if-eqz v2, :cond_5

    .line 1139
    invoke-virtual {p1}, Lcom/b/b/ca;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    invoke-static {}, Lcom/b/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 8116
    iget-object v2, v2, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 1140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8228
    iget-object v2, p1, Lcom/b/b/cc;->o:Ljava/lang/Exception;

    .line 1141
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    invoke-static {v8, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1147
    :goto_2
    iget-object v0, p0, Lcom/b/b/x$2;->c:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    invoke-static {v0, v1, v2}, Lcom/b/b/x;->a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;)V

    .line 1161
    :goto_3
    return-void

    .line 6067
    :cond_3
    iget-wide v6, v3, Lcom/b/b/z;->k:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/b/b/z;->k:J

    goto :goto_0

    .line 1143
    :cond_4
    invoke-static {}, Lcom/b/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manually managed http request timeout occured for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 9116
    iget-object v2, v2, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 1144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-static {v8, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1149
    :cond_5
    invoke-static {}, Lcom/b/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 10116
    iget-object v2, v2, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v8, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/b/b/x$2;->c:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    invoke-static {v0, v1, v2, p2}, Lcom/b/b/x;->a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;Ljava/lang/String;)V

    goto :goto_3

    .line 1158
    :cond_6
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_7

    if-ge v0, v9, :cond_7

    .line 1159
    iget-object v0, p0, Lcom/b/b/x$2;->c:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    invoke-static {v0, v1, v2}, Lcom/b/b/x;->b(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;)V

    goto :goto_3

    .line 1160
    :cond_7
    if-lt v0, v9, :cond_8

    const/16 v1, 0x190

    if-ge v0, v1, :cond_8

    .line 1161
    iget-object v0, p0, Lcom/b/b/x$2;->c:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    invoke-static {v0, v1, v2, p1}, Lcom/b/b/x;->a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;Lcom/b/b/ca;)V

    goto :goto_3

    .line 1163
    :cond_8
    invoke-static {}, Lcom/b/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 10124
    iget-object v2, v2, Lcom/b/b/y;->m:Lcom/b/b/ac;

    .line 11083
    iget-object v2, v2, Lcom/b/b/ac;->c:Ljava/lang/String;

    .line 1163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report failed sending to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    .line 11116
    iget-object v2, v2, Lcom/b/b/y;->k:Ljava/lang/String;

    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-static {v8, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/b/b/x$2;->c:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/x$2;->b:Lcom/b/b/z;

    iget-object v2, p0, Lcom/b/b/x$2;->a:Lcom/b/b/y;

    invoke-static {v0, v1, v2, p2}, Lcom/b/b/x;->a(Lcom/b/b/x;Lcom/b/b/z;Lcom/b/b/y;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method
