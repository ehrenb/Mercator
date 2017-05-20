.class public Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "DividerItemDecoration.java"


# static fields
.field private static final ALL:I = 0x7

.field private static final BOTTOM:I = 0x4

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2


# instance fields
.field private final space:I

.field private final spacingFlag:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;-><init>(II)V

    .line 24
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 27
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    .line 28
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->spacingFlag:I

    .line 29
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->spacingFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    .line 34
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 37
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->spacingFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 38
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 41
    :cond_1
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->spacingFlag:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 42
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 46
    :cond_2
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 48
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_4

    .line 49
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 51
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 52
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 65
    :cond_3
    :goto_0
    return-void

    .line 54
    :cond_4
    const-class v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 56
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 58
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 59
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 63
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/custom/DividerItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
