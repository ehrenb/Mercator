.class public final Lcom/paypal/android/sdk/ca;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:I

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field public static final a:I

.field public static final b:I

.field public static final c:Landroid/graphics/drawable/Drawable;

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:Landroid/graphics/Typeface;

.field public static final n:Landroid/graphics/Typeface;

.field public static final o:Landroid/graphics/Typeface;

.field public static final p:Landroid/graphics/Typeface;

.field public static final q:Landroid/graphics/Typeface;

.field public static final r:Landroid/graphics/Typeface;

.field public static final s:Landroid/graphics/Typeface;

.field public static final t:Landroid/content/res/ColorStateList;

.field private static u:[I

.field private static v:[I

.field private static w:[I

.field private static x:[I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/paypal/android/sdk/ca;->u:[I

    new-array v0, v5, [I

    const v1, 0x101009e

    aput v1, v0, v4

    sput-object v0, Lcom/paypal/android/sdk/ca;->v:[I

    new-array v0, v5, [I

    const v1, -0x101009e

    aput v1, v0, v4

    sput-object v0, Lcom/paypal/android/sdk/ca;->w:[I

    new-array v0, v5, [I

    const v1, 0x101009c

    aput v1, v0, v4

    sput-object v0, Lcom/paypal/android/sdk/ca;->x:[I

    const-string v0, "#003087"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->a:I

    const-string v0, "#aa003087"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#009CDE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->b:I

    const-string v0, "#aa009CDE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->y:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#717074"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->c:Landroid/graphics/drawable/Drawable;

    const-string v0, "#f5f5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->d:I

    const-string v0, "#c4dceb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->e:I

    sget v0, Lcom/paypal/android/sdk/ca;->b:I

    sput v0, Lcom/paypal/android/sdk/ca;->z:I

    sget v0, Lcom/paypal/android/sdk/ca;->y:I

    sput v0, Lcom/paypal/android/sdk/ca;->A:I

    sget v0, Lcom/paypal/android/sdk/ca;->a:I

    sput v0, Lcom/paypal/android/sdk/ca;->B:I

    const-string v0, "#c5ddeb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->C:I

    const-string v0, "#717074"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->D:I

    const-string v0, "#aa717074"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->E:I

    const-string v0, "#5a5a5d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->F:I

    const-string v0, "#f5f5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->G:I

    const-string v0, "#e5e5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->f:I

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#515151"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->g:I

    const-string v0, "#797979"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/ca;->h:I

    const-string v0, "#b32317"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    sget v0, Lcom/paypal/android/sdk/ca;->g:I

    sput v0, Lcom/paypal/android/sdk/ca;->i:I

    sget v0, Lcom/paypal/android/sdk/ca;->g:I

    sput v0, Lcom/paypal/android/sdk/ca;->j:I

    sget v0, Lcom/paypal/android/sdk/ca;->g:I

    sput v0, Lcom/paypal/android/sdk/ca;->k:I

    sget v0, Lcom/paypal/android/sdk/ca;->h:I

    sput v0, Lcom/paypal/android/sdk/ca;->l:I

    const-string v0, "sans-serif-light"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    const-string v0, "sans-serif-light"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->m:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-light"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->n:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-bold"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->o:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->p:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-light"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->q:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->r:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-light"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->s:Landroid/graphics/Typeface;

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v3, [[I

    sget-object v2, Lcom/paypal/android/sdk/ca;->u:[I

    aput-object v2, v1, v4

    sget-object v2, Lcom/paypal/android/sdk/ca;->v:[I

    aput-object v2, v1, v5

    new-array v2, v3, [I

    sget v3, Lcom/paypal/android/sdk/ca;->B:I

    aput v3, v2, v4

    sget v3, Lcom/paypal/android/sdk/ca;->z:I

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->t:Landroid/content/res/ColorStateList;

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private static a(IF)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/paypal/android/sdk/ca;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private static a(IIF)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/paypal/android/sdk/ca;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/ca;->u:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/paypal/android/sdk/ca;->B:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->w:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/paypal/android/sdk/ca;->C:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->x:[I

    sget v2, Lcom/paypal/android/sdk/ca;->z:I

    sget v3, Lcom/paypal/android/sdk/ca;->A:I

    invoke-static {p0}, Lcom/paypal/android/sdk/ca;->d(Landroid/content/Context;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/paypal/android/sdk/ca;->a(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->v:[I

    sget v2, Lcom/paypal/android/sdk/ca;->z:I

    invoke-static {p0}, Lcom/paypal/android/sdk/ca;->d(Landroid/content/Context;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/ca;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/ca;->u:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/paypal/android/sdk/ca;->F:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->w:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/paypal/android/sdk/ca;->G:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->x:[I

    sget v2, Lcom/paypal/android/sdk/ca;->D:I

    sget v3, Lcom/paypal/android/sdk/ca;->E:I

    invoke-static {p0}, Lcom/paypal/android/sdk/ca;->d(Landroid/content/Context;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/paypal/android/sdk/ca;->a(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->v:[I

    sget v2, Lcom/paypal/android/sdk/ca;->D:I

    invoke-static {p0}, Lcom/paypal/android/sdk/ca;->d(Landroid/content/Context;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/ca;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected static c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/ca;->x:[I

    sget v2, Lcom/paypal/android/sdk/ca;->A:I

    invoke-static {p0}, Lcom/paypal/android/sdk/ca;->d(Landroid/content/Context;)F

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/paypal/android/sdk/ca;->a(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/paypal/android/sdk/ca;->v:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static d(Landroid/content/Context;)F
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v1, "4dip"

    invoke-static {v1, p0}, Lcom/paypal/android/sdk/cb;->b(Ljava/lang/String;Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
