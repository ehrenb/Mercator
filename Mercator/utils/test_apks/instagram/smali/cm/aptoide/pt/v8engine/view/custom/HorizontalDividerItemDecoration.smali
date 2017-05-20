.class public Lcm/aptoide/pt/v8engine/view/custom/HorizontalDividerItemDecoration;
.super Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;
.source "HorizontalDividerItemDecoration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/custom/HorizontalDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 14
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->gray_item_decorator:I

    invoke-static {p1, v0}, Landroid/support/v4/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/custom/DrawableItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V

    return-void
.end method
