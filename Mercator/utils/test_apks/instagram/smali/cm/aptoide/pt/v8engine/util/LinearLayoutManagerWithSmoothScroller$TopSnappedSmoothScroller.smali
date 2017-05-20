.class Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;
.super Landroid/support/v7/widget/an;
.source "LinearLayoutManagerWithSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/an;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    return v0
.end method
