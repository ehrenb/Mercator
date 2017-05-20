.class public final Lb/a/a/c;
.super Lb/a/a/e;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/c$1;,
        Lb/a/a/c$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static g:Ld/a/b;

.field private static final l:[C


# instance fields
.field private final h:Ljava/net/DatagramPacket;

.field private final i:J

.field private final j:Lb/a/a/c$a;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lb/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/c;->g:Ld/a/b;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lb/a/a/c;->a:Z

    .line 583
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lb/a/a/c;->l:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/e;-><init>(IIZ)V

    .line 269
    iput-object p4, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    .line 270
    new-instance v0, Lb/a/a/c$a;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/a/c$a;-><init>([BI)V

    iput-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    .line 271
    iput-wide p5, p0, Lb/a/a/c;->i:J

    .line 272
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    sget v3, Lb/a/a/a/a;->a:I

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v2, v0}, Lb/a/a/e;-><init>(IIZ)V

    .line 189
    iput-object p1, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    .line 190
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 191
    new-instance v0, Lb/a/a/c$a;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lb/a/a/c$a;-><init>([BI)V

    iput-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lb/a/a/c;->i:J

    .line 193
    const/16 v0, 0x5b4

    iput v0, p0, Lb/a/a/c;->k:I

    .line 196
    :try_start_0
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/c;->a(I)V

    .line 197
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/c;->b(I)V

    .line 198
    invoke-virtual {p0}, Lb/a/a/c;->q()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received a message with a non standard operation code. Currently unsupported in the specification."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNSIncoming() dump "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DNSIncoming corrupted message"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v1

    :cond_0
    move v0, v2

    .line 188
    goto :goto_0

    .line 201
    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v4

    .line 202
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v5

    .line 203
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v6

    .line 204
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v7

    .line 206
    sget-object v0, Lb/a/a/c;->g:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lb/a/a/c;->g:Ld/a/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNSIncoming() questions:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " answers:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authorities:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " additionals:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 213
    :cond_2
    mul-int/lit8 v0, v4, 0x5

    add-int v8, v5, v6

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0xb

    add-int/2addr v0, v8

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    if-le v0, v8, :cond_3

    .line 214
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "questions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " answers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " authorities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " additionals:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_3
    if-lez v4, :cond_4

    move v0, v2

    .line 219
    :goto_1
    if-ge v0, v4, :cond_4

    .line 220
    iget-object v8, p0, Lb/a/a/c;->c:Ljava/util/List;

    invoke-direct {p0}, Lb/a/a/c;->x()Lb/a/a/g;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_4
    if-lez v5, :cond_6

    move v0, v2

    .line 226
    :goto_2
    if-ge v0, v5, :cond_6

    .line 227
    invoke-direct {p0, v3}, Lb/a/a/c;->a(Ljava/net/InetAddress;)Lb/a/a/h;

    move-result-object v4

    .line 228
    if-eqz v4, :cond_5

    .line 230
    iget-object v8, p0, Lb/a/a/c;->d:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 235
    :cond_6
    if-lez v6, :cond_8

    move v0, v2

    .line 236
    :goto_3
    if-ge v0, v6, :cond_8

    .line 237
    invoke-direct {p0, v3}, Lb/a/a/c;->a(Ljava/net/InetAddress;)Lb/a/a/h;

    move-result-object v4

    .line 238
    if-eqz v4, :cond_7

    .line 240
    iget-object v5, p0, Lb/a/a/c;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 245
    :cond_8
    if-lez v7, :cond_a

    .line 246
    :goto_4
    if-ge v2, v7, :cond_a

    .line 247
    invoke-direct {p0, v3}, Lb/a/a/c;->a(Ljava/net/InetAddress;)Lb/a/a/h;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_9

    .line 250
    iget-object v4, p0, Lb/a/a/c;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 255
    :cond_a
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->available()I

    move-result v0

    if-lez v0, :cond_b

    .line 256
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received a message with the wrong length."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :cond_b
    return-void
.end method

.method private a(Ljava/net/InetAddress;)Lb/a/a/h;
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 302
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/e;->a(I)Lb/a/a/a/e;

    move-result-object v0

    .line 304
    sget-object v2, Lb/a/a/a/e;->a:Lb/a/a/a/e;

    if-ne v0, v2, :cond_0

    .line 305
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find record type. domain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v8}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-object v2, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v2}, Lb/a/a/c$a;->b()I

    move-result v5

    .line 308
    sget-object v2, Lb/a/a/a/e;->P:Lb/a/a/a/e;

    if-ne v0, v2, :cond_5

    sget-object v2, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    .line 309
    :goto_0
    sget-object v3, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    if-ne v2, v3, :cond_1

    sget-object v3, Lb/a/a/a/e;->P:Lb/a/a/a/e;

    if-eq v0, v3, :cond_1

    .line 310
    sget-object v3, Lb/a/a/c;->g:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find record class. domain: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 312
    :cond_1
    invoke-virtual {v2, v5}, Lb/a/a/a/d;->a(I)Z

    move-result v3

    .line 313
    iget-object v4, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v4}, Lb/a/a/c$a;->c()I

    move-result v4

    .line 314
    iget-object v6, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v6}, Lb/a/a/c$a;->b()I

    move-result v6

    .line 315
    const/4 v8, 0x0

    .line 317
    sget-object v9, Lb/a/a/c$1;->c:[I

    invoke-virtual {v0}, Lb/a/a/a/e;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 453
    sget-object v1, Lb/a/a/c;->g:Ld/a/b;

    invoke-interface {v1}, Ld/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    sget-object v1, Lb/a/a/c;->g:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNSIncoming() unknown type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 456
    :cond_2
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    int-to-long v2, v6

    invoke-virtual {v0, v2, v3}, Lb/a/a/c$a;->skip(J)J

    :cond_3
    move-object v0, v8

    .line 459
    :goto_1
    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {v0, p1}, Lb/a/a/h;->a(Ljava/net/InetAddress;)V

    .line 462
    :cond_4
    return-object v0

    .line 308
    :cond_5
    invoke-static {v5}, Lb/a/a/a/d;->b(I)Lb/a/a/a/d;

    move-result-object v2

    goto/16 :goto_0

    .line 319
    :pswitch_0
    new-instance v0, Lb/a/a/h$c;

    iget-object v5, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v5, v6}, Lb/a/a/c$a;->a(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$c;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V

    goto :goto_1

    .line 322
    :pswitch_1
    new-instance v0, Lb/a/a/h$d;

    iget-object v5, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v5, v6}, Lb/a/a/c$a;->a(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$d;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V

    goto :goto_1

    .line 326
    :pswitch_2
    const-string v0, ""

    .line 327
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->d()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 329
    new-instance v0, Lb/a/a/h$e;

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_6
    sget-object v0, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PTR record of class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", there was a problem reading the service name of the answer for domain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    move-object v0, v8

    .line 333
    goto :goto_1

    .line 335
    :pswitch_3
    new-instance v0, Lb/a/a/h$g;

    iget-object v5, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v5, v6}, Lb/a/a/c$a;->a(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$g;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V

    goto :goto_1

    .line 338
    :pswitch_4
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v5

    .line 339
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v6

    .line 340
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v7

    .line 341
    const-string v0, ""

    .line 344
    sget-boolean v0, Lb/a/a/c;->a:Z

    if-eqz v0, :cond_7

    .line 345
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->d()Ljava/lang/String;

    move-result-object v8

    .line 350
    :goto_2
    new-instance v0, Lb/a/a/h$f;

    invoke-direct/range {v0 .. v8}, Lb/a/a/h$f;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZIIIILjava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_7
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->e()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 353
    :pswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0, v6}, Lb/a/a/c$a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 356
    if-lez v6, :cond_8

    invoke-virtual {v8, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 357
    if-lez v6, :cond_9

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 358
    new-instance v0, Lb/a/a/h$b;

    invoke-direct/range {v0 .. v6}, Lb/a/a/h$b;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 356
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 357
    :cond_9
    const-string v0, ""

    goto :goto_4

    .line 361
    :pswitch_6
    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v0

    invoke-static {v0, v4}, Lb/a/a/a/f;->a(II)Lb/a/a/a/f;

    move-result-object v0

    .line 362
    const/high16 v1, 0xff0000

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x10

    .line 363
    if-nez v1, :cond_12

    .line 364
    iput v5, p0, Lb/a/a/c;->k:I

    .line 365
    :cond_a
    :goto_5
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->available()I

    move-result v0

    if-lez v0, :cond_3

    .line 369
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->available()I

    move-result v0

    if-lt v0, v11, :cond_d

    .line 370
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v1

    .line 371
    invoke-static {v1}, Lb/a/a/a/c;->a(I)Lb/a/a/a/c;

    move-result-object v2

    .line 377
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->available()I

    move-result v0

    if-lt v0, v11, :cond_e

    .line 378
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->b()I

    move-result v3

    .line 383
    new-array v0, v7, [B

    .line 384
    iget-object v4, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v4}, Lb/a/a/c$a;->available()I

    move-result v4

    if-lt v4, v3, :cond_b

    .line 385
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0, v3}, Lb/a/a/c$a;->a(I)[B

    move-result-object v0

    .line 389
    :cond_b
    sget-object v3, Lb/a/a/c$1;->b:[I

    invoke-virtual {v2}, Lb/a/a/a/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_5

    .line 398
    :pswitch_7
    const/4 v1, 0x0

    .line 399
    const/4 v3, 0x0

    .line 400
    const/4 v2, 0x0

    .line 402
    const/4 v4, 0x0

    :try_start_0
    aget-byte v6, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    const/4 v4, 0x1

    :try_start_1
    aget-byte v5, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    const/4 v4, 0x6

    :try_start_2
    new-array v4, v4, [B

    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-byte v10, v0, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x1

    const/4 v10, 0x3

    aget-byte v10, v0, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x2

    const/4 v10, 0x4

    aget-byte v10, v0, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x3

    const/4 v10, 0x5

    aget-byte v10, v0, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x4

    const/4 v10, 0x6

    aget-byte v10, v0, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x5

    const/4 v10, 0x7

    aget-byte v10, v0, v10

    aput-byte v10, v4, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 406
    :try_start_3
    array-length v1, v0

    const/16 v3, 0x8

    if-le v1, v3, :cond_14

    .line 408
    const/4 v1, 0x6

    new-array v3, v1, [B

    const/4 v1, 0x0

    const/16 v9, 0x8

    aget-byte v9, v0, v9

    aput-byte v9, v3, v1

    const/4 v1, 0x1

    const/16 v9, 0x9

    aget-byte v9, v0, v9

    aput-byte v9, v3, v1

    const/4 v1, 0x2

    const/16 v9, 0xa

    aget-byte v9, v0, v9

    aput-byte v9, v3, v1

    const/4 v1, 0x3

    const/16 v9, 0xb

    aget-byte v9, v0, v9

    aput-byte v9, v3, v1

    const/4 v1, 0x4

    const/16 v9, 0xc

    aget-byte v9, v0, v9

    aput-byte v9, v3, v1

    const/4 v1, 0x5

    const/16 v9, 0xd

    aget-byte v9, v0, v9

    aput-byte v9, v3, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 410
    :goto_6
    :try_start_4
    array-length v1, v0

    const/16 v9, 0x12

    if-ne v1, v9, :cond_c

    .line 412
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v9, 0x0

    const/16 v10, 0xe

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x1

    const/16 v10, 0xf

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x3

    const/16 v10, 0x11

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v1

    .line 414
    :cond_c
    :try_start_5
    array-length v1, v0

    const/16 v9, 0x16

    if-ne v1, v9, :cond_13

    .line 416
    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v9, 0x0

    const/16 v10, 0xe

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x1

    const/16 v10, 0xf

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x3

    const/16 v10, 0x11

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x4

    const/16 v10, 0x12

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x5

    const/16 v10, 0x13

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x6

    const/16 v10, 0x14

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9

    const/4 v9, 0x7

    const/16 v10, 0x15

    aget-byte v10, v0, v10

    aput-byte v10, v1, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v1

    :goto_7
    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    .line 421
    :goto_8
    sget-object v5, Lb/a/a/c;->g:Ld/a/b;

    invoke-interface {v5}, Ld/a/b;->b()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 422
    sget-object v5, Lb/a/a/c;->g:Ld/a/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled Owner OPT version: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " sequence: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MAC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eq v1, v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wakeup MAC address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ld/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 373
    :cond_d
    sget-object v0, Lb/a/a/c;->g:Ld/a/b;

    const-string v1, "There was a problem reading the OPT record. Ignoring."

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    move-object v0, v8

    .line 374
    goto/16 :goto_1

    .line 380
    :cond_e
    sget-object v0, Lb/a/a/c;->g:Ld/a/b;

    const-string v1, "There was a problem reading the OPT record. Ignoring."

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    move-object v0, v8

    .line 381
    goto/16 :goto_1

    .line 418
    :catch_0
    move-exception v4

    move v4, v7

    move v5, v7

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v12

    .line 419
    :goto_b
    sget-object v6, Lb/a/a/c;->g:Ld/a/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed OPT answer. Option code: Owner data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v0}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ld/a/b;->c(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_8

    .line 422
    :cond_f
    const-string v1, ""

    goto :goto_9

    :cond_10
    const-string v0, ""

    goto :goto_a

    .line 429
    :pswitch_8
    sget-object v1, Lb/a/a/c;->g:Ld/a/b;

    invoke-interface {v1}, Ld/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 430
    sget-object v1, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an OPT answer. Option code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ld/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 434
    :pswitch_9
    const v2, 0xfde9

    if-lt v1, v2, :cond_11

    const v2, 0xfffe

    if-gt v1, v2, :cond_11

    .line 436
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    invoke-interface {v2}, Ld/a/b;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 437
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an OPT answer using an experimental/local option code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ld/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 440
    :cond_11
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an OPT answer. Not currently handled. Option code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lb/a/a/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ld/a/b;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 449
    :cond_12
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an OPT answer. Wrong version number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " result code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ld/a/b;->c(Ljava/lang/String;)V

    move-object v0, v8

    .line 451
    goto/16 :goto_1

    .line 418
    :catch_1
    move-exception v4

    move v4, v7

    move v5, v6

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v12

    goto/16 :goto_b

    :catch_2
    move-exception v4

    move v4, v5

    move v5, v6

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v12

    goto/16 :goto_b

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v3, v4

    move-object v2, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_b

    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_b

    :catch_5
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_b

    :cond_13
    move-object v0, v2

    goto/16 :goto_7

    :cond_14
    move-object v3, v4

    goto/16 :goto_6

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 389
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private b([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 596
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 597
    sget-object v3, Lb/a/a/c;->l:[C

    div-int/lit8 v4, v2, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    sget-object v3, Lb/a/a/c;->l:[C

    rem-int/lit8 v2, v2, 0x10

    aget-char v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()Lb/a/a/g;
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v0}, Lb/a/a/c$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v1}, Lb/a/a/c$a;->b()I

    move-result v1

    invoke-static {v1}, Lb/a/a/a/e;->a(I)Lb/a/a/a/e;

    move-result-object v1

    .line 292
    sget-object v2, Lb/a/a/a/e;->a:Lb/a/a/a/e;

    if-ne v1, v2, :cond_0

    .line 293
    sget-object v2, Lb/a/a/c;->g:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find record type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v2, p0, Lb/a/a/c;->j:Lb/a/a/c$a;

    invoke-virtual {v2}, Lb/a/a/c$a;->b()I

    move-result v2

    .line 296
    invoke-static {v2}, Lb/a/a/a/d;->b(I)Lb/a/a/a/d;

    move-result-object v3

    .line 297
    invoke-virtual {v3, v2}, Lb/a/a/a/d;->a(I)Z

    move-result v2

    .line 298
    invoke-static {v0, v1, v3, v2}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lb/a/a/c;
    .locals 8

    .prologue
    .line 280
    new-instance v1, Lb/a/a/c;

    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v2

    invoke-virtual {p0}, Lb/a/a/c;->d()I

    move-result v3

    invoke-virtual {p0}, Lb/a/a/c;->f()Z

    move-result v4

    iget-object v5, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    iget-wide v6, p0, Lb/a/a/c;->i:J

    invoke-direct/range {v1 .. v7}, Lb/a/a/c;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 281
    iget v0, p0, Lb/a/a/c;->k:I

    iput v0, v1, Lb/a/a/c;->k:I

    .line 282
    iget-object v0, v1, Lb/a/a/c;->c:Ljava/util/List;

    iget-object v2, p0, Lb/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v0, v1, Lb/a/a/c;->d:Ljava/util/List;

    iget-object v2, p0, Lb/a/a/c;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v0, v1, Lb/a/a/c;->e:Ljava/util/List;

    iget-object v2, p0, Lb/a/a/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object v0, v1, Lb/a/a/c;->f:Ljava/util/List;

    iget-object v2, p0, Lb/a/a/c;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    return-object v1
.end method

.method a(Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    invoke-virtual {p0}, Lb/a/a/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    if-eqz p1, :cond_0

    .line 472
    iget-object v1, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    new-array v1, v1, [B

    .line 473
    iget-object v2, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    invoke-virtual {p0, v1}, Lb/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lb/a/a/c;)V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lb/a/a/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/a/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lb/a/a/c;->c:Ljava/util/List;

    invoke-virtual {p1}, Lb/a/a/c;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v0, p0, Lb/a/a/c;->d:Ljava/util/List;

    invoke-virtual {p1}, Lb/a/a/c;->j()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    iget-object v0, p0, Lb/a/a/c;->e:Ljava/util/List;

    invoke-virtual {p1}, Lb/a/a/c;->l()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    iget-object v0, p0, Lb/a/a/c;->f:Ljava/util/List;

    invoke-virtual {p1}, Lb/a/a/c;->n()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 568
    return-void

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lb/a/a/c;->i:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lb/a/a/c;->k:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    invoke-virtual {p0}, Lb/a/a/c;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "dns[query,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v0, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    iget-object v0, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    const-string v0, ", length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v0, p0, Lb/a/a/c;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    const-string v0, ", id=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0}, Lb/a/a/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    const-string v0, ", flags=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v0

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 496
    const-string v0, ":r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_1
    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    .line 499
    const-string v0, ":aa"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_2
    invoke-virtual {p0}, Lb/a/a/c;->e()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 502
    const-string v0, ":tc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_3
    invoke-virtual {p0}, Lb/a/a/c;->h()I

    move-result v0

    if-lez v0, :cond_4

    .line 506
    const-string v0, ", questions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Lb/a/a/c;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    :cond_4
    invoke-virtual {p0}, Lb/a/a/c;->k()I

    move-result v0

    if-lez v0, :cond_5

    .line 510
    const-string v0, ", answers="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0}, Lb/a/a/c;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    :cond_5
    invoke-virtual {p0}, Lb/a/a/c;->m()I

    move-result v0

    if-lez v0, :cond_6

    .line 514
    const-string v0, ", authorities="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p0}, Lb/a/a/c;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    :cond_6
    invoke-virtual {p0}, Lb/a/a/c;->o()I

    move-result v0

    if-lez v0, :cond_7

    .line 518
    const-string v0, ", additionals="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Lb/a/a/c;->o()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    :cond_7
    invoke-virtual {p0}, Lb/a/a/c;->h()I

    move-result v0

    if-lez v0, :cond_9

    .line 522
    const-string v0, "\nquestions:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v0, p0, Lb/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/g;

    .line 524
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 482
    :cond_8
    const-string v0, "dns[response,"

    goto/16 :goto_0

    .line 528
    :cond_9
    invoke-virtual {p0}, Lb/a/a/c;->k()I

    move-result v0

    if-lez v0, :cond_a

    .line 529
    const-string v0, "\nanswers:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v0, p0, Lb/a/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 531
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 535
    :cond_a
    invoke-virtual {p0}, Lb/a/a/c;->m()I

    move-result v0

    if-lez v0, :cond_b

    .line 536
    const-string v0, "\nauthorities:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v0, p0, Lb/a/a/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 538
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 542
    :cond_b
    invoke-virtual {p0}, Lb/a/a/c;->o()I

    move-result v0

    if-lez v0, :cond_c

    .line 543
    const-string v0, "\nadditionals:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v0, p0, Lb/a/a/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 545
    const-string v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 549
    :cond_c
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
