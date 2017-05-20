.class public Lcm/aptoide/pt/v8engine/view/custom/AptoideItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "AptoideItemDecoration.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/custom/AptoideItemDecoration;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 20
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/AptoideItemDecoration;->context:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 26
    const/4 v0, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/custom/AptoideItemDecoration;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 26
    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 34
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->brick_app_item:I

    if-ne v6, v7, :cond_0

    .line 35
    div-int/lit8 v4, v5, 0x2

    .line 36
    div-int/lit8 v3, v5, 0x2

    .line 37
    div-int/lit8 v2, v5, 0x2

    .line 38
    div-int/lit8 v0, v5, 0x2

    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->timeline_stats_layout:I

    if-ne v6, v7, :cond_1

    move v0, v1

    move v2, v1

    move v3, v5

    move v4, v1

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->timeline_login_layout:I

    if-ne v6, v7, :cond_2

    move v0, v1

    move v2, v1

    move v3, v5

    move v4, v1

    .line 55
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->message_white_bg:I

    if-ne v6, v7, :cond_3

    move v2, v5

    move v3, v5

    .line 62
    :goto_1
    invoke-virtual {p1, v2, v1, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    return-void

    :cond_3
    move v5, v0

    move v1, v4

    goto :goto_1

    :cond_4
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    goto :goto_0
.end method
