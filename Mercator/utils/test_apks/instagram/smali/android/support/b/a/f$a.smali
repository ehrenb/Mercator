.class Landroid/support/b/a/f$a;
.super Landroid/support/b/a/f$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1618
    invoke-direct {p0}, Landroid/support/b/a/f$d;-><init>()V

    .line 1620
    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/f$a;)V
    .locals 0

    .prologue
    .line 1623
    invoke-direct {p0, p1}, Landroid/support/b/a/f$d;-><init>(Landroid/support/b/a/f$d;)V

    .line 1624
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 1

    .prologue
    .line 1642
    const/4 v0, 0x0

    .line 1643
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1644
    if-eqz v0, :cond_0

    .line 1645
    iput-object v0, p0, Landroid/support/b/a/f$a;->n:Ljava/lang/String;

    .line 1648
    :cond_0
    const/4 v0, 0x1

    .line 1649
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1650
    if-eqz v0, :cond_1

    .line 1651
    invoke-static {v0}, Landroid/support/b/a/c;->a(Ljava/lang/String;)[Landroid/support/b/a/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/f$a;->m:[Landroid/support/b/a/c$b;

    .line 1653
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1628
    const-string v0, "pathData"

    invoke-static {p4, v0}, Landroid/support/b/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1629
    if-nez v0, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1632
    :cond_0
    sget-object v0, Landroid/support/b/a/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/b/a/e;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1634
    invoke-direct {p0, v0}, Landroid/support/b/a/f$a;->a(Landroid/content/res/TypedArray;)V

    .line 1635
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x1

    return v0
.end method
