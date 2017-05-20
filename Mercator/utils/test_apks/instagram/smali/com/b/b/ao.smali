.class public Lcom/b/b/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/ao$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/b/b/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/ao;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/b/b/ao;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/b/b/ap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v3, 0x0

    .line 98
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1044
    iget-object v2, p1, Lcom/b/b/ap;->a:Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1052
    iget-wide v2, p1, Lcom/b/b/ap;->b:J

    .line 103
    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1060
    iget-wide v2, p1, Lcom/b/b/ap;->c:J

    .line 104
    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1068
    iget-wide v2, p1, Lcom/b/b/ap;->d:J

    .line 105
    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 111
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1084
    iget-object v2, p1, Lcom/b/b/ap;->f:Ljava/lang/String;

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2084
    iget-object v2, p1, Lcom/b/b/ap;->f:Ljava/lang/String;

    .line 115
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2092
    :goto_0
    iget-object v2, p1, Lcom/b/b/ap;->g:Ljava/lang/String;

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3092
    iget-object v2, p1, Lcom/b/b/ap;->g:Ljava/lang/String;

    .line 122
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3100
    :goto_1
    iget-object v2, p1, Lcom/b/b/ap;->h:Ljava/util/Map;

    .line 130
    if-nez v2, :cond_6

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4076
    :cond_0
    iget-object v2, p1, Lcom/b/b/ap;->e:Ljava/util/Map;

    .line 142
    if-nez v2, :cond_7

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4108
    :cond_1
    iget-object v2, p1, Lcom/b/b/ap;->i:Ljava/lang/String;

    .line 153
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4116
    iget-object v2, p1, Lcom/b/b/ap;->j:Ljava/lang/String;

    .line 154
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4124
    iget v2, p1, Lcom/b/b/ap;->k:I

    .line 155
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4132
    iget v2, p1, Lcom/b/b/ap;->l:I

    .line 156
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4140
    iget-object v2, p1, Lcom/b/b/ap;->m:Ljava/lang/String;

    .line 157
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4148
    iget-object v2, p1, Lcom/b/b/ap;->n:Landroid/location/Location;

    .line 159
    if-nez v2, :cond_8

    move-object v2, v4

    :goto_2
    move-object v3, v2

    move v2, v5

    .line 167
    :goto_3
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 7156
    iget v2, p1, Lcom/b/b/ap;->o:I

    .line 170
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 172
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7164
    iget-byte v2, p1, Lcom/b/b/ap;->p:B

    .line 173
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7172
    iget-object v2, p1, Lcom/b/b/ap;->q:Ljava/lang/Long;

    .line 174
    if-nez v2, :cond_9

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8180
    :goto_4
    iget-object v2, p1, Lcom/b/b/ap;->r:Ljava/util/Map;

    .line 182
    if-nez v2, :cond_a

    .line 183
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 8188
    :cond_2
    iget-object v2, p1, Lcom/b/b/ap;->s:Ljava/util/List;

    .line 193
    if-nez v2, :cond_b

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 8196
    :cond_3
    iget-boolean v2, p1, Lcom/b/b/ap;->t:Z

    .line 201
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8212
    iget-object v8, p1, Lcom/b/b/ap;->v:Ljava/util/List;

    .line 207
    if-eqz v8, :cond_f

    .line 208
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v5

    move v6, v5

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/b/aj;

    .line 9031
    invoke-virtual {v2}, Lcom/b/b/aj;->a()[B

    move-result-object v2

    array-length v2, v2

    .line 209
    add-int/2addr v2, v6

    .line 210
    const v6, 0x27100

    if-le v2, v6, :cond_c

    .line 211
    const/4 v2, 0x5

    sget-object v6, Lcom/b/b/ao;->b:Ljava/lang/String;

    const-string v9, "Error Log size exceeded. No more event details logged."

    invoke-static {v2, v6, v9}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 9204
    :goto_6
    iget v2, p1, Lcom/b/b/ap;->u:I

    .line 220
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 221
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v3, v5

    .line 222
    :goto_7
    if-ge v3, v6, :cond_d

    .line 223
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/b/aj;

    invoke-virtual {v2}, Lcom/b/b/aj;->a()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 222
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 117
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v2

    .line 238
    :goto_8
    const/4 v3, 0x6

    :try_start_2
    sget-object v5, Lcom/b/b/ao;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v3, v5, v6, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :catchall_0
    move-exception v2

    :goto_9
    invoke-static {v4}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v2

    .line 124
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 133
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 134
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_a

    .line 145
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 146
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_b

    .line 162
    :cond_8
    invoke-static {}, Lcom/b/b/ax;->b()I

    move-result v2

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 5148
    iget-object v3, p1, Lcom/b/b/ap;->n:Landroid/location/Location;

    .line 164
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9, v2}, Lcom/b/b/df;->a(DI)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 6148
    iget-object v3, p1, Lcom/b/b/ap;->n:Landroid/location/Location;

    .line 165
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9, v2}, Lcom/b/b/df;->a(DI)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 7148
    iget-object v3, p1, Lcom/b/b/ap;->n:Landroid/location/Location;

    .line 166
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 167
    if-eq v2, v10, :cond_10

    move v2, v6

    move-object v3, v4

    goto/16 :goto_3

    .line 177
    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8172
    iget-object v2, p1, Lcom/b/b/ap;->q:Ljava/lang/Long;

    .line 178
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_4

    .line 185
    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 186
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/b/ak;

    iget v2, v2, Lcom/b/b/ak;->a:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_c

    .line 196
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 197
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/b/al;

    .line 198
    invoke-virtual {v2}, Lcom/b/b/al;->a()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_d

    .line 215
    :cond_c
    add-int/lit8 v3, v3, 0x1

    move v6, v2

    .line 216
    goto/16 :goto_5

    .line 227
    :cond_d
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 228
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 236
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/ao;->a:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    invoke-static {v4}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 242
    return-void

    .line 241
    :catchall_1
    move-exception v2

    move-object v4, v3

    goto/16 :goto_9

    .line 237
    :catch_1
    move-exception v2

    move-object v4, v3

    goto/16 :goto_8

    :cond_e
    move v6, v3

    goto/16 :goto_6

    :cond_f
    move v6, v5

    goto/16 :goto_6

    :cond_10
    move-object v2, v4

    goto/16 :goto_2
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/b/b/ao;->a:[B

    .line 93
    return-void
.end method
