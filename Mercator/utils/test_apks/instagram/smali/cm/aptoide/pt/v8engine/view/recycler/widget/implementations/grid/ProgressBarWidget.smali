.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ProgressBarWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "ProgressBarWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ProgressBarWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
