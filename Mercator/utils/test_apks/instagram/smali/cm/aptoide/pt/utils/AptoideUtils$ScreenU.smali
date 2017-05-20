.class public final Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenU"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;,
        Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;
    }
.end annotation


# static fields
.field public static final REFERENCE_WIDTH_DPI:F = 360.0f

.field private static displayWidthCacheLandscape:I

.field private static displayWidthCachePortrait:I

.field private static screenWidthInDipCache:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 388
    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;-><init>(Lcm/aptoide/pt/utils/AptoideUtils$1;)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->screenWidthInDipCache:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;

    .line 390
    sput v2, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCacheLandscape:I

    .line 391
    sput v2, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCachePortrait:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedDisplayWidth(I)I
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/4 v1, -0x1

    .line 394
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 395
    sget v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCacheLandscape:I

    if-ne v0, v1, :cond_0

    .line 397
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 398
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 400
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 401
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 402
    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCacheLandscape:I

    .line 407
    :cond_0
    :goto_0
    sget v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCacheLandscape:I

    .line 421
    :goto_1
    return v0

    .line 404
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCacheLandscape:I

    goto :goto_0

    .line 409
    :cond_2
    sget v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCachePortrait:I

    if-ne v0, v1, :cond_3

    .line 411
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 412
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    .line 414
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 416
    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCachePortrait:I

    .line 421
    :cond_3
    :goto_2
    sget v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCachePortrait:I

    goto :goto_1

    .line 418
    :cond_4
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->displayWidthCachePortrait:I

    goto :goto_2
.end method

.method public static getCurrentOrientation()I
    .locals 1

    .prologue
    .line 437
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getDensityDpi()I
    .locals 8

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xf0

    const/16 v3, 0xd5

    const/16 v2, 0xa0

    const/16 v1, 0x78

    .line 465
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 466
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v7, "window"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 469
    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 471
    if-gt v0, v1, :cond_0

    move v0, v1

    .line 487
    :goto_0
    return v0

    .line 473
    :cond_0
    if-gt v0, v2, :cond_1

    move v0, v2

    .line 474
    goto :goto_0

    .line 475
    :cond_1
    if-gt v0, v3, :cond_2

    move v0, v3

    .line 476
    goto :goto_0

    .line 477
    :cond_2
    if-gt v0, v4, :cond_3

    move v0, v4

    .line 478
    goto :goto_0

    .line 479
    :cond_3
    if-gt v0, v5, :cond_4

    move v0, v5

    .line 480
    goto :goto_0

    .line 481
    :cond_4
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_5

    .line 482
    const/16 v0, 0x1e0

    goto :goto_0

    .line 484
    :cond_5
    const/16 v0, 0x280

    goto :goto_0
.end method

.method public static getNumericScreenSize()I
    .locals 1

    .prologue
    .line 449
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 451
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getPixels(I)I
    .locals 4

    .prologue
    .line 441
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 442
    const/4 v1, 0x1

    int-to-float v2, p0

    .line 443
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 442
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 444
    const-string v1, "getPixels"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->values()[Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getScreenSizeInt()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenSizeInt()I
    .locals 1

    .prologue
    .line 459
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getScreenSizePixels()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 528
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 530
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 537
    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-double v2, v1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    .line 538
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenWidthInDip()F
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getCurrentOrientation()I

    move-result v0

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->screenWidthInDipCache:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;

    # getter for: Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->orientation:I
    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->access$300(Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 427
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 428
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 429
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 430
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->screenWidthInDipCache:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getCurrentOrientation()I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v3, v1

    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->set(IF)V

    .line 433
    :cond_0
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->screenWidthInDipCache:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;

    # getter for: Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->value:F
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;->access$400(Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$ScreenUtilsCache;)F

    move-result v0

    return v0
.end method

.method public static takeScreenshot(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-static {p1}, Lcm/aptoide/pt/utils/FileUtils;->createDir(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 494
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 496
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 497
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 507
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 508
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 509
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 510
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 518
    :goto_0
    return-object v0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    const-string v2, "FeedBackActivity-screenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 500
    goto :goto_0

    .line 511
    :catch_1
    move-exception v0

    .line 512
    const-string v2, "FeedBackActivity-screenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 513
    goto :goto_0

    .line 514
    :catch_2
    move-exception v0

    .line 515
    const-string v2, "FeedBackActivity-screenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 516
    goto :goto_0
.end method
