.class Landroid/support/b/a/f$c;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:F

.field c:I

.field private final d:Landroid/graphics/Matrix;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private final k:Landroid/graphics/Matrix;

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$c;->d:Landroid/graphics/Matrix;

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    .line 1323
    iput v1, p0, Landroid/support/b/a/f$c;->b:F

    .line 1324
    iput v1, p0, Landroid/support/b/a/f$c;->e:F

    .line 1325
    iput v1, p0, Landroid/support/b/a/f$c;->f:F

    .line 1326
    iput v2, p0, Landroid/support/b/a/f$c;->g:F

    .line 1327
    iput v2, p0, Landroid/support/b/a/f$c;->h:F

    .line 1328
    iput v1, p0, Landroid/support/b/a/f$c;->i:F

    .line 1329
    iput v1, p0, Landroid/support/b/a/f$c;->j:F

    .line 1333
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    .line 1379
    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/f$c;Landroid/support/v4/f/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/b/a/f$c;",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$c;->d:Landroid/graphics/Matrix;

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    .line 1323
    iput v1, p0, Landroid/support/b/a/f$c;->b:F

    .line 1324
    iput v1, p0, Landroid/support/b/a/f$c;->e:F

    .line 1325
    iput v1, p0, Landroid/support/b/a/f$c;->f:F

    .line 1326
    iput v2, p0, Landroid/support/b/a/f$c;->g:F

    .line 1327
    iput v2, p0, Landroid/support/b/a/f$c;->h:F

    .line 1328
    iput v1, p0, Landroid/support/b/a/f$c;->i:F

    .line 1329
    iput v1, p0, Landroid/support/b/a/f$c;->j:F

    .line 1333
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    .line 1339
    iget v0, p1, Landroid/support/b/a/f$c;->b:F

    iput v0, p0, Landroid/support/b/a/f$c;->b:F

    .line 1340
    iget v0, p1, Landroid/support/b/a/f$c;->e:F

    iput v0, p0, Landroid/support/b/a/f$c;->e:F

    .line 1341
    iget v0, p1, Landroid/support/b/a/f$c;->f:F

    iput v0, p0, Landroid/support/b/a/f$c;->f:F

    .line 1342
    iget v0, p1, Landroid/support/b/a/f$c;->g:F

    iput v0, p0, Landroid/support/b/a/f$c;->g:F

    .line 1343
    iget v0, p1, Landroid/support/b/a/f$c;->h:F

    iput v0, p0, Landroid/support/b/a/f$c;->h:F

    .line 1344
    iget v0, p1, Landroid/support/b/a/f$c;->i:F

    iput v0, p0, Landroid/support/b/a/f$c;->i:F

    .line 1345
    iget v0, p1, Landroid/support/b/a/f$c;->j:F

    iput v0, p0, Landroid/support/b/a/f$c;->j:F

    .line 1346
    iget-object v0, p1, Landroid/support/b/a/f$c;->l:[I

    iput-object v0, p0, Landroid/support/b/a/f$c;->l:[I

    .line 1347
    iget-object v0, p1, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    .line 1348
    iget v0, p1, Landroid/support/b/a/f$c;->c:I

    iput v0, p0, Landroid/support/b/a/f$c;->c:I

    .line 1349
    iget-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1355
    iget-object v3, p1, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    .line 1356
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1357
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1358
    instance-of v2, v0, Landroid/support/b/a/f$c;

    if-eqz v2, :cond_2

    .line 1359
    check-cast v0, Landroid/support/b/a/f$c;

    .line 1360
    iget-object v2, p0, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/b/a/f$c;

    invoke-direct {v4, v0, p2}, Landroid/support/b/a/f$c;-><init>(Landroid/support/b/a/f$c;Landroid/support/v4/f/a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1363
    :cond_2
    instance-of v2, v0, Landroid/support/b/a/f$b;

    if-eqz v2, :cond_3

    .line 1364
    new-instance v2, Landroid/support/b/a/f$b;

    check-cast v0, Landroid/support/b/a/f$b;

    invoke-direct {v2, v0}, Landroid/support/b/a/f$b;-><init>(Landroid/support/b/a/f$b;)V

    move-object v0, v2

    .line 1370
    :goto_2
    iget-object v2, p0, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    iget-object v2, v0, Landroid/support/b/a/f$d;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1372
    iget-object v2, v0, Landroid/support/b/a/f$d;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1365
    :cond_3
    instance-of v2, v0, Landroid/support/b/a/f$a;

    if-eqz v2, :cond_4

    .line 1366
    new-instance v2, Landroid/support/b/a/f$a;

    check-cast v0, Landroid/support/b/a/f$a;

    invoke-direct {v2, v0}, Landroid/support/b/a/f$a;-><init>(Landroid/support/b/a/f$a;)V

    move-object v0, v2

    goto :goto_2

    .line 1368
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_5
    return-void
.end method

.method static synthetic a(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/b/a/f$c;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1435
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1436
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/b/a/f$c;->e:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/b/a/f$c;->f:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1437
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/b/a/f$c;->g:F

    iget v2, p0, Landroid/support/b/a/f$c;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1438
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/b/a/f$c;->b:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1439
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/b/a/f$c;->i:F

    iget v2, p0, Landroid/support/b/a/f$c;->e:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/b/a/f$c;->j:F

    iget v3, p0, Landroid/support/b/a/f$c;->f:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1440
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 1401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$c;->l:[I

    .line 1404
    const-string v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/b/a/f$c;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->b:F

    .line 1407
    const/4 v0, 0x1

    iget v1, p0, Landroid/support/b/a/f$c;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->e:F

    .line 1408
    const/4 v0, 0x2

    iget v1, p0, Landroid/support/b/a/f$c;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->f:F

    .line 1411
    const-string v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/b/a/f$c;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->g:F

    .line 1415
    const-string v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/b/a/f$c;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->h:F

    .line 1418
    const-string v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/b/a/f$c;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->i:F

    .line 1420
    const-string v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/b/a/f$c;->j:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$c;->j:F

    .line 1423
    const/4 v0, 0x0

    .line 1424
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_0

    .line 1426
    iput-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    .line 1429
    :cond_0
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1430
    return-void
.end method

.method static synthetic b(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1390
    sget-object v0, Landroid/support/b/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/b/a/e;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1392
    invoke-direct {p0, v0, p4}, Landroid/support/b/a/f$c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1393
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1394
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Landroid/support/b/a/f$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Landroid/support/b/a/f$c;->k:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 1458
    iget v0, p0, Landroid/support/b/a/f$c;->e:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Landroid/support/b/a/f$c;->f:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Landroid/support/b/a/f$c;->b:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Landroid/support/b/a/f$c;->g:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Landroid/support/b/a/f$c;->h:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1510
    iget v0, p0, Landroid/support/b/a/f$c;->i:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Landroid/support/b/a/f$c;->j:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .prologue
    .line 1463
    iget v0, p0, Landroid/support/b/a/f$c;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1464
    iput p1, p0, Landroid/support/b/a/f$c;->e:F

    .line 1465
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1467
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .prologue
    .line 1476
    iget v0, p0, Landroid/support/b/a/f$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1477
    iput p1, p0, Landroid/support/b/a/f$c;->f:F

    .line 1478
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1480
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .prologue
    .line 1450
    iget v0, p0, Landroid/support/b/a/f$c;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1451
    iput p1, p0, Landroid/support/b/a/f$c;->b:F

    .line 1452
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1454
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .prologue
    .line 1489
    iget v0, p0, Landroid/support/b/a/f$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1490
    iput p1, p0, Landroid/support/b/a/f$c;->g:F

    .line 1491
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1493
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .prologue
    .line 1502
    iget v0, p0, Landroid/support/b/a/f$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1503
    iput p1, p0, Landroid/support/b/a/f$c;->h:F

    .line 1504
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1506
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .prologue
    .line 1515
    iget v0, p0, Landroid/support/b/a/f$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1516
    iput p1, p0, Landroid/support/b/a/f$c;->i:F

    .line 1517
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1519
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .prologue
    .line 1528
    iget v0, p0, Landroid/support/b/a/f$c;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1529
    iput p1, p0, Landroid/support/b/a/f$c;->j:F

    .line 1530
    invoke-direct {p0}, Landroid/support/b/a/f$c;->a()V

    .line 1532
    :cond_0
    return-void
.end method
