.class public Lcom/b/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;

.field private static c:Lcom/b/b/ad;


# instance fields
.field public a:Ljava/lang/String;

.field private d:Lcom/b/b/bn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bn",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/ae;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/b/ae;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/b/b/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/ad;->b:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/b/b/ad;->c:Lcom/b/b/ad;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/ad;
    .locals 8

    .prologue
    .line 65
    const-class v1, Lcom/b/b/ad;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/ad;->c:Lcom/b/b/ad;

    if-nez v0, :cond_0

    .line 66
    new-instance v2, Lcom/b/b/ad;

    invoke-direct {v2}, Lcom/b/b/ad;-><init>()V

    .line 67
    sput-object v2, Lcom/b/b/ad;->c:Lcom/b/b/ad;

    .line 1073
    new-instance v0, Lcom/b/b/bn;

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v3

    .line 1097
    iget-object v3, v3, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 1281
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".yflurrypulselogging."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v5

    .line 2101
    iget-object v5, v5, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 1281
    invoke-static {v5}, Lcom/b/b/df;->e(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v5, 0x10

    invoke-static {v6, v7, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1073
    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ".yflurrypulselogging."

    const/4 v5, 0x1

    new-instance v6, Lcom/b/b/ad$1;

    invoke-direct {v6, v2}, Lcom/b/b/ad$1;-><init>(Lcom/b/b/ad;)V

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    iput-object v0, v2, Lcom/b/b/ad;->d:Lcom/b/b/bn;

    .line 1080
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    .line 1082
    const-string v3, "UseHttps"

    invoke-virtual {v0, v3}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/b/b/ad;->f:Z

    .line 1083
    const/4 v0, 0x4

    sget-object v3, Lcom/b/b/ad;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, UseHttps = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/b/b/ad;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, v2, Lcom/b/b/ad;->d:Lcom/b/b/bn;

    invoke-virtual {v0}, Lcom/b/b/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v2, Lcom/b/b/ad;->e:Ljava/util/List;

    .line 1086
    iget-object v0, v2, Lcom/b/b/ad;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/b/b/ad;->e:Ljava/util/List;

    .line 69
    :cond_0
    sget-object v0, Lcom/b/b/ad;->c:Lcom/b/b/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/b/b/ad;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized a([B)V
    .locals 5

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/b/b/az;->a()Lcom/b/b/az;

    move-result-object v0

    .line 9079
    iget-boolean v0, v0, Lcom/b/b/az;->b:Z

    .line 225
    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x5

    sget-object v1, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 231
    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v2, "No report need be sent"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 9285
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/b/b/ad;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9286
    iget-object v0, p0, Lcom/b/b/ad;->a:Ljava/lang/String;

    .line 236
    :goto_1
    const/4 v1, 0x4

    sget-object v2, Lcom/b/b/ad;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PulseLoggingManager: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/b/b/ca;

    invoke-direct {v1}, Lcom/b/b/ca;-><init>()V

    .line 10136
    iput-object v0, v1, Lcom/b/b/cc;->f:Ljava/lang/String;

    .line 11027
    const v0, 0x186a0

    iput v0, v1, Lcom/b/b/di;->w:I

    .line 241
    sget-object v0, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    .line 11144
    iput-object v0, v1, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    .line 11193
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/b/b/cc;->j:Z

    .line 243
    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/b/b/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/b/b/ck;

    invoke-direct {v0}, Lcom/b/b/ck;-><init>()V

    .line 12041
    iput-object v0, v1, Lcom/b/b/ca;->c:Lcom/b/b/co;

    .line 13037
    iput-object p1, v1, Lcom/b/b/ca;->b:Ljava/lang/Object;

    .line 246
    new-instance v0, Lcom/b/b/ad$2;

    invoke-direct {v0, p0}, Lcom/b/b/ad$2;-><init>(Lcom/b/b/ad;)V

    .line 13049
    iput-object v0, v1, Lcom/b/b/ca;->a:Lcom/b/b/ca$a;

    .line 269
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/b/b/be;->a(Ljava/lang/Object;Lcom/b/b/di;)V

    goto :goto_0

    .line 9292
    :cond_3
    const-string v0, "https://data.flurry.com/pcr.do"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/b/b/ad;)Lcom/b/b/bn;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/b/b/ad;->d:Lcom/b/b/bn;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/b/b/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 220
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 132
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 3101
    iget-object v0, v0, Lcom/b/b/bg;->d:Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/b/b/bc;->a()Lcom/b/b/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/bc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/b/b/bh;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 141
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    invoke-static {}, Lcom/b/b/bc;->a()Lcom/b/b/bc;

    invoke-static {}, Lcom/b/b/bc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/at;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    move-result-object v0

    .line 3128
    iget-object v0, v0, Lcom/b/b/at;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    new-instance v6, Lcom/b/b/j;

    invoke-direct {v6}, Lcom/b/b/j;-><init>()V

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/bb;

    iget v1, v1, Lcom/b/b/bb;->c:I

    iput v1, v6, Lcom/b/b/j;->a:I

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/bb;

    iget-boolean v1, v1, Lcom/b/b/bb;->d:Z

    if-eqz v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v6, Lcom/b/b/j;->b:Ljava/lang/String;

    .line 160
    :goto_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 217
    :goto_3
    const/4 v2, 0x6

    :try_start_3
    sget-object v3, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v2, v3, v4, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v0

    .line 158
    :cond_2
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/b/b/df;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/b/b/j;->b:Ljava/lang/String;

    goto :goto_2

    .line 220
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 164
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/j;

    .line 168
    iget v4, v0, Lcom/b/b/j;->a:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 171
    iget-object v0, v0, Lcom/b/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 172
    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 173
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_5

    .line 177
    :cond_4
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    sget-object v0, Lcom/b/b/w;->b:Lcom/b/b/w;

    .line 4022
    iget v0, v0, Lcom/b/b/w;->h:I

    .line 179
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/b/b/w;->c:Lcom/b/b/w;

    .line 5022
    iget v0, v0, Lcom/b/b/w;->h:I

    .line 183
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/b/b/w;->d:Lcom/b/b/w;

    .line 6022
    iget v0, v0, Lcom/b/b/w;->h:I

    .line 187
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 188
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/b/b/w;->e:Lcom/b/b/w;

    .line 7022
    iget v0, v0, Lcom/b/b/w;->h:I

    .line 191
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 192
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/b/b/w;->f:Lcom/b/b/w;

    .line 8022
    iget v0, v0, Lcom/b/b/w;->h:I

    .line 195
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 196
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/b/b/w;->g:Lcom/b/b/w;

    .line 9022
    iget v0, v0, Lcom/b/b/w;->h:I

    .line 199
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 200
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 204
    iget-object v0, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/ae;

    .line 9025
    iget-object v0, v0, Lcom/b/b/ae;->a:[B

    .line 205
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    .line 208
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 209
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 210
    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 211
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 212
    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 220
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 216
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/b/b/ac;)V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/b/b/ae;

    invoke-virtual {p1}, Lcom/b/b/ac;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/b/ae;-><init>([B)V

    .line 97
    iget-object v1, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x4

    sget-object v1, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v2, "Saving persistent Pulse logging data."

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/b/b/ad;->d:Lcom/b/b/bn;

    iget-object v1, p0, Lcom/b/b/ad;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/b/b/bn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v2, "Error when generating pulse log report in addReport part"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/b/ad;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/b/ad;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/b/b/ad;->b:Ljava/lang/String;

    const-string v2, "Report not send due to exception in generate data"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
