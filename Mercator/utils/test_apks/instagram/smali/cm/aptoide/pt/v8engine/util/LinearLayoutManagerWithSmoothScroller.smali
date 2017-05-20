.class public Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LinearLayoutManagerWithSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 28
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;

    .line 33
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;-><init>(Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$r;->setTargetPosition(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 36
    return-void
.end method
