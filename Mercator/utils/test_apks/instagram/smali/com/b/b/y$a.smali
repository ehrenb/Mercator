.class public final Lcom/b/b/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/co",
        "<",
        "Lcom/b/b/y;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/b/b/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/cn",
            "<",
            "Lcom/b/b/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/b/b/cn;

    new-instance v1, Lcom/b/b/z$a;

    invoke-direct {v1}, Lcom/b/b/z$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/b/b/cn;-><init>(Lcom/b/b/co;)V

    iput-object v0, p0, Lcom/b/b/y$a;->a:Lcom/b/b/cn;

    .line 155
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    .line 1226
    if-nez p1, :cond_0

    .line 1227
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 1230
    :cond_0
    new-instance v18, Lcom/b/b/y$a$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/b/b/y$a$2;-><init>(Lcom/b/b/y$a;Ljava/io/InputStream;)V

    .line 1237
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 1238
    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1239
    const/4 v5, 0x0

    .line 1242
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 1243
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 1244
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 1245
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 1246
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 1247
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1248
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/b/b/af;->a(I)Lcom/b/b/af;

    move-result-object v13

    .line 1250
    const/4 v14, 0x0

    .line 1251
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1253
    if-eqz v15, :cond_2

    .line 1254
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1256
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_2

    .line 1257
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1261
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    .line 1262
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1263
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1264
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 1265
    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1266
    const/16 v17, 0x0

    .line 1269
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    .line 1271
    new-instance v4, Lcom/b/b/y;

    invoke-direct/range {v4 .. v17}, Lcom/b/b/y;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/b/b/af;Ljava/util/Map;IILjava/lang/String;)V

    .line 1274
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/b/b/y;->a(Lcom/b/b/y;J)J

    .line 1275
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/b/b/y;->a(Lcom/b/b/y;Z)Z

    .line 2050
    move/from16 v0, v19

    iput v0, v4, Lcom/b/b/ce;->p:I

    .line 1278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/b/y$a;->a:Lcom/b/b/cn;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/b/b/cn;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1279
    iput-object v5, v4, Lcom/b/b/y;->a:Ljava/util/ArrayList;

    .line 1280
    invoke-virtual {v4}, Lcom/b/b/y;->c()V

    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    check-cast p2, Lcom/b/b/y;

    .line 2159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    new-instance v1, Lcom/b/b/y$a$1;

    invoke-direct {v1, p0, p1}, Lcom/b/b/y$a$1;-><init>(Lcom/b/b/y$a;Ljava/io/OutputStream;)V

    .line 2170
    invoke-static {p2}, Lcom/b/b/y;->a(Lcom/b/b/y;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2171
    invoke-static {p2}, Lcom/b/b/y;->a(Lcom/b/b/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3038
    :goto_1
    iget-object v0, p2, Lcom/b/b/ce;->r:Ljava/lang/String;

    .line 2177
    if-eqz v0, :cond_3

    .line 4038
    iget-object v0, p2, Lcom/b/b/ce;->r:Ljava/lang/String;

    .line 2178
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5018
    :goto_2
    iget-wide v2, p2, Lcom/b/b/ce;->n:J

    .line 2184
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5026
    iget v0, p2, Lcom/b/b/ce;->p:I

    .line 2185
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2186
    invoke-static {p2}, Lcom/b/b/y;->b(Lcom/b/b/y;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2187
    invoke-static {p2}, Lcom/b/b/y;->c(Lcom/b/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2188
    invoke-static {p2}, Lcom/b/b/y;->d(Lcom/b/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2189
    invoke-static {p2}, Lcom/b/b/y;->e(Lcom/b/b/y;)Lcom/b/b/af;

    move-result-object v0

    .line 5030
    iget v0, v0, Lcom/b/b/af;->e:I

    .line 2189
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2191
    invoke-static {p2}, Lcom/b/b/y;->f(Lcom/b/b/y;)Ljava/util/Map;

    move-result-object v2

    .line 2192
    if-eqz v2, :cond_4

    .line 2193
    invoke-static {p2}, Lcom/b/b/y;->f(Lcom/b/b/y;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2195
    invoke-static {p2}, Lcom/b/b/y;->f(Lcom/b/b/y;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2198
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2199
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 2174
    :cond_2
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 2181
    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 2203
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2206
    :cond_5
    invoke-static {p2}, Lcom/b/b/y;->g(Lcom/b/b/y;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2207
    invoke-static {p2}, Lcom/b/b/y;->h(Lcom/b/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2208
    invoke-static {p2}, Lcom/b/b/y;->i(Lcom/b/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2210
    invoke-static {p2}, Lcom/b/b/y;->j(Lcom/b/b/y;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2211
    invoke-static {p2}, Lcom/b/b/y;->j(Lcom/b/b/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2217
    :goto_4
    invoke-static {p2}, Lcom/b/b/y;->k(Lcom/b/b/y;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2219
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 2221
    iget-object v0, p0, Lcom/b/b/y$a;->a:Lcom/b/b/cn;

    iget-object v1, p2, Lcom/b/b/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/b/b/cn;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto/16 :goto_0

    .line 2214
    :cond_6
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4
.end method
