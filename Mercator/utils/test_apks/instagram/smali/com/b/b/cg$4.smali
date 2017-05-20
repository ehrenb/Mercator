.class final Lcom/b/b/cg$4;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/cg;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cg$a;

.field final synthetic b:Lcom/b/b/cg;


# direct methods
.method constructor <init>(Lcom/b/b/cg;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/b/b/cg$4;->b:Lcom/b/b/cg;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/b/cg$4;->a:Lcom/b/b/cg$a;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    .line 127
    iget-object v3, p0, Lcom/b/b/cg$4;->b:Lcom/b/b/cg;

    .line 1207
    invoke-static {}, Lcom/b/b/az;->a()Lcom/b/b/az;

    move-result-object v0

    .line 2079
    iget-boolean v0, v0, Lcom/b/b/az;->b:Z

    .line 1207
    if-nez v0, :cond_1

    .line 1208
    iget-object v0, v3, Lcom/b/b/cg;->a:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v11, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v0, v3, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    .line 2227
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/b/b/ci;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1214
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, v3, Lcom/b/b/cg;->a:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v10, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1220
    invoke-virtual {v3}, Lcom/b/b/cg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, v3, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    invoke-virtual {v0, v2}, Lcom/b/b/ci;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1226
    iget-object v1, v3, Lcom/b/b/cg;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Number of not sent blocks = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v1, v5}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    iget-object v1, v3, Lcom/b/b/cg;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1235
    invoke-virtual {v3}, Lcom/b/b/cg;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1239
    new-instance v1, Lcom/b/b/bn;

    .line 1240
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v6

    .line 3097
    iget-object v6, v6, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 1242
    invoke-static {v0}, Lcom/b/b/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1241
    invoke-virtual {v6, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, ".yflurrydatasenderblock."

    const/4 v8, 0x1

    new-instance v9, Lcom/b/b/cg$6;

    invoke-direct {v9, v3}, Lcom/b/b/cg$6;-><init>(Lcom/b/b/cg;)V

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    .line 1252
    invoke-virtual {v1}, Lcom/b/b/bn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/ch;

    .line 1253
    if-nez v1, :cond_5

    .line 1254
    iget-object v1, v3, Lcom/b/b/cg;->a:Ljava/lang/String;

    const-string v6, "Internal ERROR! Cannot read!"

    invoke-static {v12, v1, v6}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v1, v3, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    invoke-virtual {v1, v0, v2}, Lcom/b/b/ci;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 4096
    :cond_5
    iget-object v1, v1, Lcom/b/b/ch;->b:[B

    .line 1260
    if-eqz v1, :cond_6

    array-length v6, v1

    if-nez v6, :cond_7

    .line 1261
    :cond_6
    iget-object v1, v3, Lcom/b/b/cg;->a:Ljava/lang/String;

    const-string v6, "Internal ERROR! Report is empty!"

    invoke-static {v12, v1, v6}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v1, v3, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    invoke-virtual {v1, v0, v2}, Lcom/b/b/ci;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1266
    :cond_7
    iget-object v6, v3, Lcom/b/b/cg;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Reading block info "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v6, v7}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v6, v3, Lcom/b/b/cg;->b:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1270
    invoke-virtual {v3, v1, v0, v2}, Lcom/b/b/cg;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
