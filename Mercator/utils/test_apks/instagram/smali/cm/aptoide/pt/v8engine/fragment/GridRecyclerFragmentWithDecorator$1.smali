.class Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator$1;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "GridRecyclerFragmentWithDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    const/4 v2, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    .line 51
    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 50
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->brick_app_item:I

    if-ne v6, v7, :cond_0

    .line 59
    div-int/lit8 v4, v5, 0x2

    .line 60
    div-int/lit8 v3, v5, 0x2

    .line 61
    div-int/lit8 v2, v5, 0x2

    .line 62
    div-int/lit8 v0, v5, 0x2

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->timeline_stats_layout:I

    if-ne v6, v7, :cond_1

    move v0, v1

    move v2, v1

    move v3, v5

    move v4, v1

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->timeline_login_layout:I

    if-ne v6, v7, :cond_2

    move v0, v1

    move v2, v1

    move v3, v5

    move v4, v1

    .line 79
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcm/aptoide/pt/v8engine/R$id;->message_white_bg:I

    if-ne v6, v7, :cond_3

    move v2, v5

    move v3, v5

    .line 86
    :goto_1
    invoke-virtual {p1, v2, v1, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
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
