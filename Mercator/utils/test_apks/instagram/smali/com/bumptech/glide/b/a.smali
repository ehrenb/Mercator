.class public Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/graphics/Bitmap$Config;


# instance fields
.field private c:[I

.field private d:Ljava/nio/ByteBuffer;

.field private final e:[B

.field private f:[S

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[I

.field private k:I

.field private l:[B

.field private m:Lcom/bumptech/glide/b/c;

.field private n:Lcom/bumptech/glide/b/a$a;

.field private o:Landroid/graphics/Bitmap;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->e:[B

    .line 155
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/a$a;

    .line 156
    new-instance v0, Lcom/bumptech/glide/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    .line 157
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 427
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v3, v0, Lcom/bumptech/glide/b/c;->f:I

    .line 428
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v7, v0, Lcom/bumptech/glide/b/c;->g:I

    .line 431
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->j:[I

    .line 434
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    if-lez v0, :cond_1

    .line 437
    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 439
    const/4 v0, 0x0

    .line 440
    iget-boolean v2, p1, Lcom/bumptech/glide/b/b;->f:Z

    if-nez v2, :cond_0

    .line 441
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->l:I

    .line 443
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 451
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;)V

    .line 454
    const/4 v5, 0x1

    .line 455
    const/16 v4, 0x8

    .line 456
    const/4 v2, 0x0

    .line 457
    const/4 v0, 0x0

    :goto_1
    iget v6, p1, Lcom/bumptech/glide/b/b;->d:I

    if-ge v0, v6, :cond_7

    .line 459
    iget-boolean v6, p1, Lcom/bumptech/glide/b/b;->e:Z

    if-eqz v6, :cond_b

    .line 460
    iget v6, p1, Lcom/bumptech/glide/b/b;->d:I

    if-lt v2, v6, :cond_2

    .line 461
    add-int/lit8 v5, v5, 0x1

    .line 462
    packed-switch v5, :pswitch_data_0

    .line 479
    :cond_2
    :goto_2
    add-int v6, v2, v4

    move v12, v2

    move v2, v6

    move v6, v12

    .line 481
    :goto_3
    iget v8, p1, Lcom/bumptech/glide/b/b;->b:I

    add-int/2addr v6, v8

    .line 482
    iget-object v8, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v8, v8, Lcom/bumptech/glide/b/c;->g:I

    if-ge v6, v8, :cond_6

    .line 483
    iget-object v8, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v8, v8, Lcom/bumptech/glide/b/c;->f:I

    mul-int/2addr v8, v6

    .line 485
    iget v6, p1, Lcom/bumptech/glide/b/b;->a:I

    add-int v9, v8, v6

    .line 487
    iget v6, p1, Lcom/bumptech/glide/b/b;->c:I

    add-int/2addr v6, v9

    .line 488
    iget-object v10, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v10, v10, Lcom/bumptech/glide/b/c;->f:I

    add-int/2addr v10, v8

    if-ge v10, v6, :cond_3

    .line 490
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v6, v6, Lcom/bumptech/glide/b/c;->f:I

    add-int/2addr v6, v8

    .line 493
    :cond_3
    iget v8, p1, Lcom/bumptech/glide/b/b;->c:I

    mul-int/2addr v8, v0

    move v10, v9

    .line 494
    :goto_4
    if-ge v10, v6, :cond_6

    .line 496
    iget-object v11, p0, Lcom/bumptech/glide/b/a;->i:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    .line 497
    iget-object v11, p0, Lcom/bumptech/glide/b/a;->c:[I

    aget v8, v11, v8

    .line 498
    if-eqz v8, :cond_4

    .line 499
    aput v8, v1, v10

    .line 501
    :cond_4
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v8, v9

    .line 502
    goto :goto_4

    .line 444
    :cond_5
    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_0

    .line 464
    :pswitch_0
    const/4 v2, 0x4

    .line 465
    goto :goto_2

    .line 467
    :pswitch_1
    const/4 v2, 0x2

    .line 468
    const/4 v4, 0x4

    .line 469
    goto :goto_2

    .line 471
    :pswitch_2
    const/4 v2, 0x1

    .line 472
    const/4 v4, 0x2

    .line 473
    goto :goto_2

    .line 457
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/b/a;->p:Z

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/bumptech/glide/b/b;->g:I

    if-eqz v0, :cond_8

    iget v0, p1, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 509
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 510
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    .line 512
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 516
    :cond_a
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 518
    return-object v0

    :cond_b
    move v6, v0

    goto/16 :goto_3

    .line 462
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 701
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 703
    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;)V
    .locals 22

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 530
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v1, v2

    .line 534
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    .line 536
    :cond_1
    new-array v2, v1, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    .line 538
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->f:[S

    if-nez v2, :cond_3

    .line 539
    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->f:[S

    .line 541
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->g:[B

    if-nez v2, :cond_4

    .line 542
    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->g:[B

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->h:[B

    if-nez v2, :cond_5

    .line 545
    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->h:[B

    .line 549
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->h()I

    move-result v16

    .line 550
    const/4 v2, 0x1

    shl-int v17, v2, v16

    .line 551
    add-int/lit8 v18, v17, 0x1

    .line 552
    add-int/lit8 v4, v17, 0x2

    .line 553
    const/4 v10, -0x1

    .line 554
    add-int/lit8 v2, v16, 0x1

    .line 555
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 556
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 558
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/a;->f:[S

    const/4 v7, 0x0

    aput-short v7, v6, v5

    .line 559
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/a;->g:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v5

    .line 556
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 530
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/b/b;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->d:I

    mul-int/2addr v1, v2

    goto :goto_0

    .line 563
    :cond_7
    const/4 v5, 0x0

    .line 564
    const/4 v7, 0x0

    move v8, v5

    move v11, v5

    move v6, v5

    move v9, v2

    move v12, v3

    move v13, v4

    move v2, v5

    move v3, v5

    move v4, v5

    :goto_2
    if-ge v7, v1, :cond_8

    .line 566
    if-nez v3, :cond_a

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->i()I

    move-result v3

    .line 569
    if-gtz v3, :cond_9

    .line 570
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/b/a;->q:I

    :cond_8
    move v2, v4

    .line 646
    :goto_3
    if-ge v2, v1, :cond_11

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->i:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 573
    :cond_9
    const/4 v2, 0x0

    .line 576
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/b/a;->e:[B

    aget-byte v14, v14, v2

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    add-int/2addr v5, v14

    .line 577
    add-int/lit8 v6, v6, 0x8

    .line 578
    add-int/lit8 v14, v2, 0x1

    .line 579
    add-int/lit8 v15, v3, -0x1

    move v2, v9

    move v3, v12

    move v9, v11

    move/from16 v21, v6

    move v6, v5

    move v5, v4

    move v4, v13

    move/from16 v13, v21

    .line 581
    :goto_4
    if-lt v13, v2, :cond_14

    .line 583
    and-int v11, v6, v3

    .line 584
    shr-int v12, v6, v2

    .line 585
    sub-int/2addr v13, v2

    .line 588
    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 590
    add-int/lit8 v2, v16, 0x1

    .line 591
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 592
    add-int/lit8 v4, v17, 0x2

    .line 593
    const/4 v11, -0x1

    move v6, v12

    move v10, v11

    .line 594
    goto :goto_4

    .line 597
    :cond_b
    if-le v11, v4, :cond_c

    .line 598
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/bumptech/glide/b/a;->q:I

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    .line 599
    goto :goto_2

    .line 602
    :cond_c
    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    .line 603
    goto :goto_2

    .line 606
    :cond_d
    const/4 v6, -0x1

    if-ne v10, v6, :cond_e

    .line 607
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/b/a;->h:[B

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/b/a;->g:[B

    aget-byte v10, v10, v11

    aput-byte v10, v9, v8

    move v8, v6

    move v9, v11

    move v10, v11

    move v6, v12

    .line 610
    goto :goto_4

    .line 613
    :cond_e
    if-lt v11, v4, :cond_13

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->h:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    move v8, v6

    move v9, v10

    .line 617
    :goto_5
    move/from16 v0, v17

    if-lt v9, v0, :cond_f

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->h:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->g:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v9

    aput-byte v20, v19, v8

    .line 619
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/a;->f:[S

    aget-short v8, v8, v9

    move v9, v8

    move v8, v6

    goto :goto_5

    .line 621
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/a;->g:[B

    aget-byte v6, v6, v9

    and-int/lit16 v9, v6, 0xff

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->h:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v0, v9

    move/from16 v20, v0

    aput-byte v20, v19, v8

    .line 625
    const/16 v8, 0x1000

    if-ge v4, v8, :cond_10

    .line 626
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/a;->f:[S

    int-to-short v10, v10

    aput-short v10, v8, v4

    .line 627
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/a;->g:[B

    int-to-byte v10, v9

    aput-byte v10, v8, v4

    .line 628
    add-int/lit8 v4, v4, 0x1

    .line 629
    and-int v8, v4, v3

    if-nez v8, :cond_10

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_10

    .line 630
    add-int/lit8 v2, v2, 0x1

    .line 631
    add-int/2addr v3, v4

    :cond_10
    move v8, v7

    .line 636
    :goto_6
    if-lez v6, :cond_12

    .line 638
    add-int/lit8 v7, v6, -0x1

    .line 639
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/b/a;->i:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->h:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v7

    aput-byte v19, v10, v5

    .line 640
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v6

    move v6, v7

    goto :goto_6

    .line 649
    :cond_11
    return-void

    :cond_12
    move v7, v8

    move v10, v11

    move v8, v6

    move v6, v12

    goto/16 :goto_4

    :cond_13
    move v9, v11

    goto :goto_5

    :cond_14
    move v11, v9

    move v12, v3

    move v3, v15

    move v9, v2

    move v2, v14

    move/from16 v21, v13

    move v13, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v21

    goto/16 :goto_2
.end method

.method private h()I
    .locals 2

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 661
    :goto_0
    return v0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/b/a;->q:I

    goto :goto_0
.end method

.method private i()I
    .locals 5

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()I

    move-result v1

    .line 671
    const/4 v0, 0x0

    .line 672
    if-lez v1, :cond_0

    .line 675
    :goto_0
    if-ge v0, v1, :cond_0

    .line 676
    sub-int v2, v1, v0

    .line 677
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->e:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    add-int/2addr v0, v2

    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    .line 682
    sget-object v2, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/b/a;->q:I

    .line 686
    :cond_0
    return v0
.end method

.method private j()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    sget-object v3, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 691
    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->g:I

    sget-object v2, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap;)V

    .line 695
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 197
    const/4 v0, -0x1

    .line 198
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    if-ge p1, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    iget v0, v0, Lcom/bumptech/glide/b/b;->i:I

    .line 201
    :cond_0
    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/a;->k:I

    .line 188
    return-void
.end method

.method public a(Lcom/bumptech/glide/b/c;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    .line 360
    iput-object p2, p0, Lcom/bumptech/glide/b/a;->l:[B

    .line 361
    iput v2, p0, Lcom/bumptech/glide/b/a;->q:I

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->k:I

    .line 364
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    .line 365
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 366
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 370
    iput-boolean v2, p0, Lcom/bumptech/glide/b/a;->p:Z

    .line 371
    iget-object v0, p1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 372
    iget v0, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/b/a;->p:Z

    .line 379
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v1, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->i:[B

    .line 380
    iget v0, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v1, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->j:[I

    .line 381
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    if-gez v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, -0x1

    .line 212
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/a;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    return v0
.end method

.method public declared-synchronized f()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/a;->k:I

    if-gez v0, :cond_2

    .line 253
    :cond_0
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v4, v4, Lcom/bumptech/glide/b/c;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " framePointer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/bumptech/glide/b/a;->k:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    .line 258
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/b/a;->q:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Lcom/bumptech/glide/b/a;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 259
    :cond_3
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/b/a;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    .line 306
    :goto_0
    monitor-exit p0

    return-object v0

    .line 264
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/b/a;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 268
    iget v1, p0, Lcom/bumptech/glide/b/a;->k:I

    add-int/lit8 v1, v1, -0x1

    .line 269
    if-ltz v1, :cond_c

    .line 270
    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v4, v4, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/b;

    move-object v4, v1

    .line 274
    :goto_1
    iget-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    if-nez v1, :cond_9

    .line 275
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->a:[I

    iput-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    .line 284
    :cond_6
    :goto_2
    iget-boolean v1, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v1, :cond_7

    .line 285
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v3, v0, Lcom/bumptech/glide/b/b;->h:I

    aget v1, v1, v3

    .line 287
    iget-object v3, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v5, v0, Lcom/bumptech/glide/b/b;->h:I

    const/4 v6, 0x0

    aput v6, v3, v5

    move v3, v1

    .line 289
    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    if-nez v1, :cond_a

    .line 290
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->q:I

    move-object v0, v2

    .line 295
    goto :goto_0

    .line 277
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    iput-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    .line 278
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->j:I

    iget v5, v0, Lcom/bumptech/glide/b/b;->h:I

    if-ne v1, v5, :cond_6

    .line 279
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    const/4 v5, 0x0

    iput v5, v1, Lcom/bumptech/glide/b/c;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 299
    :cond_a
    :try_start_2
    invoke-direct {p0, v0, v4}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    iget-boolean v2, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v2, :cond_b

    .line 303
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v0, v0, Lcom/bumptech/glide/b/b;->h:I

    aput v3, v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    move-object v0, v1

    .line 306
    goto :goto_0

    :cond_c
    move-object v4, v2

    goto :goto_1
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->m:Lcom/bumptech/glide/b/c;

    .line 348
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->l:[B

    .line 349
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->i:[B

    .line 350
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->j:[I

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_0
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->o:Landroid/graphics/Bitmap;

    .line 355
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->d:Ljava/nio/ByteBuffer;

    .line 356
    return-void
.end method
