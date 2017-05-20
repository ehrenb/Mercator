.class Landroid/support/b/a/f$b;
.super Landroid/support/b/a/f$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1684
    invoke-direct {p0}, Landroid/support/b/a/f$d;-><init>()V

    .line 1669
    iput v2, p0, Landroid/support/b/a/f$b;->a:I

    .line 1670
    iput v0, p0, Landroid/support/b/a/f$b;->b:F

    .line 1672
    iput v2, p0, Landroid/support/b/a/f$b;->c:I

    .line 1673
    iput v1, p0, Landroid/support/b/a/f$b;->d:F

    .line 1675
    iput v1, p0, Landroid/support/b/a/f$b;->f:F

    .line 1676
    iput v0, p0, Landroid/support/b/a/f$b;->g:F

    .line 1677
    iput v1, p0, Landroid/support/b/a/f$b;->h:F

    .line 1678
    iput v0, p0, Landroid/support/b/a/f$b;->i:F

    .line 1680
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    .line 1681
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    .line 1682
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/b/a/f$b;->l:F

    .line 1686
    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/f$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1689
    invoke-direct {p0, p1}, Landroid/support/b/a/f$d;-><init>(Landroid/support/b/a/f$d;)V

    .line 1669
    iput v2, p0, Landroid/support/b/a/f$b;->a:I

    .line 1670
    iput v0, p0, Landroid/support/b/a/f$b;->b:F

    .line 1672
    iput v2, p0, Landroid/support/b/a/f$b;->c:I

    .line 1673
    iput v1, p0, Landroid/support/b/a/f$b;->d:F

    .line 1675
    iput v1, p0, Landroid/support/b/a/f$b;->f:F

    .line 1676
    iput v0, p0, Landroid/support/b/a/f$b;->g:F

    .line 1677
    iput v1, p0, Landroid/support/b/a/f$b;->h:F

    .line 1678
    iput v0, p0, Landroid/support/b/a/f$b;->i:F

    .line 1680
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    .line 1681
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    .line 1682
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/b/a/f$b;->l:F

    .line 1690
    iget-object v0, p1, Landroid/support/b/a/f$b;->p:[I

    iput-object v0, p0, Landroid/support/b/a/f$b;->p:[I

    .line 1692
    iget v0, p1, Landroid/support/b/a/f$b;->a:I

    iput v0, p0, Landroid/support/b/a/f$b;->a:I

    .line 1693
    iget v0, p1, Landroid/support/b/a/f$b;->b:F

    iput v0, p0, Landroid/support/b/a/f$b;->b:F

    .line 1694
    iget v0, p1, Landroid/support/b/a/f$b;->d:F

    iput v0, p0, Landroid/support/b/a/f$b;->d:F

    .line 1695
    iget v0, p1, Landroid/support/b/a/f$b;->c:I

    iput v0, p0, Landroid/support/b/a/f$b;->c:I

    .line 1696
    iget v0, p1, Landroid/support/b/a/f$b;->e:I

    iput v0, p0, Landroid/support/b/a/f$b;->e:I

    .line 1697
    iget v0, p1, Landroid/support/b/a/f$b;->f:F

    iput v0, p0, Landroid/support/b/a/f$b;->f:F

    .line 1698
    iget v0, p1, Landroid/support/b/a/f$b;->g:F

    iput v0, p0, Landroid/support/b/a/f$b;->g:F

    .line 1699
    iget v0, p1, Landroid/support/b/a/f$b;->h:F

    iput v0, p0, Landroid/support/b/a/f$b;->h:F

    .line 1700
    iget v0, p1, Landroid/support/b/a/f$b;->i:F

    iput v0, p0, Landroid/support/b/a/f$b;->i:F

    .line 1702
    iget-object v0, p1, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    .line 1703
    iget-object v0, p1, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    .line 1704
    iget v0, p1, Landroid/support/b/a/f$b;->l:F

    iput v0, p0, Landroid/support/b/a/f$b;->l:F

    .line 1705
    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    .prologue
    .line 1708
    packed-switch p1, :pswitch_data_0

    .line 1716
    :goto_0
    return-object p2

    .line 1710
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1712
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1714
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1708
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    .prologue
    .line 1721
    packed-switch p1, :pswitch_data_0

    .line 1729
    :goto_0
    return-object p2

    .line 1723
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1725
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1727
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1750
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$b;->p:[I

    .line 1757
    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/b/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1758
    if-nez v0, :cond_0

    .line 1799
    :goto_0
    return-void

    .line 1764
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1765
    if-eqz v0, :cond_1

    .line 1766
    iput-object v0, p0, Landroid/support/b/a/f$b;->n:Ljava/lang/String;

    .line 1768
    :cond_1
    const/4 v0, 0x2

    .line 1769
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1770
    if-eqz v0, :cond_2

    .line 1771
    invoke-static {v0}, Landroid/support/b/a/c;->a(Ljava/lang/String;)[Landroid/support/b/a/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/f$b;->m:[Landroid/support/b/a/c$b;

    .line 1774
    :cond_2
    const-string v0, "fillColor"

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/b/a/f$b;->c:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->c:I

    .line 1776
    const-string v0, "fillAlpha"

    const/16 v1, 0xc

    iget v2, p0, Landroid/support/b/a/f$b;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->f:F

    .line 1778
    const-string v0, "strokeLineCap"

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1780
    iget-object v1, p0, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Landroid/support/b/a/f$b;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    .line 1781
    const-string v0, "strokeLineJoin"

    const/16 v1, 0x9

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1783
    iget-object v1, p0, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/b/a/f$b;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    .line 1784
    const-string v0, "strokeMiterLimit"

    const/16 v1, 0xa

    iget v2, p0, Landroid/support/b/a/f$b;->l:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->l:F

    .line 1787
    const-string v0, "strokeColor"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/b/a/f$b;->a:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->a:I

    .line 1789
    const-string v0, "strokeAlpha"

    const/16 v1, 0xb

    iget v2, p0, Landroid/support/b/a/f$b;->d:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->d:F

    .line 1791
    const-string v0, "strokeWidth"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/b/a/f$b;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->b:F

    .line 1793
    const-string v0, "trimPathEnd"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/b/a/f$b;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->h:F

    .line 1795
    const-string v0, "trimPathOffset"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/b/a/f$b;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->i:F

    .line 1797
    const-string v0, "trimPathStart"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/b/a/f$b;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/b/a/d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/f$b;->g:F

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1739
    sget-object v0, Landroid/support/b/a/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/b/a/e;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1741
    invoke-direct {p0, v0, p4}, Landroid/support/b/a/f$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1742
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1743
    return-void
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 1857
    iget v0, p0, Landroid/support/b/a/f$b;->f:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .prologue
    .line 1847
    iget v0, p0, Landroid/support/b/a/f$b;->c:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1837
    iget v0, p0, Landroid/support/b/a/f$b;->d:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .prologue
    .line 1817
    iget v0, p0, Landroid/support/b/a/f$b;->a:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1827
    iget v0, p0, Landroid/support/b/a/f$b;->b:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Landroid/support/b/a/f$b;->h:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1887
    iget v0, p0, Landroid/support/b/a/f$b;->i:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 1867
    iget v0, p0, Landroid/support/b/a/f$b;->g:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    .prologue
    .line 1862
    iput p1, p0, Landroid/support/b/a/f$b;->f:F

    .line 1863
    return-void
.end method

.method setFillColor(I)V
    .locals 0

    .prologue
    .line 1852
    iput p1, p0, Landroid/support/b/a/f$b;->c:I

    .line 1853
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    .prologue
    .line 1842
    iput p1, p0, Landroid/support/b/a/f$b;->d:F

    .line 1843
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0

    .prologue
    .line 1822
    iput p1, p0, Landroid/support/b/a/f$b;->a:I

    .line 1823
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    .prologue
    .line 1832
    iput p1, p0, Landroid/support/b/a/f$b;->b:F

    .line 1833
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    .prologue
    .line 1882
    iput p1, p0, Landroid/support/b/a/f$b;->h:F

    .line 1883
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    .prologue
    .line 1892
    iput p1, p0, Landroid/support/b/a/f$b;->i:F

    .line 1893
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    .prologue
    .line 1872
    iput p1, p0, Landroid/support/b/a/f$b;->g:F

    .line 1873
    return-void
.end method
