.class Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "DrawableItemDecoration.java"


# instance fields
.field private final customHorizontalPadding:I

.field private final dividerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->customHorizontalPadding:I

    .line 16
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 7

    .prologue
    .line 19
    iget v2, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->customHorizontalPadding:I

    .line 20
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iget v1, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->customHorizontalPadding:I

    sub-int v3, v0, v1

    .line 22
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 23
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_0

    .line 24
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 26
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    add-int/2addr v0, v5

    .line 27
    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 28
    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v0, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
