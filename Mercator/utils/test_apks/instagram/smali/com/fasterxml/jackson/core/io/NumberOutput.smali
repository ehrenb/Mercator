.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field private static BILLION_L:J

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field static final SMALLEST_INT:Ljava/lang/String;

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static final TRIPLET_TO_CHARS:[I

.field private static final sSmallIntStrs:[Ljava/lang/String;

.field private static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xa

    const/4 v1, 0x0

    .line 5
    const v0, 0xf4240

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 6
    const v0, 0x3b9aca00

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 7
    const-wide/32 v2, 0x3b9aca00

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    .line 9
    const-wide/32 v2, -0x80000000

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 10
    const-wide/32 v2, 0x7fffffff

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 12
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 13
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x3e8

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    move v5, v1

    move v0, v1

    .line 28
    :goto_0
    if-ge v5, v8, :cond_2

    move v4, v1

    .line 29
    :goto_1
    if-ge v4, v8, :cond_1

    move v2, v0

    move v0, v1

    .line 30
    :goto_2
    if-ge v0, v8, :cond_0

    .line 31
    add-int/lit8 v3, v5, 0x30

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v6, v4, 0x30

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    add-int/lit8 v6, v0, 0x30

    or-int/2addr v6, v3

    .line 34
    sget-object v7, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    add-int/lit8 v3, v2, 0x1

    aput v6, v7, v2

    .line 30
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    .line 29
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 40
    :cond_2
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v2, "1"

    aput-object v2, v0, v9

    const-string v2, "2"

    aput-object v2, v0, v10

    const-string v2, "3"

    aput-object v2, v0, v11

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v0, v2

    const-string v2, "10"

    aput-object v2, v0, v8

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 43
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "-1"

    aput-object v2, v0, v1

    const-string v1, "-2"

    aput-object v1, v0, v9

    const-string v1, "-3"

    aput-object v1, v0, v10

    const-string v1, "-4"

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "-5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method private static _full3(I[BI)I
    .locals 4

    .prologue
    .line 457
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, p0

    .line 458
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 459
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 460
    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 461
    return v1
.end method

.method private static _full3(I[CI)I
    .locals 4

    .prologue
    .line 448
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, p0

    .line 449
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 450
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p1, v1

    .line 451
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    aput-char v0, p1, v2

    .line 452
    return v1
.end method

.method private static _leading3(I[BI)I
    .locals 3

    .prologue
    .line 435
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, p0

    .line 436
    const/16 v0, 0x9

    if-le p0, v0, :cond_1

    .line 437
    const/16 v0, 0x63

    if-le p0, v0, :cond_0

    .line 438
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v0

    .line 440
    :cond_0
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v0

    .line 442
    :cond_1
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 443
    return v0
.end method

.method private static _leading3(I[CI)I
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, p0

    .line 423
    const/16 v0, 0x9

    if-le p0, v0, :cond_1

    .line 424
    const/16 v0, 0x63

    if-le p0, v0, :cond_0

    .line 425
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-char v2, v2

    aput-char v2, p1, p2

    move p2, v0

    .line 427
    :cond_0
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    move p2, v0

    .line 429
    :cond_1
    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p1, p2

    .line 430
    return v0
.end method

.method private static _outputFullBillion(I[BI)I
    .locals 6

    .prologue
    .line 361
    div-int/lit16 v0, p0, 0x3e8

    .line 362
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 363
    div-int/lit16 v2, v0, 0x3e8

    .line 364
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 366
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v2, v3, v2

    .line 367
    add-int/lit8 v3, p2, 0x1

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 368
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 369
    add-int/lit8 v3, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v4

    .line 371
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, v0

    .line 372
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 373
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 374
    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 376
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, v1

    .line 377
    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 378
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 379
    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 381
    return v1
.end method

.method private static _outputFullBillion(I[CI)I
    .locals 7

    .prologue
    .line 306
    div-int/lit16 v0, p0, 0x3e8

    .line 307
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 308
    div-int/lit16 v2, v0, 0x3e8

    .line 310
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v3, v3, v2

    .line 311
    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v5, v3, 0x10

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 312
    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, v4

    .line 313
    add-int/lit8 v4, v5, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p1, v5

    .line 315
    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    .line 316
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, v0

    .line 317
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-char v3, v3

    aput-char v3, p1, v4

    .line 318
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, p1, v2

    .line 319
    add-int/lit8 v2, v3, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    aput-char v0, p1, v3

    .line 321
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, v1

    .line 322
    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-char v3, v3

    aput-char v3, p1, v2

    .line 323
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p1, v1

    .line 324
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    aput-char v0, p1, v2

    .line 326
    return v1
.end method

.method private static _outputSmallestI([BI)I
    .locals 4

    .prologue
    .line 491
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 492
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 493
    add-int/lit8 v1, p1, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 492
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    .line 495
    :cond_0
    return p1
.end method

.method private static _outputSmallestI([CI)I
    .locals 3

    .prologue
    .line 484
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 485
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 486
    add-int/2addr v0, p1

    return v0
.end method

.method private static _outputSmallestL([BI)I
    .locals 4

    .prologue
    .line 475
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 476
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 477
    add-int/lit8 v1, p1, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 476
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    .line 479
    :cond_0
    return p1
.end method

.method private static _outputSmallestL([CI)I
    .locals 3

    .prologue
    .line 468
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 469
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 470
    add-int/2addr v0, p1

    return v0
.end method

.method private static _outputUptoBillion(I[BI)I
    .locals 5

    .prologue
    .line 331
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_1

    .line 332
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 333
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v0

    .line 356
    :goto_0
    return v0

    .line 335
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    .line 336
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 337
    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoMillion([BIII)I

    move-result v0

    goto :goto_0

    .line 339
    :cond_1
    div-int/lit16 v0, p0, 0x3e8

    .line 340
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 341
    div-int/lit16 v2, v0, 0x3e8

    .line 342
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 344
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v2

    .line 346
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v3, v0

    .line 347
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 348
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 349
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 351
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, v1

    .line 352
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 353
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 354
    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto :goto_0
.end method

.method private static _outputUptoBillion(I[CI)I
    .locals 5

    .prologue
    .line 276
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_1

    .line 277
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 278
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 280
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    .line 281
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 282
    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoMillion([CIII)I

    move-result v0

    goto :goto_0

    .line 284
    :cond_1
    div-int/lit16 v0, p0, 0x3e8

    .line 285
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 286
    div-int/lit16 v2, v0, 0x3e8

    .line 287
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 289
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v2

    .line 291
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v3, v0

    .line 292
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x10

    int-to-char v4, v4

    aput-char v4, p1, v2

    .line 293
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, p1, v3

    .line 294
    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    aput-char v0, p1, v2

    .line 296
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, v1

    .line 297
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-char v2, v2

    aput-char v2, p1, v3

    .line 298
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 299
    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p1, v2

    goto :goto_0
.end method

.method private static _outputUptoMillion([BIII)I
    .locals 4

    .prologue
    .line 404
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, p2

    .line 405
    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    .line 406
    const/16 v0, 0x63

    if-le p2, v0, :cond_0

    .line 407
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v0

    .line 409
    :cond_0
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v0

    .line 411
    :cond_1
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 413
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v1, p3

    .line 414
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 415
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 416
    add-int/lit8 v2, v0, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 417
    return v2
.end method

.method private static _outputUptoMillion([CIII)I
    .locals 4

    .prologue
    .line 386
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, p2

    .line 387
    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    .line 388
    const/16 v0, 0x63

    if-le p2, v0, :cond_0

    .line 389
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-char v2, v2

    aput-char v2, p0, p1

    move p1, v0

    .line 391
    :cond_0
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, v1, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, p1

    move p1, v0

    .line 393
    :cond_1
    add-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p0, p1

    .line 395
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v1, p3

    .line 396
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x10

    int-to-char v3, v3

    aput-char v3, p0, v0

    .line 397
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p0, v2

    .line 398
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p0, v0

    .line 399
    return v2
.end method

.method public static outputInt(I[BI)I
    .locals 4

    .prologue
    .line 111
    if-gez p0, :cond_1

    .line 112
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestI([BI)I

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 115
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-byte v1, p1, p2

    .line 116
    neg-int p0, p0

    move p2, v0

    .line 119
    :cond_1
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_4

    .line 120
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_3

    .line 121
    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    .line 122
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p0, 0x30

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v0

    goto :goto_0

    .line 127
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    .line 128
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 129
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v0

    .line 130
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result v0

    goto :goto_0

    .line 134
    :cond_4
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_6

    .line 135
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int v1, p0, v0

    .line 136
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt v1, v0, :cond_5

    .line 137
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr v1, v0

    .line 138
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x32

    aput-byte v2, p1, p2

    .line 142
    :goto_1
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_5
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x31

    aput-byte v2, p1, p2

    goto :goto_1

    .line 144
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    .line 145
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 147
    div-int/lit16 v2, v0, 0x3e8

    .line 148
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 149
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v2

    .line 150
    invoke-static {v0, p1, v2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result v0

    .line 151
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result v0

    goto :goto_0
.end method

.method public static outputInt(I[CI)I
    .locals 4

    .prologue
    .line 58
    if-gez p0, :cond_1

    .line 59
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 62
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestI([CI)I

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 64
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    .line 65
    neg-int p0, p0

    move p2, v0

    .line 68
    :cond_1
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_4

    .line 69
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_3

    .line 70
    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    .line 71
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    aput-char v0, p1, p2

    .line 72
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    .line 77
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 78
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v0

    .line 79
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result v0

    goto :goto_0

    .line 88
    :cond_4
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_6

    .line 89
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int v1, p0, v0

    .line 90
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt v1, v0, :cond_5

    .line 91
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr v1, v0

    .line 92
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x32

    aput-char v2, p1, p2

    .line 96
    :goto_1
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result v0

    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x31

    aput-char v2, p1, p2

    goto :goto_1

    .line 98
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    .line 99
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 101
    div-int/lit16 v2, v0, 0x3e8

    .line 102
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 104
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v2

    .line 105
    invoke-static {v0, p1, v2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result v0

    .line 106
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result v0

    goto :goto_0
.end method

.method public static outputLong(J[BI)I
    .locals 8

    .prologue
    .line 194
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 195
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 196
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 198
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestL([BI)I

    move-result v0

    goto :goto_0

    .line 201
    :cond_1
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-byte v1, p2, p3

    .line 202
    neg-long p0, p0

    move p3, v0

    .line 210
    :cond_2
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v0, p0, v0

    .line 211
    sget-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v2, v0

    sub-long v2, p0, v2

    .line 214
    sget-wide v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 215
    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoBillion(I[BI)I

    move-result v0

    .line 223
    :goto_1
    long-to-int v1, v2

    invoke-static {v1, p2, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result v0

    goto :goto_0

    .line 204
    :cond_3
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 205
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    goto :goto_0

    .line 218
    :cond_4
    sget-wide v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v4, v0, v4

    .line 219
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v6, v4

    sub-long/2addr v0, v6

    .line 220
    long-to-int v4, v4

    invoke-static {v4, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v4

    .line 221
    long-to-int v0, v0

    invoke-static {v0, p2, v4}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result v0

    goto :goto_1
.end method

.method public static outputLong(J[CI)I
    .locals 8

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 161
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 162
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 164
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 165
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestL([CI)I

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    .line 168
    neg-long p0, p0

    move p3, v0

    .line 176
    :cond_2
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v0, p0, v0

    .line 177
    sget-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v2, v0

    sub-long v2, p0, v2

    .line 180
    sget-wide v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 181
    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoBillion(I[CI)I

    move-result v0

    .line 189
    :goto_1
    long-to-int v1, v2

    invoke-static {v1, p2, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_3
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 171
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_4
    sget-wide v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v4, v0, v4

    .line 185
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v6, v4

    sub-long/2addr v0, v6

    .line 186
    long-to-int v4, v4

    invoke-static {v4, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v4

    .line 187
    long-to-int v0, v0

    invoke-static {v0, p2, v4}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result v0

    goto :goto_1
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    .line 239
    if-ltz p0, :cond_0

    .line 240
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 247
    :goto_0
    return-object v0

    .line 242
    :cond_0
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 243
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 244
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 252
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
