.class public Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconSizeU"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;,
        Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;
    }
.end annotation


# static fields
.field private static final AVATAR_STRING:Ljava/lang/String; = "_avatar"

.field public static final DEFAULT_SCREEN_DENSITY:I = -0x1

.field public static final ICONS_SIZE_TYPE:I = 0x0

.field public static final STORE_ICONS_SIZE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final baseLine:I = 0x60

.field private static final baseLineAvatar:I = 0x96

.field private static baseLineScreenshotLand:I = 0x0

.field private static baseLineScreenshotPort:I = 0x0

.field private static final baseLineXNotification:I = 0x140

.field private static final baseLineYNotification:I = 0xb4

.field public static final mIconSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mStoreIconSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final urlWithDimensionPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x1e0

    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/16 v4, 0xa0

    const/16 v3, 0x78

    .line 1276
    const-class v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->TAG:Ljava/lang/String;

    .line 1282
    const-string v0, "_{1}[1-9]{3}(x|X){1}[1-9]{3}.{1}.{3,4}\\b"

    .line 1283
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->urlWithDimensionPattern:Ljava/util/regex/Pattern;

    .line 1284
    const/16 v0, 0x100

    sput v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->baseLineScreenshotLand:I

    .line 1285
    const/16 v0, 0x60

    sput v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->baseLineScreenshotPort:I

    .line 1288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    .line 1289
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "450x450"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "300x300"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "225x225"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "150x150"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "113x113"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    .line 1298
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "384x384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "288x288"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "192x192"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "144x144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "127x127"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "96x96"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIconSizeProperties(Ljava/lang/String;IIIII)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII)",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1573
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->getImageInfo(Ljava/lang/String;)Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;

    move-result-object v0

    .line 1574
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1575
    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getHeight()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 1576
    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MIN_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getWidth()I

    move-result v2

    if-ge v2, p3, :cond_1

    .line 1579
    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MIN_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    :cond_1
    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getHeight()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 1582
    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_2
    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getWidth()I

    move-result v2

    if-le v2, p4, :cond_3

    .line 1585
    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    :cond_3
    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getSize()J

    move-result-wide v2

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1588
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_IMAGE_SIZE:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    :cond_4
    return-object v1
.end method

.method public static cleanImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1557
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1558
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return-object p0

    .line 1562
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1563
    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->urlWithDimensionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static densityMultiplier()Ljava/lang/Float;
    .locals 7

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f400000    # 0.75f

    .line 1360
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1361
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1381
    :goto_0
    return-object v0

    .line 1364
    :cond_0
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 1366
    cmpg-float v6, v5, v0

    if-gtz v6, :cond_1

    .line 1381
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1368
    :cond_1
    cmpg-float v0, v5, v1

    if-gtz v0, :cond_2

    move v0, v1

    .line 1369
    goto :goto_1

    .line 1370
    :cond_2
    const v0, 0x3faa9fbe    # 1.333f

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_3

    .line 1371
    const v0, 0x3faa6666

    goto :goto_1

    .line 1372
    :cond_3
    cmpg-float v0, v5, v2

    if-gtz v0, :cond_4

    move v0, v2

    .line 1373
    goto :goto_1

    .line 1374
    :cond_4
    cmpg-float v0, v5, v3

    if-gtz v0, :cond_5

    move v0, v3

    .line 1375
    goto :goto_1

    .line 1376
    :cond_5
    cmpg-float v0, v5, v4

    if-gtz v0, :cond_6

    move v0, v4

    .line 1377
    goto :goto_1

    .line 1379
    :cond_6
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_1
.end method

.method public static generateSizeStoreString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1404
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    .line 1405
    :cond_0
    const-string p0, ""

    .line 1415
    :cond_1
    :goto_0
    return-object p0

    .line 1408
    :cond_2
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->getDefaultSize(I)Ljava/lang/String;

    move-result-object v0

    .line 1411
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1414
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static generateSizeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1549
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1550
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->getDefaultSize(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateSizeStringScreenshotsdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1343
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->densityMultiplier()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1346
    if-eqz p0, :cond_0

    const-string v1, "portrait"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    sget v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->baseLineScreenshotPort:I

    float-to-int v0, v0

    mul-int/2addr v0, v1

    .line 1352
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1349
    :cond_0
    sget v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->baseLineScreenshotLand:I

    float-to-int v0, v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static generateStringAvatar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1439
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1440
    :cond_0
    const-string v0, ""

    .line 1451
    :goto_0
    return-object v0

    .line 1442
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->densityMultiplier()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1444
    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 1450
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->getUserAvatarIconSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateStringNotification(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1385
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1386
    :cond_0
    const-string v0, ""

    .line 1399
    :goto_0
    return-object v0

    .line 1388
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->densityMultiplier()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1390
    const/high16 v1, 0x43a00000    # 320.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1391
    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1396
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultSize(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xf0

    const/16 v1, 0x78

    .line 1421
    packed-switch p0, :pswitch_data_0

    .line 1435
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1423
    :pswitch_0
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 1424
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1426
    :cond_0
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mStoreIconSizes:Ljava/util/HashMap;

    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1429
    :pswitch_1
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 1430
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1432
    :cond_1
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->mIconSizes:Ljava/util/HashMap;

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImageInfo(Ljava/lang/String;)Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;
    .locals 4

    .prologue
    .line 1594
    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;

    invoke-direct {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;-><init>()V

    .line 1595
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1596
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->setWidth(I)V

    .line 1597
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->setHeight(I)V

    .line 1598
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->setSize(J)V

    .line 1600
    return-object v0
.end method

.method public static getNewImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1464
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-object p0

    .line 1466
    :cond_1
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1467
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->parseScreenshots(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1468
    :cond_2
    const-string v0, "_icon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->parseIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getThumbnailSize(IZ)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x1e0

    const/16 v4, 0x140

    const/16 v3, 0xf0

    const/16 v2, 0xd5

    const/16 v1, 0xa0

    .line 1513
    if-nez p1, :cond_6

    .line 1514
    const/16 v0, 0x280

    if-lt p0, v0, :cond_0

    .line 1515
    const-string v0, "1024x640"

    .line 1543
    :goto_0
    return-object v0

    .line 1516
    :cond_0
    if-lt p0, v5, :cond_1

    .line 1517
    const-string v0, "768x480"

    goto :goto_0

    .line 1518
    :cond_1
    if-lt p0, v4, :cond_2

    .line 1519
    const-string v0, "512x320"

    goto :goto_0

    .line 1520
    :cond_2
    if-lt p0, v3, :cond_3

    .line 1521
    const-string v0, "384x240"

    goto :goto_0

    .line 1522
    :cond_3
    if-lt p0, v2, :cond_4

    .line 1523
    const-string v0, "340x213"

    goto :goto_0

    .line 1524
    :cond_4
    if-lt p0, v1, :cond_5

    .line 1525
    const-string v0, "256x160"

    goto :goto_0

    .line 1527
    :cond_5
    const-string v0, "192x120"

    goto :goto_0

    .line 1530
    :cond_6
    const/16 v0, 0x280

    if-lt p0, v0, :cond_7

    .line 1531
    const-string v0, "384x640"

    goto :goto_0

    .line 1532
    :cond_7
    if-lt p0, v5, :cond_8

    .line 1533
    const-string v0, "288x480"

    goto :goto_0

    .line 1534
    :cond_8
    if-lt p0, v4, :cond_9

    .line 1535
    const-string v0, "192x320"

    goto :goto_0

    .line 1536
    :cond_9
    if-lt p0, v3, :cond_a

    .line 1537
    const-string v0, "144x240"

    goto :goto_0

    .line 1538
    :cond_a
    if-lt p0, v2, :cond_b

    .line 1539
    const-string v0, "127x213"

    goto :goto_0

    .line 1540
    :cond_b
    if-lt p0, v1, :cond_c

    .line 1541
    const-string v0, "96x160"

    goto :goto_0

    .line 1543
    :cond_c
    const-string v0, "72x120"

    goto :goto_0
.end method

.method private static getUserAvatarIconSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1455
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v0

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_0

    .line 1456
    const-string v0, "50x50"

    .line 1458
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "150x150"

    goto :goto_0
.end method

.method private static parseIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1494
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    .line 1495
    :cond_0
    const-string p0, ""

    .line 1509
    :cond_1
    :goto_0
    return-object p0

    .line 1498
    :cond_2
    :try_start_0
    const-string v0, "_icon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->generateSizeString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1501
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1507
    throw v0
.end method

.method private static parseScreenshotUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1336
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->generateSizeStringScreenshotsdd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseScreenshots(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1475
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1476
    :cond_0
    const-string v0, ""

    .line 1482
    :goto_0
    return-object v0

    .line 1478
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1479
    :goto_1
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v3

    .line 1481
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v4, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3, v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->getThumbnailSize(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1478
    goto :goto_1
.end method

.method public static screenshotToThumb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1308
    .line 1312
    :try_start_0
    const-string v0, "_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->parseScreenshotUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    :goto_0
    return-object v0

    .line 1316
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1318
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1319
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1323
    :cond_1
    const-string v0, "thumbs/mobile/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    throw v0
.end method

.method private static splitUrlExtension(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    const-string v0, "\\.(?=[^\\.]+$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
