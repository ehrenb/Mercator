.class public Lcom/liulishuo/filedownloader/e/e;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/e/e$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z


# direct methods
.method private constructor <init>()V
    .locals 12

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke the FileDownloader#init in Application#onCreate first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    const/4 v4, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v7, 0x0

    .line 139
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 140
    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "filedownloader.properties"

    .line 144
    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_10

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 147
    const-string v10, "http.lenient"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    const-string v10, "process.non-separate"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    const-string v10, "download.min-progress-step"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    const-string v10, "download.min-progress-time"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string v10, "download.max-network-thread-count"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v10, "file.non-pre-allocation"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 163
    :goto_0
    if-eqz v1, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :cond_1
    :goto_1
    if-eqz v6, :cond_6

    .line 175
    const-string v1, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "false"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "http.lenient"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    .line 177
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    :try_start_2
    instance-of v10, v0, Ljava/io/FileNotFoundException;

    if-eqz v10, :cond_3

    .line 156
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_2

    .line 157
    const-class v0, Lcom/liulishuo/filedownloader/e/e;

    const-string v10, "not found filedownloader.properties"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v10, v11}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_2
    :goto_2
    if-eqz v1, :cond_f

    .line 165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v7

    .line 168
    goto :goto_1

    .line 160
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 163
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 165
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 168
    :cond_4
    :goto_3
    throw v0

    .line 166
    :catch_2
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v7

    .line 168
    goto :goto_1

    .line 166
    :catch_3
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 180
    :cond_5
    const-string v1, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->c:Z

    .line 186
    :goto_4
    if-eqz v5, :cond_8

    .line 187
    const-string v1, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "false"

    .line 188
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "process.non-separate"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    .line 190
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->c:Z

    goto :goto_4

    .line 193
    :cond_7
    const-string v1, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    .line 199
    :goto_5
    if-eqz v4, :cond_9

    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 201
    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->a:I

    .line 208
    :goto_6
    if-eqz v3, :cond_a

    .line 209
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 210
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 211
    iput-wide v4, p0, Lcom/liulishuo/filedownloader/e/e;->b:J

    .line 217
    :goto_7
    if-eqz v2, :cond_b

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 218
    invoke-static {v1}, Lcom/liulishuo/filedownloader/e/e;->a(I)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->e:I

    .line 225
    :goto_8
    if-eqz v0, :cond_e

    .line 226
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "false"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "file.non-pre-allocation"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    .line 229
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    goto :goto_5

    .line 204
    :cond_9
    const/high16 v1, 0x10000

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->a:I

    goto :goto_6

    .line 213
    :cond_a
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/liulishuo/filedownloader/e/e;->b:J

    goto :goto_7

    .line 221
    :cond_b
    const/4 v1, 0x3

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->e:I

    goto :goto_8

    .line 232
    :cond_c
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    .line 237
    :goto_9
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_d

    .line 238
    const-class v0, Lcom/liulishuo/filedownloader/e/e;

    const-string v1, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "http.lenient"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->c:Z

    .line 241
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "process.non-separate"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    .line 242
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "download.min-progress-step"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/liulishuo/filedownloader/e/e;->a:I

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "download.min-progress-time"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/e/e;->b:J

    .line 244
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "download.max-network-thread-count"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget v4, p0, Lcom/liulishuo/filedownloader/e/e;->e:I

    .line 245
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 238
    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_d
    return-void

    .line 234
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    goto :goto_9

    :cond_f
    move-object v0, v7

    goto/16 :goto_1

    :cond_10
    move-object v0, v7

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/e/e$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/e/e;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 250
    const/16 v0, 0xc

    .line 253
    if-le p0, v0, :cond_1

    .line 254
    const-class v2, Lcom/liulishuo/filedownloader/e/e;

    const-string v3, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    new-array v4, v4, [Ljava/lang/Object;

    .line 256
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    .line 254
    invoke-static {v2, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v0

    .line 265
    :cond_0
    :goto_0
    return p0

    .line 258
    :cond_1
    if-ge p0, v1, :cond_0

    .line 259
    const-class v0, Lcom/liulishuo/filedownloader/e/e;

    const-string v2, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    new-array v3, v4, [Ljava/lang/Object;

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 259
    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v1

    .line 262
    goto :goto_0
.end method

.method public static a()Lcom/liulishuo/filedownloader/e/e;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e$a;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    return-object v0
.end method
