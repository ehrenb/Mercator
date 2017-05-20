.class Landroid/support/design/widget/y;
.super Landroid/support/design/widget/CoordinatorLayout$a;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$a",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/z;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$a;-><init>()V

    .line 30
    iput v0, p0, Landroid/support/design/widget/y;->b:I

    .line 31
    iput v0, p0, Landroid/support/design/widget/y;->c:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Landroid/support/design/widget/y;->b:I

    .line 31
    iput v0, p0, Landroid/support/design/widget/y;->c:I

    .line 37
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/z;->a(I)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_0
    iput p1, p0, Landroid/support/design/widget/y;->b:I

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/y;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/support/design/widget/z;

    invoke-direct {v0, p2}, Landroid/support/design/widget/z;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    invoke-virtual {v0}, Landroid/support/design/widget/z;->a()V

    .line 49
    iget v0, p0, Landroid/support/design/widget/y;->b:I

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    iget v1, p0, Landroid/support/design/widget/y;->b:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/z;->a(I)Z

    .line 51
    iput v2, p0, Landroid/support/design/widget/y;->b:I

    .line 53
    :cond_1
    iget v0, p0, Landroid/support/design/widget/y;->c:I

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Landroid/support/design/widget/y;->a:Landroid/support/design/widget/z;

    iget v1, p0, Landroid/support/design/widget/y;->c:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/z;->b(I)Z

    .line 55
    iput v2, p0, Landroid/support/design/widget/y;->c:I

    .line 58
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
