.class public Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "BaseGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->getColumnSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 21
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;

    invoke-direct {v0, p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 22
    return-void
.end method
