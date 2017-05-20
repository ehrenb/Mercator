.class Landroid/support/b/a/f$e;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final k:Landroid/graphics/Matrix;


# instance fields
.field final a:Landroid/support/b/a/f$c;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:I

.field g:Ljava/lang/String;

.field final h:Landroid/support/v4/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/Path;

.field private final l:Landroid/graphics/Matrix;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/PathMeasure;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1097
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/b/a/f$e;->k:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->l:Landroid/graphics/Matrix;

    .line 1108
    iput v1, p0, Landroid/support/b/a/f$e;->b:F

    .line 1109
    iput v1, p0, Landroid/support/b/a/f$e;->c:F

    .line 1110
    iput v1, p0, Landroid/support/b/a/f$e;->d:F

    .line 1111
    iput v1, p0, Landroid/support/b/a/f$e;->e:F

    .line 1112
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/b/a/f$e;->f:I

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$e;->g:Ljava/lang/String;

    .line 1115
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->h:Landroid/support/v4/f/a;

    .line 1118
    new-instance v0, Landroid/support/b/a/f$c;

    invoke-direct {v0}, Landroid/support/b/a/f$c;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->a:Landroid/support/b/a/f$c;

    .line 1119
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->i:Landroid/graphics/Path;

    .line 1120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    .line 1121
    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/f$e;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->l:Landroid/graphics/Matrix;

    .line 1108
    iput v1, p0, Landroid/support/b/a/f$e;->b:F

    .line 1109
    iput v1, p0, Landroid/support/b/a/f$e;->c:F

    .line 1110
    iput v1, p0, Landroid/support/b/a/f$e;->d:F

    .line 1111
    iput v1, p0, Landroid/support/b/a/f$e;->e:F

    .line 1112
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/b/a/f$e;->f:I

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$e;->g:Ljava/lang/String;

    .line 1115
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/f$e;->h:Landroid/support/v4/f/a;

    .line 1143
    new-instance v0, Landroid/support/b/a/f$c;

    iget-object v1, p1, Landroid/support/b/a/f$e;->a:Landroid/support/b/a/f$c;

    iget-object v2, p0, Landroid/support/b/a/f$e;->h:Landroid/support/v4/f/a;

    invoke-direct {v0, v1, v2}, Landroid/support/b/a/f$c;-><init>(Landroid/support/b/a/f$c;Landroid/support/v4/f/a;)V

    iput-object v0, p0, Landroid/support/b/a/f$e;->a:Landroid/support/b/a/f$c;

    .line 1144
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/b/a/f$e;->i:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/b/a/f$e;->i:Landroid/graphics/Path;

    .line 1145
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    .line 1146
    iget v0, p1, Landroid/support/b/a/f$e;->b:F

    iput v0, p0, Landroid/support/b/a/f$e;->b:F

    .line 1147
    iget v0, p1, Landroid/support/b/a/f$e;->c:F

    iput v0, p0, Landroid/support/b/a/f$e;->c:F

    .line 1148
    iget v0, p1, Landroid/support/b/a/f$e;->d:F

    iput v0, p0, Landroid/support/b/a/f$e;->d:F

    .line 1149
    iget v0, p1, Landroid/support/b/a/f$e;->e:F

    iput v0, p0, Landroid/support/b/a/f$e;->e:F

    .line 1150
    iget v0, p1, Landroid/support/b/a/f$e;->p:I

    iput v0, p0, Landroid/support/b/a/f$e;->p:I

    .line 1151
    iget v0, p1, Landroid/support/b/a/f$e;->f:I

    iput v0, p0, Landroid/support/b/a/f$e;->f:I

    .line 1152
    iget-object v0, p1, Landroid/support/b/a/f$e;->g:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/b/a/f$e;->g:Ljava/lang/String;

    .line 1153
    iget-object v0, p1, Landroid/support/b/a/f$e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Landroid/support/b/a/f$e;->h:Landroid/support/v4/f/a;

    iget-object v1, p1, Landroid/support/b/a/f$e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :cond_0
    return-void
.end method

.method private static a(FFFF)F
    .locals 2

    .prologue
    .line 1281
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1295
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 1296
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1297
    aget v2, v1, v8

    float-to-double v2, v2

    aget v4, v1, v9

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1298
    aget v3, v1, v10

    float-to-double v4, v3

    aget v3, v1, v11

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1299
    aget v4, v1, v8

    aget v5, v1, v9

    aget v6, v1, v10

    aget v1, v1, v11

    invoke-static {v4, v5, v6, v1}, Landroid/support/b/a/f$e;->a(FFFF)F

    move-result v1

    .line 1301
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1304
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 1305
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 1310
    :cond_0
    return v0

    .line 1295
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Landroid/support/b/a/f$e;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Landroid/support/b/a/f$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    return-object p1
.end method

.method private a(Landroid/support/b/a/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 8

    .prologue
    .line 1164
    invoke-static {p1}, Landroid/support/b/a/f$c;->a(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1166
    invoke-static {p1}, Landroid/support/b/a/f$c;->a(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Landroid/support/b/a/f$c;->b(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1169
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1172
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p1, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1173
    iget-object v0, p1, Landroid/support/b/a/f$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1174
    instance-of v0, v1, Landroid/support/b/a/f$c;

    if-eqz v0, :cond_1

    .line 1175
    check-cast v1, Landroid/support/b/a/f$c;

    .line 1176
    invoke-static {p1}, Landroid/support/b/a/f$c;->a(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/b/a/f$e;->a(Landroid/support/b/a/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1172
    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1178
    :cond_1
    instance-of v0, v1, Landroid/support/b/a/f$d;

    if-eqz v0, :cond_0

    move-object v2, v1

    .line 1179
    check-cast v2, Landroid/support/b/a/f$d;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1180
    invoke-direct/range {v0 .. v6}, Landroid/support/b/a/f$e;->a(Landroid/support/b/a/f$c;Landroid/support/b/a/f$d;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1184
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1185
    return-void
.end method

.method private a(Landroid/support/b/a/f$c;Landroid/support/b/a/f$d;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 8

    .prologue
    .line 1194
    int-to-float v0, p4

    iget v1, p0, Landroid/support/b/a/f$e;->d:F

    div-float/2addr v0, v1

    .line 1195
    int-to-float v1, p5

    iget v2, p0, Landroid/support/b/a/f$e;->e:F

    div-float/2addr v1, v2

    .line 1196
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1197
    invoke-static {p1}, Landroid/support/b/a/f$c;->a(Landroid/support/b/a/f$c;)Landroid/graphics/Matrix;

    move-result-object v3

    .line 1199
    iget-object v4, p0, Landroid/support/b/a/f$e;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1200
    iget-object v4, p0, Landroid/support/b/a/f$e;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1203
    invoke-direct {p0, v3}, Landroid/support/b/a/f$e;->a(Landroid/graphics/Matrix;)F

    move-result v0

    .line 1204
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v1, p0, Landroid/support/b/a/f$e;->i:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/support/b/a/f$d;->a(Landroid/graphics/Path;)V

    .line 1209
    iget-object v1, p0, Landroid/support/b/a/f$e;->i:Landroid/graphics/Path;

    .line 1211
    iget-object v3, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1213
    invoke-virtual {p2}, Landroid/support/b/a/f$d;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1214
    iget-object v0, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/b/a/f$e;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1215
    iget-object v0, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 1217
    :cond_2
    check-cast p2, Landroid/support/b/a/f$b;

    .line 1218
    iget v3, p2, Landroid/support/b/a/f$b;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p2, Landroid/support/b/a/f$b;->h:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 1219
    :cond_3
    iget v3, p2, Landroid/support/b/a/f$b;->g:F

    iget v4, p2, Landroid/support/b/a/f$b;->i:F

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v3, v4

    .line 1220
    iget v4, p2, Landroid/support/b/a/f$b;->h:F

    iget v5, p2, Landroid/support/b/a/f$b;->i:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 1222
    iget-object v5, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    if-nez v5, :cond_4

    .line 1223
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    .line 1225
    :cond_4
    iget-object v5, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    iget-object v6, p0, Landroid/support/b/a/f$e;->i:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1227
    iget-object v5, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 1228
    mul-float/2addr v3, v5

    .line 1229
    mul-float/2addr v4, v5

    .line 1230
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1231
    cmpl-float v6, v3, v4

    if-lez v6, :cond_b

    .line 1232
    iget-object v6, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v5, v1, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1233
    iget-object v3, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v1, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1237
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1239
    :cond_5
    iget-object v3, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/b/a/f$e;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1241
    iget v1, p2, Landroid/support/b/a/f$b;->c:I

    if-eqz v1, :cond_7

    .line 1242
    iget-object v1, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    .line 1243
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    .line 1244
    iget-object v1, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1245
    iget-object v1, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1248
    :cond_6
    iget-object v1, p0, Landroid/support/b/a/f$e;->n:Landroid/graphics/Paint;

    .line 1249
    iget v3, p2, Landroid/support/b/a/f$b;->c:I

    iget v4, p2, Landroid/support/b/a/f$b;->f:F

    invoke-static {v3, v4}, Landroid/support/b/a/f;->a(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1250
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1251
    iget-object v3, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1254
    :cond_7
    iget v1, p2, Landroid/support/b/a/f$b;->a:I

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    if-nez v1, :cond_8

    .line 1256
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    .line 1257
    iget-object v1, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1258
    iget-object v1, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1261
    :cond_8
    iget-object v1, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    .line 1262
    iget-object v3, p2, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    if-eqz v3, :cond_9

    .line 1263
    iget-object v3, p2, Landroid/support/b/a/f$b;->k:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1266
    :cond_9
    iget-object v3, p2, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    if-eqz v3, :cond_a

    .line 1267
    iget-object v3, p2, Landroid/support/b/a/f$b;->j:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1270
    :cond_a
    iget v3, p2, Landroid/support/b/a/f$b;->l:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1271
    iget v3, p2, Landroid/support/b/a/f$b;->a:I

    iget v4, p2, Landroid/support/b/a/f$b;->d:F

    invoke-static {v3, v4}, Landroid/support/b/a/f;->a(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1272
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1273
    mul-float/2addr v0, v2

    .line 1274
    iget v2, p2, Landroid/support/b/a/f$b;->b:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1275
    iget-object v0, p0, Landroid/support/b/a/f$e;->j:Landroid/graphics/Path;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1235
    :cond_b
    iget-object v5, p0, Landroid/support/b/a/f$e;->o:Landroid/graphics/PathMeasure;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v1, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_1
.end method

.method static synthetic b(Landroid/support/b/a/f$e;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic b(Landroid/support/b/a/f$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/support/b/a/f$e;->m:Landroid/graphics/Paint;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    .prologue
    .line 1189
    iget-object v1, p0, Landroid/support/b/a/f$e;->a:Landroid/support/b/a/f$c;

    sget-object v2, Landroid/support/b/a/f$e;->k:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/b/a/f$e;->a(Landroid/support/b/a/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1190
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Landroid/support/b/a/f$e;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Landroid/support/b/a/f$e;->f:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 1134
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/b/a/f$e;->setRootAlpha(I)V

    .line 1135
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    .prologue
    .line 1124
    iput p1, p0, Landroid/support/b/a/f$e;->f:I

    .line 1125
    return-void
.end method
