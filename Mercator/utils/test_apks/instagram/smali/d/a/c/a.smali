.class public Ld/a/c/a;
.super Ld/a/b/b;
.source "SimpleLogger.java"


# static fields
.field private static c:J

.field private static final d:Ljava/util/Properties;

.field private static e:Z

.field private static f:I

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Ljava/text/DateFormat;

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Ljava/lang/String;

.field private static n:Ljava/io/PrintStream;

.field private static o:Z

.field private static p:Ljava/lang/String;


# instance fields
.field protected a:I

.field private transient q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ld/a/c/a;->c:J

    .line 125
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ld/a/c/a;->d:Ljava/util/Properties;

    .line 133
    sput-boolean v2, Ld/a/c/a;->e:Z

    .line 135
    const/16 v0, 0x14

    sput v0, Ld/a/c/a;->f:I

    .line 136
    sput-boolean v2, Ld/a/c/a;->g:Z

    .line 137
    sput-object v3, Ld/a/c/a;->h:Ljava/lang/String;

    .line 138
    sput-object v3, Ld/a/c/a;->i:Ljava/text/DateFormat;

    .line 139
    sput-boolean v4, Ld/a/c/a;->j:Z

    .line 140
    sput-boolean v4, Ld/a/c/a;->k:Z

    .line 141
    sput-boolean v2, Ld/a/c/a;->l:Z

    .line 142
    const-string v0, "System.err"

    sput-object v0, Ld/a/c/a;->m:Ljava/lang/String;

    .line 143
    sput-object v3, Ld/a/c/a;->n:Ljava/io/PrintStream;

    .line 144
    sput-boolean v2, Ld/a/c/a;->o:Z

    .line 145
    const-string v0, "WARN"

    sput-object v0, Ld/a/c/a;->p:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ld/a/b/b;-><init>()V

    .line 256
    const/16 v0, 0x14

    iput v0, p0, Ld/a/c/a;->a:I

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Ld/a/c/a;->q:Ljava/lang/String;

    .line 265
    iput-object p1, p0, Ld/a/c/a;->b:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Ld/a/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-static {v0}, Ld/a/c/a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/a/c/a;->a:I

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    sget v0, Ld/a/c/a;->f:I

    iput v0, p0, Ld/a/c/a;->a:I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Ld/a/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Ld/a/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {p2, p3, p4}, Ld/a/b/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ld/a/b/a;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ld/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ld/a/b/a;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0x20

    .line 312
    invoke-virtual {p0, p1}, Ld/a/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    sget-boolean v1, Ld/a/c/a;->g:Z

    if-eqz v1, :cond_1

    .line 320
    sget-object v1, Ld/a/c/a;->i:Ljava/text/DateFormat;

    if-eqz v1, :cond_7

    .line 321
    invoke-direct {p0}, Ld/a/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    :cond_1
    :goto_1
    sget-boolean v1, Ld/a/c/a;->j:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_2
    sget-boolean v1, Ld/a/c/a;->o:Z

    if-eqz v1, :cond_3

    .line 337
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 357
    :goto_2
    sget-boolean v1, Ld/a/c/a;->o:Z

    if-eqz v1, :cond_4

    .line 358
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    sget-boolean v1, Ld/a/c/a;->l:Z

    if-eqz v1, :cond_8

    .line 363
    iget-object v1, p0, Ld/a/c/a;->q:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 364
    invoke-direct {p0}, Ld/a/c/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/a/c/a;->q:Ljava/lang/String;

    .line 365
    :cond_5
    iget-object v1, p0, Ld/a/c/a;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_6
    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0, v0, p3}, Ld/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ld/a/c/a;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 342
    :sswitch_0
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    :sswitch_1
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 348
    :sswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 351
    :sswitch_3
    sget-object v1, Ld/a/c/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 354
    :sswitch_4
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 366
    :cond_8
    sget-boolean v1, Ld/a/c/a;->k:Z

    if-eqz v1, :cond_6

    .line 367
    iget-object v1, p0, Ld/a/c/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 178
    invoke-static {p0}, Ld/a/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Ld/a/c/a;->d:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static d()V
    .locals 2

    .prologue
    .line 186
    sget-boolean v0, Ld/a/c/a;->e:Z

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Ld/a/c/a;->e:Z

    .line 190
    invoke-static {}, Ld/a/c/a;->f()V

    .line 192
    const-string v0, "org.slf4j.simpleLogger.defaultLogLevel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    invoke-static {v0}, Ld/a/c/a;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Ld/a/c/a;->f:I

    .line 196
    :cond_2
    const-string v0, "org.slf4j.simpleLogger.showLogName"

    sget-boolean v1, Ld/a/c/a;->k:Z

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/a/c/a;->k:Z

    .line 197
    const-string v0, "org.slf4j.simpleLogger.showShortLogName"

    sget-boolean v1, Ld/a/c/a;->l:Z

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/a/c/a;->l:Z

    .line 198
    const-string v0, "org.slf4j.simpleLogger.showDateTime"

    sget-boolean v1, Ld/a/c/a;->g:Z

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/a/c/a;->g:Z

    .line 199
    const-string v0, "org.slf4j.simpleLogger.showThreadName"

    sget-boolean v1, Ld/a/c/a;->j:Z

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/a/c/a;->j:Z

    .line 200
    const-string v0, "org.slf4j.simpleLogger.dateTimeFormat"

    sget-object v1, Ld/a/c/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/c/a;->h:Ljava/lang/String;

    .line 201
    const-string v0, "org.slf4j.simpleLogger.levelInBrackets"

    sget-boolean v1, Ld/a/c/a;->o:Z

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/a/c/a;->o:Z

    .line 202
    const-string v0, "org.slf4j.simpleLogger.warnLevelString"

    sget-object v1, Ld/a/c/a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/c/a;->p:Ljava/lang/String;

    .line 204
    const-string v0, "org.slf4j.simpleLogger.logFile"

    sget-object v1, Ld/a/c/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/c/a;->m:Ljava/lang/String;

    .line 205
    sget-object v0, Ld/a/c/a;->m:Ljava/lang/String;

    invoke-static {v0}, Ld/a/c/a;->e(Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v0

    sput-object v0, Ld/a/c/a;->n:Ljava/io/PrintStream;

    .line 207
    sget-object v0, Ld/a/c/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ld/a/c/a;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/c/a;->i:Ljava/text/DateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "Bad date format in simplelogger.properties; will output relative time"

    invoke-static {v1, v0}, Ld/a/b/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/io/PrintStream;
    .locals 3

    .prologue
    .line 217
    const-string v0, "System.err"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 228
    :goto_0
    return-object v0

    .line 219
    :cond_0
    const-string v0, "System.out"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_0

    .line 223
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Defaulting to System.err"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ld/a/b/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/16 v0, 0x14

    .line 288
    const-string v1, "trace"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const/4 v0, 0x0

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    const-string v1, "debug"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const/16 v0, 0xa

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "info"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const-string v1, "warn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    const/16 v0, 0x1e

    goto :goto_0

    .line 296
    :cond_3
    const-string v1, "error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/16 v0, 0x28

    goto :goto_0
.end method

.method private static f()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ld/a/c/a$1;

    invoke-direct {v0}, Ld/a/c/a$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 245
    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    sget-object v1, Ld/a/c/a;->d:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 388
    sget-object v1, Ld/a/c/a;->i:Ljava/text/DateFormat;

    monitor-enter v1

    .line 389
    :try_start_0
    sget-object v2, Ld/a/c/a;->i:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 390
    monitor-exit v1

    .line 391
    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Ld/a/c/a;->b:Ljava/lang/String;

    iget-object v1, p0, Ld/a/c/a;->b:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 508
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 521
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 522
    return-void
.end method

.method a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 378
    sget-object v0, Ld/a/c/a;->n:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    if-eqz p2, :cond_0

    .line 380
    sget-object v0, Ld/a/c/a;->n:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 382
    :cond_0
    sget-object v0, Ld/a/c/a;->n:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 383
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/a/c/a;->a(I)Z

    move-result v0

    return v0
.end method

.method protected a(I)Z
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Ld/a/c/a;->a:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 492
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 563
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 484
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ld/a/c/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 576
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 605
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2}, Ld/a/c/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v1, p0, Ld/a/c/a;->b:Ljava/lang/String;

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move-object v3, v1

    move-object v1, v2

    .line 279
    :goto_0
    if-nez v1, :cond_0

    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.slf4j.simpleLogger.log."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ld/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 284
    :cond_0
    return-object v1
.end method
